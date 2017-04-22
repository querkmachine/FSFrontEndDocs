---
layout: default
title: Accessibility
---

When some people think of web accessibility they think of high contrast colour schemes and screen readers. Those are important, of course, but **the discipline of accessibility is much further reaching than that**. Dyslexia, motor issues and autism all things that affect how people use a website, and they are just as important to accommodate as the blind and hard of sight. 

For website projects we aim to, as much as is practical, fulfil the requirements of [<abbr title="Web Content Accessibility Guidelines">WCAG</abbr> 2.0 Level AA](https://www.wuhcag.com/wcag-checklist/). Some projects, in fact, require this level of support for legal reasons, so it's a good idea to get into the practice of coding for it. 

Some quick wins to achieving Level AA compatibility: 

<div class="grid">
<div>
*Do:*

* Write semantic and logically ordered HTML.
* Give interactive elements (links, buttons, inputs) clear focus states.
* Associate form inputs with text labels.
* Provide skip links for screen readers.
* Add `alt` text to images.
* Make JavaScript event handlers device independent.
</div>
<div>
*Don't:*

* Rely solely on colour to convey information or state.
* Hijack or override browser functionality, keyboard behaviour or mouse behaviour.
* Use `!important`. Allow user-defined stylesheets to override your styles.
* Hide content in a way that requires interaction to view it (modals, carousels, accordions, etc.)
</div>
</div>

## Additional considerations

The Government Digital Service put together [a helpful set of posters](https://accessibility.blog.gov.uk/2016/09/02/dos-and-donts-on-designing-for-accessibility/) on the dos and don'ts of accessible design. 
Given we don't control the content on many of our projects a lot of them are outside of our jurisdiction (though feel free to point out to clients if their content is breaching guidelines).

Below is a summary of other issues you may need to address, along with select pieces of the Government Digital Service's advice.

### For users with autism and attention deficit hyperactivity disorder (ADHD)

Autism is a highly variable neurodevelopmental disorder, typically covering impaired social interaction, communication and behavioural skills. Attention deficit hyperactivity disorder is a neurodevelopmental disorder characterised by problems paying attention, excessive activity and difficulty controlling behaviour. Approximately 1.5% of the population suffers from a form of autism. Approximately 2.6% of the adult population has ADHD, rising to 7% for people aged 18 and under.

Interfaces can be improved for users with autism and ADHD by removing distracting elements to make content consumption easier and making interactive systems work in a simple, easily explainable way.

<div class="grid">
<div>
*Do:*

* Use a simple colour palette.
* Use descriptive labelling on controls and buttons.
* Build simple and consistent layouts with a clear reading flow.
* Use images and diagrams to convey complex information or instructions.
</div>
<div>
*Don't:*

* Use distracting or bright colours.
* Use figures of speech or metaphors to describe functionality.
* Force users to remember information.
</div>
</div>

### For users with screen readers

Screen readers are an assistive software tool typically used by people with visual impairments that allow them to use computers. It does so by reading aloud user interface text when it is interacted with, either with a keyboard or a mouse. Many first- and third-party screen readers exist, with varying functionality between them. Approximately 64% of screen reader users are completely blind, with another 39% having some form of visual impairment ([statistics on screen reader usage](http://webaim.org/projects/screenreadersurvey6/)). Many screen reader users will only use a keyboard as an input device. 

Interfaces can be improved for screen reader users by writing semantic and logically ordered code, with elements marked up with [<abbr title="Accessible Rich Internet Applications">ARIA</abbr> attributes](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA) indicating their role and state. Additionally avoid conveying information through mediums other than text, as these are inaccessible to screen readers.

Be aware that screen readers tend to summarise the contents of a page into a list of headers or elements, so users may never 'see' or interact with the majority of the page contents.

<div class="grid">
<div>
*Do:*

* Provide text alternatives to video, audio and other media.
* Write code in a linear, logical manner that makes sense when read aloud.
* Build and test for keyboard-only navigation.
* Use descriptive UI labels and headers that make sense out of context.
* Provide header rows for <code>&lt;table&gt;</code>s.
</div>
<div>
*Don't:*

* Rely solely on appearance to determine hierarchy or state.
* Use other text document formats to convey information (PDFs, Word documents, etc.)
* Spread content around the page.
</div>
</div>

<aside class="aside aside--issue">
Be careful when using CSS that introduces differences between the source order and visual appearance of the page, such as floats, flexbox and grids. A user who navigates by keyboard might expect to go to one place and end up in another!
</aside>

### For users with low vision

Many people with visual impairment do not use screen readers as their eyesight is still good enough for day-to-day life. They may still have issues with websites that are not designed with vision in mind, however. 

Interfaces can be improved for people with low vision by making sure there are a suitable size and colour contrast for content. Additionally, make sure that the page can be zoomed and that the interface does not break or become obscured because of zooming. 

<div class="grid">
<div>
*Do:*

* Use strongly contrasting colours (at least 4.5:1).
* Use a reasonable default font size, at least 16px for body content.
* Allow the page to be zoomed, the design should accommodate up to 200% zoom.
</div>
<div>
*Don't:*

* Use a font size smaller than 14px, even for small print.
* Separate actions and notifications from their contexts.
</div>
</div>

### For users with colour blindness

Colour blindness is a genetic condition wherein the eye develops either without the cones necessary to perceive a colour, or with those cones being deformed or unequally distributed, creating a deficiency in perceiving a colour. There are seven primary types of colour blindness. 

Many (but not all) types of colour blindness are hereditary and result from a genetic mutation on the X chromosome; making colour blindness much more common in men than in women. Approximately 9% of the male population and 0.45% of the female population have [some form of colour blindness](http://www.colour-blindness.com/general/prevalence/). Due to the hereditary nature, prevalence also varies by country.

&zwnj;**Colour blindness does not necessarily mean a complete inability to perceive colour**, just a deficiency in doing so. Colour blindness causes absent colours to become darker (e.g. a person with protanopia will see bright red as black) and makes otherwise differing colours appear indistinguishable. 

<div class="grid">
<div>
*Do:*

* Ensure that the colours of interactive elements don't cause them to blend into the surroundings.
* Use bright warm/dark cool colour combinations, these tend to have naturally higher contrast.
</div>
<div>
*Don't:*

* Rely solely on colour to convey information or state.
</div>
</div>

### For users with physical or motor disabilities

Physical and motor disabilities include a significant number of illnesses: some permanent, some temporary, some genetic, some obtained. For the purposes of this document, physical and motor disability refers to conditions that would prevent a person from being able to comfortably use physical input devices (such as a keyboard or mouse) dexterously. 

Interfaces can be improved for users with physical and motor disabilities by creating simple interfaces that do not require significant interaction to achieve tasks. Additionally, interactive elements should have reasonably large interactive areas. If multiple interactive elements are in close proximity, adequate space should be placed between them to avoid accidentally activating the wrong element. 

<div class="grid">
<div>
*Do:*

* Make interactive elements large (at least 42-48 pixels wide/tall) and put sufficient empty space around them.
* Design with touch screens and speech navigation in mind.
</div>
<div>
*Don't:*

* Design interfaces that require significant movement to use (e.g. dropdown navigation menus).
* Require significant amounts of typing or scrolling to achieve common tasks.
* Have time-restricted functionality (e.g. logging people out after periods of inactivity).
</div>
</div>

### For users who are deaf or hard of hearing

Hearing impairment is a partial or total inability to hear or perceive sound. Hearing loss can be caused by a number of factors both medical and external and can be temporary or permanent. Hearing loss becomes more common through ageing due to natural degeneration of the eardrums. Approximately 15% of people aged 18 and over have some sort of trouble hearing. 

Interfaces can be improved for users who are hard of hearing by providing text alternatives to audio.

<div class="grid">
<div>
*Do:*

* Allow users to choose methods of communication.
* Provide text alternatives to video, audio and other media.
</div>
<div>
*Don't:*

* Default or only allow contact by phone.
* Use sounds as notifications or prompts, provide a visual alternative.
</div>
</div>

### For users with dyslexia

Dyslexia is a cognitive disorder variously related to either issue with the language processing or visual processing centres of the brain. Dyslexia is often attributed to similar issues with number processing (dyscalculia) and distinguishing directions. Dyslexics often say their difficulty stems from text appearing to shift position or rotate while they're reading, leading to problems determining letter shapes and distinguishing between similar looking letters. Approximately 10% of people in the UK have dyslexia.

Interfaces can be improved for users with dyslexia through appropriate typesetting, such as using typefaces with visually distinct glyphs and having wide spacing between words so that they cannot 'blend together'. Avoid using underlines, italics and capitalisation for emphasis, as these change the visual appearance of the glyph and make the letters harder to distinguish from one another. If possible, reduce the reliance on text content to convey information, and utilise other mediums such as diagrams or video. 

<div class="grid">
<div>
*Do:*

* Use images and diagrams to convey complex information or instructions.
* Keep text left aligned, with a consistent left margin.
* Keep content short and to the point.
</div>
<div>
*Don't:*

* Try to convey complex information in long paragraphs.
* Put too much information in one place.
* Use underlines, italics or capitals for emphasis.
* Force users to remember information.
* Rely on accurate spelling to achieve tasks.
</div>
</div>

### For users prone to photosensitive epilepsy

Photosensitive epilepsy is a form of epilepsy which is triggered by visual stimuli such as flashing lights or regular moving patterns. The effects can be limited to nausea or dizziness but can be as severe as seizures. Approximately 4% of people have photosensitive epilepsy.

Most web content is harmless to people who suffer with photosensitive epilepsy, however, some visual effects—from full-screen jumps to obnoxiously flashing banner ads—can cause issues for some people. Interfaces can be improved by reducing the use of these effects.

The <abbr title="Web Content Accessibility Guidelines">WCAG</abbr> defines flashing or strobing as being [more than three times a second](https://www.w3.org/TR/WCAG20/#seizure-does-not-violate).

<div class="grid">
<div>
*Do:*

* Provide a way of disabling intrusive UI animation.
</div>
<div>
*Don't:*

* Use rapidly flashing, flickering or strobing visual effects.
* Rapidly transition between highly contrasting colours.
* Use images with tight, high contrast parallel lines, as these tend to flicker on monitors.
</div>
</div>

### For users with motion sensitivity

Motion sensitivity (also known as motion sickness) is a condition in which there is a disconnect between visually perceived movement and the vestibular system's sense of movement—either from a physical movement that cannot be seen, or visual movement that cannot be felt. In a digital context, this also refers to a disconnect between the user's expected motion and the end result (e.g. moving down on the mouse wheel scrolling the page right). Motion sickness is capable of affecting anyone, however, some people are more prone to it. 

Awareness of motion sensitivity caused by digital user interfaces first became prominent with the launch of [iOS 7's constantly moving home screen and full-screen animations](http://www.theguardian.com/technology/2013/sep/27/ios-7-motion-sickness-nausea). 

Interfaces can be improved for users with motion sensitivity by avoiding large scale scrolling and zooming effects, such as parallax animation and scrolljacking, as well as reducing the amount of uncontrollable visual animation used. 

<div class="grid">
<div>
*Do:*

* Use animation and transitions in a subtle way.
* Confine visual effects to small portions of the page.
* Provide a way of disabling intrusive UI animation and hijacked controls.
</div>
<div>
*Don't:*

* Use auto playing carousels or videos that take up significant portions of the screen.
* Change default scroll behaviour (scrolljacking).
</div>
</div>

* [Designing Safer Web Animation For Motion Sensitivity](http://alistapart.com/article/designing-safer-web-animation-for-motion-sensitivity) by Val Head
* [Reduced motion media query](https://developer.apple.com/library/prerelease/content/releasenotes/General/WhatsNewInSafari/Articles/Safari_10_1.html#//apple_ref/doc/uid/TP40014305-CH12-DontLinkElementID_60) introduced in Safari 10.1

## Testing for accessibility

Simple accessibility testing can be carried out in your browser using the [Tota11y](http://khan.github.io/tota11y/) bookmarklet. This checks for simple violations like poor colour contrast, nonsensical ordering, insufficient labels and missing `alt` text. It also includes a 'screen reader wand', which provides a basic view as to what content is visible to screen readers.

Google have a Chrome extension that adds extra tools for accessibility testing to the built-in devtools, [Accessibility Developer Tools](https://chrome.google.com/webstore/detail/accessibility-developer-t/fpkknkljclfencbdbgkenhalefipecmb?hl=en), which includes a panel showing screen reader previews and an accessibility audit task to find common problems. 

For more in-depth screen reader testing we've previously employed [<abbr title="NonVisual Desktop Access">NVDA</abbr> screen reader](http://www.nvaccess.org/), which includes a speech viewer so you can see how the page is read without requiring sound. 

### More tools

* [Level AA checklist](https://www.wuhcag.com/wcag-checklist/)
* [Notes on Using ARIA in HTML](http://w3c.github.io/aria-in-html/) by W3C
* [Color Contrast Checker](http://webaim.org/resources/contrastchecker/)
* [Paletton](http://paletton.com) - Colour scheme tool with colour blindness simulation
* [Integrating Contrast Checks in Your Web Workflow](https://24ways.org/2014/integrating-contrast-checks-in-your-web-workflow/) by Geri Coady