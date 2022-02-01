---
layout: default
title: Using Gulp with Visual Studio
---

{% aside correction %}
This troubleshooting guide was written for Visual Studio 2015 and 2017. I cannot verify if these issues still occur, or if the below is still correct, for newer Visual Studio versions.

For older versions of Visual Studio you cannot use Gulp within the application, and must use an external command line.
{% endaside %}

The version of Node.js bundled in Visual Studio 2015 is *ancient*. Even with all of the updates, the most recent version their IDE comes with is 0.10.31, released July 2013. Visual Studio 2017 is a lot better, at Node 5, but is still multiple versions behind the most recent Node releases.

This causes problems. Problems like how Node.js 0.10.31 is so old it doesn’t support the ECMAScript 2015 JavaScript standard (commonly known as ES2015 or ES6). Basically, **you’ll want to fix this problem**, and this document tries to help you do that.

There’s also supplementary issues with using Node in Visual Studio unrelated to version, such as environmental binding. I’ll try to help you fix those too.

All this stuff is dramatically easier if you’re on macOS or Linux. But then again those systems <del>don’t yet have Visual Studio</del> ([Macs almost do](https://www.visualstudio.com/vs/visual-studio-mac/)), so you probably have no reason to be reading this. 

## I get some error about `const` or something? What’s up with that?

`const` is an ES2015 feature for—unsurprisingly—a constant. You’re getting this error because the version of Node that Visual Studio has installed is so hella old it doesn’t understand ES2015. 

You’ll need to install a more up-to-date version of Node.

### Step one: Download and install Node

Go to the [Node website](https://nodejs.org/) and download the most recent version of Node. The 'LTS' release will do. At the time of writing, that’s Node 8.9.4.

Install it as you would normally. 

### Step two: Configure ‘External Web Tools’ in Visual Studio

Go to `Tools > Options`. Then on the tree on the left, navigate to `Projects and Solutions > External Web Tools`.

Click the button of a folder with a little star next to it. This will insert a text input into the list below it.

In the input, type the name of the folder where Node has been installed. This will typically be something like `C:\Program Files\nodejs`. You may need to use Explorer to find this. 

Click off the input but stay on the new list item. Then click the button with an up arrow as many times as necessary to bring the list item to the top of the list. This makes Visual Studio prioritise it over the built-in version of Node. 

### Step three: Re-do the Gulp

You might need to close and re-open Visual Studio for this, but run the Gulp in the Task Runner Explorer again. Hopefully, it should work, but if not…

## Apparently `node-sass` needs rebuilding? What what?

Ah yes, that’s another problem with using Gulp in Visual Studio. 

Some npm modules need to be built according to the environment they’re running on—Windows, Mac, Linux, etc., as well as what version of Gulp is in use. 

&zwnj;**This is done at the point the module is installed by Visual Studio**, and not during any build/rebuild/clean action. This means that if the Node packages are installed by VS *before* upgrading Node (as above), then the packages will have been built for the environment in Visual Studio, NOT the environment you’ve just created by upgrading Node. 

As it happens, Visual Studio (seemingly) has a tendency to misrepresent what environment it is anyway and will always say that Gulp is running on a 32-bit version of Windows, even when that’s not the case. This will make `node-sass` confused and angry, and it will refuse to work for you as a result. You should probably…

### Step one: Try doing what it says

Visual Studio doesn’t have a built-in command line that can interact with Gulp, so you’ll need to hit the start menu and open ‘Command line with Node’.

In the command line, navigate to the directory where `Gulpfile.js` file is and run `npm rebuild node-sass`. 

This often doesn’t work (maybe 5-10% of the time it solves the problem), but it’s worth giving it a shot—just in case.

### Step two: Kill it

If that doesn’t work, your best bet may be in turning it off and on again.

In the same command line, run the command `npm uninstall gulp-sass --save-dev`, then run `npm install gulp-sass --save-dev`. This will uninstall and re-install the package using the command line environment. 