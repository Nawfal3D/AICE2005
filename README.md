# Marp Presentation Template

This template is intended to make it easier to start creating presentations with
the [Markdown Presentation Ecosystem (Marp)](https://marp.app/). It uses the
[Marp theme](https://git.hs-mittweida.de/marp/marp-theme-hsmw) by Wilhelm
Rosinski, which is based on the corporate design of the Mittweida University of
Applied Sciences.

This [readme](https://git.hs-mittweida.de/marp/marp-template-hsmw/-/blob/main/README.md)
file provides an overview of the template and explains how to use it. Examples
of the use of [Marp](https://marp.app/) and the special features of the template
can be found in the [Markdown folder](https://git.hs-mittweida.de/marp/marp-template-hsmw/-/tree/main/markdown).

## Installation

These instructions describe the installation of this template and the Marp tool
in detail.

### Installing the Template

[Download](https://git.hs-mittweida.de/marp/marp-template-hsmw/-/archive/main/marp-template-hsmw-main.zip)
the template from the [GitLab](https://git.hs-mittweida.de/marp/marp-template-hsmw)
site as a
[`.zip` file](https://git.hs-mittweida.de/marp/marp-template-hsmw/-/archive/main/marp-theme-hsmw-main.zip),
unzip it and save the folder under a name of your choice. This way you can
maintain your project in an independent repository.

### Setting up the Template

Once the template has been saved and unpacked, a few adjustments need to be made.

The name of the presentation file must be defined in the Makefile. To do this, a
meaningful value is assigned to the variable `BASENAME` in line 4. To avoid
problems, only letters (A-Z, a-z), numbers (0-9) and the characters `_` and `-`
should be used.

The files `_frontmatter.md` and `_backmatter.md` are located in the Markdown
directory. Various adjustments (name and description of the presentation, name
and contact details of the author) must be made in both files.

The Markdown directory also contains examples of the use of Marp in conjunction
with the HSMW theme. These files can be used as a template or removed.

### Symbolic links for images

In the directories `markdown` and `html` a symbolic link to the directory with
the images must be created.

In the Windows PowerShell with

```powershell
New-Item -ItemType SymbolicLink -Path images -Target ..\images\
```

In a Linux or macOS shell with

```sh
ln -vs ../images
```

Note: The `html` directory is created the first time the `make` command is
called.

### Settin up Git

Markdown documents are ideal for versioning with [Git](https://git-scm.com/).
It is therefore advisable to convert the project directory into a Git working
copy at this point. The commands required for this on the command line are the
same for all operating systems.

The following commands must be executed one after the other in the project
directory:

```commandline
git init .
git add .
git commit --verbose --message="Initial Commit for a Beautiful Marp Presentation"
```

### Marp-Cli

The template is based on the command line tool Marp-Cli. This must therefore be
installed.

### Marp-Cli on Linux and macOS

Under Linux, 'Marp-Cli' can be installed via the package management of the
distribution.

For macOS users, we recommend using [Homebrew](https://brew.sh/) to install and
manage software.

The use of [Homebrew](https://brew.sh/) can also be a solution for Linux users
if the tool is not offered via the package manager.

### Marp-Cli on Windows

The `tools` directory of the project should contain the latest version of the
[Marp command line tool](<https://github.com/marp-team/marp-cli>). The latest
version can be downloaded from [GitHub](https://github.com/marp-team/marp-cli).

The `marp.exe` contained in the `.zip`-file is placed in the `tools` directory.

## Using the Project

The project is designed so that it can be used with any editor and the command
line tool `make` as well as with the plugins for [Visual Studio Code](https://code.visualstudio.com/)
and [Obsidian](https://obsidian.md/).

### The project structure

A presentation can be divided into several files. A presentation modularized in
this way is clearer and easier to maintain.

The markdown files are stored in the `markdown` directory. They must have the
file extension `md` and their name must not begin with `_`. The files should
also be numbered so that the order is correct when creating the overall
presentation. (e.g. `00_introduction.md`, `01_basics.md`). Images are stored in
the `images` directory. The SVG and PNG formats are recommended.

### Creating the presentations

Presentations can be exported directly using the plugins when using
[Visual Studio Code](https://code.visualstudio.com/) or
[Obsidian](https://obsidian.md/). However, this template
_really comes into its own_ when used in conjunction with the `make` tool and
the enclosed `Makefile`.

By calling

`make`

in the project directory, combined presentations in HTML and PDF format are
created from all files in the `markdown` directory. The name of the resulting presentation is derived from
the value of the variable `BASENAME` in the Makefile.

If only HTML presentations are to be created, this can be done using

`make html`.

Accordingly, only the PDF presentations are created using

`make pdf`

To create individual presentations for each marp Markdown file, the make targets

`make splitt_html`

and

`make splitt_pdf`

are provided. Here, a presentation is created for each Markdown files from
the `markdown` directory.

All provided build targets can be shown with

`make help`

### Structure of the Markdown files

The template is designed so that each Markdown file is exported as a separate
presentation. In addition, all Markdown files can also be exported to a
monolithic presentation.

To function as a standalone presentation, each Markdown file must start with a
YAML header containing at least `marp: true`. An extended skeleton for a
presentation can be found under [#skeleton].

The files `_frontmatter.md` and `_backmatter.md` contained in the template are
used when creating the monolithic presentation. They replace the YAML headers of
the individual presentations, which are ignored during assembly.

#### Skeleton of a Markdown presentation

As a minimal skeleton for every presentation, the preamble should contain the
title, author and content for the header and footer in addition to the mandatory
`marp: true` and `theme:`.

```yaml
---
title: "My Cool Presentation"
author: "Max Muster"
header: "Max Muster | Marp Example"
footer: Musterhausen 2024
theme: hsmw
marp: true
---
```

Further examples of the YAML preamble and more complex headers and footers can
be found in the template's sample files.

## Required Tools

Here are some tips on possible working methods and tools. Additional information
can be found in the sample presentation of this template.

### Editing presentations

Both [Visual Studio Code](https://code.visualstudio.com/) and
[Obsidian](https://obsidian.md/) offer plugins for Marp. These offer a very good
live preview of the presentation.

However, a simple text or markdown editor is also suitable for creating
presentations. Marp-Cli offers a server mode with live preview. This can be
activated via the Makefile with

```commandline
make server
```

to start it.

### File names

Markdown files that begin with `_` or whose file extension is not `md` are
ignored by the Makefile. In this way, you can use Markdown files that are not
included in presentations.

### Git

We recommend the use of Git to save intermediate states of the work. The
installation of Git is documented on the project website
[Git](https://git-scm.com/).

### Make

The template is based on the command line tool `make`.

This can be easily installed under Linux using the distribution's package
manager. macOS users can use [Homebrew](https://brew.sh/) or install XCode.

Installation under Windows is more difficult. Here you can install
[MSYS2](https://www.msys2.org/) or [MinGW-w64](https://www.mingw-w64.org/). Both
environments allow the subsequent installation of `make`. Another solution is
offered by the [GNU](https://www.gnu.org/) project with [Make for
Windows](https://gnuwin32.sourceforge.net/packages/make.htm).

### Python

[Marp Concat](https://git.hs-mittweida.de/marp/marp_concat), the supplied tool
for connecting the individual presentations into a monolithic requires Python.

There are various ways to install Python. Under Linux, the use of the package
manager is recommended. Users of macOS can use homebrew.

There are various ways for Windows. Among other things, there are current
versions in the Microsoft Store. Installation via `winget` or via the
installation packages from [Python.org](https://www.python.org/) is also very
easy.

### Comming from PPT

The transfer of existing PowerPoint presentations (in pptx format) to Markdown
can be done with the help of Python. One approach is described here:
[Example Code for converting PPTX to Markdown (Marp)](https://git.hs-mittweida.de/marp/marp_concat/-/snippets/23).

## Development Version of Marp Theme

To install the current development version of the HSMW Marp theme locally,
the following commands can be executed on the command line.

```sh
cd theme
curl -O https://git.hs-mittweida.de/marp/marp-theme-hsmw/-/raw/develop/themes/_hsmw.css
curl -O https://git.hs-mittweida.de/marp/marp-theme-hsmw/-/raw/develop/themes/hsmw.css
curl -O https://git.hs-mittweida.de/marp/marp-theme-hsmw/-/raw/develop/themes/hsmw-inw.css
curl -O https://git.hs-mittweida.de/marp/marp-theme-hsmw/-/raw/develop/themes/hsmw-cb.css
```

# TODOs

- [ ] Complete the example presentation
- [ ] Write script to install the tools and the theme
  - [ ] Linux Bash script
  - [ ] PowerShell script
  - [ ] Call them in Makefile
- [ ] Create a tool to generate an agenda slide when running `make`
  - [ ] for the overall presentation
  - [ ] for each presentation in the markdown-folder
- [ ] Create a tool to reliably convert `pptx`-Files

