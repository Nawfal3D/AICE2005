---
title: Tipps and Tricks
description: Marp Presentation Example
author: Max Muster
header: Max Muster | Marp Example
footer: <span name='current_date'></span>
lang: de
size: 16:9
paginate: true
theme: hsmw-cb
transition: none
math: mathjax
marp: true
---

<!-- _class: title -->
# Tipps and Tricks

## Marp Presentation Example

---

# Multiple Columns using HTML

```html
<div class="multicolumn"><div>

Content in left column

</div><div>

Content in right column

</div></div>
```

## Result

<div class="multicolumn"><div>

Content in left column

</div><div>

Content in right column

</div></div>

---

# Scoped HTML

- Add scoped html, affecting only current slide

```html
---
<style scoped>section{font-size:13pt;}h1{font-size:45pt;}</style>
# Long Headline

- More text

```

---

<!-- _class: chapter -->
# Advanced media

## Videos (only for HTML export)

---

# Example video about honeycombs

<iframe height="800" src="https://www.youtube.com/embed/thOifuHs6eY" title="YouTube video player" frameborder="0" allowfullscreen></iframe>

---

# Example video with a rabbit

<video controls height="500px">
  <source src="https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4">
</video>

---

<!-- _class: chapter -->
# Advanced Media

## Subtitles for images and videos

---

# Image with description

<figure>
  <img src="https://getsamplefiles.com/download/jpg/sample-2.jpg" height=400px>
  <figcaption>
     The image was taken from <a href="https://getsamplefiles.com/download/jpg/sample-2.jpg">getsamplefiles.com</a>.
  </figcaption>
</figure>

More text can be added here.

---

# Image with description - centered

<figure class="center">
  <img src="https://getsamplefiles.com/download/jpg/sample-2.jpg" height=400px>
  <figcaption>
    The image was taken from <a href="https://getsamplefiles.com/download/jpg/sample-2.jpg">getsamplefiles.com</a>.
  </figcaption>
</figure>

More text can be added here.

---

# Video with description

<figure>
  <video controls height="450px">
    <source src="https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4">
  </video>
  <figcaption>
    The video was taken from <a href="https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4">sample-videos.com</a>.
  </figcaption>
</figure>

---

# Video with description - centered

<figure class="center">
  <video controls height=450px>
    <source src="https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4">
  </video>
  <figcaption>
    The video was taken from <a href="https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4">sample-videos.com</a>.
  </figcaption>
</figure>

---

# Video neben Text

<div class=multicolumn>

  Here you can enter text that describes the video in more detail.

  <figure class="center">
    <video controls height=300px>
      <source src="https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4">
    </video>
    <figcaption>
      The video was taken from <a href="https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4">sample-videos.com</a>.
    </figcaption>
  </figure>
</div>

---
<!-- _class: chapter -->
# More HTML Tricks

## Marp Presentation Example

---

# Advanced Tables

- Use html for complex tables

```html
<table>
    <thead>
        <tr>
            <td> </td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td> </td>
        </tr>
    </tbody>
</table>
```

- So you can use functions like cell-span or row-span
- To save effort, a Markdown table from the html code of the presentation can be used as a basis

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
