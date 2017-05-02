---
layout: default
title: Browser and device support
---

## Browser support

Browser support requirements differ depending on the needs of the project, however, we typically build only for browsers that are still officially supported by their vendors. (This means you don't need to support IE8 anymore, thank god.)

|  |Microsoft<br>IE 11|Microsoft<br>Edge|Google<br>Chrome|Mozilla<br>Firefox|Apple<br>Safari|Samsung<br>Internet|
|:-|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Windows 7                |✓| |✓|✓| | |
|Windows 8/8.1            |✓| |✓|✓| | |
|Windows 10               |✓|✓|✓|✓| | |
|Windows Phone 8          |✓| | | | | |
|Windows 10 Mobile        | |✓| | | | |
|Android 4.x "KitKat"     | | |✓| | | |
|Android 5.x "Lollipop"   | | |✓| | | |
|Android 6.x "Marshmallow"| | |✓| | |<abbr title="Where applicable">✓</abbr>|
|Android 7.x "Nougat"     | | |✓| | |<abbr title="Where applicable">✓</abbr>|
|OS X 10.10 "Yosemite"   | | |✓|✓|✓| |
|OS X 10.11 "El Capitan" | | |✓|✓|✓| |
|macOS 10.12 "Sierra"     | | |✓|✓|✓| |
|iOS 9.x                  | | | | |✓| |
|iOS 10.x                 | | | | |✓| |

<aside class="aside aside--tangent">
Desktop support for Opera is counted under Chrome's support, as the two share identical rendering engines. Mobile versions of Opera are not supported.

Support for all iOS browsers is counted under Safari's support, as all iOS browsers use Safari's rendering engine.
</aside>

<aside class="aside aside--tangent">
This table was last updated in April 2017, when Microsoft finally ended support for Windows Vista (and IE 9 along with it).
</aside>

### Browser testing

We use [Browserstack](http://browserstack.com) for browser testing. You'll have to ask the QA team for access credentials.

## Device support

Our device testing methods are a lot more freeform. We have a number of devices which can be found both in the device drawer and with Kim, but don’t worry about finding every edge case yourself—that’s a job that the QA team will carry out for you.

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
