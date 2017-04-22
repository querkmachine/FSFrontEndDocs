---
layout: default
title: Pattern and component libraries
---

<aside class="aside aside--tangent">
A component library will usually only contain components and documentation on their use. 

A pattern library features components, but will also incorporate style guides and UI kits, going into detail about branding, the design as a whole and the technical implementation of design elements. 

This page uses the term 'pattern library' to refer to both.
</aside>

Pattern libraries exist to solve three of the biggest problems in user interface development: consistency, resuability, and maintainability.

## Consistency 

Barring only the smallest of projects, every website we build at Felinesoft is going to be developed by multiple people over a period stretching from a few months to several years, add that many of those projects are vast in scope and complexity and you have a recipe for messy code, inconsistent designs and a poor user experience. 

Pattern libraries can rectify this by **creating a collated, authoritarian source** for how components should look, behave and be implemented without having to look for examples in the codebase. 

## Reusability

Large projects often result in developers reimplementing already existing features, reinventing an already formed wheel, or just creating the twenty-third variant of a button to use in that one place on that one page. This is not only a horrible way to do things, it costs us time and money.

Pattern libraries rectify this by enabling developers unfamiliar with the project to find what features already exist and extend or build according to the already established rules, instead of reimplementing things anew. 

Pattern libraries are also reusable across projects, allowing multiple websites under the same umbrella to follow a consistent design language. The centralised location also means it only takes one developer to create a new component before it is available for use by everyone for every project. 

## Maintainability

Having a consistent pattern library that everybody works from makes maintenance easier too. It's much easier for a developer to work on other people's code when it is consistently written and categorised. New developers can also get up to speed much quicker by looking at the pattern library.

## Making a pattern library

Some short tips on building pattern libraries and integrating them with your work flow.

* Start early—Plan out the components based on the wireframes before active development has begun. Think about how templates can be broken down into smaller, nested parts.
* Plan for components—When planning work make a note (whether mentally or in writing) of what components each user story will need. Consider creating tasks for any that have not been developed yet.
* Library first, website later—Build everything in the library first before integrating it with the larger site. This allows you to work and test separately, away from any issues the main project may be having. 
* Keep it updated—A pattern library is all but useless if the information in it is wrong. It's meant to be the one authoritative source—**keep it that way!**

## Resources

* [Fractal](http://fractal.build/) is probably the best pattern library manager there is. Add on [the Nunjucks adaptor](https://github.com/frctl/nunjucks) and it's even better. 
* [styleguides.io](http://styleguides.io/)