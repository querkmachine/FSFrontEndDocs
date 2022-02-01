---
layout: default
title: Writing JavaScript
---

The JavaScript ecosystem has exploded pretty significantly over the last decade or so, and part of the reason this has been possible is because the language has been heavily added to and browsers are finally *(mostly)* consistent in how they implement JavaScript features. 

Libraries like jQuery, MooTools, and script.aculo.us—originally built to pave over the cracks and differences in browser implementations—are largely unnecessary now, and we haven't used them for quite some time. Instead, we mainly write vanilla JavaScript, using drop-in-able libraries (such as [Vue](http://vuejs.org),  [Alpine](http://alpinejs.dev), and [Axios](https://axios-http.com)) where more complex functionality is needed.

## Variables

Function and variable names should be written in camelCase.

**If the value of a variable is a HTML element, prefix the variable name with a `$` sign** to make it clear this is the case.

{% highlight js %}
// Yes
const $header = document.getElementById("header");

// No
const header = document.getElementById("header");

// This is okay because the value isn't an HTML element
const searchTerm = document.getElementById("q").value;
{% endhighlight %}

This is a bit of a layover from the jQuery days, where it was conventional to prefix jQuery objects with a dollar to indicate that jQuery methods could be used with them. I've since continued doing this, but to HTML elements that DOM manipulation methods can be used instead.

{% aside tangent %}
Dollar signs don't have any intrinsic meaning in JavaScript, they're just part of the variable name. 
{% endaside %}

### `const`, `let` or `var`

For many years we've only had `var` for defining variables, but ES6 has brought with it `const`, for constants, and `let`, which is `var` with stricter scoping rules. 

Our general rule is to **use `const` if the value will never change, and `let` if it will**. 99.9% of the time you won't need to use `var` at all, and the decidedly more liberal scoping rules it has will more often trip you up than help.

## Values

Strings should be surrounded by double quotes, unless using string interpolation with backticks. 

## Indentation

JavaScript indentation can be roughly boiled down to having a new line for each variable, function, assignment or other. This is generally consistent with [Stroustrup style indentation](https://en.wikipedia.org/wiki/Indent_style#Variant:_Stroustrup). 

## Classes

Felinesoft's preferred method for writing code in recent years has been to use [classes](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes). This way, code for individual components can easily be silo'd, avoiding conflicts if a component appears on the page multiple times, along with the other benefits of using classes over inline code and immediately-invoked function expressions.

These classes are typically packaged as [ES modules](https://flaviocopes.com/es-modules/).

See [Felafel's Tabs component](https://github.com/querkmachine/felafel/blob/master/src/js/components/tabs.js) for an example of how these work.

## Third-party libraries

It is preferred that third-party JavaScript libraries be incorporated via npm and incorporated into the dependent ES modules, rather than by copying the files directly into the current project. This allows the latest bugfix version of the library to always be in use without having to update it manually, whilst creating [a dependency tree that can be shaken](https://www.smashingmagazine.com/2021/05/tree-shaking-reference-guide/) easily.

## Transpiling for older browsers

Modern JavaScript is wonderful. It introduces enough syntactic sugar to make writing JavaScript just that little bit easier and more pleasant.

Unfortunately, we live in a world where old browsers don't get always get updated for stuff in a timely way, and JavaScript is one of those things. Client support requirements almost always cover a browser or two that isn't entirely up to speed. The use of [Babel](https://babeljs.io) and [@babel/preset-env](https://babeljs.io/docs/en/babel-preset-env) to transpile code down to supported browsers is recommended.