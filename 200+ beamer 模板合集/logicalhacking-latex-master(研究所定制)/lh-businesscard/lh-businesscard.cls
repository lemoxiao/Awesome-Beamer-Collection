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
\ProvidesClass{lh-businesscard}%
  [2017/04/14 v0.0  LaTeX class implementing the cooperate design of LogicalHacking.com]

\LoadClass[inverse]{lh-presentation}

\newcommand{\vCardName}{}
\newcommand{\vCardPhone}{}

\usepackage{qrcode}
\usepackage{pst-barcode}
\geometry{top=0mm,bottom=0mm,left=0mm,right=0mm,paperwidth=90mm,paperheight=60mm}


\newcommand{\lhBusinessCardFront}{\begin{frame}[plain]%
\centerline{Not yet supported.}
\end{frame}}

\newcommand{\lhBusinessCardBack}{%
  \begin{frame}[plain]
    \begin{beamercolorbox}[ht=25mm,sep=.2cm,center,dp=12mm,wd=90mm]{}
    \centerline{\hspace{-3mm}\lhcomLogoDark[width=70mm]}
  \end{beamercolorbox}
  \hspace{8mm}
  \begin{beamercolorbox}[sep=2mm,ht=25mm,sep=9mm,wd=74mm]{footer}
    \raggedright
    {\scriptsize
      \hfill\begin{minipage}[]{15mm}\raggedleft
        \centering\vfill
        \colorbox{lhWhite}{\color{lhDarkGray}\qrcode[level=L,version=0,height=12mm]{BEGIN:VCARD\?VERSION:4.0\?N:\vCardName\?ORG:Software\
            Assurance\ \&\ Security\ Research\?TEL;TYPE=work:\vCardPhone\?EMAIL:\lh@contactemail\?URL;Type=work:\lh@contactwww\?URL;Type=work:logicalhacking.com\?END:VCARD}}
        \vfill
    \end{minipage}
    \hfill
    \hfill
    \begin{minipage}[]{40mm}    
      \tiny
      \faEnvelopeSquare~\lh@contactemail\\
      \faTwitterSquare~@\lh@contacttwitter\\
      \faLinkedinSquare~\lh@contactlinkedin\\
      \faExternalLinkSquare~\lh@contactwww\\
      \faRssSquare~\lh@contactblog
    \end{minipage}\hfill}
\end{beamercolorbox}
\end{frame}}
\endinput
