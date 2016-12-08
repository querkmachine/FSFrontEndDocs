---
layout: default
title: Security
---

Security doesn't much sound like a front-end problem, but like seemingly everything else technological, there are some crossover points that you should probably be aware of. 

## HTTPS

A number of browsers prevent access to some HTML5 APIs unless accessed via HTTPS, particularly if these can be used to obtain personal information about a user. Currently this includes:

* Geolocation
* `getUserMedia()` (WebRTC)

Other APIs that may soon become HTTPS-only include:

* Device motion and orientation
* Fullscreen
* Encrypted Media Extensions (EME)

See also:

* [Secure Contexts specification](https://w3c.github.io/webappsec-secure-contexts/)
* [Intent to deprecate: Insecure usage of powerful features](https://groups.google.com/a/chromium.org/forum/#!msg/blink-dev/2LXKVWYkOus/gT-ZamfwAKsJ)

## `:visited` links
Certain browsers will not allow comprehensive styling of `:visited` links, and the `getComputedStyle()` JavaScript function will often 'lie' about the state of `:visited` links. This is to prevent webpages being able to detect what webpages the user has previously visited, as this may disclose personal information.

See also: 

* [Privacy and the `:visited` selector](https://developer.mozilla.org/en-US/docs/Web/CSS/Privacy_and_the_:visited_selector)

## `target="_blank"` and `rel="noopener"`

Did you know that pages pass information about themselves through JavaScript when you click on a link? Did you know that information includes a cross-origin reference to the `window.opener` object, which the new webpage can manipulate to change the previous page, such as redirecting it to a malicious site?

It's true! Terrifying and true! Luckily, this behaviour can be prevented by adding `rel="noopener"` to any `target="_blank"` links. This can even bring [some performance benefits](https://jakearchibald.com/2016/performance-benefits-of-rel-noopener/) for pages on the same domain, too!

This only needs to be applied to links with `target="_blank"`. Also note that IE/Edge doesn't support `rel="noopener"` at this time. 

See also:

* [About `rel=noopener`](https://mathiasbynens.github.io/rel-noopener/)

## Cross-Site Scriping (XSS)

*Any* user input that is manipulated by JavaScript or output on the page should include code to strip any malicious JavaScript or HTML injection attempts. The [HTML5 Security Cheatsheet](http://html5sec.org) has a list of some common attack vectors and ways to prevent them.

In an ideal world, user inputs should be transmitted to and sanitised on the server side before being output on the page. 

## Cross-Origin Resource Sharing (CORS)

When changing a CORS configuration, never use `Access-Control-Allow-Origin: *`. Always specify specific domains. 

## Sensitive data

Do not store sensitive data (such as passwords) unencrypted. Do not store them in client accessible means such as cookies (which are vulnerable to XSS and CORS attacks) or using local storage.

See also:

* [How to Create Totally Secure Cookies](http://blog.teamtreehouse.com/how-to-create-totally-secure-cookies)