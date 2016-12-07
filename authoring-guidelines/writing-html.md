---
layout: default
title: Writing HTML
---

Unless you’re coding an HTML email (may god have mercy on your soul) then you should be writing in valid, semantic HTML5. 

Using <mark>semantically correct HTML is important</mark>. Assistive technologies and search engines use the intrinsic meanings of different HTML tags in order to effectively navigate and index the page contents. Remember: `<div>` and `<span>` are the *only* HTML tags with no intrinsic meaning, everything else does—so make sure you're using them all correctly! 

HTML5 Doctor has [a handy reference](http://html5doctor.com/element-index/) as to what each tag represents. 

## Formatting recommendations

HTML tags and attributes should always be lowercase.

A good rule of thumb is that if there’s more than plaintext inside of an element, you should probably put the contents on a new line. 

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