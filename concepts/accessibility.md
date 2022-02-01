---
layout: default
title: Accessibility
---

When some people think of web accessibility they think of high contrast colour schemes and screen readers. Those are important, of course, but the discipline of accessibility is much further reaching than that. Dyslexia, motor issues and autism all things that affect how people use a website, and they are just as important to accommodate as the blind and hard of sight.

For website projects we aim to, as much as is practical, fulfil the requirements of [<abbr title="Web Content Accessibility Guidelines">WCAG</abbr> 2.1 Level AA](https://www.w3.org/WAI/WCAG21/quickref/). Many projects, in fact, require this level of support for legal compliance with the Equality Act, so it's a good idea to get into the practice of coding for it regardless of whether the spec explicitly mentions it or not.

One thing to keep in mind throughout this page is that **accessibility is not just about permanent disabilities**. A person with glasses may zoom into a page to be able to read easier; a person with a strain injury will struggle to use a mouse and keyboard; a person who is in a crisis will struggle to read long or complex instructions; and for most people functions like eyesight will degrade with age. [We're all just temporarily abled](https://uxmag.com/articles/we-re-just-temporarily-abled), and making things work for those with the greatest need often benefits everyone, even those without disabilities.

{% aside tangent %}
This is a very long page. It has to be, as accessibility is simultaneously a very wide and very deep subject matter—there's a reason there are entire companies that specialise at this. 

If you're short on time or patience, skim the Dos and Don'ts, most of the stuff you need to know is in there. 
{% endaside %}

## Quick wins

Some quick wins to achieving Level AA compatibility. These are all simple changes that go a long way to helping out.

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
* Strictly enforce a certain appearance. Allow user-defined stylesheets and browser settings to override your styles.
* Hide content in a way that requires interaction to view it (modals, carousels, accordions, etc.)
* Hide content in a way that the user has to change their device or how they are using their device to view it (e.g. forcing users to rotate their phone, making functionality only available on desktop computers).
</div>
</div>

### Automated accessibility testing

It is impossible to test for complete accessibility compliance through automated means, as many of the WCAG requirements require human judgement to determine suitability—a computer cannot easily determine if an image's `alt` text accurately describes the image or if a piece of help text is associated to the correct input, those require human intervention.

Tools that can be used to assist with accessibility testing include [WAVE](http://wave.webaim.org) and the [Lighthouse audit in Chrome devtools](https://developers.google.com/web/tools/lighthouse/).

**You should never depend on "automatic" accessibility overlays.** Like automated testing tools, it is not possible to make a website accessibility compliant through automated means. [Disabled users don't find them useful](https://overlayfactsheet.com) and accessibility professionals overwhelmingly [consider them to be more harmful than doing nothing](https://shouldiuseanaccessibilityoverlay.com) at all.

Advice and resources for testing specific scenarios and disabilities are listed in the following sections. 

## Designing for blindness and screen reader users

Screen readers are an assistive software tool typically used by people with visual impairments that allow them to use computers. It does so by reading aloud user interface text when it is interacted with, either with a keyboard or a mouse. Many first- and third-party screen readers exist, with varying functionality between them. Approximately 76% of screen reader users are completely blind, with another 18.5% having some form of visual impairment ([statistics on screen reader usage](http://webaim.org/projects/screenreadersurvey8/)). 

Many blind users will only use a keyboard as an input device, while others may use specialised braille displays.

Interfaces can be improved for blind users by writing semantic and logically ordered code, with elements marked up with [ARIA attributes](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA) indicating their role and state. Additionally avoid conveying information through mediums other than text, as these are inaccessible to blind users.

Be aware that screen readers typically include functions that summarise the contents of a page into a list of headers or interactive elements—such as links and form inputs—so users may never ‘see’ or interact with the majority of the page contents.

<div class="grid">
<div>
*Do:*

* Provide text-based alternatives to video, audio and other multimedia content.
* Write code and content in a linear, logical manner that makes sense when read aloud.
* Build and test for keyboard-only navigation.
* Use descriptive UI labels and headers that make sense when read outside of the surrounding context.
* Provide header rows and captions for tables.
* Use ARIA attributes to link related elements together, if HTML semantics don't already link them. 
</div>
<div>
*Don't:*

* Rely solely on appearance to determine hierarchy or state.
* Expect the user to know what comes before or after their currently focused element.
* Use other text document formats to convey information (PDFs, Word documents, etc.)
* Spread content around the page.
</div>
</div>

### Testing for blindness and screen reader users

All major operating systems come with screen reader software built in, including [Narrator on Windows](https://support.microsoft.com/en-gb/windows/hear-text-read-aloud-with-narrator-040f16c1-4632-b64e-110a-da4a0ac56917), [VoiceOver on macOS](https://support.apple.com/en-gb/guide/voiceover/welcome/mac), [VoiceOver on iOS](https://support.apple.com/en-gb/guide/iphone/iph3e2e415f/ios), and [TalkBack on Android](https://support.google.com/accessibility/android/answer/6283677). Many third-party screen readers also exist, the most popular of which are [JAWS](http://www.freedomscientific.com/Products/Blindness/JAWS) and [NVDA](https://www.nvaccess.org/download/). You can use any of these yourselves by donning some headphones, closing your eyes (or turning off your monitor) and trying to use the webpage. 

Some users may have specialised hardware that translates text onto a braille display that the user can then read, and sometimes interact with, using their hands. You can see an example of a braille display in use with Android (along with TalkBack and [BrailleBack](https://support.google.com/accessibility/android/answer/3535226)) [in this video](https://www.youtube.com/watch?v=TDyJ6NswyuU).

## Designing for vision impairment

Many people with impaired vision do not use screen readers as their eyesight is still good enough for most day-to-day activities, however may struggle with small or long passages of text. This group includes people with relatively little impairment, such as people who wear glasses for reading, who may modify browser settings or use reader modes to create a more comfortable reading experience.

Interfaces can be improved for people with low vision by making sure that content is displayed at a suitable size and contrast. Additionally, make sure that the page can be zoomed, font sizes can be increased, and that the interface does not break or become obscured as a result. A user may also use a custom stylesheet or have a browser extension that changes the text and colours on the page in order to make it easier for them to read.

Note that all web browsers have independent zoom and text size options. Zooming increases all elements on the page proportionally, whereas text sizing *only* increases the size of copy. Both of these must be accommodated for WCAG compliance. 

<div class="grid">
<div>
*Do:*

* Use strongly contrasting colours (at least 4.5:1).
* Use a reasonable default font size, at least 16px for body content.
* Allow the page to be zoomed, the design should accommodate up to 200% zoom.
* Allow users to complete a task by phone or by mail as an alternative.
</div>
<div>
*Don't:*

* Use a font size smaller than 14px, even for small print.
* Separate actions and notifications from their related contexts (a zoomed in user may not see a modal or menu appearing elsewhere on the page.)
* Create `!important` styles that can override user stylesheets.
</div>
</div>

### Testing with vision impairment

All mainstream web browsers support zooming, typically accessed through a menu option or using the <kbd>Cmd</kbd>/<kbd>Ctrl</kbd> and <kbd>+</kbd>/<kbd>-</kbd> keys. Font size settings are usually harder to find, but will likely be grouped with other accessibility features in the settings. 

In place of, or in addition to, browser-specific features, a user may also use their operating system's magnifier tool, such as [Magnifier on Windows](https://support.microsoft.com/en-us/windows/use-magnifier-to-make-things-on-the-screen-easier-to-see-414948ba-8b1c-d3bd-8615-0e5e32204198), [Zoom on macOS](https://support.apple.com/en-us/HT210978), [Zoom on iOS](https://support.apple.com/en-gb/guide/iphone/iph3e2e367e/ios), and [Magnification on Android](https://support.google.com/accessibility/android/answer/6006949).

The contrast of colours can be tested using online tools, such as the [one-on-one contrast checker from WebAIM](http://webaim.org/resources/contrastchecker/) or [UseAllFive's Accessible Brand Colors tool](https://abc.useallfive.com). [WhoCanUse](https://whocanuse.com/) is a contrast checking tool that includes tests for vision deficiencies, colour blindness, and situational lighting conditions. 

## Designing for colour blindness

Colour blindness is a genetic condition wherein the eye develops either without the photoreceptive cones necessary to perceive a colour, or with those cones being deformed or unequally distributed, creating a deficiency in perceiving a colour. ‌Colour blindness does not necessarily mean a complete inability to perceive colour, just a deficiency in doing so. Colour blindness can cause absent colours to become darker or make otherwise differing colours appear indistinguishable.

There are seven major types of colour blindness. It is possible, but rare, for a person to have more than one type of colour blindness at once.

Protanopia
: A complete absence of red cones. Red appears as black, purple as blue, and orange and green all appearing as muted yellow.

Deuteranopia
: An absence of green cones. Green appears as pale orange, purple as blue, and orange and green as muted yellow.

Tritanopia
: An absence of blue cones. Blue is instead percevied as being green, yellows and oranges as pink, and purple as deep red.

Protanomaly
: A deficiency of red receptors, which makes red hues appear closer to green. 

Deuteranomaly
: A deficiency of green receptors, which makes green appear as an orange-red colour. 

Tritanomaly
: A deficiency of blue receptors, which causes blue to appear similar to green.

Monochromacy
: An absence or significant deficiency of all three cone types. All colours are absent or significantly washed out, with vision effectively appearing in greyscale. 

Many (but not all) types of colour blindness are hereditary and result from a genetic mutation on the X chromosome; making colour blindness much more common in men than in women. Approximately 9% of the male population and 0.45% of the female population have [some form of colour blindness](http://www.colour-blindness.com/general/prevalence/). Due to the hereditary nature, prevalence also varies by country. Colour blindness can also be acquired, temporarily or permanently, from eye diseases, age-related conditions, and as a side effect from prescription medications. 

Deuteranomaly is the most common type of colour blindness, affecting about 5% of men.

<div class="grid">
<div>
*Do:*

* Ensure that the colours of interactive elements don’t cause them to blend into the surroundings.
* Use bright warm/dark cool colour combinations, these tend to have naturally higher contrast.
* Consider using multiple shades of the same colour, rather than different colours, in graphs and charts.
</div>
<div>
*Don't:*

* Rely solely on colour to convey information or state.
</div>
</div>

### Testing with colour blindness

[WhoCanUse](https://whocanuse.com/) is a contrast checking tool that includes tests for vision deficiencies, colour blindness, and situational lighting conditions. [Paletton](http://paletton.com) is a colour scheme generation tool with colour blindness simulation features.

As of March 2020, Google Chrome's devtools include [an emulator for some forms of colour blindness](https://developer.chrome.com/blog/new-in-devtools-83/#vision-deficiencies). The Chrome extension [Colorblindly](https://chrome.google.com/webstore/detail/colorblindly/floniaahmccleoclneebhhmnjgdfijgg) can simulate more forms.

## Designing for the deaf and hard of hearing 

Hearing impairment is a partial or total inability to hear or perceive sound. Hearing loss can be caused by a number of factors both medical and external and can be temporary or permanent. Hearing loss becomes more common through ageing due to natural degeneration of the eardrums. Approximately 15% of people aged 18 and over have some sort of trouble hearing.

Interfaces can be improved for users who are hard of hearing by providing text alternatives to audio.

<div class="grid">
<div>
*Do:*

* Provide text alternatives to video, audio and other multimedia content.
* Allow users to choose methods of communication, including non-auditory mediums.
</div>
<div>
*Don't:*

* Solely use sounds as notifications or prompts, provide a visual accompaniment too.
* Default to or only allow contact or support services by phone.
</div>
</div>

### Testing for the deaf and hard of hearing

There aren't really any automated tools for testing against hearing issues due to the scope of the problem and myriad circumstances in which they might appear.

Ensure that video and audio content includes either a transcript—displayed or linked proximate to the media content—or closed captioning in the case of videos. Failing to provide at least one of these is an immediate WCAG compliance failure. 

Ensure that any audible notifications include a visual component.

## Designing for physical and motor disabilities

There are [a great number of motor disabilities](https://webaim.org/articles/motor/motordisabilities): some permanent, some temporary, some genetic, some obtained. For the purposes of this document, physical and motor disability refers to conditions that would prevent a person from being able to comfortably use traditional input devices (such as a keyboard or mouse) dextrously. This can range from relatively minor issues, like a repetative strain injurity; to persistent and uncontrollable movements, which is common amongst sufferers of Parkinson's disease and Multiple Sclerosis; to complete immobility, as may result from paralysis or amputation. 

Users with motor disabilities may still use a keyboard and mouse, but struggle to use them easily. Those with more severe motor issues may opt to use voice controls (which are described in the next section), switch controls, or head tracking technology.

Interactive elements should have reasonably large interactive areas. If multiple interactive elements are in close proximity, adequate space should be placed between them to avoid accidentally activating the wrong element.

Interfaces can be improved for users with physical and motor disabilities by creating simple interfaces that do not require a significant amount of interaction to achieve tasks. Saving the user's progress automatically, or providing frequent save points, may also be beneficial in helping users recover from unintended inputs the user may make.

<div class="grid">
<div>
*Do:*

* Make interactive elements large (at least 42-48 pixels in both dimensions) and put sufficient empty space around them.
* Design with touch screens and voice control in mind.
* Autofill form inputs wherever possible.
* Provide mechanisms to jump directly to parts of the page (e.g. skiplinks, tables of contents) to reduce the need to scroll.
</div>
<div>
*Don't:*

* Design interfaces that require significant amounts of movement to use (e.g. dropdown navigation menus).
* Design interfaces that require precise cursor movement to use (e.g. elements that only appear on hover).
* Design interfaces that depend upon multiple simultaneous interactions (e.g. pinch to zoom).
* Require significant amounts of typing or scrolling to achieve common tasks.
* Have time-restricted functionality (e.g. logging people out after periods of inactivity).
</div>
</div>

### Testing for physical and motor disabilities

Switch controls are a highly specialised hardware element and typically cost a significant amount of money. Switch controls come in a variety of form factors, and may be controlled using the hands, feet, mouth, tongue, or via head movements. [This video shows a person controlling an iPhone using switch controls with his mouth](https://www.youtube.com/watch?v=kj9UodcwIes), while this one shows both [head switches and facial tracking controls being used on macOS](https://www.youtube.com/watch?v=NL0x-b6zZ8Y). 

## Designing for voice control users

Several types of people may use voice control software to interact with an app or website. This can include those with physical or motor disabilities, who cannot use a mouse or keyboard easily; those with learning disabilities, who may struggle to type; the vision impaired, who may use it in conjunction with a screen reader; or those with persistent conditions (such as chronic pain) who need to limit their keyboard usage.

Voice control software allows a user to navigate apps and webpages by issuing vocal commands to the software, such as "scroll down", "click 'Place Order'", or dictating their response to form fields. 

Voice control is becoming increasingly common for all users, as digital assistants such as Siri allow a user to perform tasks such as creating, dictating and sending an email without having to touch a screen or keyboard.

Interfaces can be improved for voice control users by avoiding duplication of controls and clearly labelling what each control does. Unlabelled controls become open to interpretation—a button with a trash can icon might be named "trash", "bin", "delete", "remove", "dismiss", another name, or no name at all—with it unknowable to a user which one is correct. A button that just says "delete" is immediately obvious by comparison.

<div class="grid">
<div>
*Do:*

* Give controls like links, buttons and inputs unique labels that clearly describe what they do.
* Ensure that form inputs always have an associated label that is visibly displayed.
</div>
<div>
*Don't:*

* Design controls that only provide an icon or graphic to indicate what it does. 
* Duplicate the same label for multiple controls (e.g. having "Read more" on multiple cards).
</div>
</div>

### Testing with voice control

All major operating systems have voice control software built-in, such as [Voice Control on macOS](https://support.apple.com/en-gb/HT210539), [Voice Control on iOS](https://support.apple.com/en-gb/guide/iphone/iph2c21a3c88/ios), [Voice Access on Android](https://support.google.com/accessibility/android/answer/6151848), and [Speech Recognition on Windows](https://support.microsoft.com/en-gb/windows/how-to-use-speech-recognition-in-windows-d7ab205a-1f83-eba1-d199-086e4a69a49a).

Voice Control on macOS and iOS includes features that make it easier to interact with unnamed elements via grids or numerical designations, however these take extra steps to activate and use, and are best avoided for the best user experience, especially for frequent or repetative actions. 

## Designing for autism and ADHD

Autism is the umbrella name for a group of highly variable, but related, neurodevelopmental disorders, typically covering difficulty with social interaction, communication and behavioural skills. Attention deficit hyperactivity disorder (ADHD) is a neurodevelopmental disorder characterised by problems paying attention, excessive activity and difficulty controlling behaviour. ADHD is generally not considered to be on the autistic spectrum, however people with autism and ADHD exhibit many similar traits, which is why they are grouped together here.

People with autism may exhibit repeated behaviours, aversion to changes in routine, hypersensitivity to stimuli (e.g. textures, noises, or tastes), hyperfocus on specific interests, difficulty making eye-contact, and difficulty with social and verbal communication. These can manifest as issues managing schedules, aversion to loud or busy environments, "picky" eating habits, and difficulty initiating and sustaining jobs and relationships.

People with ADHD tend to have difficulty with executive function, issues paying attention to "boring" activities, hyperfocus on specific activities, and problems controlling emotions and behaviour. These can manifest as laziness or forgetfulness, bring prone to distraction, emotional outbursts and mood swings, and difficulty managing time or performing certain activities.

Approximately 1.5% of the population suffers from a form of autism. Approximately 2.6% of the adult population has ADHD, rising to 7% for people aged 18 and under.

Interfaces can be improved for users with autism and ADHD by removing distracting elements to make content consumption easier and making interactive systems work in a simple, easily explainable way.

<div class="grid">
<div>
*Do:*

* Use a simple colour palette.
* Use lots of negative space (whitespace) when breaking up sections.
* Use descriptive labelling on controls and buttons.
* Design simple layouts with a clear, linear reading flow and content hierarchy.
* Maintain a consistent navigation and page structure.
* Use images and diagrams to convey complex information or instructions.
</div>
<div>
*Don't:*

* Use lots of branching paths. Keep processes as linear as possible.
* Use distracting or bright colours, or loud and uncontrollable audio or video.
* Use ambiguous language, sarcasm, figures of speech or metaphors.
* Force users to remember information.
* Force users to use direct communication methods (such as phone calls or in-person meetings) to achieve tasks.
</div>
</div>

### Testing for autism and ADHD

As the autism spectrum contains so much diversity, and due to the nature of the condition, there is no automated method to test that an interface is easy to use by people with autism or ADHD, and testing with only one or two people will usually fail to represent the entire spectrum of possible experiences. The general difficulty with communicating or engaging in testing may also make qualitative testing of autistic and ADHD individuals difficult to carry out on a large scale. 

## Designing for dyslexia

Dyslexia is a cognitive disorder variously related to issues with the language processing or visual processing centres of the brain. Dyslexia is often attributed to similar issues with number processing (dyscalculia) and distinguishing directions. People with dyslexia often say their difficulty stems from text appearing to shift position or rotate while they’re reading, leading to problems determining letter order, letter shapes and distinguishing between similar looking letters. Because of their (often lifelong) difficulty reading, people with dyslexia may also have problems with spellings (often speling frazes as they sound) and will generally struggle to review or correct mistakes. 

Approximately 10% of people in the UK have dyslexia.

Interfaces can be improved for users with dyslexia through appropriate typesetting, such as having wide spacing between words so that they cannot ‘blend together’ and using typefaces with visually distinct glyphs—particularly the letters b, d, q; and I, l, 1. Avoid using underlines, italics and capitalisation for emphasis, as these change the visual appearance of the glyph and make the letters harder to distinguish from one another. If possible, reduce the reliance on text content to convey information, and utilise other mediums such as diagrams or video.

<div class="grid">
<div>
*Do:*

* Use a simple, logical navigation structure.
* Use a large, sans-serif typeface.
* Use images and diagrams to convey complex information or instructions.
* Keep text left aligned, with a consistent left margin.
* Keep content short and to the point.
* Use bold for emphasis, or some other method that doesn't significantly distort the visual appearance of text.
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

### Testing for dyslexia

Like other cognitive issues, testing for dyslexia is difficult because the experience is different for different people, and cannot be easily or accurately replicated or automated. There are [some simulations](http://geon.github.io/programming/2016/03/03/dsxyliea) of dyslexia that use shifting letter positions in an attempt to invoke the sensation of constantly movement, however this is only one such experience, and not everyone experiences dyslexia in this way.

## Designing for photosensitive epilepsy 

Photosensitive epilepsy is a form of epilepsy which is triggered by visual stimuli such as flashing lights or regular moving patterns. The effects can be limited to nausea or dizziness but can be as severe as seizures. Approximately 4% of people have photosensitive epilepsy.

Most web content is harmless to people who suffer with photosensitive epilepsy, however, some visual effects—from full-screen jumps to obnoxiously flashing banner ads—can cause issues for some people. Interfaces can be improved by reducing the use of these effects.

The WCAG defines flashing or strobing as being [more than three times a second](https://www.w3.org/TR/WCAG20/#seizure-does-not-violate).

<div class="grid">
<div>
*Do:*

* Provide a way of disabling intrusive UI animation. 
</div>
<div>
*Don't:*

* Use rapidly flashing, flickering or strobing visual effects.
* Rapidly transition between highly contrasting colours.
* Use images with tight, high contrast parallel lines, as these tend to flicker on many monitors.
</div>
</div>

### Testing for photosensitive epilepsy

## Designing for motion sensitivity and vestibular dysfunction 

Motion sensitivity (also known as motion sickness) is a condition in which there is a disconnect between visually perceived movement and the vestibular system’s sense of movement—either from a physical movement that cannot be seen, or visual movement that cannot be felt. In a digital context, this can also be caused by a disconnect between the user’s expected motion and the actual motion that results (e.g. moving down on the mouse wheel scrolling the page right). Motion sickness is capable of affecting anyone, however, those with vestibular dysfunction are much more prone to it. People with vestibular dysfunction are also more prone to lightheadedness, nausea, and vertigo. 

Vestibular dysfunctions can be acquired through a variety of illnesses, including ear infections, strokes and Parkinson's disease.

Awareness of motion sickness caused by digital user interfaces became prominent with the launch of [iOS 7’s constantly moving home screen and full-screen animations](http://www.theguardian.com/technology/2013/sep/27/ios-7-motion-sickness-nausea), which made a significant number of people feel ill.

Interfaces can be improved for users with motion sensitivity by avoiding large scrolling and zooming effects, such as parallax animation and scrolljacking, as well as reducing the amount of uncontrollable visual animation used.

<div class="grid">
<div>
*Do:*

* Use animation and transitions in a subtle way.
* Confine animated visual effects to small portions of the page.
* Provide a way of disabling intrusive UI animation and hijacked controls.
</div>
<div>
*Don't:*

* Use auto playing carousels or videos that take up significant portions of the screen.
* Animate large portions of the page in general (e.g. large sliders or carousels)
* Change the default scroll behaviour (scrolljacking).
</div>
</div>

### Testing for motion sensitivity and vestibular dysfunction

Most major operating systems include a toggle to reduce the amount of motion in the user interface. [Developers can read this toggle via the `prefers-reduced-motion` media query](https://webkit.org/blog/7551/responsive-design-for-motion/) and should ideally disable animations and autoplaying video in their code if it is set. 

Most automated testing tools cannot or do not test for animations or features such as videos or scrolljacking. It is thus necessary to check these manually. 