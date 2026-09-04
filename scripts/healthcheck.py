#!/usr/bin/env python3
from __future__ import annotations
from pathlib import Path
import subprocess
import sys

ROOT = Path(sys.argv[1] if len(sys.argv) > 1 else "vendor")

REPOS = {
    "comfyui": ("12d5279438bfefc058a269eae805ceab6047777f", ["main.py", "requirements.txt"]),
    "birefnet": ("ebcc0bc8ec7fe919cec829f2dea656b3078acddc", ["README.md", "requirements.txt"]),
    "ic-light": ("bcf3f29ca85be8a4686215f477b546f5030be8b7", ["gradio_demo.py", "requirements.txt"]),
    "realesrgan": ("a4abfb2979a7bbff3f69f58f58ae324608821e27", ["inference_realesrgan.py", "requirements.txt"]),
    "dream-textures": ("c2622a8a9f1ae6b790cfe1d2571f814b126811b4", ["README.md", "__init__.py"]),
}

errors = []
for name, (expected, required) in REPOS.items():
    path = ROOT / name
    if not (path / ".git").is_dir():
        errors.append(f"{name}: repository missing at {path}")
        continue
    actual = subprocess.check_output(
        ["git", "-C", str(path), "rev-parse", "HEAD"], text=True
    ).strip()
    if actual != expected:
        errors.append(f"{name}: expected {expected}, found {actual}")
    for rel in required:
        if not (path / rel).exists():
            errors.append(f"{name}: required entry file missing: {rel}")

if errors:
    print("HDC VISUAL HUB HEALTHCHECK: FAIL")
    for error in errors:
        print(f"- {error}")
    sys.exit(1)

print("HDC VISUAL HUB HEALTHCHECK: SOURCE CHECKOUT PASS")
print("Runtime/model inference is intentionally NOT claimed by this check.")
print("Each isolated environment must be validated separately before production use.")
