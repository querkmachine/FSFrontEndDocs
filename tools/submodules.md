---
layout: default
title: Git submodules
---

On several projects, the design system and front-end elements of the project are contained in a separate Git repository to the back-end. We do this as the front-end is normally built some weeks ahead of the backend, potentially causing work for different sprints to overlap—which is problematic if breaking changes are being introduced. Having front-end in a separate repo means that it can be independently versioned and released, and used to get client review and approval of interfaces that are still in development.

To marry front- and back-end repos together we use [Git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules). Submodules, as the name may suggest, basically allow one Git repo to be included inside of another one. In Git terminology, a project which has submodules is named a "superproject".

By default, submodules appear in the file system as an empty directory. After updating the submodule, the directly will be populated by code from the submodule's repo. Git, however, will treat the directory as though it is a file containing a commit ID (a "lockfile"). This is the ID for the commit that was most recent at the time the submodule was last updated, and is what allows us to choose which version of the design system repo is being deployed.

By default, cloning, fetching or pulling on the superproject will not update submodules, they must be updated with separate commands or by using flags. 

Configuration for submodules is stored in the `.gitmodules` file.

## Adding the submodule

{% aside %}
Be very careful with this. Submodules are fairly difficult to fix if configured incorrectly. 
{% endaside %}

In the superproject, navigate your terminal to the root of the superproject (aka, where the `.git` directory is located, but not inside the directory itself), and use this command:

{% highlight shell %}
git submodule add <url> <path>
{% endhighlight %}

`url` is the cloning path of the Git repo you're using as a submodule. 

`path` is the directory path of where you want this submodule to live in the superproject. For design systems, you will almost certainly want this to be in a sub-directory of the UI/presentation directory of the project. 

## Getting the submodule

If you have yet to clone the superproject, you can clone it and its submodules at the same time: 

{% highlight shell %}
git clone --recurse-submodules <url>
{% endhighlight %}

{% aside tangent %}
Visual Studio 2017 Update 5 and above will do this automatically, although will not show the contents of the submodule within the File Explorer. You need to open the submodule separately if you want to inspect the contents. 

Visual Studio versions prior to Update 5 do not support submodules, so you'll have to run commands in a separate command line.
{% endaside %}

If you've already cloned the superproject without the submodules, you'll need to run two commands instead:

{% highlight shell %}
git submodule init
git submodule update
{% endhighlight %}

The first command initialises the `.gitmodules` file (which updates the configuration file in the `.git` directory). The second fetches the commit specified in the submodule lockfile. 

## Updating the submodule

By default, submodules are "locked" to the commit that they were on when first added to the superproject. No matter who pulls the superproject, or when they do it, they will receive the submodule's code as it existed at the time it was locked. This is to allow for dependency management; you don't want the code to be changing under your feet, after all!

To update the submodule code and update the lockfile:

{% highlight shell %}
git submodule update --remote
{% endhighlight %}

The updated lockfile needs to be committed in the superproject.

{% aside issue %}
*Something* about how this works (in Visual Studio, in DevOps, or maybe elsewhere) is kinda buggy, and lockfiles can get overwritten with older versions on projects where multiple developers are working simultaneously. 

To ensure you don't accidentally overwrite things, consider always running the submodule update command prior to committing and pushing.
{% endaside %}

## Removing a submodule

Rarely you may need to remove a submodule, such as if it's been misconfigured or you're attempting a clean install in order to resolve a problem. Removing a submodule is relatively labour intensive, compared to creating one, so get your command line hats on.

In all of the below, replace "path/to/submodule" to match the path defined when the submodule was added. 

1. Open the `.gitmodules` file in a text editor and delete the section for the submodule. This will start with `[submodule "path/to/submodule"]`, and includes any indented lines under this heading.
2. Stage the change. {% highlight shell %}git add .gitmodules{% endhighlight %}
3. Open the file located at `.git/config` and delete the section for the submodule. This is formatted the same way as in the `.gitmodules` file. 
4. Unstage the submodule directory from Git. {% highlight shell %}git rm --cached path/to/submodule{% endhighlight %}
5. Delete the submodule configuration. {% highlight shell %}rm -rf .git/modules/path/to/submodule{% endhighlight %}
6. Commit your changes. 
7. Finally, delete the submodule directory. {% highlight shell %}rm -rf path/to/submodule{% endhighlight %}