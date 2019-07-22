# LaTeX Beamer template for the [IHS](http://ihs.ac.at/)

[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip)

This template is *not official*. See the [license](LICENSE.md).

## Installation

You need to make the files of the template available to your local TeX installation.  For most people, installing in their home directory is the easiest solution.

Executing

```bash
kpsewhich -var-value TEXMFHOME
```

in the command line will tell you your TeX home directory, which is usually `~/texmf/` or something similar.  You might want to make a subdirectory inside that to keep things tidy, eg

```bash
mkdir -p ~/texmf/tex/latex/beamer/
```

Then you can
```bash
cd ~/texmf/tex/latex/beamer/
```

and get the template following one of the two options below.  You may have to run `mktexlsr` after getting the source and after updating.

You can learn more installing TeX code in your home directory in the
[UK TUG FAQ](http://www.tex.ac.uk/cgi-bin/texfaq2html?label=privinst).

### Git

This is the suggested method, since it makes it very easy to keep up with changes to the template.  If you don't have [git](http://git-scm.com/), you need to install it.

Then execute

```bash
git clone git://github.com/tpapp/ihs-beamer.git
```

and you are done.  If you want to check for updates, just switch to the appropriate directory and execute

```bash
git pull origin master
```

### Zip/tar archive

Available on [Github](https://github.com/tpapp/ihs-beamer/zipball/master).

## Usage

In order to enable the theme, put
```latex
\usetheme{ihs}
```

in your document preamble.

The info line at the bottom contains the short `\author` name, the short `\insitute` in parentheses (if given, otherwise no parentheses and spacing is generated), an m-dash (—), and the short `\title`.

You can use two commands for generating logos, `\IHSlogo` and `\IHSlogotext`.  The first is with text and the latter is without.  Both accept an optional argument that is passed on to `\includegraphics`.

There is an example available, see [`example.tex`](./example.tex) and [`example.pdf`](./example.pdf)

### Colors only

If you just want to use the IHS colors, they are available as a standalone color theme.  Put

```latex
\usecolortheme{ihs}
```

in your document preamble.


## Bugs/suggestions

Please report them via [Github](https://github.com/tpapp/ihs-beamer/issues).
