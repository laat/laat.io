---
layout: post
title:  Yet another blog
date:   2013-11-30 02:00:00
math: true
---

So I started blogging again... at least I think so.

This time around, I'm using [jekyll][jekyll] a static site generator to blog
with markdown. For better markdown support I'm using [pandoc][pandoc] through a
[pandoc-plugin][pdp] for jekyll.

If I'm ever going to blog about math I have also added [mathjax][mathjax] that
renders $\LaTeX$ math formulas like this:
$$ J_\alpha(x) = \sum\limits_{m=0}^\infty \frac{(-1)^m}{m! \, \Gamma(m + \alpha + 1)}{\left({\frac{x}{2}}\right)}^{2 m + \alpha} $$

For styling I've used basic HTML5 and CSS3 with [normalize.css][normalize] and
[font-awesome][fontawesome]. The rest of the styling, like the fonts and
text-size is shamelessly stolen from this awesome interactive [ebook][probbook]
about probabilistic programming for hackers.

Until the next time I find something blog worthy.

[jekyll]:    http://jekyllrb.com
[pdp]:       https://github.com/dsanson/jekyll-pandoc-plugin
[pandoc]:    http://johnmacfarlane.net/pandoc/
[mathjax]:   http://www.mathjax.org/
[normalize]: http://necolas.github.io/normalize.css/
[fontawesome]: http://fortawesome.github.io/Font-Awesome/
[probbook]: http://camdavidsonpilon.github.io/Probabilistic-Programming-and-Bayesian-Methods-for-Hackers/
