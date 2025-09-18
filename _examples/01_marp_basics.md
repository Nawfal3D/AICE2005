---
title: Marp Basics
description: Marp Presentation Example
author: Max Muster
header: Max Muster | Marp Example
footer: <span name='current_date'></span>
lang: de
size: 16:9
paginate: true
theme: hsmw-inw
transition: none
math: mathjax
marp: true
---

<!-- _class: title -->
# Marp Basics

## Marp Presentation Example

---

# Creating a Presentation

- Create a new Markdown file
  - Markdown files are simple text files
  - The file name extension should be `.md`
- The file should have a YAML header that contains at least `marp: true`.
- Further options can be found in the examples here and under [Marpit Markdown](https://marpit.marp.app/markdown)

```markdown
---
title: Test
theme: hsmw
marp: true
---

# Slide Title

- A first bullet point
```

---

# Creating Slides

- Slides ars separated by horizontal ruler, e.&thinsp;g. `---`
- The slide title is a first-class heading

```markdown
# Slide One

- Some text
- As bullet points

---

# Slide Two

- Some text
- As bullet points
```

---

# Slide Content

- Slides can be written using [CommonMark](https://commonmark.org/)
- This includes among others
  - Plain text
  - Bulleted lists with `-` or `*`
  - Numbered bulleted lists with `1.` or `1)`
  - Links in Markdown-Syntax `[]()`
  - Qutations using `> `
- Slides can also contain HTML

For an expmle, see [next slide](#slide-content-example)

---

# Slide Content Example

<div class="multicolumn"><div>

This is simple text on the slide.

## A lower heading

- A bullet list
- With some items
  - Also in second order

1. And a numbered list
2. With two items

> And a Link [Marp](https://marp.app) in a quotation

</div><div>

```markdown
This is simple text on the slide.

## A lower heading

- A bullet list
- With some items
  - Also in second order

1. And a numbered list
2. With two items

> And a Link [Marp](https://marp.app) in a quotation
```

---
# Slide with bullet points

<div class="multicolumn"><div>

normal text content

- third stitch point
- fourth stitch point
  - indented
    - indented
      - indented

</div><div>

animated text using `*` (click)

* one bullet point
* second bullet point
  * indented
    * indented
      * indented

</div></div>

---
# Slide with numbered points

<div class="multicolumn"><div>

normal text content

1. third stitch point
1. fourth stitch point
   1. indented
      1. indented
         1. indented

</div><div>

animated text using `1)` (click)

1) third stitch point
1) fourth stitch point
   1) indented
      1) indented
         1) indented

</div></div>

---
# Narrow and Wide Lists

Marp offers narrow and broad  lists.

<div class="multicolumn"><div>

## Narrow

- first stitch point
- second stitch point
  - indented
  - indented
- third stitch point
- fourth stitch point

</div><div>

## Wide

- first stitch point

- second stitch point
  - indented

  - indented

- third stitch point

- fourth stitch point

</div></div>

---

# Code for Narrow and Wide Lists

<div class="multicolumn"><div>

## Narrow

```markdown
- first stitch point
- second stitch point
  - indented
  - indented
- third stitch point
- fourth stitch point
```

</div><div>

## Wide

```markdown
- first stitch point

- second stitch point

  - indented

  - indented

- third stitch point

- fourth stitch point
```

</div></div>

---

# Line breaks

- Lines can be forcibly wrapped by `<br />`<br />
- A line break by a simple break
  in the text is also supported

This behavior also applies to
continuous text on the page. At this point, the Marp syntax deviates from the usual behavior in Markdown.

In continuous text, a break <br /> can of course also be forced by `<br />`.

---

# Source Code on a Slide

As with other Markdown frameworks, the display of source code with syntax
highlighting is supported.

<marp-pre is="marp-pre" data-auto-scaling="downscale-only">
    <code class="language-markdown">
        <span class="hljs-built_in">```python</span>
        print("hello world")
        <span class="hljs-built_in">```</span>
    </code>
</marp-pre>

Result:

```python
print("hello world")
```

---

# Images on a Slide

Marp has an [Image syntax](https://marpit.marp.app/image-syntax?id=image-syntax) addressing inline and backgroung images.

Due to their different properties, both variants are used to display images on a slide.

```markdown
![bg right:50%](images/image_filling_right_half_of_slide.png)
```

---

# Line Breaks

Line breaks and long texts are supported by the theme. Long title is depicted on the [next slide](#this-slide-has-a-very-long-and-complex-headline).

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

---

# This Slide Has a Very Long and Complex Headline

- Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt
- Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt
- Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt
- Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt

---
<!-- _class: end -->
# Vielen Dank

**Max Muster**
Professur oder andere Zugehörigkeit

**Hochschule Mittweida** | University of Applied Sciences
Technikumplatz 17 | 09648 Mittweida

Fakultät Beispielfakultät | Fachgruppe der Fakultät

&phone; +49&thinsp;3727&thinsp;58-0000
&#x1F581; +49&thinsp;100&thinsp;000&thinsp;000

&#x1F585; [max.muster@hs-mittweida.de](mailto:max.muster@hs-mittweida.de)

Haus 00 | Name-des-Baus | Raum 00-100
Straße Nr | 09648 Mittweida

<!-- markdownlint-disable-file MD013 -->
<!-- markdownlint-disable-file MD025 -->
<!-- markdownlint-disable-file MD033 -->

<script>
    const date = new Date();
    const year = date.getFullYear();
    const month = ("0" + (date.getMonth() + 1)).slice(-2);
    const day = ("0" + date.getDate()).slice(-2);
    document.getElementsByName("current_date").forEach(function(ele, idx) {
        ele.innerHTML = day + "." + month + "." + year;
    })
</script>

<style>
footer::before {
 content: "Version: GITREVISION | © ";
}
</style>
