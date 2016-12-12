---
layout: default
title: Security
---

Security doesn't much sound like a front-end problem, but like seemingly everything else technological, there are some crossover points that you should probably be aware of. 

## HTTPS

A number of browsers prevent access to some HTML5 APIs unless accessed via HTTPS, particularly if these can be used to obtain personal information about a user. This currently includes geolocation lookup and WebRTC.

Other APIs that may soon become HTTPS-only include: device motion and orientation, fullscreen capabilities, and Encrypted Media Extensions (EME)

* [Secure Contexts specification](https://w3c.github.io/webappsec-secure-contexts/)
* [Intent to deprecate: Insecure usage of powerful features](https://groups.google.com/a/chromium.org/forum/#!msg/blink-dev/2LXKVWYkOus/gT-ZamfwAKsJ)

## `:visited` links
Certain browsers will not allow comprehensive styling of `:visited` links, and the `getComputedStyle()` JavaScript function will often 'lie' about the state of `:visited` links. This is to prevent webpages being able to detect what webpages the user has previously visited, as this may disclose personal information.

* [Privacy and the `:visited` selector](https://developer.mozilla.org/en-US/docs/Web/CSS/Privacy_and_the_:visited_selector)

## `target="_blank"` and `rel="noopener"`

Did you know that pages pass information about themselves through JavaScript when you click on a link? Did you know that information includes a cross-origin reference to the `window.opener` object, which the new webpage can manipulate to change the previous page, such as redirecting it to a malicious site?

&zwnj;<mark>It's true! Terrifying and true!</mark> Luckily, this behaviour can be prevented by adding `rel="noopener"` to any `target="_blank"` links. This can even bring [some performance benefits](https://jakearchibald.com/2016/performance-benefits-of-rel-noopener/) for pages on the same domain, too!

This only needs to be applied to links with `target="_blank"`. Also note that IE/Edge doesn't support `rel="noopener"` at this time. 

* [About `rel=noopener`](https://mathiasbynens.github.io/rel-noopener/)

## Cross-Site Scriping (XSS)

*Any* user input that is manipulated by JavaScript or output on the page should include code to strip any malicious JavaScript or HTML injection attempts. The [HTML5 Security Cheatsheet](http://html5sec.org) has a list of some common attack vectors and ways to prevent them.

In an ideal world, <mark>user inputs should be transmitted to and sanitised on the server side</mark> before being output on the page. 

## Cross-Origin Resource Sharing (CORS)

When creating or modifying a CORS configuration on a separate server or domain, never resort to `Access-Control-Allow-Origin: *`. <mark>Always specify specific domains</mark>, otherwise an attacker can manipulate information from outside of your website.

For example, an attacker could create their own webpage that references your JavaScript files which are hosted on a CDN. They can then send whatever data they want to web services or AJAX requests in those scripts, potentially to manipulate database information or to enact a <abbr title="Denial of Service">DOS</abbr> attack.

* [HTTP access control (CORS)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS)

## Sensitive data

Do not store sensitive data (such as passwords) unencrypted. Do not store them in client accessible means such as cookies (which are vulnerable to XSS and CORS attacks) or using local storage.

* [How to Create Totally Secure Cookies](http://blog.teamtreehouse.com/how-to-create-totally-secure-cookies)