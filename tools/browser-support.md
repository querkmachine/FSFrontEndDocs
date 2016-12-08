---
layout: default
title: Browser and device support
---

Browser support requirements differ depending on the needs of the project, however, we typically build only for browsers that are still officially supported by their vendors. (This means you don't need to support IE8 anymore, thank god.)

|  |IE 9|IE 10|IE 11|Edge|Chrome|Firefox|Safari|
|:-|:----:|:-----:|:-----:|:-----:|:----:|:-----:|:----:|
|Windows Vista|~| | | |✓|✓| |
|Windows 7    |~|✓|✓| |✓|✓| |
|Windows 8/8.1| |✓|✓| |✓|✓| |
|Windows 10   | | |✓|✓|✓|✓| |
|Mac OS 10.9  | | | | |✓|✓|✓|
|Mac OS 10.10 | | | | |✓|✓|✓|
|Mac OS 10.11 | | | | |✓|✓|✓|

Our device testing methods are a lot more freeform. We have a number of devices which can be found both in the device drawer and with Kim, but don’t worry about finding every edge case yourself—that’s a job that the QA team will carry out for you.

As a standard we support the following mobile operating systems:

* iOS 9 and above (Safari only)
* Android 4.2 and above  (Internet on Samsung devices, Chrome elsewhere)
* Windows Phone 8 and above (IE only)
* Windows 10 Mobile and above (Edge only) 

## Browser testing

We use [Browserstack](http://browserstack.com) for browser testing. You'll have to ask the QA team for access credentials.

## Device testing

These are the devices we currently have available to test. <mark>This list is incomplete. The devices and OS versions may not be accurate.</mark>

### FelineSoft Device Lab

|Manufacturer|Model|Operating system|Released|
|:-----------|:----|:---------------|:-------|
|Apple|iPhone 5S|iOS 9.x|2013|
|Apple|iPhone 6 Plus|iOS 9.x|2014|
|Apple|iPad|iOS 5.x|2010|
|Apple|iPad 2|iOS 9.x|2011|
|Apple|iPad Mini 2|iOS 9.x|2013|
|BlackBerry|Z10|BlackBerry 10|2013|
|Google/Asus|Nexus 7|Android x.x|2013|
|Samsung|Galaxy S5|Android 6.x|2014|

### Kim's Device Lab

These devices belong to Kim and not FelineSoft, however, are available for internal testing purposes. Note that not all devices may be available at any one time.

|Manufacturer|Model|Operating system|Released|
|:-----------|:----|:---------------|:-------|
|Amazon|Kindle Fire (5th generation)|Fire OS 5 (fork of Android 5.0)|2015|
|Amazon|Kindle 7|Kindle firmware 5.6.5|2014|
|Apple|iPhone 6|iOS 10.x|2014|
|Apple|iPad 2|iOS 9.1|2011|
|BLU|Win JR|Windows Phone 8.1|2014|
|HTC|One M8|Android 5.0|2014|
|LG|GT540 Optimus|Android 2.1|2010|
|Nintendo|New Nintendo 3DS|Ninendo 3DS system software 10.x|2015|
|<del>Nokia</del> <mark>broken</mark>|<del>Lumia 800</del>|<del>Windows Phone 7.5</del>|<del>2011</del>|
|Sony|Xperia S|Android 4.4|2012|