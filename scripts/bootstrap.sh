#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-vendor}"
mkdir -p "$ROOT"

clone_pin () {
  local name="$1"
  local url="$2"
  local ref="$3"
  local sha="$4"
  local dir="$ROOT/$name"

  if [ ! -d "$dir/.git" ]; then
    git clone --filter=blob:none "$url" "$dir"
  fi

  git -C "$dir" fetch --tags origin
  git -C "$dir" fetch origin "$sha" || true
  git -C "$dir" checkout --detach "$sha"

  actual="$(git -C "$dir" rev-parse HEAD)"
  if [ "$actual" != "$sha" ]; then
    echo "ERROR: $name expected $sha but checked out $actual" >&2
    exit 2
  fi
  echo "OK  $name  $ref  $sha"
}

clone_pin comfyui https://github.com/Comfy-Org/ComfyUI.git v0.34.0 12d5279438bfefc058a269eae805ceab6047777f
clone_pin birefnet https://github.com/ZhengPeng7/BiRefNet.git ebcc0bc8ec7fe919cec829f2dea656b3078acddc ebcc0bc8ec7fe919cec829f2dea656b3078acddc
clone_pin ic-light https://github.com/lllyasviel/IC-Light.git bcf3f29ca85be8a4686215f477b546f5030be8b7 bcf3f29ca85be8a4686215f477b546f5030be8b7
clone_pin realesrgan https://github.com/xinntao/Real-ESRGAN.git a4abfb2979a7bbff3f69f58f58ae324608821e27 a4abfb2979a7bbff3f69f58f58ae324608821e27
clone_pin dream-textures https://github.com/carson-katri/dream-textures.git 0.4.1 c2622a8a9f1ae6b790cfe1d2571f814b126811b4

cat <<'EOF'

Source checkout complete.

IMPORTANT:
- Do NOT pip-install all five projects into one environment.
- Dream Textures belongs inside Blender.
- IC-Light should use its own Python 3.10 environment.
- BiRefNet, Real-ESRGAN and ComfyUI should remain isolated.
- Run: python scripts/healthcheck.py
EOF
