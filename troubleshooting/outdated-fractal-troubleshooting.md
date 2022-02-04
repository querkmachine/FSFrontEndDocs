---
layout: default
title: Fractal troubleshooting
---

[Fractal](https://fractal.build) is the tool that we use on most projects to manage design systems. We typically use it with [Mandelbrot](https://fractal.build/guide/web/default-theme.html)—the default theme—and the [Nunjucks adaptor](https://github.com/frctl/fractal/tree/main/packages/nunjucks).

## Mandelbrot errors on start/build

Mandelbrot is the name of the default theme supplied with Fractal. At one point in our history we used a customised fork of Mandelbrot that added new functionality, such as simplified theming, search capabilities and build metadata. We stopped using this fork when most of these features were added to base Mandelbrot.

As this old fork has not been maintained, it is no longer compatible with newer versions of Fractal, and will create errors when trying to start or build Fractal. You can tell if this is the case if the @frctl/mandelbrot dependency in `package.json` uses a GitHub URL.

{% highlight json %}
{
  "devDependencies": {
    "@frctl/mandelbrot": "https://github.com/querkmachine/mandelbrot.git",
  }
}
{% endhighlight %}

To switch to the standard version of Mandelbrot, uninstall the current version, then re-install it. 

{% highlight shell %}
npm uninstall --save-dev @frctl/mandelbrot
npm install --save-dev @frctl/mandelbrot
{% endhighlight %}

You will also have to update the Fractal Gulpfile to remove features that only existed in the forked version.

{% highlight js %}
// Old options (example)
fractal.web.theme(
  mandelbrot({
	nav: ["docs", "components", "assets"],
	panels: ["notes", "view", "params", "html", "resources", "info"],
  })
);

// New options (example)
// "params" panel removed, new nav options added
fractal.web.theme(
  mandelbrot({
    nav: ["search", "docs", "components", "assets", "information"],
    panels: ["notes", "view", "html", "resources", "info"],
  })
);
{% endhighlight %}

## All files are listed in the sidebar navigation, not just preview files

Normally, Fractal's navigation is automatically built by taking files that are named in the same manner as their containing folders; for example, a file at `tabs/tabs.njk` would become a navigation item named "Tabs", with any other files in the `tabs/` folder being ignored. 

This issue presents itself as multiple files in the directory being listed, usually with their extensions; for example, you might end up with a "Tabs" folder containing "Tabs Njk", "Template Njk", "Macro Njk", etc. 

This is a side effect of a Fractal configuration option not being fully compatible with newer versions of Fractal. 

Locate the Gulpfile that contains the Fractal configuration and edit it.

{% highlight js %}
// Find this line. It defines multiple allowed file extensions.
fractal.components.set("ext", ".(njk|html)");

// Change it so that only .njk files are accepted.
fractal.components.set("ext", ".njk");
{% endhighlight %}

Stop and restart the serve task.
