---
layout: default
title: Authoring guidelines
---

Formatting is the most basic means of maintaining uniformity in project code. A misplaced bracket or oddly intended line can turn functional code into an illegible mess, and worse still can lead to your fancy new JavaScript function breaking absolutely everything. [It happens to the best of us.](http://embeddedgurus.com/barr-code/2014/03/apples-gotofail-ssl-security-bug-was-easily-preventable/)

Simply put, we prefer:

* Four space indentation, no tabs.
* Uncapped, but sensible line lengths.
* Meaningful use of whitespace.
* Multi-line code blocks.

<aside class="aside aside--tangent">
Life's too short to spend *that* much time caring about code formatting. Just [install Prettier](https://prettier.io), configure it to automatically format your code on commit, and stop worrying about it. 
</aside>

## Indentation, brackets and line breaks
We use **four spaces for indentation**; the sole reason for this being it's the standard in Visual Studio. Lucky for all you tab-loving developers out there Visual Studio will automatically convert tabs into four spaces for you. 

<aside class="aside aside--opinion">
Hard tabs are obviously the superior option. More consistent, more configurable, easier to navigate with keyboards. What's not to love?
</aside>

If you're copying tabbed code from elsewhere, you can format it to spaces by going to `Edit > Advanced > Untabify Selected Lines` in Visual Studio.

We do not enforce any sort of line length in front-end code. This *isn’t* an excuse to make ridiculously long lines of code, however! **Add new lines and indents where it is sensible to do so**, maintaining a visual hierarchy of tags/brackets both looks good and makes things much easier to debug on sight. 

**Brackets always go on the same line** as the selector or function that uses it. There’s little benefit to putting brackets on new lines by themselves, especially if you’re already using indents to show hierarchy. Note that this differs to Felinesoft's C# standard, which expects brackets to appear alone on a new line. 

{% highlight css %}
#tardis {
    color: #003b6f;
    box-sizing: bigger-on-the-inside; /* Not real :( */
}
{% endhighlight %}

## Quotes
Use double quotes everywhere, except situations where the type of quotation mark used has semantic meaning, such as in Razor or some areas of JavaScript.

## Code comments
If you find yourself writing something particularly complex or holy-heck-don’t-ever-change-this important, it’s probably a good idea to leave a note telling the next person along about how it works and how intelligent and attractive you are for being able to produce it. They’ll thank you for it... probably. 

If possible, use a style of commenting that won't appear in the output after the asset is compiled, minified or otherwise crunched. 
