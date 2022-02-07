---
layout: default
title: Browserslist troubleshooting
---

[Browserslist](https://github.com/browserslist/browserslist) is a dependency used by various build tools to know what polyfills or prefixes they need to use. [CanIUse](https://caniuse.com) is an online resource that tracks which browsers support which HTML, CSS and JavaScript features.

## caniuse-lite is outdated

You might see something like this when building a project that hasn't been worked on for a while: 

{% highlight shell %}
Browserslist: caniuse-lite is outdated. Please run:
npx browserslist@latest --update-db
{% endhighlight %}

As Browserslist's job is to translate a query into a fixed list of browser versions, and it does not do this by pinging an external server, it needs to be periodically updated to account for new browser releases.

As the warning describes, run the given update terminal command to rectify this.

{% highlight shell %}
npx browserslist@latest --update-db
{% endhighlight %}

## Browserslist configuration returns unexpected results

This issue does not return a warning in build, but may result in unexpected CSS and JavaScript being returned by build tools. 

The configuration in `package.json` may look like this, for example: 

{% highlight json %}
{ 
  "browserslist": [
	"last 2 versions",
	">2%"
  ]
}
{% endhighlight %}

Browserslist used to require explicit OR joiners, whereas it now requires explicit AND joiners. This query might now be wrong, as it's requesting "last 2 versions OR >2%", when we probably wanted it to be AND. For that, we need to be more explicit:

{% highlight json %}
{ 
  "browserslist": "last 2 versions and >2%"
}
{% endhighlight %}

While you're there, make sure that the Browserslist query complies with our [current browser support policy]({% link tools/browser-support.md %}). Check any Gulpfiles to see if they contain embedded Browserslist configurations. If they do, remove them so that the config in `package.json` is used instead.

You can verify that the Browserslist query is working as expected by running `npx browserslist`.
