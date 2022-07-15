# FS Front End Docs

**⚠️ I no longer work at Felinesoft. This documentation is unlikely to receive any new updates.**

A quick reference guide to front-end authoring and architecture at [Felinesoft](https://felinesoft.com), or at least how it was during my tenure there. 
 
## Updating and building

The docs are powered by [Jekyll](https://jekyllrb.com). With the repo cloned, install Jekyll and run `bundle exec jekyll serve` in the repo directory to start a local version to preview your edits.

Changes that are ready to go should be made on or merged into the `gh-pages` branch. As the docs use custom Liquid tags—which GitHub forbids for security reasons—you need to include the built version of the docs (suitably located in the `docs` folder) when pushing up code changes. GitHub will deploy this static version, rather than building the pages itself. 

### Asides

The docs are littered with asides. These are bits of information that are useful, if not directly related to the rest of the section or page, and are presented with an accompanying icon and colour. There are four types of aside:

* A **correction** clarifies that content has been simplified for sanity or brevity, or that there are specific exceptions to the advice it gives.
* An **issue** is somewhat similar, they identify places where the content is pretty much correct, but software quirks or bugs mean it doesn't often work.
* An **opinion** is just that, it's things that I, as the author, consider to be best practice, but others may well disagree.
* A **tangent** provides related or useful information about the content that isn't directly related to it.

Asides can be added by wrapping content in aside tags:

```
{% aside opinion %}
Tab indentation is better than spaces. Fight me.
{% endaside %}
```

An aside can also be added without a type, in which case it will appear slightly indented but without any specific icon or colouration. 
