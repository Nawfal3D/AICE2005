---
title: Introduction
description: Marp Presentation Example
author: Max Muster
header: Max Muster | Marp Example
footer: <span name='current_date'></span>
lang: de
size: 16:9
paginate: true
theme: hsmw
transition: none
math: mathjax
marp: true
---

<!-- _class: title -->
# Marp at the HSMW

## Marp Presentation Example

---

# Welcome to HSMW-Marp

[HSMW-Marp](https://git.hs-mittweida.de/marp) is the implementation of the [Marp: Markdown Presentation Ecosystem](https://marp.app/), taking into account the corporate design regulations of the Mittweida University of Applied Sciences.

---

# Why Marp

- Marp is independent of the operating system
- Separation of content and appearance is considered good practice
- Markdown is a widely used markup language
- Slides can easily be created automatically
  - For example in the context of CI jobs

---

# Features of HSMW-Marp

- Themes for
  - HSMW (no faculty branding)
  - HSMW with INW branding
  - HSMW with CB branding
- Different slide sizes
  - `4:3`, `16:9` using 720p and `fhd` using 1080p
- Extensions like
  - Agenda and chapter slides
  - Multicolumn layout
  - $\dots$ and more

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
