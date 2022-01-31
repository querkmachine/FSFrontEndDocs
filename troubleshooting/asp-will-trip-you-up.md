---
layout: default
title: Razor and Umbraco quirks and pain points
---

Life is hard for front-end developers in the Microsoft world. Razor (the templating language used by ASP.NET) and, to a degree, Umbraco were made to convenience back-end developers, not provide flexibility or ease of use for front-enders. In the rare situation that you have to deal with it directly, be aware of these pitfalls.

## By default, everything is Bootstrap

By default everything is written to work with [Bootstrap](http://getbootstrap.com). The boilerplate resources are Bootstrap, example pages are Bootstrap, Umbraco Grid is Bootstrap, Umbraco Forms is Bootstrap. Welcome to Bootstrap. Welcome to *hell*. 

Enjoy spending time ripping everything apart and putting it back together again without Bootstrap.

## Checkboxes aren't just checkboxes

Checkboxes are never just checkboxes. A hidden input gets inserted alongside **every single checkbox**, so if you try to use direct sibling selectors for anything (such as making a label change appearance depending on whether the input is checked or not), this won't work.

{% highlight html %}
<input type="checkbox" name="example" value="true" id="example">
<input type="hidden" name="example" value="false"><!-- Inserted by .NET -->
<label for="example">Do you like checkboxes?</label>
{% endhighlight %}

You'll need to use more generalised sibling selectors instead.

## Adding HTML attributes to HTML helpers is weird

HTML attributes can be added to most (but not all) of the HTML helpers in Razor, typically contained within an object right at the end of the helper: `new {}`. 

**`class` is a reserved word in C#, so CSS classes are added with the `@class` keyword instead.**

Hyphens are apparently only for maths too, so hyphens in attribute names are replaced with underscores. In this example, `data-autocomplete` becomes `data_autocomplete`. 

{% highlight c# %}
@Html.TextBoxFor(x => x.Postcode, new { @class = "a-input", data_autocomplete = "postal-code" })
{% endhighlight %}

## Adding some HTML attributes to some HTML helpers is significantly more weird

Are you using a cool, hip, modern library like [Vue](http://vuejs.org) which adds logic via namespaced HTML attributes? Nice! Shame that colons can't be used inside C# objects, though.

Instead you're going to have to be a lot more verbose, and use a format incompatible with the one above.

{% highlight c# %}
@Html.TextBoxFor(x => x.Postcode, new Dictionary<string, object> { { "class", "a-input" }, { "data-autocomplete", "postal-code" }, { "v-on:change", "postcodeChanged()" }, { ":value", "postcode" } })
{% endhighlight %}

## Basically nothing is accessible

Building something that needs to strictly meet accessibility compliance guidelines? Good luck using any of the HTML helpers then. You'll need custom implementations of virtually all of the form and validation helpers if you want to make the appropriate `aria-invalid`, `aria-describedby`, `role`, etc. attributes to appear when they should.

## Umbraco Forms exists

Take everything you knew about good practice and throw it under the bus. 

Umbraco Forms enforces the use of certain JavaScript libraries, enforces where they need to be loaded into the page (fun fact: it's not at the bottom [where they should be]({{ site.baseurl }}{% link concepts/performance.md %}#css-and-javascript-includes)), will unnecessarily import libraries multiple times, loads unnecessary stylesheets, loads unnecessary libraries (if you're already rolling your own client-side validation or using the built-in browser validation) and requires the use of certain class names if it is to work at all, [desecrating your entire naming scheme in the process]({{ site.baseurl }}{% link authoring-guidelines/writing-css-sass.md %}#bem-syntax).

Many of our projects use a custom Umbraco Forms theme which tries (and is successful, mostly) to pull it in-line with our coding standards. Consider copying that across to make your life at least a little bit easier.