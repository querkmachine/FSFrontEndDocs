---
layout: default
title: Authoring guidelines
---

Formatting is the most basic means of maintaining uniformity in project code. A misplaced bracket or oddly intended line can turn functional code into an illegible mess, and worse still can lead to your fancy new JavaScript function breaking absolutely everything. [It happens to the best of us.](http://embeddedgurus.com/barr-code/2014/03/apples-gotofail-ssl-security-bug-was-easily-preventable/)

At the most basic level we expect:

* four (4) space indents, no tabs;
* sensible line lengths;
* multi-line code;
* meaningful use of whitespace.

## Indentation, brackets and line breaks
We use <mark>four spaces for indentation</mark>; the sole reason for this being it's the standard in Visual Studio. Lucky for all you tab-loving developers out there (for it's obviously the superior option) Visual Studio will automatically convert tabs into four spaces for you. 

If you're copying tabbed code from elsewhere, you can format it by going to `Edit > Advanced > Untabify Selected Lines` in Visual Studio.

We do not enforce any sort of line length in front-end code. This *isn’t* an excuse to make ridiculously long lines of code, however! <mark>Add new lines and indents where it is sensible to do so</mark>, maintaining a visual hierarchy of tags/brackets both looks good and makes things much easier to debug on sight. 

&zwnj;<mark>Brackets always go on the same line</mark> as the selector or function that uses it. There’s little benefit to putting brackets on new lines by themselves, especially if you’re already using indents to show hierarchy. Note that this differs to FelineSoft's C# standard, which expects brackets to appear alone on a new line. 

{% highlight css %}
#tardis {
    color: #003b6f;
    box-sizing: bigger-on-the-inside; /* Not real :( */
}
{% endhighlight %}

## Quotes
Use double quotes in HTML. Use single quotes in CSS and JavaScript.

## Code comments
If you find yourself writing something particularly complex or holy-heck-don’t-ever-change-this important, it’s probably a good idea to leave a note telling the next person along about how it works and how intelligent and attractive you are for being able to produce it. They’ll thank you for it... probably. 

If possible, use a style of commenting that won't appear in the output after the asset is compiled, minified or otherwise crunched. 
