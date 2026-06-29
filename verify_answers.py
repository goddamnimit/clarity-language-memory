import re
from pathlib import Path

def check_file(filepath):
    text = Path(filepath).read_text(encoding='utf-8')
    mismatches = []
    pos = 0
    item_num = 0
    while True:
        start = text.find('ExerciseItem(', pos)
        if start == -1:
            break
        depth = 0
        i = start + len('ExerciseItem(') - 1
        while i < len(text):
            if text[i] == '(':
                depth += 1
            elif text[i] == ')':
                depth -= 1
                if depth == 0:
                    break
            i += 1
        block = text[start:i+1]
        pos = i + 1
        item_num += 1

        prompt_m = re.search(r'prompt\s*:\s*"((?:[^"\\]|\\.)*)"', block)
        correct_m = re.search(r'correctAnswer\s*:\s*"((?:[^"\\]|\\.)*)"', block)
        options_m = re.search(r'options\s*:\s*\[(.*?)\]', block, re.DOTALL)

        if not (prompt_m and correct_m and options_m):
            continue

        prompt = prompt_m.group(1)
        correct = correct_m.group(1)
        options = re.findall(r'"((?:[^"\\]|\\.)*)"', options_m.group(1))

        # Sequencing items use a pipe-separated correctAnswer (ordered steps),
        # not a single option — skip them.
        if '|' in correct:
            continue

        if options and correct not in options:
            mismatches.append({
                'item': item_num,
                'prompt': prompt[:60],
                'correct': correct,
                'options': options
            })

    return mismatches

all_files = sorted(Path('CogniLink').rglob('*ExerciseData.swift'))
total = 0
for f in all_files:
    issues = check_file(f)
    if issues:
        print(f"\n{f.name}:")
        for iss in issues:
            print(f"  Item {iss['item']}: prompt='{iss['prompt']}'")
            print(f"    correctAnswer: '{iss['correct']}'")
            print(f"    options: {iss['options']}")
            total += 1

print(f"\nTotal remaining mismatches: {total}")
if total == 0:
    print("✅ All correctAnswers match their options. Fix verified.")
