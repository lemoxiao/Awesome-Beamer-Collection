# IUJ-Beamer


# LaTeX Beamer Theme for the International University of Japan

**Yuki Yanai**, Assistant Professor, *Graduate School of International Relations, International University of Japan*

This is an *unofficial* Beamer theme for IUJ.

![Example](examples/example-IUJ-Beamer.png)


## Installation

Download this direcotry by clicking **Clone or download** button above and then **Download ZIP**.

Unzip the downloaded file, and move it to the directory where you keep LaTeX style files or Beamer theme files. In my environment, it is:

```
~/Library/texmf/tex/latex/beamer/
```

A Mac user's default directory should be something like:

```
/usr/local/texlive/2016/texmf/tex/latex/
```

A Windows user's default should be something like:

```
C:\localtexmf\tex\latex\beamer\themes\
```

Once you put the IUJ-Beamer folder in the appropriate directory, type in the terminal:

```
sudo mktexlsr
```

## Usage

Add the following line to the preamble:

```
\usetheme{IUJ}
```

Currently, three options are available.

1. nonav: suppress the navgaition bar
2. nologo: does not show the university logo mark
3. simplefoot: only the slide number is displayed in footer

To use these options, write in the preamble

```
\usetheme[nonav]{IUJ}
```

or

```
\usetheme[nologo]{IUJ}
```

or

```
\usetheme[nonav,simplefoot]{IUJ}
```
etc.


## Color Themes

At the moment, two color themes are available.

#### Theme 1: hakkaisan

This color theme mainly uses blue, which is IUJ's school color and is distributed as [beamercolorthemehakkaisan.sty](beamercolorthemehakkaisan.sty). 

This is the default color theme for IUJ Beamer.

To use this color theme with another Beamer theme, write in the preamble:

```
\usecolortheme{hakkaisan}  
```

#### Theme 2: hakkaisanDark

This color theme mainly uses black and gray and is distributed as [beamercolorthemehakkaisanDark.sty](beamercolorthemehakkaisanDark.sty).

To use this color theme, write in the preamble:

```
\usecolortheme{hakkaisanDark}  
```


## Examples

You will find some examples in [examples](examples) folder.
