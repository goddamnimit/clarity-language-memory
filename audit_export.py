import re
import os
from pathlib import Path

# Map filename patterns to human-readable language + section labels
FILE_LABELS = {
    "LanguageExerciseData.swift":            ("English",  "Language"),
    "CognitionExerciseData.swift":           ("English",  "Cognition"),
    "FunctionalSkillsExerciseData.swift":    ("English",  "Functional Skills"),
    "SpanishLanguageExerciseData.swift":     ("Spanish",  "Language"),
    "SpanishCognitionExerciseData.swift":    ("Spanish",  "Cognition"),
    "SpanishFunctionalSkillsExerciseData.swift": ("Spanish", "Functional Skills"),
    "HindiLanguageExerciseData.swift":       ("Hindi",    "Language"),
    "HindiCognitionExerciseData.swift":      ("Hindi",    "Cognition"),
    "HindiFunctionalSkillsExerciseData.swift": ("Hindi",  "Functional Skills"),
    "GujaratiLanguageExerciseData.swift":    ("Gujarati", "Language"),
    "GujaratiCognitionExerciseData.swift":   ("Gujarati", "Cognition"),
    "GujaratiFunctionalSkillsExerciseData.swift": ("Gujarati", "Functional Skills"),
    "ChineseLanguageExerciseData.swift":     ("Chinese",  "Language"),
    "ChineseCognitionExerciseData.swift":    ("Chinese",  "Cognition"),
    "ChineseFunctionalSkillsExerciseData.swift": ("Chinese", "Functional Skills"),
    "FarsiLanguageExerciseData.swift":       ("Farsi",    "Language"),
    "FarsiCognitionExerciseData.swift":      ("Farsi",    "Cognition"),
    "FarsiFunctionalSkillsExerciseData.swift": ("Farsi",  "Functional Skills"),
}

def extract_string(s):
    """Strip surrounding quotes from a Swift string literal."""
    s = s.strip()
    if s.startswith('"') and s.endswith('"'):
        return s[1:-1]
    return s

def parse_swift_file(filepath):
    """
    Parse a Swift exercise data file and return a list of dicts:
      { title, instructions, type, difficulty, prompt, options, correct }

    Handles multiline Swift struct literals. Does not eval Swift —
    uses regex pattern matching on the known ExerciseItem structure.
    """
    text = Path(filepath).read_text(encoding='utf-8')
    items = []

    # Find each ExerciseItem(...) block
    # Items start with ExerciseItem( and end with a matching )
    # We find them by scanning for ExerciseItem( then collecting until
    # the parentheses balance back to zero.
    pos = 0
    while True:
        start = text.find('ExerciseItem(', pos)
        if start == -1:
            break

        # Collect the full balanced-paren block
        depth = 0
        i = start + len('ExerciseItem(') - 1  # point at the opening (
        block_start = i
        while i < len(text):
            if text[i] == '(':
                depth += 1
            elif text[i] == ')':
                depth -= 1
                if depth == 0:
                    break
            i += 1
        block = text[block_start+1:i]  # contents inside the outer parens
        pos = i + 1

        # Now extract fields from the block using regex
        def get_field(name):
            # Match: name: "value"  or  name: """multiline"""
            # Try triple-quoted first
            pat3 = rf'{name}\s*:\s*"""(.*?)"""'
            m = re.search(pat3, block, re.DOTALL)
            if m:
                return m.group(1).strip()
            # Single-quoted
            pat1 = rf'{name}\s*:\s*"((?:[^"\\]|\\.)*)"'
            m = re.search(pat1, block)
            if m:
                return m.group(1)
            return ""

        def get_array(name):
            # Match: name: ["a", "b", "c"]
            pat = rf'{name}\s*:\s*\[(.*?)\]'
            m = re.search(pat, block, re.DOTALL)
            if not m:
                return []
            inner = m.group(1)
            # Extract all quoted strings
            items_found = re.findall(r'"((?:[^"\\]|\\.)*)"', inner)
            return items_found

        prompt      = get_field('prompt')
        correct     = get_field('correctAnswer')
        options     = get_array('options')
        title       = get_field('title')
        instructions = get_field('instructions')
        ex_type     = get_field('type').replace('.', '')
        difficulty  = get_field('difficulty').replace('.', '')

        if prompt:  # skip empty/malformed blocks
            items.append({
                'title': title,
                'instructions': instructions,
                'type': ex_type,
                'difficulty': difficulty,
                'prompt': prompt,
                'options': options,
                'correct': correct,
            })

    return items

def flag_issues(item):
    """
    Run basic logic checks and return a list of warning strings.
    These are heuristics — a human auditor makes the final call.
    """
    flags = []
    options = item['options']
    correct = item['correct']
    ex_type = item['type']

    # Check correctAnswer is in options (for choice-based types)
    choice_types = {
        'multipleChoice', 'categoryCrossOut', 'sentenceCompletion',
        'analogyChoice', 'homonym', 'matching', 'yesNo', 'factOrOpinion'
    }
    if ex_type in choice_types:
        if options and correct not in options:
            flags.append(f"⚠️  CORRECT ANSWER NOT IN OPTIONS: '{correct}'")
        if len(options) < 2:
            flags.append(f"⚠️  TOO FEW OPTIONS: {len(options)}")

    # yesNo must have exactly ["Yes","No"] or translation equivalent
    if ex_type == 'yesNo':
        if len(options) != 2:
            flags.append(f"⚠️  yesNo should have exactly 2 options, found {len(options)}")

    # factOrOpinion must have exactly 2 options
    if ex_type == 'factOrOpinion':
        if len(options) != 2:
            flags.append(f"⚠️  factOrOpinion should have exactly 2 options, found {len(options)}")

    # openEnded should have no options
    if ex_type == 'openEnded' and options:
        flags.append(f"⚠️  openEnded should have empty options list")

    # sequencing correctAnswer should contain ' | '
    if ex_type == 'sequencing' and ' | ' not in correct and correct:
        flags.append(f"⚠️  sequencing correctAnswer missing ' | ' separator")

    # Duplicate options
    if len(options) != len(set(options)):
        flags.append(f"⚠️  DUPLICATE OPTIONS detected")

    return flags

def main():
    output_lines = []
    total_items = 0
    total_flagged = 0

    # Find all matching files anywhere in the project
    all_swift_files = list(Path('.').rglob('*ExerciseData.swift'))
    all_swift_files.sort(key=lambda p: p.name)

    if not all_swift_files:
        print("ERROR: No *ExerciseData.swift files found. Run this script from your project root.")
        return

    output_lines.append("=" * 70)
    output_lines.append("CLARITY: LANGUAGE & MEMORY — FULL QUESTION AUDIT")
    output_lines.append("=" * 70)
    output_lines.append(f"Files found: {len(all_swift_files)}")
    output_lines.append("")

    for filepath in all_swift_files:
        fname = filepath.name
        lang, section = FILE_LABELS.get(fname, ("Unknown", fname))

        output_lines.append("=" * 70)
        output_lines.append(f"LANGUAGE: {lang}   |   SECTION: {section}")
        output_lines.append(f"File: {filepath}")
        output_lines.append("=" * 70)
        output_lines.append("")

        items = parse_swift_file(filepath)

        if not items:
            output_lines.append("  [No items parsed — check file format]")
            output_lines.append("")
            continue

        # Group by exercise title/type for readability
        current_title = None
        item_num = 0

        for item in items:
            total_items += 1
            item_num += 1

            # Print exercise group header when title changes
            if item['title'] and item['title'] != current_title:
                current_title = item['title']
                output_lines.append("-" * 60)
                output_lines.append(f"EXERCISE: {item['title']}")
                if item['instructions']:
                    output_lines.append(f"Instructions: {item['instructions']}")
                output_lines.append(f"Type: {item['type']}   Difficulty: {item['difficulty']}")
                output_lines.append("-" * 60)

            output_lines.append(f"  Q{item_num}: {item['prompt']}")

            if item['options']:
                for idx, opt in enumerate(item['options']):
                    marker = "✓" if opt == item['correct'] else " "
                    output_lines.append(f"     [{marker}] {chr(65+idx)}) {opt}")

            if item['correct']:
                # For open-ended and sequencing, show the model answer
                if item['type'] in ('openEnded', 'sequencing'):
                    output_lines.append(f"     Answer: {item['correct']}")

            flags = flag_issues(item)
            for flag in flags:
                output_lines.append(f"     {flag}")
                total_flagged += 1

            output_lines.append("")

        output_lines.append(f"  [{fname}: {len(items)} items]")
        output_lines.append("")

    # Summary
    output_lines.append("=" * 70)
    output_lines.append("AUDIT SUMMARY")
    output_lines.append("=" * 70)
    output_lines.append(f"Total files parsed:    {len(all_swift_files)}")
    output_lines.append(f"Total questions found: {total_items}")
    output_lines.append(f"Auto-flagged issues:   {total_flagged}")
    output_lines.append("")
    output_lines.append("Legend:")
    output_lines.append("  [✓] = marked as correct answer in the data")
    output_lines.append("  [ ] = incorrect option")
    output_lines.append("  ⚠️  = automatic logic flag (human review needed)")
    output_lines.append("")
    output_lines.append("Note: Auto-flags catch structural problems only.")
    output_lines.append("Human review is needed for:")
    output_lines.append("  - Factually wrong correct answers")
    output_lines.append("  - Culturally inappropriate content")
    output_lines.append("  - Translation quality and naturalness")
    output_lines.append("  - Plausible distractors that are actually also correct")
    output_lines.append("  - Difficulty level appropriateness")
    output_lines.append("  - Exercise instructions that are confusing")

    out_text = "\n".join(output_lines)
    out_path = "clarity_full_audit.txt"
    Path(out_path).write_text(out_text, encoding='utf-8')
    print(f"\nDone. Written to: {out_path}")
    print(f"Total questions: {total_items}")
    print(f"Auto-flagged:    {total_flagged}")

if __name__ == "__main__":
    main()
