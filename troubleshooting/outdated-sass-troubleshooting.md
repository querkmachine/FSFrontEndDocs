---
layout: default
title: Sass troubleshooting
---

[Sass](https://sass-lang.com) is a CSS pre-compiler language, that adds various programming features to CSS, including functions, mixins, flow control and nesting.

## Deprecation and removal of slash division

Sass has announced their intention to remove the ability to do division using the forward slash character (`/`) in version 2.0.0 of Sass, due to conflicts with newer versions of the CSS specification which make use of the character for other purposes. 

{% aside tangent %}
As of January 2022, no date for the removal of slash division has been given, though it is likely to be at the same time that `@import` is removed, which is planned for October 2022.
{% endaside %}

Instances of slash division in your code will trigger a deprecation warning on build, which appears similarly to this:

{% highlight text %}
DEPRECATION WARNING: Using / for division outside of calc() is deprecated and will be removed in Dart Sass 2.0.0.

Recommendation: math.div($value, $relative-to) or calc($value / $relative-to)

More info and automated migrator: https://sass-lang.com/d/slash-div

   ╷
16 │     @return ($value / $relative-to) * 1em;
   │              ^^^^^^^^^^^^^^^^^^^^^
   ╵
	node_modules/normalize-scss/sass/normalize/_vertical-rhythm.scss 16:14  normalize-rhythm()
	node_modules/normalize-scss/sass/normalize/_vertical-rhythm.scss 27:14  normalize-font-size()
	node_modules/normalize-scss/sass/normalize/_normalize-mixin.scss 108:7  normalize()
	node_modules/normalize-scss/sass/normalize/_import-now.scss 11:1        @use
	src/sass/vendor/_normalize.scss 1:1                                     @use
	src/sass/vendor/_index.scss 1:1                                         @use
	src/sass/all.scss 2:1                                                   root stylesheet
{% endhighlight %}

This can be rectified in a number of ways:

{% highlight scss %}
$width: 4rem; 

// Original code
$height: $width / 2;

// Using the Sass math module
// Only available in projects using Dart Sass.
@use "sass:math";
$height: math.div($width, 2);

// Using the CSS calc() function
// Somewhat contextual, this only really works in situations where 
// $height is output without any further modifications. Note that
// the $width variable must also be interpolated in this situation.
$height: calc(#{$width} / 2); 

// Translating to a multiple
// If the operation being performed uses a simple, fixed value, it 
// can be turned into a multiplication instead.
$height: $width * 0.5; 
{% endhighlight %}

## Deprecation and removal of Sass `@import` rules

With the introduction of the [Sass module system](https://sass-lang.com/blog/the-module-system-is-launched), and the `@use` and `@forward` rules, it was announced that `@import` would eventually be removed by October 2022. This decision was, in part, to resolve issues with Sass `@import` sharing the same name as CSS `@import`.

In many situations, `@import` can be directly replaced with `@use`, however [the two do not work in exactly the same way]({{ site.baseurl }}{% link authoring-guidelines/writing-css-sass.md %}#the-sass-module-system), and it is reasonably likely that some restructuring and refactoring take place. 

## Deprecation and removal of various built-in functions

At the same time the Sass module system was introduced, a number of the built-in color manipulating functions were removed. This includes:

* `adjust-hue`
* `saturate`
* `desaturate`
* `lighten`
* `darken`
* `opacify`, `fade-in`
* `transparentize`, `fade-out`

These are now all bundled under a single function: `color.adjust`, which can accept and perform multiple manipulations at once.

Despite this, the authors of Sass recommend that you use `color.scale` or `color.change` if possible, suggesting that `color.adjust` mainly exists for backwards compatibility purposes and may be removed in a future version of Sass.

{% highlight scss %}
@use "sass:color";

$color: hsl(45, 25%, 50%);

// adjust-hue
$r: adjust-hue($color, -42deg); // => hsl(3, 25%, 50%)
$r: color.adjust($color, $hue: -42deg); // => hsl(3, 25%, 50%)

// saturate
$r: saturate($color, 47%);
$r: color.adjust($color, $saturation: 47%); // => hsl(45, 72%, 50%)

// desaturate
$r: desaturate($color, 9%);
$r: color.adjust($color, $saturation: -9%); // => hsl(45, 16%, 50%)

// lighten
$r: lighten($color, 22%); // => hsl(45, 25%, 72%)
$r: color.adjust($color, $lightness: 22%); // => hsl(45, 25%, 72%)

// darken
$r: darken($color, 13%); // => hsl(45, 100%, 37%)
$r: color.adjust($color, $lightness: -13%); // => hsl(45, 25%, 37%)

$transparent-color: rgba(120, 105, 153, 0.5);

// fade-in / opacify
$r: fade-in($transparent-color, 0.35); // => rgba(120, 105, 153, 0.85)
$r: opacify($transparent-color, 0.35); // => rgba(120, 105, 153, 0.85)
$r: color.adjust($transparent-color, $alpha: 0.35); // => rgba(120, 105, 153, 0.85)

// fade-out / transparentize
$r: fade-out($transparent-color, 0.2); // => rgba(120, 105, 153, 0.3)
$r: transparentize($transparent-color, 0.2); // => rgba(120, 105, 153, 0.3)
$r: color.adjust($transparent-color, $alpha: -0.2); // => rgba(120, 105, 153, 0.3)

{% endhighlight %}

All function names from before the introduction of the module system (e.g. `map-get`, as opposed to `map.get`) will be removed at the same time as Sass `@import` rules. 

## Deprecation of LibSass and Node Sass

In August 2020, LibSass (and packages built on top of it, including Node Sass) was [officially deprecated](https://github.com/sass/node-sass/issues/2952), following a lack of major updates and increasing disparity between it and Dart Sass—the newer, leading Sass implementation introduced in October 2016. 

While LibSass will still receive security fixes, it otherwise will not receive further updates, and will only drift more out of line with the Sass specification as time goes on. As of January 2022, Node Sass is no longer compatible with current releases of Node, furthering the need to replace it in older projects. 

Remove `node-sass` and install `sass` (a wrapper for Dart Sass):

{% highlight shell %}
npm uninstall node-sass --save-dev
npm install sass --save-dev
{% endhighlight %}

If the project uses the `gulp-sass` wrapper, it may need to be updated to the most recent version in order to be able to use Dart Sass. To do this, first edit gulp-sass's version in the `package.json` file to read "latest":

{% highlight json %}
{
  "devDependencies": {
    "gulp-sass": "latest"
  }
}
{% endhighlight %}

Then run the install command: 

{% highlight shell %}
npm install gulp-sass --save-dev
{% endhighlight %}

{% aside correction %}
Some projects may be using `gulp-dart-sass` instead of `gulp-sass`. This was a transitional package from the time prior to `gulp-sass` supporting Dart Sass. `gulp-dart-sass` is no longer necessary, and can be safely removed and replaced with `gulp-sass` without issue.
{% endaside %}