---
layout: default
title: Using webfonts on Azure hosting
---

<aside class="aside aside--tangent">
This actually works for all files with a non-standard extension, such as Handlebars templates. It's not just for fonts!
</aside>

Many of our projects, all the way from integration environments to QA to UAT to the live site, run on [Microsoft Azure](https://azure.microsoft.com). Azure provides a hosting environment similar to the default set up of Internet Information Services (IIS) on your development machine; the problem is this set up doesn't cover all the bases. 

For example, IIS and Azure will automatically 404 any request for a file with a MIME type it doesn't understand (aka, your fonts won't load). And what MIME types does it not know by default? Why, the ones for fonts, of course! 

If the project you're on has a `web.config` file, which practically everything hosted on Azure will, you can fix this by adding the following snippet of code. 

{% highlight xml %}
<system.webServer>
    <staticContent>
        <remove fileExtension=".eot" />
        <mimeMap fileExtension=".eot" mimeType="application/vnd.ms-fontobject" />
        <remove fileExtension=".otf" />
        <mimeMap fileExtension=".otf" mimeType="application/font-sfnt" />
        <remove fileExtension=".svg" />
        <mimeMap fileExtension=".svg" mimeType="image/svg+xml" />
        <remove fileExtension=".ttf" />
        <mimeMap fileExtension=".ttf" mimeType="application/font-sfnt" />
        <remove fileExtension=".woff" />
        <mimeMap fileExtension=".woff" mimeType="application/font-woff" />
        <remove fileExtension=".woff2" />
        <mimeMap fileExtension=".woff2" mimeType="font/woff2" />
    </staticContent>
</system.webServer>
{% endhighlight %}

<aside class="aside aside--correction">
You probably don't need all of these, but there's no harm in adding them all, just in case!
</aside>