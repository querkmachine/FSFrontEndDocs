---
layout: default
title: Visual Studio drops the BOM
---

By default, Visual Studio will always save files encoded as 'UTF-8 with BOM' (Byte Order Mark). This is generally a good thing! UTF-8 with BOM supports the largest range of languages; without BOM, languages like Chinese wouldn't be available in the editor—not such a problem for us English speakers, but this is a planet for everyone. Byte order marks are typically represented in a document by prefixing it with the Unicode character `U+FEFF`. 

The problems begin with how 'persuasive' Visual Studio is with how it handles files. It doesn't matter what encoding the file used to have, <mark>VS will force it to be UTF-8 with BOM</mark>, even if that's not what you want it to be. Byte order marks can also appear in the middle of files, usually immediately preceding code pasted from elsewhere. 

This can *royally* break things. Some observed issues include:

* Errant spaces/margins appearing at the top or within pages (as HTML entity `&#65279;`)
* Being unable to parse hardcoded JSON files, even though the JSON is valid
* Comparison operators failing to match hardcoded strings, even though the string visually matches
* Being unable to parse hardcoded C# strings

## Fixin' it

Frustratingly, fixing this issue is not easy. 

Typically, removing the BOM involves doing the following: 

1. Open the affected file in [Notepad++](https://notepad-plus-plus.org)
2. Change the file encoding to something that doesn't support BOM (such as ANSI) by going to `Encoding > Convert to ANSI`
3. Select all (use <kbd>Ctrl</kbd>+<kbd>A</kbd>, don't highlight manually) and cut the entire contents of the file; paste into a new, temporary file
4. Manually re-type the section of the file which has the BOM issue
5. Copy and paste the rest of the file back into place
6. Save the file

