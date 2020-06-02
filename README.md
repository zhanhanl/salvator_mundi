# Salvator Mundi Project
This repository contain 3D models, textures, scene setup, codes that have been used to generate renderings in two _Salvator Mundi_ papers:

***On the Optical Accuracy of the Salvator Mundi*** [[intro](https://www.ics.uci.edu/~zhanhanl/web_files/projects/salvator_mundi/salvator_mundi_hollowness.md.html)]

***Inverse-Rendering Based Analysis of the Fine Illumination Effects in the Salvator Mundi*** [[intro](https://www.ics.uci.edu/~zhanhanl/web_files/projects/salvator_mundi/salvator_mundi.md.html)]
## Mitsuba Render
We used Mitsuba 0.5.0 for the rendering. 
[Mitsuba 0.5.0](http://www.mitsuba-renderer.org/index_old.html)

Outputs are HDR files, which can viewed by the following software:
[HDR file viewer](https://bitbucket.org/edgarv/hdritools)
## Files
```text
salvator_mundi/
├── component/
├── object/
├── texture/
├── rendering_defects_threewhitespots/
├── rendering_hollowness/
└── results
     ├── rendering_defects_threewhitespots/
     └── rendering_hollowness/
```
**component**

Scripts used to setting up different lighting.

**object**

3D models, including hand model, sculpted relief, reflector, etc. 

**texture**

Textures for the hand model, relief.

**rendering_defects_threewhitespots**

Rendering scripts that generate defects, three white spots. Scripts in this folder are used for generating results in paper  *Inverse-Rendering Based Analysis of the Fine Illumination Effects in the Salvator Mundi*

**rendering_hollowness**

Rendering scripts that generate hollow orb and related experimental results in paper *On the Optical Accuracy of the Salvator Mundi*

**results**

This folder contains finly rendered images.
