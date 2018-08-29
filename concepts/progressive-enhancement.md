---
layout: default
title: Progressive enhancement
---

Progressive enhancement. What is there to say about progressive enhancement other than it is **absolutely the only way in which 99% of websites should work**. 

Progressive enhancement isn't just about making things work without JavaScript. To build with progressive enhancement is to automatically include considerations for accessibility, search engine optimisation, performance and the mobile web. Progressively enhanced websites are inherently more stable, with fewer [bottlenecks and dependencies](http://kryogenix.org/code/browser/everyonehasjs.html) to accessing the really important stuff: the content. 

> It's called the world-wide web, not the wealthy-western web.

Use [Modernizr](https://modernizr.com/) and [`@supports`](https://developer.mozilla.org/en-US/docs/Web/CSS/@supports) statements to feature detect any complex functionality. A List Apart has a short series of articles from 2008 on [understanding](http://alistapart.com/article/understandingprogressiveenhancement), [implementing](http://alistapart.com/article/progressiveenhancementwithcss), and [working with JavaScript](http://alistapart.com/article/progressiveenhancementwithjavascript) whilst working with progressive enhancement.

In the rare situation where progressive enhancement is not possible due to functional requirements, make sure to [keep your JavaScript unobtrusive](http://blog.teamtreehouse.com/unobtrusive-javascript-important) and provide fallback content or messaging. (Yes, I said rare, **[progressive web apps](https://en.wikipedia.org/wiki/Progressive_web_app) are a thing**.)

Other than that, just write sensible, semantic HTML and it should all come together nicely.

## Further reading

* [Progressive enhancement](https://en.wikipedia.org/wiki/Progressive_enhancement) on Wikipedia
* [Using progressive enhancement](https://www.gov.uk/service-manual/technology/using-progressive-enhancement) in the GOV.UK Service Manual 
* [Progressive Enhancement: What It Is, And How To Use It?](https://www.smashingmagazine.com/2009/04/progressive-enhancement-what-it-is-and-how-to-use-it/) on Smashing Magazine
* [Graceful degradation versus progressive enhancement](https://www.w3.org/wiki/Graceful_degradation_versus_progressive_enhancement) on the W3C

## Related

* [How many people are missing out on JavaScript enhancement?](https://gds.blog.gov.uk/2013/10/21/how-many-people-are-missing-out-on-javascript-enhancement/) on the Government Digital Service blog
* [Chrome for Android may start disabling JavaScript on 2G connections](https://www.androidpolice.com/2018/08/23/chrome-android-may-start-disabling-javascript-2g-connections/) on Android Police