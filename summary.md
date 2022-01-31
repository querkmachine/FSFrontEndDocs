---
layout: default
title: In summary&hellip;
---

## Follow the standards

If the project you're on has a specific way of doing something, be it the design of build tool chain, the way variables are named, or the architecture of the way Sass files are compiled, make your code work in the same way. It should look and act like a natural part of the project, not something that has been tacked on at the end. 

If the project has no defined way of doing something, research best practices used in other projects—internally and externally—and work to those.

## Be semantic

Semantics are approximately 95% of the reason that HTML exists. Make sure that the tags you're using are appropriate for the way you're using them; even if they may seem obvious at first glance (fun fact, the `<address>` tag is *not* for marking up addresses.) **To not write HTML semantically is to not write HTML correctly.**

*Read [Writing HTML]({{ site.baseurl }}{% link authoring-guidelines/writing-html.md %}).*

## Build progressively, enhance progressively

Write your HTML before you write CSS to enhance it. Write your CSS before you write JavaScript to enhance it. These are three seperate concerns, and you should anticipate how to make things work without the other concerns being available. 

Similarly separate the concerns of front- and back-end. Push as much functionality-related code as possible to the back-end; handling forms and validating data is what the back-end is there for. **Functionality only contained in the front-end is functionality that will, at some point, fail.**

Start with mobiles first, as these tend to have simpler layouts and functionality, then work upwards from there.

*Read [Progressive enhancement]({{ site.baseurl }}{% link concepts/progressive-enhancement.md %}) and [Responsive design]({{ site.baseurl }}{% link concepts/responsive-design.md %}).*

## Be abstract

We aim to build almost everything as a standalone piece of functionality that can be re-used for multiple contexts. We also aim to reduce the amount of duplication of that functionality, making for a more refined and consistent user interface. 

**Build with the expectation that your work will be reused elsewhere, and don't build anew what already exists.** Speaking of&hellip;

*Read [Writing CSS/Sass]({{ site.baseurl }}{% link authoring-guidelines/writing-css-sass.md %}), [Atomic design]({{ site.baseurl }}{% link concepts/atomic-design.md %}) and [Design systems]({{ site.baseurl }}{% link tools/design-systems.md %}).*

## Don't reinvent the wheel

Need a dropdown list? Use a `<select>`. Need a link that goes off somewhere? Use an `<a>`. Stick to the established behaviour for HTML tags and don't needlessly re-implement them. You'll regret it.

*Read [Writing HTML]({{ site.baseurl }}{% link authoring-guidelines/writing-html.md %}).*

## If you must reinvent the wheel, reinvent it completely

If you *have to* make a custom dropdown list of some sort, base it off a `<select>`, progressively enhance the styling with CSS and functionality with JavaScript, and make sure it behaves exactly as you would expect a normal dropdown list. Make sure it is subject to the same keyboard shortcuts, it's tabbable, it has focus styles, you can type in letters to reach values, and that it appears as an interactive control in the accessibility tree. It should do everything that a `<select>` can do, **otherwise you've only made something worse**.

**Don't throw away a perfectly good wheel for one that is substandard.** If you must reinvent, reinvent to completion.

*Read [Progressive enhancement]({{ site.baseurl }}{% link concepts/progressive-enhancement.md %}) and [Writing HTML]({{ site.baseurl }}{% link authoring-guidelines/writing-html.md %}).*

## Be kind, be accessible

Just because you don't have problems doesn't mean that other people don't. About 9% of people are colour blind, 10% are dyslexic, 4% are epileptic, 3.5% use screen readers—that's millions and millions of people—and everything you do can make their experience on the site much harder or much easier. Always opt for easier. 

*Read [Accessibility]({{ site.baseurl }}{% link concepts/accessibility.md %}) and [Writing microcopy]({{ site.baseurl }}{% link authoring-guidelines/writing-microcopy.md %}).*