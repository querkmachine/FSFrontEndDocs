---
layout: default
title: Browser and device support
---

## Browser support

Browser support requirements differ depending on the needs of the project, however, we typically build for the 'latest minus one'—we support the latest version of a browser, plus the most recent prior version. We also only support browsers that are still officially supported by their vendors. (Which means you don't need to support IE8–10 anymore, thank god.)

<aside class="aside aside--tangent">
This table was last updated on the 26th January 2018 to account for the newest browser versions and newer versions of iOS. 
</aside>

|  |Microsoft<br>IE<br>11|Microsoft<br>Edge<br>15, 16|Google<br>Chrome<br>63, 64|Mozilla<br>Firefox<br>63, 64|Apple<br>Safari<br>10.x, 11.x|Samsung<br>Internet<br>6.2|
|:-|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Windows 7                |✓| |✓|✓| | |
|Windows 8/8.1            |✓| |✓|✓| | |
|Windows 10               |✓|✓|✓|✓| | |
|Windows 10 Mobile        | |✓| | | | |
|Android 5.x "Lollipop"   | | |✓| | | |
|Android 6.x "Marshmallow"| | |✓| | | |
|Android 7.x "Nougat"     | | |✓| | |<abbr title="Where applicable">✓</abbr>|
|Android 8.x "Oreo"       | | |✓| | |<abbr title="Where applicable">✓</abbr>|
|OS X 10.11 "El Capitan"  | | |✓|✓|<abbr title="Safari 10.1, 11">✓</abbr>| |
|macOS 10.12 "Sierra"     | | |✓|✓|<abbr title="Safari 10.1, 11">✓</abbr>| |
|macOS 10.13 "High Sierra"| | |✓|✓|<abbr title="Safari 11 only">✓</abbr>| |
|iOS 10.3                 | | | | |<abbr title="Safari 10.3, 11">✓</abbr>| |
|iOS 11.x                 | | | | |<abbr title="Safari 11.x only">✓</abbr>| |

### Browser testing

We use [Browserstack](http://browserstack.com) for browser testing. You'll have to ask the QA team for access credentials.

## Device support

Our device testing methods are a lot more freeform. We have a number of devices which can be found both in the device drawer and with Kim, but don’t worry about finding every edge case yourself—that’s a job that the QA team will carry out for you.

<!--

### Device testing

These are the devices we currently have available to test. **This list is incomplete. The devices and OS versions may not be accurate.**

#### Felinesoft Device Lab

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

#### Kim's Device Lab

These devices belong to Kim and not Felinesoft, however, are available for internal testing purposes. Note that not all devices may be available at any one time.

|Manufacturer|Model|Operating system|Released|
|:-----------|:----|:---------------|:-------|
|Amazon|Kindle Fire (5th generation)|Fire OS 5 (fork of Android 5.0)|2015|
|Amazon|Kindle 7|Kindle firmware 5.6.5|2014|
|Apple|iPhone 6|iOS 10.x|2014|
|Apple|iPad 2|iOS 9.1|2011|
|BLU|Win JR|Windows Phone 8.1|2014|
|HTC|One M8|Android 5.0|2014|
|LG|GT540 Optimus|Android 2.1|2010|
|Nintendo|New Nintendo 3DS|Nintendo 3DS system software 10.x|2015|
|Sony|Xperia S|Android 4.4|2012|

-->