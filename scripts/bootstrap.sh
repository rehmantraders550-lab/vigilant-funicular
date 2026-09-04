#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-vendor}"
mkdir -p "$ROOT"

clone_pin () {
  name="$1"
  url="$2"
  sha="$3"
  dir="$ROOT/$name"
  if [ ! -d "$dir/.git" ]; then
    git clone "$url" "$dir"
  fi
  git -C "$dir" fetch --all --tags
  git -C "$dir" checkout --detach "$sha"
}

clone_pin dream-textures https://github.com/carson-katri/dream-textures.git c2622a8a9f1ae6b790cfe1d2571f814b126811b4
clone_pin comfyui https://github.com/Comfy-Org/ComfyUI.git e80c1570b6b44a2557d5d8e341e05782d18c9bbb
clone_pin birefnet https://github.com/ZhengPeng7/BiRefNet.git ebcc0bc8ec7fe919cec829f2dea656b3078acddc
clone_pin ic-light https://github.com/lllyasviel/IC-Light.git bcf3f29ca85be8a4686215f477b546f5030be8b7
clone_pin realesrgan https://github.com/xinntao/Real-ESRGAN.git a4abfb2979a7bbff3f69f58f58ae324608821e27

echo "HDC five-repo visual stack assembled in $ROOT"
