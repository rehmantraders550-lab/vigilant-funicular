# HDC Visual Pipeline — File Contract

The pipeline is intentionally connected through files, not shared Python imports.

## Immutable source

`assets/<asset-id>/source/`

Never overwrite this directory.

## Asset sidecar

Every asset has `asset.json`:

```json
{
  "asset_id": "HDC-S03-UVDTF-001",
  "source_type": "verified-real|generated-study|blender-study",
  "proof_eligible": false,
  "source_sha256": "...",
  "working_color_space": "sRGB",
  "approved_stage": null
}
```

`proof_eligible` may be true only for a verified real HDC source.

## Stage files

### 00_ingest

Required:
- `master.png`
- `asset.json`

### 10_mask — BiRefNet

Outputs:
- `mask.png` — single-channel or grayscale alpha, same pixel dimensions as master
- `foreground.png` — RGBA, same pixel dimensions as master
- `asset.json` — append engine/ref/model and source checksum

Do not resize the master silently.

### 20_relight — IC-Light

Inputs:
- `master.png`
- `foreground.png`
- `mask.png`
- exact relighting instruction from the prompt book

Outputs:
- `relit.png`
- `asset.json`

Acceptance:
- geometry unchanged
- print boundary unchanged
- no new text/marks
- substrate identity unchanged
- no false highlight that implies a different coating/finish

For commercial HDC work, do not use IC-Light's bundled BRIA RMBG path; supply the BiRefNet mask.

### 30_upscale — Real-ESRGAN

Input:
- most recently approved `master.png` or `relit.png`

Output:
- `upscaled.png`
- `asset.json`

Default HDC rule:
- prefer `RealESRGAN_x2plus`
- do not enable face enhancement
- upscale only when target dimensions require it
- compare 100% crops against the source
- reject if halftone, registration, textile weave or raised-print edges are invented/changed

### 05_material — Dream Textures

Optional branch only.

Outputs may include:
- seamless substrate texture
- Blender material study
- rendered surface study

These are `generated-study` and are never proof-eligible.

### 90_approved — ComfyUI

ComfyUI is used as the visual workspace for:
- A/B comparison
- crop variants
- mask inspection
- safe compositing
- final desktop/mobile crop preparation

It is not the shared Python host for all upstream repos.

Final working masters remain lossless. Convert to WebP/AVIF only after approval.
