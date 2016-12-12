---
layout: default
title: Writing CSS and Sass
---

We use Sass as our CSS preprocessor and use the SCSS syntax. Sass is generally better supported than other compiled languages and SCSS is much closer to the vanilla CSS syntax, which is indispensable whenever a back-end developer has to poke around. 

## Selectors

CSS selectors and properties should always be lowercase. Selectors use hyphens to separate words. Try to <mark>use whole words for selector names</mark> rather than abbreviations, as it makes code easier to understand at a glance.

As much as possible <mark>use classes to style elements</mark> and avoid nesting or creating needlessly specific selectors (*especially* IDs). Doing so maintains [low specificity](https://stuffandnonsense.co.uk/archives/images/specificitywars-05v2.jpg) across the project, making it easy to make conditional changes later on without having to resort to a cheeky `!important`. 

Avoid using an element name as a selector or qualifier unless that element can only appear once in the document. `html` and `body` are the most likely exceptions to this. 

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

**Blocks** are individual modules, like a call to action or a styled list. <mark>Blocks should be self-contained</mark> and able to be dropped anywhere with little to no extra effort (for this reason it’s a good idea to avoid applying specific dimensions, margins or paddings to them). 

A block will simply be a class name. 

{% highlight css %}
.fancy-button {}
{% endhighlight %}

**Elements** are the… well, elements that are inside blocks. These are delimited with double underscores. 

{% highlight css %}
.fancy-button__icon {}
.fancy-button__label {}
{% endhighlight %}

**Modifiers** are modifications of blocks or elements, which are delimited with double hyphens. <mark>Modifications can be visual or state related.</mark>

{% highlight css %}
.fancy-button--disabled {}
.fancy-button__icon--large {}
{% endhighlight %}

## Properties
Properties should always appear on a new line by themselves. If a selector only has a single property, feel free to keep that on one line.

### Shorthand vs. longhand notation
&zwnj;<mark>CSS should be written in longhand</mark>, with shorthand properties only used when you are *absolutely sure* that a particular value will always apply. Using longhand makes the code consistent and easier to understand (who can even remember the full syntax for properties like `animation`?) [Shorthand is an anti-pattern.](http://csswizardry.com/2016/12/css-shorthand-syntax-considered-an-anti-pattern/)

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

This code is better. Only the values we actually want to set are defined, the `background` and `animation` properties are easier to understand and we don’t have any unexpected style overrides. We can even exclude some of the values set on the `animation` because we’re not using the shorthand syntax.

## Value formatting
Strings (URLs, font names, `content` values, etc.) should be surrounded by single quotes. 

&zwnj;<mark>Values of 0 should be unitless</mark> (e.g. `margin: 0;`) unless they require an explicit unit, such as timing functions (e.g. `animation-delay: 0s;`).

## Colours
Colour values should be written in hexadecimal; shortened and lowercase where possible. RGB and HSL may also be used where appropriate. If using Sass then hex values will automatically be converted to these where necessary. 

Do not use the default colour values that exist in CSS except for debugging or rapid prototyping purposes. They’re semantically inconsistent (`gray` is darker than `darkgray`, for example) and sometimes even render differently between browsers. They’re not to be trusted.

## Vendor prefixes
&zwnj;<mark>Do not write vendor prefixes into code</mark>, instead use a tool like [Autoprefixer](https://github.com/postcss/autoprefixer) to add these programmatically. This makes the code easier to scan and allows us to configure browser support from the Gulp configuration like a boss. 

If you're in an environment where Autoprefixer isn't available, then you may write vendor prefixes into your code.

## Atomic design
> One file to rule them all / One file to find them / One file to bring them all / And in the Sass way merge them.

We use the [atomic design](http://bradfrost.com/blog/post/atomic-web-design/) architecture for structuring Sass files. Atomic design, like BEM, encourages creating modular, reusable components that can work independently of one another. 

A typical project will divide Sass partials into six folders, with a single root file—typically named `stylesheet.scss`—that includes all of the partials. The folders are as so:

* /**app** - contains project settings, mixins and functions.
* /**atoms** - incredibly simple (usually singular) page elements,   such as buttons, icons, typographic elements, form inputs, etc.
* /**molecules** - collections of atoms, such as a search form made up of form input and button atoms.
* /**organisms** - collections of molecules, such as a website masthead made up of search, branding and navigation molecules. 
* /**templates** - a collection of organisms; typically fairly generic and reusable, such as an article page. 
* /**pages** - individual instances of a template, such as an article about *20 cats you’ll want to cuddle*. 

&zwnj;<mark>Partials should be named according to the BEM class that it relates to</mark>, so styles for the `.profile-picture` block will be contained in the `_profile-picture.scss` partial. This aids discoverability. An exception to this rule is partials that cover a concept rather than a specific block, such as typography or global styles.

## Mixins and extends
Sass has two main methods of creating [DRY-ness](https://en.wikipedia.org/wiki/Don't_repeat_yourself)—mixins and extends. <mark>We prefer the use of mixins in almost all situations.</mark> Here's a table explaining why:

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
* [Why You Should Avoid Sass @extend](https://www.sitepoint.com/avoid-sass-extend/) by Hugo Giraudel