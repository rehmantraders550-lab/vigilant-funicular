# Hadi Digital Craft — AI-Assigned Visual Production Prompt Book v2

**Status:** Production prompt system  
**Governing doctrine:** Engineered Tactility  
**Website authority:** HDC Validated Website Construction Handoff + HDC Refined Editorial Implementation Blueprint  
**Purpose:** Assign each visual task to the AI/tool best suited to it, with prompts and acceptance gates optimized for that tool instead of forcing one model to do every stage.

---

## 1. Authority and non-negotiables

Hadi Digital Craft (HDC) is a specialised commercial printing-services business: DTF, UV DTF, Offset, and Large Format & Branding. It does not sell printers, machinery or printing equipment.

Every visual must prove at least one of these: **material, process, application, print quality, scale, or verified real work.** Decorative filler is rejected.

### Engineered Tactility

Show print as a physical event: substrate, ink, transfer film, pressure, registration, edge definition, texture, reflection, gloss/matte contrast, material response, scale, controlled production.

### Never fabricate

- client projects, client logos or brand names;
- machine specifications, capacities, certifications or turnaround claims;
- universal surface compatibility;
- numerical test results or fake production data;
- fake readable labels, packaging copy, signs or technical overlays.

### Visual exclusions

No neon/RGB tech glow, cyberpunk, holograms, particles, sparks, fake smoke/steam, liquid-ink spectacle, glossy generic AI blobs, stock-office scenes, gift-shop styling, smiling promotional models, machinery-as-product photography, or excessive cinematic bloom.

### Proof rule

Generated or generatively altered media is **conceptual/application-study media** unless explicitly tied to a verified real HDC source. Section 10 / Selected Work remains real, permissioned photography only.

---

## 2. Tool assignment matrix

| Task | Primary engine | Why | Do not use when |
|---|---|---|---|
| New still-image concept / application study | **Gemini image generation** | reference-aware material studies | a real HDC proof image already exists |
| Cinematic hero / process motion | **Flow / Veo** | shot, camera and temporal control | the asset is better communicated as a sharp still |
| Blender texture / seamless material / 3D surface exploration | **Dream Textures** | native Blender material branch | no 3D/material task exists |
| High-resolution foreground mask / alpha | **BiRefNet** | precise segmentation/matting | there is no masking requirement |
| Controlled relighting of an approved image | **IC-Light** | lighting correction while preserving subject | geometry or print detail is already fragile |
| Resolution recovery | **Real-ESRGAN** | conditional restoration/upscale | native pixels are already sufficient |
| A/B comparison, crop variants, stage assembly | **ComfyUI** | visual orchestration workspace | do not use it as one shared Python environment for all five repos |
| Adversarial visual review | **Gemini reviewer** | visual critique against HDC doctrine | never grant it architecture authority |
| Final architecture / claims / site placement | **ChatGPT / HDC handoff** | governing source of truth | never delegate final HDC factual authority to an image model |

### Mandatory rule

**Do not run every image through every tool.** Use only the stages required to correct a specific defect.

---

## 3. Shared visual specification for generative engines

Use this as the governing context for Gemini image generation and Flow/Veo. Do not blindly append it to operational tools such as BiRefNet or Real-ESRGAN.

> Hadi Digital Craft visual doctrine: Engineered Tactility. Show commercial printing through physically believable interaction between substrate, print layer, transfer, edge, texture, reflection, registration and finish. Material-first, quiet, restrained, premium, industrially precise. Use controlled neutral-white or warm-neutral studio light, charcoal / warm-ivory visual fields where appropriate, realistic micro-contrast, physically plausible reflections, disciplined negative space and editorial composition. The print/material relationship must remain legible at website crop size. No text, no logos, no watermark, no fake brand marks, no neon/RGB, no particles, no smoke, no cyberpunk, no generic promotional merchandise styling, no machinery sales presentation.

### Physical realism rules

- UV DTF: raised detail must be subtle and believable, not thick plastic extrusion or vinyl sticker.
- DTF: textile weave remains visible; the transfer sits on/in relation to fibre without melting the weave.
- Offset: halftone, registration, sheet texture and colour boundaries must look printable rather than digitally painted.
- Glass: transparent/specular behaviour must read clearly without impossible reflection.
- Metal: brushed/specular direction must stay coherent.
- Acrylic: edge/refraction must remain physically credible.
- Paper/board: fibre, coating and ink interaction must remain plausible.
- Large format: print stays the subject even when architecture establishes scale.

---

# PART A — GEMINI IMAGE GENERATION

## 4. Gemini operating instruction

Upload this prompt book, the current HDC construction handoff, the refined editorial blueprint, and only the reference images relevant to the requested asset.

Use this chat-level instruction once:

> You are HDC's still-image production partner. Follow the uploaded HDC prompt book and construction handoff as governing constraints. Do not alter site architecture, positioning, service claims, typography, routes or proof policy. Generate one asset per request. Preserve material physics and negative-space requirements exactly. Treat references as material/lighting/composition evidence only; do not copy readable text, logos or third-party marks. If a request conflicts with the HDC handoff, follow the handoff.

### Gemini output discipline

- One image per generation request.
- Generate desktop composition first unless the brief explicitly requests a matched set.
- Mobile is an independently composed image, not a blind crop.
- No baked typography.
- Keep key tactile evidence inside the safe crop zone.
- Prefer one dominant physical idea over a busy scene.

---

## 5. S01 — Hero still / poster

**Assigned engine:** Gemini image generation  
**Use:** hero poster, reduced-motion still, source frame for Flow/Veo reference.

### Desktop prompt

> Create a premium 16:9 macro editorial photograph for Hadi Digital Craft's homepage hero. Subject: a deep charcoal matte hard-surface specimen carrying a precise raised UV-DTF decorative transfer. Camera is extremely low and close, near probe-lens perspective but photographic rather than CGI. Preserve 40% of the left side as calm, low-detail charcoal negative space for website copy. Concentrate the tactile evidence center-right: one crisp transfer boundary, subtle raised gloss, micro-reflection and a narrow neutral-white raking highlight crossing the raised print while the matte substrate absorbs light. Show enough physical context to read the object as a real material specimen, not an abstract render. The transfer must be thin, crisp and physically bonded to the surface—never a thick sticker, vinyl lip or plastic extrusion. No hands, no machine hero, no text or branding. [Apply Shared Visual Specification]

### Mobile prompt

> Create a dedicated 9:16 version of the approved HDC UV-DTF hero concept; do not crop the desktop image. Keep the upper third and upper-left calm for typography. Place the most legible raised-print boundary in the lower-middle/right. Preserve the same charcoal substrate, subtle gloss elevation, neutral raking light, photographic material physics and quiet luxury. Show slightly more object context than desktop so the material remains understandable on a narrow screen. No text, logos, hands or machinery. [Apply Shared Visual Specification]

### Acceptance gate

Reject if the transfer reads as adhesive vinyl, the relief is exaggerated, the left desktop text zone is visually noisy, the scene becomes a machine advertisement, or the tactile edge disappears at ~390px mobile width.

---

## 6. S02 — Proof & Capability specimens

**Assigned engine:** Gemini image generation; real HDC media preferred when available.

Generate these separately.

### DTF edge

> Macro technical-editorial specimen of dense black cotton textile with one precise abstract DTF colour boundary crossing the weave. The textile weave must remain individually legible through the unprinted region and transition naturally at the transfer edge. Crop close enough that the material/print boundary is the entire story. No garment silhouette, person, text or logo. Neutral controlled studio light, slight side light to reveal fibre relief. [Apply Shared Visual Specification]

### Offset registration

> Extreme close-up of unbranded premium paperboard showing two printed colour fields meeting with precise registration, visible paper grain and a subtle physical registration/crop geometry near the edge. Keep the geometry abstract and non-readable. The sheet is the hero; machine components, if present at all, remain soft and secondary. [Apply Shared Visual Specification]

### Finishing / edge control

> Macro print-finishing specimen: a clean paperboard or hard-surface edge where print, substrate and finish can be inspected simultaneously. Crisp edge definition, controlled colour boundary, believable material thickness, restrained specular response. No fake gauges, technical UI or numbers. [Apply Shared Visual Specification]

---

## 7. S03 — DTF Printing

**Assigned engine:** Gemini image generation for still; Flow/Veo for motion.

### Still prompt

> Create a macro editorial photograph of DTF transfer on dense black cotton textile. Use a restrained abstract geometric graphic with no letters, logos, mascot or recognisable brand device. Show the transfer edge at a shallow angle so individual textile fibres remain visible beside the printed layer; the printed area should have a subtle different sheen but must flex visually with the fabric rather than look laminated. The garment itself is not the subject—crop so tightly that fibre, print edge and adhesion dominate. Soft overhead illumination plus a precise neutral edge light. No model, hanger, T-shirt mockup, heat-press branding, steam or oversaturated colour. [Apply Shared Visual Specification]

### Reject if

Fabric becomes smooth plastic, the transfer floats above fibres, or a generic apparel mockup becomes the focal point.

---

## 8. S03 — UV DTF Printing

**Assigned engine:** Gemini image generation for still; Flow/Veo for light/motion study.

### Still prompt

> Controlled macro material study of an unbranded matte-black or dark brushed-metal specimen decorated with one small abstract UV-DTF raised detail. Use a narrow neutral raking light at a shallow angle so the gloss edge, subtle elevation and exact application boundary become visible against the matte/brushed substrate. Keep relief physically modest—microscopic tactile elevation, not thick resin. Show one area of clean substrate beside the print so the finish contrast is obvious. No retail product styling, labels, readable marks or machinery. [Apply Shared Visual Specification]

### Reject if

The image implies universal metal compatibility, reads like a sticker, contains a vinyl edge, has impossible reflection, or creates chunky embossed plastic.

---

## 9. S03 — Offset Printing

**Assigned engine:** Gemini image generation for still; Flow/Veo for controlled sheet movement.

### Still prompt

> High-end commercial offset-printing close-up focused on printed stock rather than equipment. A premium unbranded paperboard sheet carries two restrained flat colour fields with crisp halftone detail, exact registration and visible paper/coating texture. Include a small physically printed registration-style geometric mark that contains no letters or numbers. Camera is close enough to inspect ink density and edge precision. Machinery may appear only as an abstract blurred mechanical boundary at the extreme background. No printer glamour shot, no fake control panel, no brand names. [Apply Shared Visual Specification]

---

## 10. S03 — Large Format & Branding route card visual

**Assigned engine:** Gemini image generation for conceptual application study; verified HDC image preferred.

> Architectural-scale application study of a large-format printed graphic integrated into a clean physical display or wall-panel environment. The graphic is abstract charcoal/ivory tonal geometry with no words or brand identity. Frame the print surface and panel alignment prominently; architecture only provides scale. Keep the environment restrained, premium and believable. No fictional storefront, shop logo, product shelving, billboard cliché or fabricated installation service claim. [Apply Shared Visual Specification]

---

## 11. S04 — Surface Laboratory matched set

**Assigned engine:** Gemini image generation  
**Production rule:** Generate the five surfaces as a controlled series. Lock camera family, approximate magnification, graphic motif size, light direction and background treatment across the set.

### Series master instruction

> Create a matched HDC Surface Laboratory specimen series. Every image uses the same restrained abstract print motif, comparable magnification, camera height, neutral raking-light direction and editorial studio field. Only the substrate changes. The purpose is to compare physical surface response, not advertise products. No text, labels, logos or props. [Apply Shared Visual Specification]

### Glass
> Transparent clear glass specimen with one small raised UV-DTF abstract transfer. Show the glass edge, controlled refraction, a restrained reflected highlight and exact transfer boundary. Avoid floating decal appearance.

### Metal
> Dark brushed-metal specimen with a small raised UV-DTF abstract transfer. Brushing direction remains coherent; raking light reveals both metal grain and subtle raised gloss.

### Acrylic
> Smoked acrylic plane with a small clean decorative transfer. Show polished acrylic edge/refraction and controlled surface reflection without turning the object into a retail product.

### Textile
> Dense black cotton textile with one small DTF transfer. Fibre weave and print boundary remain sharp and physically credible.

### Paper / board
> Warm-ivory uncoated or lightly coated paperboard with a restrained offset-printed geometric detail. Show paper grain, ink interaction and exact colour registration.

### Series acceptance
Reject the whole set if image-to-image lighting, scale or camera perspective drifts enough that the surfaces cannot be compared as one laboratory family.

---

## 12. S05 — Application Portfolio

**Assigned engine:** Gemini image generation only for conceptual placeholders; real HDC imagery has priority.

Every generated output must be internally tagged **generated application study — not client work**.

### Apparel & Textile
> Unbranded commercial textile application study shown through a tight crop of a printed uniform/apparel surface. Print edge, fibre and finish dominate. No model, lifestyle scene or ecommerce pose. [Apply Shared Visual Specification]

### Products & Objects
> Unbranded hard-surface object application study using a simple bottle, tumbler, acrylic or neutral object form. Print treatment is abstract and non-readable; frame material, edge and surface response rather than the whole retail object. [Apply Shared Visual Specification]

### Packaging & Paper
> Unbranded premium folding-carton or printed paperboard application study. Show board edge, crease/fold, print registration and material finish. No fake packaging copy, labels or brand identity. [Apply Shared Visual Specification]

### Brand Environments
> Restrained physical brand-environment application study where printed wall/window/display graphics are the main evidence. Abstract graphics only; architecture establishes scale. [Apply Shared Visual Specification]

### Events & Personalisation
> Close material-led personalised-object study with an abstract decorative transfer on stone, acrylic, wood or another validated-looking hard surface. No names, wedding text, dates, celebration props or gift-flat-lay styling. [Apply Shared Visual Specification]

---

## 13. S06 — Material Detail / Print Specimens

**Assigned engine:** Gemini image generation for missing conceptual specimens; real HDC macro assets preferred.

### Raised UV detail
> Ultra-detailed macro photograph of a subtle raised glossy print detail on a dark matte hard substrate. One glancing neutral highlight reveals the elevation and exact edge. Keep key edge fully in focus; shallow depth of field only beyond the inspection area. [Apply Shared Visual Specification]

### Textile fibre
> Ultra-detailed macro of DTF print meeting black textile fibre. Preserve individual fibre structure and a physically coherent print boundary. [Apply Shared Visual Specification]

### Offset registration
> Macro paperboard specimen showing exact alignment of two restrained colour fields, subtle halftone structure, paper texture and a small non-readable registration geometry. [Apply Shared Visual Specification]

### Paper + ink
> Warm-ivory paper/board macro showing ink sitting within/over the surface, subtle fibre, controlled solid colour density and clean edge definition. [Apply Shared Visual Specification]

### Hard-surface edge
> Macro hard-surface transfer edge with believable adhesion, minute raised finish and clean substrate-to-print boundary. [Apply Shared Visual Specification]

---

## 14. S07 — Large Format / Brand Environment

**Assigned engine:** Prefer real HDC photography/video. Gemini may create visual-direction references only.

> Create a conceptual HDC large-format environment study, not a client installation. Minimal architectural interior or commercial display field with one dominant printed wall, window or panel graphic. Abstract charcoal/warm-ivory graphic only. Start composition close enough that print texture/panel edge is visible, while perspective reveals environmental scale. No brands, signage text, retail clutter, people or fabrication activity beyond HDC's verified scope. [Apply Shared Visual Specification]

**Deployment rule:** Generated S07 media remains interim/reference unless explicitly approved as conceptual imagery; real HDC environmental evidence is preferred for production.

---

## 15. S08 — Process

**Assigned engine:** Real HDC process photography first; Gemini only for non-proof conceptual filler if unavoidable.

> Controlled close production moment showing anonymous gloved hands aligning an unbranded printed substrate to a simple registration/positioning guide. Frame the material edge and alignment action, not the worker or machine. No fake measurements, numerical displays, readable artwork or factory glamour. The visual communicates care and preparation rather than a claim about a specific machine. [Apply Shared Visual Specification]

---

## 16. S09 — Quality / Production Control

**Assigned engine:** Gemini image generation for conceptual macro control studies; real production evidence preferred.

> Macro HDC quality-inspection study focused on [ARTWORK EDGE / COLOUR FIELD / REGISTRATION / SURFACE BOUNDARY / FINISH]. Use a restrained inspection light and optionally a neutral loupe/tool entering only a small edge of frame. The visible evidence itself must carry the story: alignment, edge quality, print finish and material response. No fake lab equipment, dashboards, scores, rulers with invented readings or certification marks. [Apply Shared Visual Specification]

---

## 17. S10 — Selected Work

**Assigned engine:** No synthetic generation.

Only verified real HDC photography with confirmed permission/metadata may be used.

Permitted AI work is limited to conservative web preparation:
- crop;
- exposure/white-balance correction;
- dust/background cleanup that does not alter the printed work;
- masking when necessary;
- resolution recovery when necessary and validated against source.

Never generate missing project content, expand a client scene into fictitious space, replace client artwork, invent logos, add mockups or create a project that never existed.

---

# PART B — FLOW / VEO VIDEO PROMPTS

## 18. Flow/Veo operating instruction

Use image-to-video when an approved still establishes exact material appearance. Motion must reveal existing tactile evidence rather than invent new objects.

Video prompting order:
1. subject/material;
2. starting frame/state;
3. camera;
4. light/action;
5. physical response;
6. ending frame/loop;
7. exclusions.

Avoid multi-shot montage prompts for HDC hero/process loops. Prefer one controlled camera move.

---

## 19. S01 Hero video — desktop

**Assigned engine:** Flow / Veo  
**Preferred input:** approved Gemini or real still.

> Create a 6–8 second single-shot cinematic macro loop using the supplied approved HDC UV-DTF material reference as the appearance anchor. Preserve the exact substrate geometry, print placement and material colour. Camera performs a slow mechanically stable lateral macro track with no handheld movement and no sudden focus pull. Start nearly dark with the matte charcoal surface readable but the raised print subdued. A narrow neutral-white raking light enters from the right and travels across the raised UV-DTF detail, revealing only subtle gloss elevation, exact edge definition and realistic reflection while the matte substrate remains light-absorbing. Mid-shot, reveal slightly more physical context without changing the object. Let the highlight leave and return naturally to the opening dark state for a seamless loop. Preserve approximately 40% calm left-side negative space throughout. No hands, no machinery hero, no text, logos, particles, smoke, sparks, liquid ink, neon, exaggerated depth, plastic extrusion or morphing geometry.

### Reject if
Geometry changes between frames, the transfer grows/shrinks, lighting becomes RGB, print relief inflates, camera drifts into handheld motion, or the loop visibly jumps.

---

## 20. S01 Hero video — mobile
> Create a dedicated 9:16 single-shot HDC UV-DTF macro loop from the approved vertical reference. Preserve the object and print geometry. Keep upper-left/upper-middle visually calm for website copy; tactile action remains lower-middle/right. Slow controlled lateral or micro push-out camera move only. A narrow neutral raking light reveals the subtle raised transfer edge and exits. Maintain slightly more physical object context than desktop. No blind crop behaviour, no new objects, no text or logos, no morphing.

---

## 21. DTF motion loop
> 5–6 second controlled macro DTF textile study. Begin on dense dark textile with visible weave and the printed transfer edge already partially visible. Camera makes a slow shallow-angle slide parallel to the transfer boundary. If peel action is shown, keep it minimal and mechanically plausible; the textile must not stretch unnaturally and no steam is present. End on the completed print edge flexing naturally with the fabric. No model, garment hero, heat-press advertisement or dramatic reveal effects.

---

## 22. UV DTF light loop
> 5–6 second macro light study of an approved hard-surface UV-DTF specimen. Camera remains almost locked with only a tiny controlled lateral drift. A narrow neutral raking highlight travels across the subtle raised print, revealing gloss-versus-matte response. Do not animate the transfer itself, do not peel it, and do not change its thickness or geometry. No sparkles or glow.

---

## 23. Offset process loop
> 5–6 second close commercial offset-printing process study focused on printed paperboard sheet movement. Show controlled linear sheet travel and a moment where registration/colour detail becomes readable. Machine components remain partial and secondary. Camera is stable, movement mechanical, speed moderate and inspectable. No dramatic factory montage, spinning rollers as spectacle, fake control panels or brand names.

---

## 24. Large-format environment loop
> 6–8 second single-shot architectural print study. Start close enough to see the texture or panel edge of a large-format printed surface, then perform a slow controlled lateral track or gentle push-out so the wider environment becomes legible while the print remains dominant. No drone motion, whip pan, crowd, fictional signage or commercial montage.

---

# PART C — DREAM TEXTURES / BLENDER

## 25. Dream Textures assignment

Dream Textures is **not** a general HDC image generator. Use it only when a Blender-based substrate/material study materially improves a scene, such as:
- seamless paper/fibre surface;
- matte painted panel texture;
- subtle brushed-metal roughness study;
- material reference for a 3D mock surface;
- texture projection for a controlled Blender concept.

### Dream Textures material prompt template
> Seamless physically plausible [SUBSTRATE] material texture for a premium commercial-print studio study. Real-world microstructure only: [paper fibre / subtle brushed metal grain / fine matte coating / restrained stone porosity / dark textile weave]. Even illumination, orthographic/material-scan character, no object shadows, no printed words, logos, scratches that form symbols, stains, decorative patterns or cinematic lighting. The texture must tile cleanly and support close macro rendering without obvious repetition.

### HDC rule
Dream Textures output is a **generated material study**, never real production proof.

---

# PART D — BIREFNET

## 26. BiRefNet operational brief

BiRefNet does not need an aesthetic prompt. It needs a segmentation target specification.

### Mask brief
> Target foreground: [EXACT OBJECT / PRINTED SPECIMEN]. Preserve all true object edges, transparent/semtransparent edge behaviour where possible, fine fibres if they materially affect the print boundary, and holes/cutouts. Exclude background, cast shadow unless physically inseparable, props and reflections that do not belong to the object. Output mask at exactly source pixel dimensions plus an RGBA foreground. Do not resize or crop.

### Preferred model selection
- general robust object extraction: `BiRefNet_dynamic`;
- difficult high-resolution/fine-alpha edge: `BiRefNet_HR-matting`.

### Acceptance gate
Inspect at 100% and 200%:
- no clipped transfer edge;
- no missing textile fibres that define the boundary;
- no halo;
- no changed dimensions;
- no accidental inclusion of background text/logo.

---

# PART E — IC-LIGHT

## 27. IC-Light assignment

Use only when lighting is the problem in an otherwise approved composition. Feed the approved source/foreground and BiRefNet mask.

### HDC relighting prompt — UV DTF / hard surface
> Neutral premium studio relighting. Create one narrow soft-edged white raking source from [LEFT/RIGHT] at a shallow angle to reveal the existing raised print edge and real substrate texture. Keep overall scene dark and restrained. Preserve original geometry, print placement, colour and material identity. No warm sunset, neon, coloured rim light, glow, haze or extra highlights. The relight must reveal existing physical detail rather than imply a different coating or thicker relief.

### HDC relighting prompt — paper/offset
> Soft neutral overhead source with a restrained low-angle side light that reveals real paper grain, printed colour boundary and sheet edge. Maintain natural paper colour and print density. No glossy conversion, vignette spectacle or dramatic colour cast.

### HDC relighting prompt — textile
> Soft neutral overhead illumination plus a subtle side light grazing across the actual textile weave and print boundary. Preserve fibre structure, black level and transfer colour. No fashion lighting, coloured rim light or artificial sheen.

### Reject if
IC-Light changes geometry, invents gloss, shifts brand-relevant colours materially, hides registration, or turns matte material into polished material.

---

# PART F — REAL-ESRGAN

## 28. Real-ESRGAN operational rules

No aesthetic prompt. This is a conditional restoration stage.

### HDC default
- Prefer `RealESRGAN_x2plus` for photographic material detail when 2x is sufficient.
- Do not use anime models.
- Do not enable face enhancement.
- Use tiling only as needed for memory; inspect tile seams.
- Bypass completely if native resolution already meets the final crop.

### Mandatory comparison
At 100% compare before/after on:
- textile weave;
- UV-DTF edge;
- halftone/registration marks;
- paper fibre;
- substrate grain;
- small geometric print detail.

Reject if the upscale invents fibres, false halftone, sharpening halos, fake edge relief or texture that was not present in the source.

---

# PART G — COMFYUI

## 29. ComfyUI assignment

ComfyUI is the **visual orchestration and comparison workspace**, not the place where all five upstream repos are pip-installed into one environment.

Use it for:
- source vs derivative comparison;
- safe crop generation;
- alpha inspection;
- assembling approved background + foreground derivatives;
- desktop/mobile crop variants;
- contact-sheet review;
- final approved-stage export.

### Workflow rule
Every workflow should make the source path and derivative stage explicit:

`SOURCE -> optional MASK -> optional RELIGHT -> optional UPSCALE -> CROP -> COMPARE -> APPROVE`

Never hide a generative replacement inside an apparently corrective workflow.

### HDC crop gates
Desktop hero: preserve left text safe zone.  
Mobile hero: independently composed source preferred.  
Macro specimens: key edge must remain inside crop and fully readable.  
Surface Lab: maintain matched scale across all five crops.

---

# PART H — GEMINI ADVERSARIAL REVIEW

## 30. Asset review prompt

> Act only as an adversarial HDC visual reviewer. Evaluate the supplied asset against Engineered Tactility and the assigned website section. Return exactly:
> 1. `PASS`, `REVISE`, or `REJECT`;
> 2. `PHYSICAL REALISM` — one precise sentence;
> 3. `HDC POSITIONING` — one precise sentence;
> 4. `CROP / COMPOSITION` — one precise sentence;
> 5. `CLAIM / PROOF RISK` — one precise sentence;
> 6. if not PASS, one replacement generation/edit prompt that corrects only the identified defects.
>
> Automatically reject: legible fake text/logos, machinery-sales framing, generic promotional-gift styling, cyberpunk/neon, impossible material response, exaggerated UV relief, melted textile fibres, floating print, invented client context, fabricated measurements/certifications, or a crop where the physical evidence is unreadable at website size. Do not redesign the website or change HDC architecture.

---

## 31. Matched-set review prompt

> Review these images as one HDC matched set. Score consistency in camera family, magnification, light direction, background tone, material realism, motif scale and crop hierarchy. Return only: `PASS SET` or `REBUILD SET`; then list the maximum three mismatches that prevent the images from reading as one controlled material family. Do not reward variety; reward controlled comparability.

---

# PART I — PRODUCTION PROTOCOL

## 32. Generation order

1. S01 desktop hero still.
2. Review.
3. S01 mobile hero still.
4. Review as pair.
5. Generate Flow/Veo desktop hero loop from approved still.
6. Generate mobile video only after desktop video passes.
7. S03 route visuals: DTF -> UV DTF -> Offset -> Large Format.
8. Surface Lab five-image series.
9. S06 macro specimens.
10. S05 application studies only where approved real media is absent.
11. S07 conceptual reference only if real environment asset is still missing.
12. S08/S09 only if real production evidence is insufficient.
13. Stop at S10; use real HDC work only.

---

## 33. Processing decision tree

For every approved generation/real source:

- Need foreground isolation? -> BiRefNet.
- Lighting defect only? -> IC-Light using approved mask.
- Insufficient pixel dimensions? -> Real-ESRGAN, then 100% comparison.
- Need Blender material study? -> Dream Textures branch.
- Need crop/compare/assembly? -> ComfyUI.
- None of the above? -> **Do nothing. Preserve the approved master.**

---

## 34. Asset metadata

Each approved output must record:
- asset ID / filename;
- source type: `verified-real`, `generated-study`, `blender-study`;
- assigned section;
- engine/model used;
- source reference(s);
- desktop/mobile role;
- processing stages applied;
- proof eligibility;
- approval date;
- reviewer status.

### Naming convention
`HDC-S##_TYPE_SUBJECT_VARIANT_v##.ext`

Working masters stay PNG/lossless between AI stages. WebP/AVIF are final delivery derivatives, not inter-stage masters.

---

## 35. Final deployment gate

An asset may enter the HDC production website only when:
- its visual role is defined;
- material/process behaviour is credible;
- no fake text/logo/claim exists;
- desktop/mobile crop is appropriate;
- generated media is not presented as real client proof;
- any BiRefNet/IC-Light/Real-ESRGAN processing has been visually compared against the source;
- filename and metadata follow the HDC system;
- it supports the locked page architecture rather than forcing a redesign.
