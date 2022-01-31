---
layout: default
title: Felinesoft front-end frameworks
---

Over time we have built a number of front-end frameworks and libraries for our own use. These are all open source, because I (Kim) made them predominantly in my own time, and open source things are neat. Besides, there's not much point to closed source HTML, CSS and JavaScript when every browser on earth can download and read it.

## Kickstart

[Kickstart](https://github.com/querkmachine/kickstart) was the framework used for most projects between 2015 and 2019. It is built on top of the [Fractal](http://fractal.build) design system tool, utilising an [Atomic Design](https://atomicdesign.bradfrost.com)-based architecture. Components are split into three levels of complexity (atoms, molecules, organisms) and pages into two level based on specificity (templates and pages), with these built as a one-way hierarchy (pages are instances of templates, templates are built out of organisms, organisms are built out of molecules, etc.)

Kickstart has been deprecated, new projects should not use it.

## Kickstart 8

[Kickstart 8](https://github.com/querkmachine/kickstart8), appropriately the eighth major revision of Kickstart, is primarily used in projects between 2019 and 2021. Projects since 2021 still use elements of it, in combination with Felafel (see below). 

Kickstart 8 uses a componentised architecture that borrows elements from Atomic Design, but flattens the atom, molecule and organism layers into a flat list of components to help simplify tooling. Like Kickstart, it uses Fractal for design system management.  Kickstart 8 is also notable for having the concept of implementation-agnostic tokens (using [Theo](https://github.com/salesforce-ux/theo)) that can be shared across Sass, JavaScript, mobile apps and basically anything that can read an XML or JSON file. This concept was dropped starting with Felafel as it created additional build effort, and most of our projects just don't require that level of flexibility.

### Setting up Kickstart 8

1. Set up a new, dedicated git repo for the project design system. This should have its own build/deploy pipeline that pulls from the develop branch, so that clients can review components and templates for sign off.
2. Create a copy of Kickstart 8—either by cloning it and then deleting the `.git` folder, or by downloading and copying the files manually.
3. Update the namespaces and `package.json` used in Kickstart 8 (see [Kickstart 8's readme](https://github.com/querkmachine/kickstart8/blob/develop/README.md)).
4. Run `npm run start` in a terminal to start the local development server.
5. Run `npm run add "Component Name"` to boilerplate new components.
6. To add new templates and pages, create separate “templates” and “pages” folders inside of the `component` folder, then nest folders for each view within those folders.

## Felafel

[Felafel](https://github.com/querkmachine/felafel) (the Felinesoft Agile Front-End Library) is a CSS/JS architecture designed for projects of all sizes. It is highly customisable and highly modular, with nearly every part of it being optional to use and having a myriad of settings variables on both global and per-component scopes.

Felafel uses [a variation of the ITCSS architecture](https://github.com/querkmachine/felafel/blob/master/src/scss/README.md) and is also the first to fully utilise the [Sass module system](https://sass-lang.com/blog/the-module-system-is-launched) and [dynamic JavaScript imports](https://javascript.plainenglish.io/dynamic-imports-in-javascript-explained-with-examples-c2122743e5ac). 

Unlike Kickstart, Felafel does not have a built-in design system component. It is therefore commonly used in combination with Kickstart 8. This combination has been the primary means of starting new projects since mid-2021.

### Setting up Felafel with Kickstart 8

1. Set up a new, dedicated git repo for the project design system. This should have its own build/deploy pipeline that pulls from the develop branch, so that clients can review components and templates for sign off.
2. Create a copy of Kickstart 8—either by cloning it and then deleting the `.git` folder, or by downloading and copying the files manually—removing code relating to tokens and most of the Sass code.
3. Update the namespaces and `package.json` used in Kickstart 8 (see [Kickstart 8's readme](https://github.com/querkmachine/kickstart8/blob/develop/README.md)).
4. Run `npm install @querkmachine/felafel` in a terminal to install Felafel.
5. Import the parts of Felafel you're using into your Sass and JS entry files.
6. Run `npm run start` in a terminal to start the local development server.
7. Run `npm run add "Component Name"` to boilerplate new components. You sould import and use Felafel variables and helpers wherever possible, and bespoke code where necessary, to get the most out of Felafel's benefits.
8. To add new templates and pages, create separate “templates” and “pages” folders inside of the `component` folder, then nest folders for each view within those folders.

## Vanilla Validation

[Vanilla Validation](https://github.com/querkmachine/vanilla-validation) is a vanilla JavaScript library that leverages the browser's own [Constraint Validation API](https://developer.mozilla.org/en-US/docs/Web/API/Constraint_validation) to display custom validation messages on forms. It has a bunch of options, ARIA for accessibility compliance, and generally tries to follow best practices where known. It is made to integrate seamlessly with Umbraco Forms, the form builder used on many Felinesoft projects. 

Vanilla Validation was built in late-2021. At time of writing, the npm-hosted library isn't used on any projects, although early and bespoke iterations of it exist in the source code of several projects. Vanilla Validation should ideally be used going forwards. 