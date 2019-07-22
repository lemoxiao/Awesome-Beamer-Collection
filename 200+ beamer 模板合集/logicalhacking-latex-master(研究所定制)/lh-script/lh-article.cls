%% Copyright (C) 2017 Achim D. Brucker, https://www.brucker.ch
%%
%% License:
%%   This program can be redistributed and/or modified under the terms
%%   of the LaTeX Project Public License Distributed from CTAN
%%   archives in directory macros/latex/base/lppl.txt; either
%%   version 1 of the License, or any later version.
%%   OR
%%   The 2-clause BSD-style license.
%%

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{lh-article}%
  [2016/12/28 v0.0  LaTeX class for home work / exercise sheets
  following the  cooperate design of LogicalHacking.com]


\PassOptionsToClass{\CurrentOption}{scrartcl}
\LoadClass[twoside=semi,DIV=calc,abstract=on, 11pt, a4paper]{scrartcl}

\ProcessOptions\relax

\newcommand{\partnerLogo}[1][]{}


\usepackage{xcolor}
\usepackage{mathabx}
\usepackage[T1]{fontenc}
\usepackage[default]{raleway}
\usepackage{sfmath}
\usepackage{sansmathaccent}
\usepackage{fontawesome}
\usepackage{lastpage}
\usepackage{scrlayer-scrpage}

\let\oldauthor\author
\renewcommand{\author}[2][1]{\oldauthor{#2}}
\newcommand{\alert}[1]{\textbf{\textcolor{lhOrange}{#1}}}

\RequirePackageWithOptions{lh-base}
\usepackage[numbers, sort&compress]{natbib}
\usepackage{multicol}
%\usepackage{amsmath}
%\allowdisplaybreaks
\usepackage{xkeyval}

\usepackage{lh-logo}
\usepackage[some]{background}
\usepackage{tikz}
\usepackage{enumitem}
\usepackage{etoolbox}
\usepackage{hyperref}
\urlstyle{sf}

\addtokomafont{date}{\small}

\backgroundsetup{
  scale=1,
  angle=0,
  opacity=1,
  contents={\begin{tikzpicture}[remember picture,overlay]
    \path [fill=lhLightGray] (-0.5\paperwidth,0.5\paperheight)
      rectangle (0.5\paperwidth,0.5\paperheight-235);
    \path [fill=lhOrange] (-0.5\paperwidth+20,0.5\paperheight)
    rectangle (0.5\paperwidth-20,0.5\paperheight-12);
    \draw (-0.5\paperwidth+15,0.5\paperheight-225) node [anchor=base west]
      {\lhcomLogoLight[height=1.1cm]};
    \draw (.37\paperwidth,0.5\paperheight-225) node [anchor=base west]
      {\partnerLogo[height=1.1cm]};
    \draw (0,0.5\paperheight-30) node
    {\textcolor{lhBlack}{{\usekomafont{title}{\huge \@title}} }};
    \draw (0,0.5\paperheight-53) node%
    {\textcolor{lhBlack}{%
      {\ifx\@subtitle\@empty\else\usekomafont{subtitle}{\@subtitle}\fi}%
    }};%
  \draw (0,0.5\paperheight-75) node%
    {\color{black}
  \usekomafont{author}{%
            \begin{tabular}[t]{c}
              \@author
            \end{tabular}
          }%
        };
 % \draw (0,0.5\paperheight-70) node
 % {\textcolor{lhBlack}{\Large\bfseries\lh@topic}};
     \draw (0,0.5\paperheight-140) node[align=center]%
     {\color{black}%
         \usekomafont{publishers}{\normalsize%
           \begin{tabular}[t]{c}\@publishers
           \end{tabular}}\\[2ex]
           {\usekomafont{date}\@date}
         };
     \end{tikzpicture}}
}
\renewcommand{\maketitle}{
 \BgThispage%
  \vspace*{5.5cm}
  }



\ifoot{\small\textnormal{\textcopyright~\the\year~\href{https://logicalhacking.com}{LogicalHacking.com}}}
%\cfoot{\small\textnormal{Confidential}}
\cfoot{\small\textnormal{\lh@classification}}
\ofoot{\small\textnormal{Page \thepage\ of \pageref{LastPage}}}
\pagestyle{scrheadings}
