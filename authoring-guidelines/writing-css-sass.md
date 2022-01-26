---
layout: default
title: Writing CSS and Sass
---

We use [Sass](http://sass-lang.com/) as our CSS preprocessor of choice, and use the SCSS syntax. Sass is generally better supported by developers than other compiled languages and SCSS is much closer to the vanilla CSS syntax, which is indispensable whenever a back-end developer has to poke around. 

## Selectors

CSS selectors and properties should be in kebab-case—all lowercase, with hyphens to separate words. Try to **use whole words for selector names** rather than abbreviations, as it makes code easier to understand at a glance.

As much as possible **use classes to style elements** and avoid nesting or creating needlessly specific selectors (*especially* IDs). Doing so maintains [low specificity](https://stuffandnonsense.co.uk/archives/images/specificitywars-05v2.jpg) across the project, making it easy to make conditional changes later on without having to resort to a cheeky `!important`. 

Avoid using an element name as a selector or qualifier unless that element can (by specification) only appear once in the document. `html` and `body` are the most common exceptions. 

You *may* use an element name as a selector if you’re unable to add a class name to the output as is often the case with CMS-managed data. In these cases scope the selectors to a containing class such as `.wysiwyg`.

{% highlight scss %}
.wysiwyg {
    h1 {
        @include header-1;
        font-style: italic;
    }
    del { text-decoration: line-through; }
    a {
        color: #fc0;
        text-decoration: underline;
    }
}
{% endhighlight %}

### BEM syntax

We use [BEM (Block, Element, Modifier) syntax](http://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax/) for authoring CSS. I’d totally recommend reading that article for the full picture, but here’s a gist:

*Blocks* are individual components, like a call to action or a styled list. **Blocks should be self-contained** and able to be dropped anywhere with little to no extra effort. For this reason it’s a good idea to avoid applying specific dimensions, margins or paddings to them. 

A block will simply be a class name. 

{% highlight css %}
.fancy-button {}
{% endhighlight %}

*Elements* are the… well, elements that are inside blocks. These are delimited with double underscores.

{% highlight css %}
.fancy-button__icon {}
.fancy-button__label {}
{% endhighlight %}

*Modifiers* are modifications of blocks or elements, which are delimited with double hyphens. **Modifications may be visual or state related.**

{% highlight css %}
.fancy-button--disabled {}
.fancy-button__icon--large {}
{% endhighlight %}

<aside class="aside aside--correction">
In many cases state can be conveyed via HTML attributes. A disabled button could be styled using `.fancy-button:disabled` or the current page in a list with `.breadcrumb__link[aria-current="page"]` instead of creating an additional modifer class. Doing this is preferable if there are appropriate attributes available.
</aside>

### Namespacing

On many projects, using namespaces—in the form of class name prefixes—to indicate the origin or purpose of a class can often be useful. On projects using Felafel, for example, you may use them to differentiate between classes coming from Felafel (which are all prefixed `fs-`), third-party libraries like Flexslider (which all begin with `flex-`), and those native to your current project.

Some projects will use different prefixes for component-level code, and code specific to individual templates and pages. Ski Miquel, for example, uses `ski-`, `skit-` and `skip-`, respectively.

Utility classes are almost always prefixed differently to clearly indicate their purpose and separate them from the BEM naming methodology. Felafel uses `fs-!-` for utility classes.

## Properties
Properties should always appear on a new line by themselves. If a selector only has a single property, feel free to keep that on one line.

{% highlight css %}
/* Many properties */
.embiggen {
    font-size: 2.8em;
    font-weight: bold;
}

/* Just the one */
.emredden { color: red; }
{% endhighlight %}

### Shorthand vs. longhand notation
**CSS should be written in longhand**, with shorthand properties only used when you are *absolutely sure* that a particular value will always apply. Using longhand makes the code consistent and easier to understand (who can even remember the full syntax for properties like `animation`?) [Shorthand is an anti-pattern.](http://csswizardry.com/2016/12/css-shorthand-syntax-considered-an-anti-pattern/)

Shorthand has the added pitfall in that it resets all related properties to their defaults, even if they’ve been changed in the same selector. 

{% highlight css %}
.let-it-snow {
    margin: 0 auto;
    background-color: #fff;
    background: url('../images/snowflake.png') top center no-repeat;
    animation: fallingSnow 5s ease-in-out 0s 1 normal forwards;
}
{% endhighlight %}

This code is bad. It forces the snowflake to always have zero `margin` at the top and bottom, even though our intention might be to just set `left` and `right` to `auto`. It uses shorthand `background` and `animation` properties which are difficult to understand at a glance, and the `background-color` won’t appear at all because it’s being overridden by the `background` shorthand. 

{% highlight css %}
.let-it-snow {
    margin-right: auto;
    margin-left: auto;
    background-color: #fff;
    background-image: url('../images/snowflake.png');
    background-position: top center;
    background-repeat: no-repeat;
    animation-name: fallingSnow;
    animation-duration: 5s;
    animation-timing-function: ease-in-out;
    animation-fill-mode: forwards;
}
{% endhighlight %}

This code is better. Only the values we actually want to set are defined, the `background` and `animation` properties are easier to understand and we don’t have any unexpected style overrides. We can even exclude some of the values on the `animation` entirely because we’re not using the shorthand syntax.

### Vendor prefixes
**Do not write vendor prefixes into code**, instead use a tool like [Autoprefixer](https://github.com/postcss/autoprefixer) to add these programmatically. This makes the code easier to scan and allows us to configure browser support from the Gulp configuration like a boss. 

<aside class="aside aside--correction">
Autoprefixer doesn't cover everything. [Text stroke](http://caniuse.com/#feat=text-stroke), for example, is not in any W3C specification and only exists as a prefixed property. You have to include the prefix manually in situations like this.
</aside>

If you're in an environment where Autoprefixer isn't available, then you may write vendor prefixes into your code.

## Values
Strings (URLs, font names, `content` values, etc.) should be surrounded by double quotes. 

**Values of 0 should be unitless.**

<aside class="aside aside--issue">
CSS timing functions, [like the Mongols](https://www.youtube.com/watch?v=PqcVro-3f4I), are the exception. They require units even when their values are zero! Argh! 
</aside>

### Colours
Colour values should be written in hexadecimal; shortened and lowercase where possible. RGB and HSL may also be used where appropriate. If using Sass then hex values will automatically be converted to these where necessary. 

Do not use the default colour values that exist in CSS except for debugging or rapid prototyping purposes. They’re semantically inconsistent (`gray` is darker than `darkgray`, for example) and sometimes even render differently between browsers. They’re not to be trusted.

## Sass specifics
Sass has changed which compiler the first-party tool uses a few times in its history. Originally written in Ruby (Ruby Sass), it was then ported to C/C++ (as LibSass), and is now implemented via Dart (Dart Sass). Each implementation has slightly different feature sets and handles edge cases differently.

When using Sass, **gravitate to the most up-to-date implementation available**, as this will have the most recent bugfixes and features and the longest remaining support lifetime. As of writing, both Ruby Sass and LibSass have been deprecated in favour of Dart Sass.

### The Sass module system
Dart Sass 1.23.0 introduced [the module system](https://sass-lang.com/blog/the-module-system-is-launched). This presents a fairly radical change to the language. In previous Sass versions all variables, mixins and functions—whether built-in or user authored— existed in a single global scope that could be added to through simple `@import`-ing. 

{% highlight scss %}
// Note that these @import rules could be anywhere prior 
// to this partial, they don't need to be in the same file. 

@import "settings"; // Contains `$theme-color`
@import "helpers/theming"; // Contains a `setBgColor` mixin

body {
    $color: darken($theme-color, 15%);
    @include setBgColor($color);
}
{% endhighlight %}

With the module system, each Sass partial is a separate island and other files must be explicitly referenced in the partial before they can be used, and these referenced elements are automatically namespaced. 

{% highlight scss %}
// In the module system, @use rules *must* be in the same file.

@use "settings"; // Contains `$theme-color`
@use "helpers/theming"; // Contains a `setBgColor` mixin
@use "sass:color"; // You must now explicitly reference Sass's built-in functions

body {
    $color: color.darken(settings.$theme-color, 15%);
    @include theming.setBgColor($color);
}
{% endhighlight %}

**Use of the module system is highly preferred over the older `@import`-based method.** `@import` is deprecated, and the Sass team is intending to remove the `@import` Sass rule completely by October 2022.

<aside class="aside aside--tangent">
You can create private variables, mixins and functions by prefixing their name with an underscore or a hyphen. They will be inaccessible outside of the partial where they are defined, even if directly referenced.
</aside>

### Mixins and extends
Sass has two main methods of creating [DRY-ness](https://en.wikipedia.org/wiki/Don't_repeat_yourself)—mixins and extends. **We prefer the use of mixins in almost all situations.** Here's a table explaining why:

|  |Mixins |Extends |
|:-|:------|:-------|
|Accepts parameters|Yep|Nope|
|Can have internal logic|Yep|Maybe?|
|Usable inside media queries|Yep|Nope|
|Simple to debug|Yep|Nope|
|Keeps selectors sensibly grouped|Yep|Nope|
|Maintains the cascade as written|Yep|Nope|
|Smaller file size (when gzipped)|Yep|Nope|

And if that hastily made table doesn't convince you, maybe the words of two of the world's foremost Sass-masters will:

* [Mixins Better For Performance](http://csswizardry.com/2016/02/mixins-better-for-performance/) by Harry Roberts
* [Why You Should Avoid Sass @extend](https://www.sitepoint.com/avoid-sass-extend/) by Kitty Giraudel

## Transpiling for older browsers

If you wish to use [next generation](https://www.youtube.com/watch?v=p5kcBxL7-qI) CSS features that are not supported across all browsers yet, it is recommended you use [PostCSS](https://postcss.org) and [postcss-preset-env](https://preset-env.cssdb.org) as part of your build pipeline. 

postcss-preset-env includes Autoprefixer, which you should ideally be using anyway.