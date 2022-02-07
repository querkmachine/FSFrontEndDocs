class FED {
    static headerPermalinks() {
        // HT: https://stackoverflow.com/a/40475478
        const headings = document.querySelectorAll('h1[id], h2[id], h3[id], h4[id], h5[id], h6[id]');
        for (let i = 0; i < headings.length; i++) {
            headings[i].innerHTML = `${headings[i].innerText} <a href="#${headings[i].id}">#</a>`;
        }
    }
}

FED.headerPermalinks();