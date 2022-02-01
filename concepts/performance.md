---
layout: default
title: Performance
---

> It’s hard, if not impossible, to deny that performance is by far one of the most critical aspects of any decent web project, be it a small portfolio site, a mobile-first web app, right through to a full-scale ecommerce project. Studies, articles and personal experience all tell us that fast is best.

Harry Roberts has written a [very comprehensive article on front-end performance for developers](http://csswizardry.com/2013/01/front-end-performance-for-web-designers-and-front-end-developers/) already. It's a little old, but a lot of the advice it gives is still relevant; a summary of which is included here for your convenience. 

## CSS and JavaScript includes

CSS blocks rendering. The user will be stuck staring at a white screen until all of the page's CSS files have been downloaded. Because of this, we want to download CSS as soon as possible, so **CSS should be included at the top of the document**.

JavaScript blocks downloads. While JavaScript files are downloading, the browser will not download anything else. Because of this, we want to download JavaScript files last so they don't block anything else, so **JavaScript should be included at the bottom of the document**. 

{% aside correction %}
There are some exceptions to the JavaScript rule. For example, some polyfill scripts may require being loaded in the `<head>` in order to work correctly. Scripts like this may appear in the `<head>`, but other application code should not.
{% endaside %}

## CDNs and DNS

This is mostly out of the hands of a front-ender, but should anyone ever ask, here's a quick answer for what they should do: **put media and JavaScript on the CDN, but don't put CSS there**. 

CDNs are generally beneficial. Many browsers limit how many files it will download from a single domain, so spreading assets across multiple domains allows for more parallel downloads and thus a quicker download. However, CSS is part of the page's *critical path*, it's something you want to download as quickly as possible, as soon as possible, because the page won't paint without it. **Putting CSS on the CDN makes it load slower** because it adds the overhead of DNS resolution on top of the usual download effort. Keeping CSS on the same domain as the site removes this overhead. 

If the URL for the CDN is known ahead of time, you can speed up the DNS resolution process by including a `dns-prefetch` meta tag in the `<head>` of the page. This won't make a huge difference, but it gives the resolution process a little head start where it wouldn't otherwise.

{% highlight html %}
<link rel="dns-prefetch" href="//cdn.foobar.com">
{% endhighlight %}

## Optimising images

Our Gulp boilerplate includes `gulp-imagemin` by default, which will losslessly compress UI images that are included in the project. Unfortunately, this doesn't apply to content managed media, that's for the back-enders and the clients to sort out. 

For UI imagery we prefer to use SVGs. CSS-Tricks has [a whole article explaining their benefits over icon fonts](https://css-tricks.com/icon-fonts-vs-svg/).

## Bundling

The switchover to HTTP/2 makes bundling of styles and scripts unnecessary, and while [browser adoption of HTTP/2](http://caniuse.com/#feat=http2) is fairly significant, [for many hosting companies](http://isthewebhttp2yet.com/measurements/adoption.html) it's not. HTTP/2 is also limited in that many browsers only support it over TLS (making HTTPS a requirement). 

Because of the limited adoption and use cases **we are still actively bundling assets** together. When adoption and feasibility picks up, then we'll probably make the switch.