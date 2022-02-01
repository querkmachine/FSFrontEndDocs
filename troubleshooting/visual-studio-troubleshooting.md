---
layout: default
title: Visual Studio troubleshooting
---

## Visual Studio drops the BOM

{% aside correction %}
This section was written based on an issue observed with Visual Studio 2015 and 2017. I haven't seen this problem pop up for a while now, so it may have been fixed in more recent versions of Visual Studio.
{% endaside %}

By default, Visual Studio will always save files encoded as 'UTF-8 with BOM' (Byte Order Mark, often referred to as 'UTF-8 with signature' in Microsoft land). This is generally a good thing! UTF-8 with BOM supports the largest range of languages; without BOM, languages like Chinese wouldn't be available in the editor—not such a problem for us English speakers, but this is a planet for everyone. Byte order marks are typically represented in a document by prefixing it with the Unicode character `U+FEFF`. 

The problems begin with how 'persuasive' Visual Studio is with how it handles files. It doesn't matter what encoding the file used to have, **VS will force all UTF-8 files to be UTF-8 with BOM**, even if that's not what you want it to be. Byte order marks can also occassionally appear in the middle of files, usually immediately preceding code pasted from elsewhere. 

This can *royally* break things. Some observed issues include:

* Errant spaces/margins appearing at the top or within pages (as HTML entity `&#65279;`).
* Being unable to parse hardcoded JSON files, even though the JSON is valid.
* Comparison operators failing to match hardcoded strings, even though the string visually matches.
* Being unable to parse hardcoded C# strings.

Visual Studio provides a temporary way of resolving this issue:

1. When saving the file, go to `File > Save <filename> As…`.
2. Click the dropdown arrow next to the standard Save button, selecting the `Save with Encoding…` option.
3. A dialog with encoding and line ending options will appear. In the Encoding dropdown, select `Unicode (UTF-8 without signature)`. This option is near the bottom of the list. 
4. Click OK. 

Visual Studio will remember this setting for as long as the file is still open, but will revert to saving with BOM after the file has been closed. 
