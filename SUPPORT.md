# Software support

## Tested software

| Status | Application | Comment
| ------ | ----------- | -------
| ✅ | Inkscape 1.4.2         |
| ✅ | Google Chrome 138      |
| ⚠️ | Krita 5.2.11           | No variable font axis support, only named instances work.
| ⚠️ | LibreOffice 25.2.4.3   | No variable font axis support, only named instances work.
| ⚠️ | GIMP 3.0.4             | No variable font axis support, only named instances work. Line-spacing is moronic, no proportional spacing.
| ⚠️ | Pixlr Editor           | No variable font axis support, only default weight works. Line-spacing is moronic, no proportional spacing.
| ⚠️ | Karbon 25.04.3         | No variable font axis support, only default weight works. Line-spacing is moronic, proportional spacing cannot go below 85%, fixed spacing is hard to set properly.
| ⚠️ | Blender 4.5.0          | No variable font axis support, only default weight works. No Boolean operations on text objects, must be converted to meshes.
| ❌ | Photopea 5.6           | Has variable font support but CFF2 outlines are broken. Only legacy glyph formats work.
| ❌ | KolourPaint 25.04.3    | No variable font axis support, only default weight works. No line-spacing options, default spacing is off.
| ❌ | LazPaint 7.2.2         | No variable font axis support, only Regular and Bold weight works. No line-spacing options, default spacing is off.
| ❌ | FreeCAD 1.0.1          | No multiline text support, no variable font axis support.
| ❌ | SolveSpace 3.1         | No multiline text support, no variable font axis support.
| ❌ | OpenSCAD 2021.01       | No multiline text support, no variable font axis support.
| ❌ | LibreCAD 2.2.1.1       | No OpenType font support.
| ❌ | Tinkercad              | No OpenType font support.
| ❌ | SketchUp Free          | Only supports built-in fonts.
| ❌ | Onshape                | Only supports built-in fonts. Has multiline text support but no line-spacing options. No variable font axis support.
| ❌ | PrusaSlicer 2.9.2      | Silently classifies CFF2 variable fonts as "bad fonts" (their terminology). Caches its naughty list in `fonts.cereal` without proper invalidation on font data changes. Only supports legacy font formats.
| ❌ | Penpot 2.7.2           | Silently refuses CFF2 variable fonts on the "Upload custom fonts" page. Dumps the following error to the developer console: `WRN [app.main.data.fonts] msg="skipping file KumikoPunch.otf, unsupported format"`. Only shows the default font weight for legacy variable fonts.
| ❌ | Akira 0.0.16           | Early development release has no functional text tools yet.
| ❌ | Scribus 1.6.3          | No CFF2 variable font support. Font is not listed in the font selector.
| ❌ | MyPaint 2.0.1          | No text tools.
| 💥 | Dune 3D 1.3.0          | Font selector crashes.
| 💥 | Dia 0.98               | Text properties window crashes.

## Untested software

| Status | Application | Comment
| ------ | ----------- | -------
| ✅❔ | Adobe Illustrator      | No license, couldn't test this. It seems to have robust variable font support.
| ✅❔ | Adobe Photoshop        | No license, couldn't test this. It seems to have robust variable font support.
| ✅❔ | CorelDRAW              | No license, couldn't test this. CorelDRAW help pages mention variable font support.
| ⚠️❔ | Clip Studio Paint      | No license, couldn't test this. CSP changelogs regularly mention bug fixes regarding variable fonts, so at least Celsys seems to be aware variable fonts exist.
| ❌❔ | MediBang Paint         | No desktop license, couldn't test this. The ad infested Android version could only load built-in fonts and didn't seem to have variable font support.
| ❌❔ | SolidWorks             | No license, couldn't test this. Based on random screenshots it doesn't seem to support variable fonts and line-spacing options.
| ❌❔ | Paint.NET              | Based on its documentation it doesn't seem to support variable fonts.
| ❌❔ | Bambu Studio           | Based on a GitHub feature request it doesn't seem to support multiline text.

## Legend

✅ Works - ⚠️ Partially works - ❌ Broken - 💥 Crash - ❔ Unknown
