---
layout: default
title: gulp-imagemin troubleshooting
---

`gulp-imagemin` is a Gulp wrapping library that minifies images. It's used as as a build step in most of our Gulp configurations to compress user interface images and iconography. 

## Compatibility issues with `gulp-imagemin` version 8

For whatever reason, the developer of `gulp-imagemin` completely rewrote the library for version 8.0.0, in doing so [breaking compatibility with out-the-box Gulp](https://github.com/sindresorhus/gulp-imagemin/issues/366) and forcing developers to install additional dependencies and completely rewrite their Gulpfiles to match the ESM standard. 

This is naturally not good news if you're just aiming to keep your dependencies fresh. For this, I'd recommend just sticking with the most recent 7.x release. 

{% highlight shell %}
npm install gulp-imagemin@7.1.0 --save-exact --save-dev
{% endhighlight %}

## Deprecation and removal of jpegtran

`gulp-imagemin` stopped being bundled with jpegtran in the 7.0.0 update, being replaced by mozjpeg. If you're updating a pre-7.0.0 version of `gulp-imagemin` to a newer version, you will likely need to change your Gulp configuration to instead reference mozjpeg.

If you have previously installed jpegtran as an independent package, as described in the instructions below, you will also need to uninstall jpegtran.

## Installation errors relating to jpegtran, gifsicle, optipng or svgo

You might get errors relating to jpegtran, gifsicle, optipng or svgo. These are all image compression engines which are dependencies of `gulp-imagemin`. The installation and compilation of these can fail for quite a few reasons.

Try fixing it by uninstalling and reinstalling gulp-imagemin:

{% highlight shell %}
npm uninstall gulp-imagemin --save-dev
npm install gulp-imagemin --save-dev
{% endhighlight %}

If this fails, try installing each of the packages independently:

{% highlight shell %}
npm install jpegtran gifsicle optipng svgo --save-dev
{% endhighlight %}