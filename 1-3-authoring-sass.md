---
layout: default
title: Authoring CSS and Sass
---

We use Sass as our CSS preprocessor and use the SCSS syntax. Sass is generally better supported than other compiled languages and SCSS is much closer to the vanilla CSS syntax, which is indispensable whenever a back-end developer has to poke around. 

# Selectors and BEM
As much as possible use classes to style elements and avoid nesting or creating needlessly specific selectors. Doing so maintains [low specificity](https://stuffandnonsense.co.uk/archives/images/specificitywars-05v2.jpg) across the project, making it easy to make conditional changes later on without having to resort to a cheeky `!important`. 

Do not use an element name as a selector unless that element can only appear once in the document. `html` and `body` are the most likely exceptions. 

You *may* use an element name as a selector if you’re unable to add a class name, as is often the case with CMS-managed data. In these cases scope the selectors to a containing class such as `.wysiwyg`.

{% highlight scss %}
.wysiwyg {
    h1 {
        @include header-1;
    }
    del {
        text-decoration: line-through;
    }
    a {
        color: #fc0;
        text-decoration: underline;
    }
}
{% endhighlight %}

We use [BEM (Block, Element, Modifier) syntax](http://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax/) for authoring CSS. I’d totally recommend reading that article for the full picture, but here’s a gist:

**Blocks** are individual modules, like a call to action or a styled list. Blocks should ideally be self-contained and able to be dropped anywhere with little to no extra effort (for this reason it’s a good idea to avoid applying specific dimensions, margins or paddings to them). 

A block will simply be a class name. 

{% highlight css %}
.fancy-button {}
{% endhighlight %}

**Elements** are the… well, elements that are inside blocks. These are delimited with double underscores. 

{% highlight css %}
.fancy-button__icon {}
.fancy-button__label {}
{% endhighlight %}

**Modifiers** are modifications of blocks or elements, which are delimited with double hyphens. These modifications can be visual or state related. 

{% highlight css %}
.fancy-button--disabled {}
.fancy-button__icon--large {}
{% endhighlight %}

# Shorthand vs. longhand notation
CSS should be written in longhand, with shorthand properties only used when you are *absolutely sure* that a particular value will always apply. Using longhand makes the code consistent and easier to understand (who can even remember the full syntax for properties like `animation`?) Shorthand has the added pitfall in that it resets all related properties to their defaults, even if they’ve been changed previously. 

This code is bad. It forces the snowflake to always have zero `margin` at the top and bottom, even though our intention might be to just set left and right to auto. It uses shorthand `background` and `animation` properties which are difficult to understand, and the `background-color` won’t appear at all because it’s being overridden by the `background` shorthand. 

{% highlight css %}
.let-it-snow {
    margin: 0 auto;
    background-color: silver;
    background: url(“../images/snowflake.png”) top center no-repeat;
    animation: fallingSnow 5s ease-in-out 0s 1 normal forwards;
}
{% endhighlight %}

This code—while wordier—is better. Only the values we actually want to set are defined, the property values are easier to understand and we don’t have any unexpected style overrides. We can even exclude some of the `animation` values above because we’re not using the shorthand syntax.

{% highlight css %}
.let-it-snow {
    margin-right: auto;
    margin-left: auto;
    background-color: silver;
    background-image: url(“../images/snowflake.png”);
    background-position: top center;
    background-repeat: no-repeat;
    animation-name: fallingSnow;
    animation-duration: 5s;
    animation-timing-function: ease-in-out;
    animation-fill-mode: forwards;
}
{% endhighlight %}

# Value formatting
Strings (including URLs, font names, `content` values, etc.) should be surrounded by double quotes. 

Values of 0 should be unitless (e.g. `margin: 0;`) unless they are timing functions, which require an explicit unit (e.g. `animation-delay: 0s;`).

# Colours
Colour values should be written in hexadecimal; shortened and lowercase where possible. RGB and HSL may also be used where appropriate. If using Sass then hex values will automatically be converted to these where necessary. 

Do not use the default colour values that exist in CSS except for debugging or rapid prototyping purposes. They’re semantically inconsistent (`grey` is darker than `dark grey`, for example) and sometimes even render differently between browsers. They’re not to be trusted.

# Vendor prefixes
Do not write vendor prefixes into Sass code, instead use a tool like [Autoprefixer](https://github.com/postcss/autoprefixer) to add these programatically. This makes the code easier to scan and allows us to configure browser support from the Gulp configuration like a boss. 

# Sass and atomic design
> One file to rule them all, One file to find them, One file to bring them all, And in the Sass way merge them.

We use the [atomic design](http://bradfrost.com/blog/post/atomic-web-design/) architecture for structuring Sass files. Atomic design—like BEM—encourages creating modular, reusable components that can work independently of one another. 

A typical project will divide Sass partials into six folders, with a single root file—typically named `stylesheet.scss`—that includes all of the partials. The folders are as so:

* /**app** - contains project settings, mixins and functions.
* /**atoms** - incredibly simple (usually singular) page elements,   such as buttons, icons, typographic elements, form inputs, etc.
* /**molecules** - collections of atoms, such as a search form made up of form input and button atoms.
* /**organisms** - collections of molecules, such as a website masthead made up of search, branding and navigation molecules. 
* /**templates** - a collection of organisms; typically fairly generic and reusable, such as an article page. 
* /**pages** - individual instances of a template, such as an article about *20 cats you’ll want to cuddle*. 

Partials should be named according to the BEM class that it relates to, so styles for the `.profile-picture` block will be contained in the `_profile-picture.scss` partial. This aids discoverability. An exception to this rule is partials that cover a concept rather than a specific block, such as typography or global styles.

Use of the `@extend` feature is discouraged. Extends cannot be used inside media queries and can create unwieldy selectors that cannot be efficiently minified or gzipped. If you have a set of styles that you would like to be shared amongst multiple elements then create a mixin instead.