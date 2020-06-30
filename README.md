# ulriklyngs.com

This repository holds the source files for my website [ulriklyngs.com](https://ulriklyngs.com).
The website is powered by [Hugo](https://gohugo.io) and [`blogdown`](https://bookdown.org/yihui/blogdown/), and deployed via [Netlify](https://www.netlify.com).

I created the theme for this website, `lyngs-xmin`, on the foundation of Yihui Xie's [XMin](https://github.com/yihui/hugo-xmin) theme, to which I added Bootstrap 4, ported the design from my old website, and then hacked from there.

## Features
- content on the Home page ('recent work'), Projects, Publications, and CV pages is pulled in from [this google sheet](https://docs.google.com/spreadsheets/d/1ta71CAGkcLqm-W1UdVRA_JJSddWV2TsrRZsCnQlmOis/edit?usp=sharing)
- blog post comments with [utteranc.es](https://utteranc.es), a lightweight comments widget built on GitHub issues
- code syntax highlighting with [highlight.js](https://highlightjs.org)
- hiding of header on scroll with [headroom.js](https://wicky.nillia.ms/headroom.js/)
- floating table of contents (on CV page and blog posts) with [afeld/boostrap-toc](https://afeld.github.io/bootstrap-toc/)
