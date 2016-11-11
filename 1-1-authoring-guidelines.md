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

## Indents
We use four spaces for the sole reason of this being the standard in Microsoft Visual Studio. Lucky for all you tab-using developers out there (for it's obviously the superior option) Visual Studio will automatically convert any tab indented code to use spaces instead. 

{% highlight css %}
#tardis {
    color: #003b6f;
    box-sizing: bigger-on-the-inside; /* Not real :( */
}
{% endhighlight %}

## Line lengths
We do not actively enforce any sort of line length in front-end code. This *isn’t* an excuse to make ridiculously long lines of code however! Add new lines and indents where it is sensible to do so, maintaining a visual hierarchy of tags/brackets both looks good and makes things much easier to debug on sight. 

## Multi-line code
You may not getting paid by the line, but that doesn’t mean you have to be stingy; instead of bunching things together, give each "thing" its own line. This makes scanning the code just that little bit easier. 

In **HTML** a good rule of thumb is that if there’s more than just text inside of an element, you should put the contents on a new line. 

{% highlight html %}
<article class="ice-cream">
    <header class="ice-cream__header">
        <h1 class="ice-cream__name">Raspberry Ripple</h1>
    </header>
    <div class="ice-cream__ingredients">
        <h2>Ingredients</h2>
        <ul>
            <li>Iced cream</li>
            <li>Raspberries</li>
            <li>
                Ripples
                <em>(What are ripples?)</em>
            </li>
        </ul>
    </div>
</article>
{% endhighlight %}

In **CSS or Sass** this would typically be one line per property or selector. 

{% highlight scss %}
.box {
    display: block;
    width: 95%;
    max-width: 32em;
    color: #212123;
    background-color: #eaeaef;
    &--eyecatching,
    &--red-as-hell {
        color: #fff;
        background-color: #f00;
    }
}
{% endhighlight %}

**JavaScript** is a little more complicated but can be roughly boiled down to having a new line for each variable, function, assignment or similar. 

{% highlight js %}
function bindSearchController() {
    $("#search").on("keyup submit", function(e) {
        e.preventDefault();
        var term = $("#search-input").val();
        if(term) {
            term = encodeURIComponent(term);
            $("#search-results").load("/search/" + term + " #search-results");
            history.replaceState("", "", "/search/" + term);
        }
    });
}
{% endhighlight %}

## Brackets
As far as we’re concerned brackets always go on the same line as the selector or function that uses it. There’s little benefit to putting brackets on new lines by themselves, especially if you’re already using indents to show hierarchy. 

## Quotes
Use double quotes in HTML and CSS. They are also preferred in JavaScript, but may be substituted for single quotes for strings that contain double quotes inside them. 

## Casing
HTML tags and attributes should always be lowercase. 

{% highlight html %}
<img class="delicious-fruit" src="oranges.jpg" alt="Nice oranges">
{% endhighlight %}

CSS selectors and properties should always be lowercase. Selectors use hyphens to separate words. 

{% highlight css %}
.delicious-fruit { 
    border-radius: 100%;
    background-color: orange; 
}
{% endhighlight %}

JavaScript should be written in camelCase. 

{% highlight js %}
function eatOrange() {
    var percentageEaten = 0,
        finished = false;
    do {
        percentageEaten++;
        if(percentageEaten == 100) {
            finished = true;
        }
    } while(finished == false);
}
{% endhighlight %}

## Code comments
If you find yourself writing something particularly complex or holy-heck-don’t-ever-change-this important, it’s probably a good idea to leave a note telling the next person along about how it works and how intelligent and attractive you are for being able to produce it. They’ll thank you for it... probably. 

If possible, use a style of commenting that won't appear in the output after the asset is compiled, minified or otherwise crunched. 
