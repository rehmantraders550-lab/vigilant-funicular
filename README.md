# HDC Visual Pipeline Hub

A reproducible **federated** visual-processing stack for Hadi Digital Craft (HDC).

> This hub does not vendor or merge the five upstream projects into one Python environment. That would create avoidable dependency conflicts. Each project stays isolated and exchanges lossless image files through a defined stage contract.

## Locked purpose

Support the HDC **Engineered Tactility** visual system without redefining website architecture, claims, positioning, or proof policy.

Generated or generatively edited media is never automatically treated as real HDC production evidence.

## Five-repo topology

```text
                    ┌──────────────────────────────┐
                    │ Dream Textures (optional)    │
                    │ Blender/material exploration │
                    └──────────────┬───────────────┘
                                   │ lossless render/texture
                                   v
SOURCE / MASTER ──> ComfyUI workspace ────────────────┐
   │                (preview, compare, crop, masks)   │
   │                                                  │
   └──────────────> BiRefNet ──> IC-Light ──> Real-ESRGAN
                     mask/alpha     relight      conditional upscale
                         │              │              │
                         └──────────────┴──────────────┘
                                   lossless PNG
                                        │
                                        v
                              ComfyUI final compare
                                        │
                                        v
                             approved web derivatives
```

### What "interconnected" means here

The repos are connected by **explicit file contracts and stage metadata**, not by importing all five codebases into one interpreter.

This is intentional:
- ComfyUI and IC-Light currently require incompatible `transformers` ranges.
- IC-Light is designed around Python 3.10-era dependencies.
- BiRefNet has its own modern PyTorch requirements.
- Dream Textures runs inside Blender and must remain outside the normal Python runtime.
- Real-ESRGAN is an older restoration stack and should not dictate the rest of the environment.

See `pipeline/contracts.md`.

## Repository roles

| Repository | Role | Mandatory? | Rule |
|---|---|---:|---|
| `Comfy-Org/ComfyUI` | visual workflow, compare, crop, composition | yes | use pinned stable release; do not rely on the currently problematic core BiRefNet path |
| `ZhengPeng7/BiRefNet` | high-resolution foreground/matting | only when masking is needed | run standalone; export mask + RGBA |
| `lllyasviel/IC-Light` | controlled relighting | optional | feed an externally prepared BiRefNet mask; do not use the bundled BRIA RMBG path for commercial HDC work |
| `xinntao/Real-ESRGAN` | restoration/upscale | optional | only if source resolution is insufficient; bypass when it changes print texture/registration |
| `carson-katri/dream-textures` | Blender texture/material exploration | optional | separate Blender branch; never a mandatory first stage |

## Important current risk

Recent ComfyUI reports show BiRefNet background-removal failures involving FP16/FP32 type mismatch and downstream alpha handling. For HDC, **BiRefNet is therefore isolated as a standalone stage until that path is validated again**.

## Stage order

Not every asset should run through every stage.

1. Ingest a lossless master.
2. Use Dream Textures only if a Blender/material study is actually required.
3. Use BiRefNet only if a mask/alpha is required.
4. Use IC-Light only if lighting is the defect and geometry/material identity can be preserved.
5. Use Real-ESRGAN only if resolution is inadequate.
6. Use ComfyUI before/after optional stages for comparison, crop derivatives and visual QA.
7. Convert to web formats only after approval.

## Bootstrap

`./scripts/bootstrap.sh`

The bootstrap **clones and pins source code only**. It intentionally does not install dependencies into a shared environment.

Then run:

`python scripts/healthcheck.py`

The healthcheck verifies repository presence, pinned commits, required entry files and the isolation policy.

## Production rules

- Processing masters: lossless PNG; preserve alpha where relevant.
- Do not pass WebP/JPEG between AI stages.
- Final web derivatives: sRGB WebP/AVIF, plus video derivatives as specified by the HDC website handoff.
- Keep original HDC photography immutable.
- Every generative stage must create a new derivative; never overwrite the source.
- Selected Work and other factual proof imagery must remain traceable to a verified real source.
