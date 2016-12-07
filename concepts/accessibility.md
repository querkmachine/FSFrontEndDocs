---
layout: default
title: Accessibility
---

When some people think of web accessibility they think of high contrast colour schemes and screen readers. Those are important, of course, but <mark>the discipline of accessibility is much further reaching than that</mark>. Dyslexia, motor issues and autism all things that can affect website designs too, and they are just as important to accommodate as the blind and hard of sight. 

For website projects we aim to, as much as is practical, fulfil the requirements of [<abbr title="Web Content Accessibility Group">WCAG</abbr> 2.0 Level AA](https://www.wuhcag.com/wcag-checklist/). Some projects in fact require this level of support for legal reasons, so it's a good idea to get into the practice of coding for it. 

Some quick wins to achieving Level AA compatibility: 

* Write semantic and logically ordered HTML
* Don't rely solely on colour to convey information
* Don't hijack or override browser functionality, keyboard behaviour, or mouse behaviour
* Give interactible elements (links, buttons, inputs) clear focus states
* Always associate form inputs with labels
* Provide skiplinks for screenreaders.
* Add `alt` text to images
* Don't use `!important`, allow user-defined stylesheets to make things work for them

## Additional considerations

The Government Digital Service put together [a helpful set of posters](https://accessibility.blog.gov.uk/2016/09/02/dos-and-donts-on-designing-for-accessibility/) on the dos and don'ts of accessible design. 
Given we don't control the content on many of our projects a lot of them are outside of our jurisdiction (though feel free to point out to clients that their copy is badly made).

### For users on the autistic spectrum

The focus here is to remove distracting elements and make it easy to focus on content and determine how a system works.

* Use a simple colour palette, avoid bright colours
* Use descriptive UI labelling, avoid figures of speech
* Build simple and consistent layouts with an obvious reading flow

### For users with screen readers

Screen reader users typically navigate using only the keyboard and with specialised software. Screen readers tend to summarise the contents of a page into a list of headers, so users may never 'see' or interact with the majority of the page contents.

* Provide text alternatives to images, video, audio and other media
* Output code in a linear, logical manner
* Build and test for keyboard-only usage
* Use descriptive UI labelling and headers
* Don't rely solely on appearance to determine content hierarchy
* Don't rely on other document text formats to convey information (PDFs, Word documents)

### For users with low vision

Not all users of screen readers are blind, not all who don't use screen readers aren't. The focus here is in contrast, visibility and making sure things can get big. 

* Use strongly contrasting colours and a reasonable default font size (minimum of 16px on all screen sizes)
* Ensure all copy is visible without scrolling horizontally, when the page is zoomed in 200%

### For users with physical or motor disabilities

Make common actions simple to perform and easy to find. 

* Make actionable elements large, and put sufficient space between them
* Design with touch screens and speech navigation in mind
* Don't require significant amounts of typing or scrolling to achieve common actions

### For users who are deaf or hard of hearing

Don't rely on audio for things!

* Allow users to choose communication methods in contact forms; don't make telephone to the only means of contact
* Don't rely on video or audio to convey information, or provide transcripts where you do
* Don't use sound as a notifier or prompt, have a visual alternative

### For users with dyslexia

Typography and the formatting of text plays a large part in things being difficult to read. Underlines, italics and capitalisation change the shape of letters, making life harder for dyslexic people. 

* Use images and diagrams to convey complex information
* Keep text left aligned
* Keep content short and to the point
* Don't use underlines, italics or capitals for emphasis
* Don't force users to remember informaton
* Don't rely on accurate spelling to achieve tasks

## Testing for accessibility

Simple accessibility testing can be carried out in your browser using the [Tota11y](http://khan.github.io/tota11y/) bookmarklet. This checks for simple violations like poor colour contrast, nonsensical ordering, insufficient labels and missing `alt` text. It also includes a 'screen reader wand', which provides a basic view as to what content is visible to screen readers.

