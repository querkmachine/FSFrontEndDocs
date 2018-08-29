---
layout: default
title: Browser and device support
---

## Browser support

Browser support requirements differ depending on the needs of the project, however, we typically build for the 'latest minus one'—we support the latest version of a browser, plus the most recent prior version. We also only support browsers and operating systems that are still officially supported by their vendors. (Which means you don't need to support IE8–10 anymore, thank god.)

<aside class="aside aside--tangent">
This table was last updated on the 29th August 2018 to account for the release of Android 9 Pie, the drop of Mac OS 10.11 and Android 5 support, updated browser versions and to correct the Firefox version numbers. This update also adds the new releases of macOS and iOS—both with new Safari versions, due to be released in the next few weeks. 
</aside>

|  |Microsoft<br>IE|Microsoft<br>Edge|Google<br>Chrome|Mozilla<br>Firefox|Apple<br>Safari|Samsung<br>Internet|
|:------------------------|:-:|:----:|:----:|:----:|:--------:|:------:|
|Windows 7                |11 |      |67, 68|60, 61|          |        |
|Windows 8/8.1            |11 |      |67, 68|60, 61|          |        |
|Windows 10               |11 |16, 17|67, 68|60, 61|          |        |
|Windows 10 Mobile        |   |15    |      |      |          |        |
|Android 6.x Marshmallow  |   |      |67, 68|      |          |6.4, 7.2|
|Android 7.x Nougat       |   |      |67, 68|      |          |6.4, 7.2|
|Android 8.x Oreo         |   |      |67, 68|      |          |6.4, 7.2|
|Android 9.x Pie          |   |      |67, 68|      |          |6.4, 7.2|
|macOS 10.12 Sierra       |   |      |67, 68|60, 61|11.1      |        |
|macOS 10.13 High Sierra  |   |      |67, 68|60, 61|11.1      |        |
|macOS 10.14 Mojave       |   |      |67, 68|60, 61|11.1, 12.0|        |
|iOS 11.x                 |   |      |      |      |11.4      |        |
|iOS 12.x                 |   |      |      |      |12.0      |        |

### Support table notes

* Microsoft Edge is a bit weird with version numbers, in that it has two of them—one for the version of the browser (Edge), and one for the version of the rendering engine it uses (EdgeHTML). We care about the rendering engine, so use the EdgeHTML version numbers in this table.
* Unlike Google and Mozilla, who keep the version numbers consistent between desktop and mobile versions of their browsers, the version numbers for the latest editions of Safari may differ between platforms. 
* Apple and Samsung use different versioning systems compared to other browser vendors. Whilst most manufacturers will increment the major browser version when introducing significant changes, Apple and Samsung will happily introduce major changes in minor version increments. The table below includes minor version numbers for those manufacturers. 
* Samsung Internet jumped from version 6.4 to 7.2. There were no publicly available 7.0 or 7.1 releases.

### Browser testing

We use [Browserstack](http://browserstack.com) for browser testing. You'll have to ask the QA team for access credentials.

## Device support

Our device testing methods are a lot more freeform. We have a number of devices which can be found both in the device drawer (by Ben F) and with Kim, but don’t worry about finding every edge case yourself—that’s a job that the QA team will carry out for you.