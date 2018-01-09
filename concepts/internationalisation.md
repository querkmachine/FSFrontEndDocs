---
layout: default
title: Internationalisation
---

Internationalisation, commonly abbreviated to i18n, is the process of building a product that can be localised into multiple languages or cultures. While not many of our projects here have i18n support as a requirement, we occasionally do get one, and it's important to be prepared for this eventuality. 

Localisation (or l10n) is a related topic to internationalisation. Internationalisation is about the design and development process of a product to make it capable of localisation; localisation is about the act of localising, which we would mostly leave to a client or content manager.

## Be prepared

Always aim to build i18n into the initial website. Being able to predict and account for differences is so is much easier than doing so later on, and being able to test localised variants of the same component in one go makes for a more streamlined experience. 

Before you start, you are going to want to find out what languages and cultures you need to support. Do any of those have a right-to-left reading order? Do the brand webfonts have support for those languages? 

## Language ≠ culture ≠ location

They speak French in parts of Canada, the Carribbean and huge swathes of central and western Africa. Despite this, all of these places have distinct cultures and histories that make them different from France. You should never conflate a language with a specific culture, or the location where that culture is from. 

## Right to left: flipping the script

Supporting languages with a right-to-left reading order isn't simply a case of changing the `dir` attribute on your `<html>` tag. Right-to-left languages view *everything* right-to-left, and this is true of not just copy, but diagrams, iconography and interfaces. 'Next' arrows point right-to-left. Progress bars fill out right-to-left. Slideshows and carousels progress right-to-left. 

In situations like this Sass really comes into its own. Setting up a configuration file for each language and culture combination with a few options is easy, and can save a lot of time writing and re-writing code for each one by exploting the mixins and functions Sass does so well.

{% highlight scss %}
@if $lang == 'en-GB' {
	font-family: 'Gill Sans', sans-serif;
}
@if $rtl {
	margin-left: 3rem;
	text-align: right;
	float: right;
}
@else {
	margin-right: 3rem;
	text-align: left;
	float: left;
}
{% endhighlight %}

## Weights and measures

## Cultural considerations

### Colour

### Iconography