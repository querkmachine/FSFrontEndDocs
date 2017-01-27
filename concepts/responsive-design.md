---
layout: default
title: Responsive design
---

It’s rare nowadays that we get any project that isn’t going to be responsive, so in all likeliness, you’re going to be coding one. There’s plenty of stuff on the web already about how to do responsive design properly, so we’ll just talk about how we do it. 

&zwnj;<mark>We are mobile first.</mark> This means we build things for small screened, low-capability devices first before progressively adding functionality and ever-larger images for higher power devices. Mobile first has a tonne of advantages:

* It’s easier to develop something simple and make it progressively more complex than it is to make something that’s already complex simpler;
* It puts greater focus on building and perfecting the product’s core functionality; 
* It’s more performant; phones typically have fewer hardware resources and slower connections, so providing what they need first and foremost makes for faster load times; 
* From smartphones to smartwatches, the devices that people use to browse the web are getting smaller, not larger; an increasing number of web users across the world only use mobile devices—focusing on mobiles is future-proof;
* It’s progressive motherflippin’ enhancement, baby. 

CSS breakpoints should be mobile first, with breakpoints for larger resolutions afterwards. If you still need to support a browser that doesn't support media queries (may god have mercy on your soul) then use feature detection to serve those browsers different CSS. 

&zwnj;<mark>JavaScript which only applies to certain breakpoints should be initialised on that breakpoint</mark>. Use something like [matchMedia](https://developer.mozilla.org/en-US/docs/Web/API/Window/matchMedia) to determine the user’s screen resolution and conditionally initialise or destroy JS functions. 
