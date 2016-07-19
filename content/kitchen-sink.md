---
date: "2015-10-26T23:20:53-04:00"
draft: true
title: "Kitchen Sink"
---

<!-- Headings {{{ -->
<h1>This is Heading 1</h1>
<h2>This is Heading 2</h2>
<h3>This is Heading 3</h3>
<h4>This is Heading 4</h4>
<h5>This is Heading 5</h5>
<h6>This is Heading 6</h6>
<!--}}}-->

<!-- Font styles/decorations {{{ -->
<b>Bold</b>
<i>Oblique/Italic</i>
<b><i>Bold-Oblique/Italic</i></b>
<u>Underline</u>
<strike>Strikethrough</strike>
<!--}}}-->

<!-- {{{ Unicode -->
Letters of the basic Latin alphabet:
ABCDEFGHIJKLMNOPQRSTUVWXYZ
abcdefghijklmnopqrstuvwxyz

Base-10 Arabic numerals:
0123456789

Can you read Tengwar?
<span class="tengwar">
 
</span>

Tengwar numerals:
<span class="tengwar">

</span>

<!--TODO: remove-->
  <style>
.vertical {
  -webkit-writing-mode: vertical-rl;
  writing-mode: vertical-rl;
}
</style>

Vertical text:
<div class="vertical">
世界好！ Is this text sideways?<br>
世界好！ Is this text sideways? This should be on the left
</div>

<!-- }}} -->

<!-- Code {{{-->

Syntax highlighting with Prism.js:

```js
console.log("Hello, world!");
```

<!-- }}} -->

<!-- Math {{{ -->

Math typesetting in KaTeX:
$$
f(x) = \int_{-\infty}^\infty
    \hat f(\xi)\,e^{2 \pi i \xi x}
    \,d\xi
$$

<!-- }}} -->

<link rel="stylesheet" href="/vendor/prism/themes/prism.css"/>
<script src="/vendor/prism/prism.js"></script>

<!--
<link rel="stylesheet" href="/static/vendor/KaTeX/dist/katex.min.css"/>
<script src="/static/vendor/KaTeX/dist/katex.min.js"></script>
<script src="/static/vendor/KaTeX/dist/contrib/auto-render.min.js"></script>
-->

<script src="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.5.1/contrib/auto-render.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.5.1/katex.min.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.5.1/katex.min.js"></script>

<script>
  renderMathInElement(document.body);
</script>
