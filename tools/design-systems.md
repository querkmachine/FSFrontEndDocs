---
layout: default
title: Design systems
---

Design systems are a tool that nearly every Felinesoft project utilises. Usually consisting of a central repository of information, components and documentation for each project; the design system simultaneously acts as a front-end developer's main involvement within a project, a back-end developer's guide to implementation of the front-end, and the client's touchpoint for approving UIs before they are integrated. 

Design systems can be seen as an extension of the client's brand guidelines, showing how the principles of the brand have been turned into a functional user interface.

{% aside tangent %}
The phrases "component library" or "pattern library" are commonly used interchangably with "design system". These are related but distinct terms: 

A component library typically only contains UI components.

A pattern library will include components and examples of how they work together to create fuller experiences (aka, patterns).

A design system includes both of these, plus information about assets, the wider design language (such as typography and acceptable colour combinations), desired brand perception, tone of voice, etc.
{% endaside %}

## Why use a design system? 

exist to solve three of the biggest problems in user interface development: consistency, reusability, and maintainability.

### Consistency

Barring only the smallest of projects, every website we build at Felinesoft is going to be developed by multiple people over a period stretching from a few months to several years, add that many of those projects are vast in scope and complexity and you have a recipe for messy code, inconsistent designs and a poor user experience. 

Design systems rectify this by **creating a collated, authoritarian source** for how brand and components should look, behave and be implemented without having to manually trawl for examples in the codebase.

### Reusability

Large projects often result in developers reimplementing already existing features, reinventing an already formed wheel, or just creating the twenty-third variant of a button to use in that one place on that one page. This is not only a horrible way to do things, it costs us time and money. Design systems rectify this by enabling developers unfamiliar with the project to find what features already exist and extend or build according to the already established rules, instead of reimplementing things anew.

Design systems can even be reusable across projects, allowing multiple websites under the same umbrella to follow a consistent design language. The centralised location also means it only takes one developer to create a new component before it is available for use by everyone on every project. Design systems need not be constrained to just websites, you can theoretically use the same design system across websites, apps, print design, and more.

### Maintainability

Having a consistent design system that everybody works from makes maintenance easier too. It's much easier for a developer to work on other people's code when it is consistently written and categorised. 

New developers can also get up to speed much quicker by looking at the design system, while back-end developers will be able to pull together new functionality without needing front-end to build each and every template for them.

## Making a design system

At Felinesoft, we've long used [Fractal](http://fractal.build/) with the [Nunjucks adaptor](https://github.com/frctl/fractal/tree/main/packages/nunjucks) for our design system management. Nunjucks is a fair amount more powerful than the Handlebars adaptor that Fractal ships with, and it allows for the use of macros, which are themselves a bit more flexible than Fractal's own render system. 

See Kickstart 8 on [the frameworks page]({{ site.baseurl }}{% link tools/felinesoft-frameworks.md %}) for the Fractal/Nunjucks architecture we've used on most of our projects in recent years.

### What to include

Our design systems typically include some of the following information. Depending on time (or lack thereof) and the nature of the project, not all of these pages may exist, but ideally they should.

Overview
: A page introducing the user to the design system, providing some background on the project, and detailing what the current status of the system is. 

Design principles documentation
: This includes the more conceptual aspects of the design system. What is the goal of the redesign (if there is one)? What feelings does the brand want to invoke? What was the thinking behind feature X, Y and Z? This information helps situate a designer/developer, and helps them understand what the design system is _supposed_ to do, not just what it _can_ do. 

Visual language documentation
: This is the practical and visual aspects of the design system. This includes design tokens, colour palettes, acceptable colour usage, type hierarchy, iconography, spacing systems, and other parts of the system that are simultaneously part of every component, but also not components in themselves. They should be listed alongside the relevant reference in code (usually a Sass variable), so a developer can easily find and use them. 

Technical documentation
: Any documentation about the technical architecture of the project. Namespaces, modularisation, browser compatibility tables, and so forth. These help a developer understand how things are structured and may guide them as to why certain decisions have been made in the past.

Content guidelines
: Details on tone of voice, spelling, words or phrases to avoid, photography and art direction, and so on. As most of our projects have content manageable UI labels this may seem irrelevant, but language in the design system prototypes often carries through to the final product, so it's good to get it right from the start. 

### Tips on starting a design system

Start early
: Plan out the components based on the wireframes before active development has begun. Think about how templates can be broken down into smaller, nested parts.

Tokenise everything
: Every colour, typeface, font size, or other element in the client's brand guide should be available in your code (usually as a Sass variable).

Plan for components
: When planning work make a note (whether mentally or in writing) of what components each user story will need. Consider creating tasks for any that have not been developed yet.

Library first, website later
: Build everything in the library first before integrating it with the larger site. This allows you to work and test separately, isolated from any issues the main project may be having.

Minimise the number of components you have
: If you've already implemented (for example) a custom select dropdown, think very, very hard about whether you need to create another one just because the UX or UI appears to use a different one. Everything in the design system should exist to fill a purpose that nothing else can do—do you really need a new dropdown, or will the existing one still work? 

Keep it updated
: A pattern library is all but useless if the information in it is wrong. It's meant to be the one authoritative source—**keep it that way!**

## Examples

Some very nice design systems (or component/pattern libraries) from the biggest brands around the world.

* [Atlassian Design System](https://atlassian.design)
* [Audi CI](https://www.audi.com/ci/en/renewed-brand.html)
* [Carbon Design System](https://www.carbondesignsystem.com) (IBM)
* [Clarity Design System](https://clarity.design) (VMWare)
* [Fleet Pattern Library](https://patterns.boston.gov) (City of Boston)
* [Fluent UI](https://developer.microsoft.com/en-us/fluentui/) (Microsoft)
* [FutureLearn Design System](https://storybook.futurelearn.com/)
* [GEL](https://www.bbc.co.uk/gel) (BBC)
* [GOLD Design System](https://gold.designsystemau.org) (Australian government)
* [GOV.UK Design System](https://design-system.service.gov.uk) (UK government)
* [Kubrick Design System](https://edgallois.bitbucket.io/kubrick/index.html) (Arranger)
* [Mailchimp Pattern Library](https://ux.mailchimp.com)
* [Material Design](https://material.io) (Google)
* [Lightning Design System](https://www.lightningdesignsystem.com) (Salesforce)
* [Polaris Design System](https://polaris.shopify.com) (Shopify)
* [Source Design System](https://theguardian.design/) (The Guardian)
* [Spectrum Design System](https://spectrum.adobe.com) (Adobe)
* [Starbucks Pattern Library](https://www.starbucks.com/developer/pattern-library)
* [U.S. Web Design System](https://designsystem.digital.gov) (US federal government)

Many more examples can be found on [styleguides.io](http://styleguides.io/).
