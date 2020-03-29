# ulriklyngs.com

This repository holds the source files for my website [ulriklyngs.com](https://ulriklyngs.com).
The website is powered by [Hugo](https://gohugo.io) and [`blogdown`](https://bookdown.org/yihui/blogdown/).

I developed the theme for this website, `lyngs-xmin`, on the foundation of Yihui Xie's [XMin](https://github.com/yihui/hugo-xmin) theme, to which I first added Bootstrap 4, ported the design from my old website, and hacked from there.

## Features
- content on the 'recent work' (on the Home page), Projects, Publications, and CV content is pulled in from spreadsheets (see the **_data/** folder
- implements blog post comments with [utteranc.es](https://utteranc.es), a lightweight comments widget built on GitHub issues
- implements code syntax highlighting with [highlight.js](https://highlightjs.org)
- implements hiding of header on scroll with [headroom.js](https://wicky.nillia.ms/headroom.js/)
- implements floating table of contents (on CV page and blog posts) with [afeld/boostrap-toc](https://afeld.github.io/bootstrap-toc/)
