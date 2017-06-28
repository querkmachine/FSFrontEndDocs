---
layout: default
title: Checklist for a sensible front-end
---

## Be semantic



## Don't reinvent the wheel

Need a dropdown list? Use a `&lt;select&gt;`. Need a link that goes off somewhere? Use an `&lt;a&gt;`. Stick to the established behaviour for HTML tags and don't needlessly re-implement them. You *will* regret it.

## If you must reinvent the wheel, reinvent it completely

If you must make a custom dropdown list of some sort, base it off a `&lt;select&gt;`, progressively enhance the styling and functionality with JavaScript, and make sure it behaves exactly as you would expect a normal dropdown list. Make sure it is subject to the same keyboard shortcuts, it's tabbable, it has focus styles, you can type in letters to reach values, that it appears as an interactive control in the accessibility tree.

Don't throw away a perfectly good wheel for one that is substandard and with less functionality. When you must reinvent, reinvent to completion.
