---
layout: default
title: Accessibility
---

When some people think of web accessibility they think of high contrast colour schemes and screen readers. Those are important, of course, but <mark>the discipline of accessibility is much further reaching than that</mark>. Dyslexia, motor issues and autism all things that affect how people use a website, and they are just as important to accommodate as the blind and hard of sight. 

For website projects we aim to, as much as is practical, fulfil the requirements of [<abbr title="Web Content Accessibility Guidelines">WCAG</abbr> 2.0 Level AA](https://www.wuhcag.com/wcag-checklist/). Some projects, in fact, require this level of support for legal reasons, so it's a good idea to get into the practice of coding for it. 

Some quick wins to achieving Level AA compatibility: 

<div class="grid">
	<div class="cell">
		<div class="card card-success">
			<header class="card-header">Do</header>
			<ul class="list-group">
				<li>Write semantic and logically ordered HTML</li>
				<li>Give interactive elements (links, buttons, inputs) clear focus states</li>
				<li>Associate form inputs with text labels</li>
				<li>Provide skip links for screen readers</li>
				<li>Add <code>alt</code> text to images</li>
				<li>Make JavaScript event handlers device independent</li>
			</ul>
		</div>
	</div>
	<div class="cell">
		<div class="card card-error">
			<header class="card-header">Don't</header>
			<ul class="list-group">
				<li>Rely solely on colour to convey information</li>
				<li>Hijack or override browser functionality, keyboard behaviour, or mouse behaviour</li>
				<li>Use <code>!important</code>; allow user-defined stylesheets to override your styles</li>
				<li>Hide content in a way that requires interaction to view it (modals, carousels, etc.)</li> 
			</ul>
		</div>
	</div>
</div>

## Additional considerations

The Government Digital Service put together [a helpful set of posters](https://accessibility.blog.gov.uk/2016/09/02/dos-and-donts-on-designing-for-accessibility/) on the dos and don'ts of accessible design. 
Given we don't control the content on many of our projects a lot of them are outside of our jurisdiction (though feel free to point out to clients that their copy is badly written).

Below is a summary of other issues you may need to address, along with select pieces of the Government Digital Service's advice.

### For users with autism and attention deficit hyperactivity disorder (ADHD)

Autism is a highly variable neurodevelopmental disorder, typically covering impaired social interaction, communication and behavioural skills. Attention deficit hyperactivity disorder is a neurodevelopmental disorder characterised by problems paying attention, excessive activity and difficulty controlling behaviour. Approximately 1.5% of the population suffers from a form of autism. Approximately 2.6% of the adult population has ADHD, rising to 7% for people aged 18 and under.

Interfaces can be improved for users with autism and ADHD by removing distracting elements to make content consumption easier and making interactive systems work in a simple, easily explainable way.

<div class="grid">
	<div class="cell">
		<div class="card card-success">
			<header class="card-header">Do</header>
			<ul class="list-group">
				<li>Use a simple colour palette</li>
				<li>Use descriptive labelling on controls and buttons</li>
				<li>Build simple and consistent layouts with a clear reading flow</li>
				<li>Use images and diagrams to convey complex information or instructions</li>
			</ul>
		</div>
	</div>
	<div class="cell">
		<div class="card card-error">
			<header class="card-header">Don't</header>
			<ul class="list-group">
				<li>Use distracting or bright colours</li>
				<li>Use figures of speech or metaphors to describe functionality</li>
				<li>Force users to remember information</li>
			</ul>
		</div>
	</div>
</div>

### For users with screen readers

Screen readers are an assistive software tool typically used by people with visual impairments that allow them to use computers. It does so by reading aloud user interface text when it is interacted with, either with a keyboard or a mouse. Many first- and third-party screen readers exist, with varying functionality between them. Approximately 64% of screen reader users are completely blind, with another 39% having some form of visual impairment ([statistics on screen reader usage](http://webaim.org/projects/screenreadersurvey6/)). 

Interfaces can be improved for screen reader users by writing semantic and logically ordered code, with elements marked up with [<abbr title="Accessible Rich Internet Applications">ARIA</abbr> attributes](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA) indicating their role and state. Additionally avoid conveying information through mediums other than text, as these are inaccessible to screen readers.

Be aware that screen readers tend to summarise the contents of a page into a list of headers or elements, so users may never 'see' or interact with the majority of the page contents.

<div class="grid">
	<div class="cell">
		<div class="card card-success">
			<header class="card-header">Do</header>
			<ul class="list-group">
				<li>Provide text alternatives to video, audio and other media</li>
				<li>Write code in a linear, logical manner that makes sense when read aloud</li>
				<li>Build and test for keyboard-only navigation</li>
				<li>Use descriptive UI labels and headers that make sense out of context</li>
				<li>Provide headers for <code>&lt;table&gt;</code>s</li>
			</ul>
		</div>
	</div>
	<div class="cell">
		<div class="card card-error">
			<header class="card-header">Don't</header>
			<ul class="list-group">
				<li>Rely solely on appearance to determine hierarchy or state</li>
				<li>Use other text document formats to convey information (PDFs, Word documents, etc.)</li>
				<li>Spread content around the page</li>
			</ul>
		</div>
	</div>
</div>

### For users with low vision

Many people with visual impairment do not use screen readers as their eyesight is still good enough for their everyday life. They may still have issues with websites that are not designed with vision in mind, however. 

Interfaces can be improved for people with low vision by making sure there are a suitable size and colour contrast for content. Additionally, make sure that the page can be zoomed and that the interface does not break or become obscured because of zooming. 

<div class="grid">
	<div class="cell">
		<div class="card card-success">
			<header class="card-header">Do</header>
			<ul class="list-group">
				<li>Use strongly contrasting colours (at least 4.5:1)</li>
				<li>Use a reasonable default font size, at least 16px for body content</li>
				<li>Allow the page to be zoomed, the design should accommodate up to 200% zoom</li>
			</ul>
		</div>
	</div>
	<div class="cell">
		<div class="card card-error">
			<header class="card-header">Don't</header>
			<ul class="list-group">
				<li>Use a font size smaller than 14px, even for small print</li>
				<li>Separate actions and notifications from their contexts</li>
			</ul>
		</div>
	</div>
</div>

### For users with colour blindness

Colour blindness is a genetic condition wherein the eye develops either without the cones necessary to perceive a colour, or with those cones being deformed or unequally distributed, creating a deficiency in perceiving a colour. There are seven primary types of colour blindness. 

Many (but not all) types of colour blindness are hereditary and result from a genetic mutation on the X chromosome; making colour blindness much more common in men than in women. Approximately 9% of the male population and 0.45% of the female population have [some form of colour blindness](http://www.colour-blindness.com/general/prevalence/). Due to the hereditary nature, prevalence also varies by country.

&zwnj;<mark>Colour blindness does not necessarily mean a complete inability to perceive colour</mark>, just a deficiency in doing so. Colour blindness causes absent colours to become darker (e.g. a person with protanopia will see bright red as black) and makes otherwise differing colours to appear indistinguishable. 

<div class="grid">
	<div class="cell">
		<div class="card card-success">
			<header class="card-header">Do</header>
			<ul class="list-group">
				<li>Ensure that the colours of interactive elements don't cause them to blend into the surroundings</li>
				<li>Use bright warm/dark cool colour combinations, these tend to have naturally higher contrast</li>
			</ul>
		</div>
	</div>
	<div class="cell">
		<div class="card card-error">
			<header class="card-header">Don't</header>
			<ul class="list-group">
				<li>Rely solely on colour to convey information</li>
			</ul>
		</div>
	</div>
</div>

### For users with physical or motor disabilities

Physical and motor disabilities include a significant number of illnesses: some permanent, some temporary, some genetic, some obtained. For the purposes of this document, physical and motor disability refers to conditions that would prevent a person from being able to comfortably use physical input devices (such as a keyboard or mouse) dexterously. 

Interfaces can be improved for users with physical and motor disabilities by creating simple interfaces that do not require significant interaction to achieve tasks. Additionally, interactive elements should have reasonably large interactive areas. If multiple interactive elements are in close proximity, adequate space should be placed between them to avoid accidentally activating the wrong element. 

<div class="grid">
	<div class="cell">
		<div class="card card-success">
			<header class="card-header">Do</header>
			<ul class="list-group">
				<li>Design with touch screens and speech navigation in mind</li>
				<li>Make interactive elements large (at least 48 pixels wide/tall) and put sufficient space around them</li>
			</ul>
		</div>
	</div>
	<div class="cell">
		<div class="card card-error">
			<header class="card-header">Don't</header>
			<ul class="list-group">
				<li>Design interfaces that require significant movement to use (e.g. dropdown navigation menus)</li>
				<li>Require significant amounts of typing or scrolling to achieve common tasks</li>
				<li>Have time out windows to complete tasks</li>
			</ul>
		</div>
	</div>
</div>

### For users who are deaf or hard of hearing

Hearing impairment is a partial or total inability to hear or perceive sound. Hearing loss can be caused by a number of factors both medical and external and can be temporary or permanent. Hearing loss becomes more common through ageing due to natural degeneration of the eardrums. Approximately 15% of people aged 18 and over have some sort of trouble hearing. 

Interfaces can be improved for users who are hard of hearing by providing text alternatives to audio.

<div class="grid">
	<div class="cell">
		<div class="card card-success">
			<header class="card-header">Do</header>
			<ul class="list-group">
				<li>Allow users to choose methods of communication</li>
				<li>Provide text alternatives to video, audio and other media</li>
			</ul>
		</div>
	</div>
	<div class="cell">
		<div class="card card-error">
			<header class="card-header">Don't</header>
			<ul class="list-group">
				<li>Default or only allow contact by phone</li>
				<li>Use sounds as notifications or prompts, provide a visual alternative</li>
			</ul>
		</div>
	</div>
</div>

### For users with dyslexia

Dyslexia is a cognitive disorder variously related to either issue with the language processing or visual processing centres of the brain. Dyslexia is often attributed to similar issues with number processing (dyscalculia) and distinguishing directions. Dyslexics often say their difficulty stems from text appearing to shift position or rotate while they're reading, leading to problems determining letter shapes and distinguishing between similar looking letters. Approximately 10% of people in the UK have dyslexia.

Interfaces can be improved for users with dyslexia through appropriate typesetting, such as using typefaces with visually distinct glyphs and having wide spacing between words so that they cannot 'blend together'. Avoid using underlines, italics and capitalisation for emphasis, as these change the visual appearance of the glyph and make the letters harder to distinguish from one another. If possible, reduce the reliance on text content to convey information, and utilise other mediums such as diagrams or video. 

<div class="grid">
	<div class="cell">
		<div class="card card-success">
			<header class="card-header">Do</header>
			<ul class="list-group">
				<li>Use images and diagrams to convey complex information or instructions</li>
				<li>Keep text left aligned, with a consistent left margin</li>
				<li>Keep content short and to the point</li>
			</ul>
		</div>
	</div>
	<div class="cell">
		<div class="card card-error">
			<header class="card-header">Don't</header>
			<ul class="list-group">
				<li>Try to convey complex information in long paragraphs</li>
				<li>Put too much information in one place</li>
				<li>Use underlines, italics or capitals for emphasis</li>
				<li>Force users to remember information</li>
				<li>Rely on accurate spelling to achieve tasks</li>
			</ul>
		</div>
	</div>
</div>

### For users prone to photosensitive epilepsy

Photosensitive epilepsy is a form of epilepsy which is triggered by visual stimuli such as flashing lights or regular moving patterns. The effects can be limited to nausea or dizziness but can be as severe as seizures. Approximately 4% of people have photosensitive epilepsy.

Most web content is harmless to people who suffer with photosensitive epilepsy, however, some visual effects—from full-screen jumps to obnoxiously flashing banner ads—can cause issues for some people. Interfaces can be improved by reducing the use of these effects.

The <abbr title="Web Content Accessibility Guidelines">WCAG</abbr> defines flashing or strobing as being [more than three times a second](https://www.w3.org/TR/WCAG20/#seizure-does-not-violate).

<div class="grid">
	<div class="cell">
		<div class="card card-success">
			<header class="card-header">Do</header>
			<ul class="list-group">
				<li>Provide a way of disabling intrusive UI animation</li>
			</ul>
		</div>
	</div>
	<div class="cell">
		<div class="card card-error">
			<header class="card-header">Don't</header>
			<ul class="list-group">
				<li>Use rapidly flashing, flickering or strobing visual effects</li>
				<li>Rapidly transition between highly contrasting colours</li>
				<li>Use images with tight, high contrast parallel lines, as these tend to flicker on monitors</li>
			</ul>
		</div>
	</div>
</div>

### For users with motion sensitivity

Motion sensitivity (also known as motion sickness) is a condition in which there is a disconnect between visually perceived movement and the vestibular system's sense of movement—either from a physical movement that cannot be seen, or visual movement that cannot be felt. In a digital context, this also refers to a disconnect between the user's expected motion and the end result (e.g. moving down on the mouse wheel scrolling the page right). Motion sickness is capable of affecting anyone, however, some people are more prone to it. 

Awareness of motion sensitivity caused by digital user interfaces first became prominent with the launch of [iOS 7's constantly moving home screen and full-screen animations](http://www.theguardian.com/technology/2013/sep/27/ios-7-motion-sickness-nausea). 

Interfaces can be improved for users with motion sensitivity by avoiding large scale scrolling and zooming effects, such as parallax animation and scrolljacking, as well as reducing the amount of uncontrollable visual animation used. 

<div class="grid">
	<div class="cell">
		<div class="card card-success">
			<header class="card-header">Do</header>
			<ul class="list-group">
				<li>Use animation and transitions in a subtle way</li>
				<li>Confine effects to small portions of the page</li>
				<li>Provide a way of disabling intrusive UI animation and hijacked controls</li>
			</ul>
		</div>
	</div>
	<div class="cell">
		<div class="card card-error">
			<header class="card-header">Don't</header>
			<ul class="list-group">
				<li>Use auto playing carousels or videos that take up significant portions of the screen</li>
				<li>Change default scroll behaviour (scrolljacking)</li>
			</ul>
		</div>
	</div>
</div>

## Testing for accessibility

Simple accessibility testing can be carried out in your browser using the [Tota11y](http://khan.github.io/tota11y/) bookmarklet. This checks for simple violations like poor colour contrast, nonsensical ordering, insufficient labels and missing `alt` text. It also includes a 'screen reader wand', which provides a basic view as to what content is visible to screen readers.

Google have a Chrome extension that adds extra tools for accessibility testing to the built-in devtools, [Accessibility Developer Tools](https://chrome.google.com/webstore/detail/accessibility-developer-t/fpkknkljclfencbdbgkenhalefipecmb?hl=en), which includes a panel showing screen reader previews and an accessibility audit task to find common problems. 

For more in-depth screen reader testing we've previously employed [<abbr title="NonVisual Desktop Access">NVDA</abbr> screen reader](http://www.nvaccess.org/), which includes a speech viewer so you can see how the page is read without requiring sound. 

## More resources

* [Level AA checklist](https://www.wuhcag.com/wcag-checklist/)
* [Notes on Using ARIA in HTML](http://w3c.github.io/aria-in-html/) by W3C
* [Color Contrast Checker](http://webaim.org/resources/contrastchecker/)
* [Paletton](http://paletton.com) - Colour scheme tool with colour blindness simulation
* [Integrating Contrast Checks in Your Web Workflow](https://24ways.org/2014/integrating-contrast-checks-in-your-web-workflow/) by Geri Coady
* [Designing Safer Web Animation For Motion Sensitivity](http://alistapart.com/article/designing-safer-web-animation-for-motion-sensitivity) by Val Head
* [Reduced motion media query](https://developer.apple.com/library/prerelease/content/releasenotes/General/WhatsNewInSafari/Articles/Safari_10_1.html#//apple_ref/doc/uid/TP40014305-CH12-DontLinkElementID_60) introduced in Safari 10.1
