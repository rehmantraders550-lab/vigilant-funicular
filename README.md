# HDC Visual Pipeline Hub

This repository orchestrates five upstream visual-processing projects for the Hadi Digital Craft (HDC) imagery workflow.

## Pipeline

1. **Dream Textures** — Blender-side procedural / AI-assisted texture and material ideation.
2. **ComfyUI** — graph-based orchestration and image workflow backbone.
3. **BiRefNet** — high-resolution object / foreground segmentation and masking.
4. **IC-Light** — controlled relighting for material response and grazing-light refinement.
5. **Real-ESRGAN** — final restoration and upscale.

## HDC operating rule

The pipeline supports the locked **Engineered Tactility** visual system. It does not redefine HDC architecture, positioning, copy, or proof claims.

## Repository topology

The upstream projects are linked as Git submodules and pinned to explicit commits. See `.gitmodules` and `pipeline/manifest.yml`.

## Intended flow

```
Reference / Gemini master
        |
        v
Dream Textures (optional material / Blender branch)
        |
        v
ComfyUI
        |
        v
BiRefNet
        |
        v
IC-Light
        |
        v
Real-ESRGAN
        |
        v
HDC web-ready asset
```

ComfyUI acts as the orchestration layer. Dream Textures is optional when Blender/material generation is useful; BiRefNet, IC-Light, and Real-ESRGAN are downstream refinement stages.
