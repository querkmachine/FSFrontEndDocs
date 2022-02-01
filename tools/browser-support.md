---
layout: default
title: Browser and device support
---

## Browser support

Browser support requirements differ depending on the needs and wants of the client, however, our default support grid is based on some easily digestible rules. To be supported, an application must be:

* one of the last two versions,
* released in the last two years,
* and still be supported by the manufacturer.

These rules were determined on the basis that it would include the latest and greatest version of each browser, and the second most recent release—necessary for if a new version has only just been released but not widely downloaded yet—whilst also filtering out those that have been officially abandoned or quietly left to rot without being officially made obsolete, as was the case for Internet Explorer for about eight years. 

### Use with Browserslist and build tools

Not coincidentally, the above requirements cleanly translate to a [Browserslist](https://github.com/browserslist/browserslist) configuration string. Adding `"browserslist": "last 2 versions and last 2 years and not dead"` to a project's `package.json` file will allow this configuration to automatically be picked up by a variety of front-end tools, including Autoprefixer, postcss-preset-env and @babel/preset-env.

For which browsers this query currently incorporates, [see the query results on the Browserslist.dev site](https://browserslist.dev/?q=bGFzdCAyIHZlcnNpb25zIGFuZCBsYXN0IDIgeWVhcnMgYW5kIG5vdCBkZWFk).

### Potential issues

This query isn't without faults. The "last two versions" rule especially falls apart when faced with the increasingly fast-paced release cycles of browsers like Chrome, where the most widely-used version of the browser may actually be three or four versions behind latest. 

Extending it to more than two versions can have the reverse effect, however, as the query then starts including much older versions of slow-cycle browsers, such as Safari. That might be desirable, it's up to you. 

The "still supported by manufacturer" rule may also present issues in the event that a browser's support is discontinued with little notice, as it will drop off the support list regardless of current real-world usage. 

{% aside tangent %}
Browserslist will automatically mark a browser version as being unsupported if it hasn't been updated for more than 24 months. This muddies the distinction between being supported and being released in the last two years a little, but the two queries ultimately return different results.
{% endaside %}

## Device support

Our support grid is generally more focused on browsers than it is on device types, though this may change depending on the nature of the individual project. The office has various iOS and Android devices available for hands-on testing. Ask the QA team if you want to access them.

## Testing

It's a smart idea to have the latest versions of the common desktop browsers—Edge, Chrome, Firefox, and (on macOS) Safari—installed on your work computer, so you can devtest them easily. For older browsers and devices we don't have easy access to, we use [Browserstack](http://browserstack.com) for browser testing. Ask the QA team for access credentials.