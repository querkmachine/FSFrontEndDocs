---
layout: default
title: Atomic design
---

> One file to rule them all<br>One file to find them<br>One file to bring them all<br>And in the Sass way merge them.

We use the [atomic design](http://bradfrost.com/blog/post/atomic-web-design/) architecture for structuring Sass files. Atomic design, like BEM, encourages creating modular, reusable components that can work independently of one another. 

A typical project will divide Sass partials into six folders, with a single root file—typically named `stylesheet.scss`—that includes all of the partials. The folders are as so:

* App—contains project settings, mixins and functions.
* Atoms—incredibly simple (usually singular) page elements,   such as buttons, icons, typographic elements, form inputs, etc.
* Molecules—collections of atoms, such as a search form made up of form input and button atoms.
* Organisms—collections of molecules, such as a website masthead made up of search, branding and navigation molecules. 
* Templates—a collection of organisms; typically fairly generic and reusable, such as an article page. 
* Pages—individual instances of a template, such as an article about *20 cats you’ll want to cuddle*. 

**Partials should be named according to the BEM class that it relates to**, so styles for the `.profile-picture` block will be contained in the `_profile-picture.scss` partial. This makes the relevant code a bit easier to find.

<aside class="aside aside--correction">
An exception to this rule is partials that cover a concept rather than a specific component, such as typographic rules.
</aside>