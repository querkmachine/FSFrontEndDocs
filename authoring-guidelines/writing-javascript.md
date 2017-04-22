---
layout: default
title: Writing JavaScript
---

<aside class="aside aside--opinion">
We don't have any particularly detailed rules for how to write JavaScript, mainly because I don't actually do a lot of it. If you think we need to standardise this more, hit me up! 
</aside>

## Indentation

JavaScript indentation can be roughly boiled down to having a new line for each variable, function, assignment or other. This is generally consistent with [Stroustrup style indentation](https://en.wikipedia.org/wiki/Indent_style#Variant:_Stroustrup). Function and variable names should be written in camelCase.

{% highlight js %}
function bindSearchController() {
    $('#search').on('keyup submit', function(e) {
        e.preventDefault();
        const searchTerm = $('#search-input').val();
        if(searchTerm) {
            term = encodeURIComponent(searchTerm);
            $('#search-results').load(`/search/${searchTerm}#search-results`);
            history.replaceState('', '', `/search/${searchTerm}`);
        }
    });
}
{% endhighlight %}

## jQuery

**If the value of a variable is a jQuery object, prefix the variable name with a `$` sign** to make it clear this is the case.

{% highlight js %}
// Yes
const $header = $('.header');

// No
const header = $('.header');

// This is okay because the value isn't a jQuery object
const searchTerm = $('.search__query').val();
{% endhighlight %}

## ECMAScript 2015 (aka, ES6) in practice

ES6 is wonderful. It introduces enough syntactic sugar to make writing JavaScript just that little bit easier. Its use is encouraged wherever possible. 

Unfortunately, we live in a world where old browsers don't get updated for stuff, and ES6 is one of those things. There are a number of actively used browsers that don't have full (or any) support for ES6 yet and many of these browsers are still part of our support requirements. As such, the use of [Babel](https://babeljs.io) to transpile code down to ES5 is recommended.

### `const`, `let` and `var`

For many years we've only had `var` for defining variables, but ES6 has brought with it `const`, for constants, and `let`, which is `var` with stricter scoping rules. 

Our general rule is to **use `const` if the value will never change, and `let` if it will**. 99.9% of the time you won't need to use `var` at all, and the decidedly more liberal scoping rules it has will more often trip you up than help.