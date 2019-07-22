# Saint-Petersburg: LaTeX/XeLaTeX Beamer theme for SPbU

A small theme that incorporates university colours and fonts from [official
web-site](http://pr.spbu.ru/).

## Installation

On Linux type ``make && make install`` to install everything to standard TeX
Live locations. Alternatively, just type ``make`` and copy all `*.sty` files
from build directory into your project directory so that LaTeX can find them.
In order to show university's logo in the background of the title slide, you
need to download its medium size version from [the official
web-site](http://pr.spbu.ru/images/simvolika/logo/CoA_Medium.eps). 

## Usage

Saint-Petersburg theme can be compiled by LaTeX or XeTeX. Here is the minimal
working example:
```latex
\documentclass[aspectratio=169]{beamer}
% add \usepackage{beamerposter} for the poster

% XeTeX
\usepackage{polyglossia}
\setdefaultlanguage{english}
% or \setdefaultlanguage{russian}

% LaTeX
% \usepackage[utf8]{inputenc}
% \usepackage[english]{babel}
% or \usepackage[english,russian]{babel}

\usetheme{SaintPetersburg}
% or \usetheme[nologo]{SaintPetersburg} to disable logo on the title page
% or \usetheme[poster]{SaintPetersburg} for poster format

\title{Saint Petersburg \LaTeX~Beamer theme}
\author{Ivan Gankevich}
\institute{Saint Petersburg State University}
\date{2017}

% for poster
% \titlegraphic{\includegraphics[width=0.7\linewidth]{spbu-CoA}}
% \othergraphic{\includegraphics[width=0.7\linewidth]{right-logo}}
% \leftcolumnwidth{.2\linewidth}
% \middlecolumnwidth{.6\linewidth}
% \rightcolumnwidth{.2\linewidth}

\begin{document}
\frame{\titlepage}
\end{document}
```

Compilation
```shell
latexmk -pdf -xelatex example.tex  # XeTeX
latexmk -pdf example.tex           # LaTeX
```

## License

LaTeX Project Public License 1.3c or later.
