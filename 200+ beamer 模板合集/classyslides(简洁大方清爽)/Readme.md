# ABOUT
 
This package provides the beamer theme *classyslides*.

## FEATURES

*classyslides* is a minimalistic beamer theme with focus on readability and unobtrusiveness. Its main features are 

* clear, readable fonts for text, math and code
* a small progress bar at the top
* hideable headline and footline (using the `\contentpagefalse` flag and its inverse `\contentpagetrue`)
* simple color theme based on black, white, gray tones and accent colors
* plain standard environment layouts using tcolorbox (`definition`, `theorem`, ...)
* additional custom enviroments for blocks and code (`Block`, `Code`, `Code*`)

I created this theme for presentations in academia, since I was not happy with the standard Beamer themes.

# USAGE

Simply copy the file 

> beamerthemeclassyslides.sty

into the same folder as your presentation. In the presentation preamble set the theme to *classyslides* using the command `\usetheme{classyslides}`: 
```
\documentclass{beamer}

%...

%! Select the classyslides theme.
\usetheme{classyslides}

%...

\begin{document}

%...

\end{document}
```

Another option is to add `beamerthemeclassyslides.sty` as a local style file. The correct way of adding a local style file depends on your plattform and LaTeX distribution. A thorough instruction for multiple platforms/distributions can be found on [Stack Overflow](http://tex.stackexchange.com/questions/1137/where-do-i-place-my-own-sty-or-cls-files-to-make-them-available-to-all-my-te).

# EXAMPLES

The file `euclid.pdf` is compiled from the example presentation `euclid.tex` (adopted from the beamer manual).  
