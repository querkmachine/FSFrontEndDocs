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

Below is a summary of other issues you may need to address.

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
			</ul>
		</div>
	</div>
</div>


* [Color Contrast Checker](http://webaim.org/resources/contrastchecker/)

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
				<li>Require significant amounts of typing or scrolling to achieve common tasks</li>
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
				<li>Use underlines, italics or capitals for emphasis</li>
				<li>Force users to remember information</li>
				<li>Rely on accurate spelling to achieve tasks</li>
			</ul>
		</div>
	</div>
</div>

## Testing for accessibility

Simple accessibility testing can be carried out in your browser using the [Tota11y](http://khan.github.io/tota11y/) bookmarklet. This checks for simple violations like poor colour contrast, nonsensical ordering, insufficient labels and missing `alt` text. It also includes a 'screen reader wand', which provides a basic view as to what content is visible to screen readers.

For more in-depth screen reader testing we've previously employed [<abbr title="NonVisual Desktop Access">NVDA</abbr> screen reader](http://www.nvaccess.org/), which includes a speech viewer so you can see how the page is read without requiring sound. 

