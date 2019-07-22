%%
%% This is file `rdaslides.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% rdaslides.dtx  (with options: `class')
%% 
%% ----------------------------------------------------------------
%% The rdaslides class: Research Data Alliance presentations
%% Author:  Alex Ball
%% E-mail:  a.j.ball@bath.ac.uk
%% License: Released under the LaTeX Project Public License v1.3c or later
%% See:     http://www.latex-project.org/lppl.txt
%% ----------------------------------------------------------------
%% 
\def\Version{2016/08/18 v3.0}
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{rdaslides}
    [\Version\space Class for Research Data Alliance presentations]
\RequirePackage{etoolbox, calc}

\DeclareOption{set}{\PassOptionsToClass{article,alsobeamer}{beamerswitch}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{beamerswitch}%
}
\ProcessOptions\relax

\PassOptionsToClass{textinst}{beamerswitch}
\PassOptionsToClass{a4paper,12pt}{article}
\PassOptionsToClass{noamssymb}{beamer}
\PassOptionsToPackage{noamssymb}{beamerarticle}
\PassOptionsToPackage{table}{xcolor}
\LoadClass{beamerswitch}

\handoutlayout{paper=a4paper,nup=2,pnos}
\articlelayout{maketitle,frametitles=none}
\mode<article>{
  \RequirePackage[hmargin=3cm,vmargin=2.5cm]{geometry}
}
\mode<presentation>{
  \usefonttheme{professionalfonts}
}
\RequirePackage[british]{babel}
\RequirePackage[british,cleanlook]{isodate}
\AtEndPreamble{%
  \RequirePackage{microtype}%
}
\addtobeamertemplate{frame begin}{}{\sffamily}
\addtobeamertemplate{frame end}{\rmfamily}{}
\mode<article>{%
  \setlength{\parindent}{0pt}%
  \setlength{\parskip}{1em plus 0.2em minus 0.2em}%
  \patchcmd{\itemize}{\def}{\topsep\z@\def}%
    {\wlog{Patching itemize succeeded}}%
    {\wlog{Patching itemize failed}}
  \patchcmd{\@enum@}{\def}{\topsep\z@\def}%
    {\wlog{Patching enumerate succeeded}}%
    {\wlog{Patching enumerate failed}}
  \patchcmd{\description}{\labelwidth\z@}{\labelwidth\z@\topsep\z@}%
    {\wlog{Patching description succeeded}}%
    {\wlog{Patching description failed}}
  \usepackage[format=hang,justification=raggedright,labelfont=bf]{caption}
  \usepackage{amsthm}
  \DeclareCaptionTextFormat{condperiod}{#1\@addpunct{.}}
  \captionsetup{textformat=condperiod}
  \usepackage[hang,multiple,bottom]{footmisc}
  \setlength{\footnotemargin}{1em}
}
\IfFileExists{cleveref.sty}{%
  \RequirePackage[noabbrev,capitalize,nameinlink]{cleveref}
}

\RequirePackage{rdacolors}
\newcommand*{\occasion}[1]{%
  \def\insertoccasion{#1}%
  \subject{Presentation given at #1}%
  \mode<article>{%
    \AtBeginDocument{\hypersetup{pdfsubject={Presentation given at #1}}}%
  }%
}
\newcommand*{\hashtag}[1]{%
  \newcommand*{\inserthashtag}{\href{https://twitter.com/hashtag/#1}{\##1}}%
}
\newcommand*{\authorurl}[1]{%
  \def\insertauthorurl{#1}%
}
\def\@title{Please provide a title}
\def\@author{Please specify the author}
\edef\@date{\the\year-\ifnum\month<10 0\fi\the\month-\ifnum\day<10 0\fi\the\day}
\ifundef{\beamer@originstitute}{%
  \renewcommand{\institute}[2][]{\def\insertinstitute{#2}}%
}{%
  \renewcommand{\institute}[2][]{\def\insertinstitute{#2}\beamer@originstitute{#2}}%
}%
\mode<article>{
  \patchcmd{\@maketitle}{%
    \@author
  }{%
    \ifundef{\insertauthorurl}{\@author}{\href{\insertauthorurl}{\@author}}%
  }{}{}
  \patchcmd{\@maketitle}{%
    \large \@date
  }{%
    \large
    \ifdefvoid{\insertoccasion}{}{\insertoccasion, }%
    \printdate{\@date}%
  }{}{}
}

\mode<article>{
  \RequirePackage{tabularx,ifpdf}
  \newcommand{\finale}[1][\empty]{%
    \vbox{}
    \begin{small}
      \rule[1em]{\textwidth}{0.8pt}\par
      \setlength{\extrarowheight}{1ex}%
      \renewcommand{\tabularxcolumn}[1]{m{##1}}
      \begin{tabularx}{\textwidth}{@{}m{22mm}X@{}}
      \ifdefvoid{\licenseStatement}{}{%
        \ifdefvoid{\licenseLogo}{}{\parbox[c]{\hsize}{\licenseLogo}} &
        \licenseStatement
        \ifdefvoid{\licenseUrl}{}{: \url{\licenseUrl}} \\
      }%
      \ifdefvoid{\rdaGroupLogo}{%
        \ifpdf
          \IfFileExists{RDA_Logotype_CMYK.pdf}{%
            \includegraphics[width=\hsize]{RDA_Logotype_CMYK}%
          }{}%
        \else
          \IfFileExists{RDA_Logotype_CMYK.eps}{%
            \includegraphics[width=\hsize]{RDA_Logotype_CMYK}%
          }{}%
        \fi
      }{\parbox[c]{\hsize}{\rdaGroupLogo}} &
      \ifdefvoid{\rdaGroupName}{%
        The Research Data Alliance is supported by the
        European Commission, the US Government and the Australian Government.\par
        \vspace{1ex}%
        For more information, please visit \url{https://rd-alliance.org/}%
      }{%
        The \rdaGroupName\ifdefvoid{\rdaGroupType}{}{ \rdaGroupType}
        is part of the Research Data Alliance, which is supported by the
        European Commission, the US Government and the Australian Government.
        \ifdefvoid{\rdaGroupUrl}{}{%
          \par\vspace{1ex}%
          For more information, please visit \url{\rdaGroupUrl}%
        }%
      }\\
      \end{tabularx}
      \ifx\empty#1\else\par\vskip2pt #1\par\fi
    \end{small}
  }
}
\usetheme{RDA}
%% 
%% Copyright (C) 2016 Alex Ball <a.j.ball@bath.ac.uk>
%%
%% End of file `rdaslides.cls'.
