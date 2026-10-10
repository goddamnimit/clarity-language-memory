#!/usr/bin/env python3
"""Build the small woff2 files the video ships with.

Each source font (SIL Open Font License, downloaded once into font-src/) is pinned
to the weights the film uses and cut down to the characters that appear on screen.
"""
import re
import sys
from pathlib import Path

from fontTools.subset import Options, Subsetter
from fontTools.ttLib import TTFont
from fontTools.varLib import instancer

TOOLS = Path(__file__).resolve().parents[1]
REPO = TOOLS.parent
SRC = TOOLS / "font-src"
OUT = REPO / "website-update" / "video" / "fonts"
OUT.mkdir(parents=True, exist_ok=True)

LATIN = "".join(chr(c) for c in range(0x20, 0x7F)) + " ’‘“”—–·…•"
LATIN_EXT = (
    LATIN
    + "¡¿ÀÁÂÃÄÇÈÉÊËÍÎÏÑÓÔÕÖÚÜàáâãäçèéêëíîïñóôõöúüāēīōūếệ→"
)

farsi_module = (REPO / "website-update" / "video" / "js" / "farsi-item.js").read_text(encoding="utf-8")
farsi_text = "".join(re.findall(r'"([^"]*)"', farsi_module))
arabic_script = "".join(c for c in farsi_text if ord(c) >= 0x600 or c in "‌‍") + "فارسی" + "العربية"

JOBS = [
    # (source, output, axis pins, text)
    ("Fraunces.ttf", "fraunces-300.woff2", {"wght": 300, "opsz": 144, "SOFT": 0, "WONK": 0}, LATIN),
    ("Fraunces-Italic.ttf", "fraunces-300-italic.woff2", {"wght": 300, "opsz": 144, "SOFT": 0, "WONK": 0}, LATIN),
    ("Fraunces.ttf", "fraunces-500.woff2", {"wght": 500, "opsz": 72, "SOFT": 0, "WONK": 0}, LATIN),
    ("Inter.ttf", "inter-400.woff2", {"wght": 400, "opsz": 20}, LATIN_EXT),
    ("Inter.ttf", "inter-500.woff2", {"wght": 500, "opsz": 20}, LATIN_EXT),
    ("Inter.ttf", "inter-600.woff2", {"wght": 600, "opsz": 20}, LATIN_EXT),
    ("NotoDeva.ttf", "noto-devanagari.woff2", {"wght": 500, "wdth": 100}, "हिंदी"),
    ("NotoGujr.ttf", "noto-gujarati.woff2", {"wght": 500, "wdth": 100}, "ગુજરાતી"),
    ("NotoGuru.ttf", "noto-gurmukhi.woff2", {"wght": 500, "wdth": 100}, "ਪੰਜਾਬੀ"),
    ("NotoArab.ttf", "noto-arabic.woff2", {"wght": 500, "wdth": 100}, arabic_script),
    ("NotoArmn.ttf", "noto-armenian.woff2", {"wght": 500, "wdth": 100}, "Հայերեն"),
    ("NotoEthi.ttf", "noto-ethiopic.woff2", {"wght": 500, "wdth": 100}, "አማርኛ"),
    ("NotoSC.ttf", "noto-sc.woff2", {"wght": 500}, "普通话"),
    ("NotoKR.ttf", "noto-kr.woff2", {"wght": 500}, "한국어"),
    ("NotoJP.ttf", "noto-jp.woff2", {"wght": 500}, "日本語"),
]

total = 0
for source, output, pins, text in JOBS:
    font = TTFont(SRC / source)
    axes = {a.axisTag for a in font["fvar"].axes} if "fvar" in font else set()
    font = instancer.instantiateVariableFont(font, {k: v for k, v in pins.items() if k in axes})
    options = Options()
    options.flavor = "woff2"
    options.layout_features = ["*"]
    options.name_IDs = [1, 2, 3, 4, 6]
    options.notdef_outline = True
    subsetter = Subsetter(options)
    subsetter.populate(text=text)
    subsetter.subset(font)
    missing = [c for c in set(text) if ord(c) not in font.getBestCmap() and c not in " ‌‍"]
    if missing:
        sys.exit(f"{output}: source font has no glyph for {missing}")
    font.flavor = "woff2"
    font.save(OUT / output)
    size = (OUT / output).stat().st_size
    total += size
    print(f"{output:28s} {size:7d} bytes")

for licence in ("OFL-Fraunces.txt", "OFL-Inter.txt", "OFL-NotoSans.txt"):
    (OUT / licence).write_bytes((SRC / licence).read_bytes())
print(f"{'total':28s} {total:7d} bytes")
