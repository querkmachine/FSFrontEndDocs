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

### For users on the autistic spectrum

The focus here is to remove distracting elements and make it easy to focus on content and determine how a system works.

<div class="grid">
	<div class="cell">
		<div class="card card-success">
			<header class="card-header">Do</header>
			<ul class="list-group">
				<li>Use a simple colour palette</li>
				<li>Use descriptive labelling on controls and buttons</li>
				<li>Build simple and consistent layouts with a clear reading flow</li>
			</ul>
		</div>
	</div>
	<div class="cell">
		<div class="card card-error">
			<header class="card-header">Don't</header>
			<ul class="list-group">
				<li>Use distracting or bright colours</li>
				<li>Use figures of speech or metaphors to describe functionality</li>
			</ul>
		</div>
	</div>
</div>

### For users with screen readers

Screen reader users typically navigate using only the keyboard and with specialised software. Screen readers tend to summarise the contents of a page into a list of headers, so users may never 'see' or interact with the majority of the page contents.

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

Not all users of screen readers are blind, not all who don't use screen readers aren't. The focus here is in contrast, visibility and making sure things can get big. 

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

Colour blindness is a genetic condition wherein the eye develops either without the cones necessary to perceive a colour, or with those cones being deformed or unequally distributed, creating an deficiency in perceiving a colour. There are seven primary types of colour blindness. 

Many (but not all) types of colour blindness are hereditary and result from a genetic mutation in the X chromosome; making colour blindness much more common in men than in women. Approximately 9% of the male population and 0.45% of the female population have [some form of colour blindness](http://www.colour-blindness.com/general/prevalence/). Due to the hereditary nature, prevalence also varies by country.

&zwnj;<mark>Colour blindness does not necessarily mean a complete inability to perceive colour</mark>, just a deficiency in doing so. Colour blindness causes absent colours to become darker (e.g. a person with protoanopia will see bright red as black) and makes otherwise differing colours to appear indistinguisable. 

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

Make common actions simple to perform and easy to find. 

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

Don't rely on audio for things!

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

Typography and the formatting of text plays a large part in things being difficult to read. Underlines, italics and capitalisation change the shape of letters, making life harder for dyslexic people. 

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

### For users prone to photoepileptic seizures

Most web content is harmless to people who suffer with photoepileptic problems, however some visual effects—from full-screen jumps to obnoxiously flashing banner ads—can cause issues for some people. This may not be as severe as a seizure, but could merely cause nausea or dizziness. 

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

Believe it or not (and I've known plenty of people who decided not) heavily animated user interface designs can cause headaches, nausea and vertigo in a number of people, typically caused by a disconnect between their actions and the on-screen result. This is particularly common with large scale scroll and zoom effects, such as parallax animation and scrolljacking. [It happens.](http://www.theguardian.com/technology/2013/sep/27/ios-7-motion-sickness-nausea)

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
				<li>Use autoplaying carousels or videos that take up significant portions of the screen</li>
				<li>Change default scroll behaviour (scrolljacking)</li>
			</ul>
		</div>
	</div>
</div>

## Testing for accessibility

Simple accessibility testing can be carried out in your browser using the [Tota11y](http://khan.github.io/tota11y/) bookmarklet. This checks for simple violations like poor colour contrast, nonsensical ordering, insufficient labels and missing `alt` text. It also includes a 'screen reader wand', which provides a basic view as to what content is visible to screen readers.

Google have a Chrome extension that adds extra tools for accessibility testing to the built in devtools, [Accessibility Developer Tools](https://chrome.google.com/webstore/detail/accessibility-developer-t/fpkknkljclfencbdbgkenhalefipecmb?hl=en), which includes a panel showing screen reader previews and an accessibility audit task to find common problems. 

For more in-depth screen reader testing we've previously employed [<abbr title="NonVisual Desktop Access">NVDA</abbr> screen reader](http://www.nvaccess.org/), which includes a speech viewer so you can see how the page is read without requiring sound. 

## More resources

* [Level AA checklist](https://www.wuhcag.com/wcag-checklist/)
* [Notes on Using ARIA in HTML](http://w3c.github.io/aria-in-html/) by W3C
* [Color Contrast Checker](http://webaim.org/resources/contrastchecker/)
* [Paletton](http://paletton.com) - Colour scheme tool with colour blindness simulation
* [Integrating Contrast Checks in Your Web Workflow](https://24ways.org/2014/integrating-contrast-checks-in-your-web-workflow/) by Geri Coady
* [Designing Safer Web Animation For Motion Sensitivity](http://alistapart.com/article/designing-safer-web-animation-for-motion-sensitivity) by Val Head
