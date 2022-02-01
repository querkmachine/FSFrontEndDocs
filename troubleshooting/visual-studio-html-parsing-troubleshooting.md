---
layout: default
title: HTML parsing issues in Visual Studio
---

## Description lists (`dl`) and `div`s

Visual Studio (at least as of VS2019, not sure if fixed in VS2022) will state that invalid HTML is present when presented with a structure similar to the below. This will most visibly be identified by Visual Studio's auto-indenting not working correctly and the code block being displayed with a wavy underline. 

{% highlight html %}
<dl>
  <div>
    <dt>Date</dt>
    <dd>22 September</dd>
  </div>
  <div>
    <dt>Location</dt>
    <dd>Bristol, UK</dd>
  </div>
</dl>
{% endhighlight %}

Older versions of the HTML specification only allowed `dt` and `dd` elements to be direct descendents of `dl` elements. This is no longer accurate, however, and `div` elements have also been [allowed by the HTML spec](https://html.spec.whatwg.org/multipage/grouping-content.html#the-dl-element) since October 2016.