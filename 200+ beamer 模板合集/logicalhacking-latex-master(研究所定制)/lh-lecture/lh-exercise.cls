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
\ProvidesClass{lh-exercise}%
  [2016/12/28 v0.0  LaTeX class for home work / exercise sheets
  followign the  cooperate design of LogicalHacking.com]

\PassOptionsToClass{\CurrentOption}{scrartcl}
\LoadClass[abstracton,DIV11, 11pt,a4paper]{scrartcl}[]

\RequirePackage{ifthen}

\newboolean{lh@lecture@answers}
\setboolean{lh@lecture@answers}{true}
\newboolean{lh@lecture@newpage}
\setboolean{lh@lecture@newpage}{false}

\DeclareOption{noanswer}       {\PassOptionsToPackage{noanswer}{exercise}%
                                \setboolean{lh@lecture@answers}{false}}
\DeclareOption{answeronly}     {\PassOptionsToPackage{answeronly}{exercise}%
                                \setboolean{lh@lecture@answers}{true}}
\DeclareOption{noexercise}     {\PassOptionsToPackage{noexercise}{exercise}}
\DeclareOption{exerciseonly}   {\PassOptionsToPackage{exerciseonly}{exercise}%
                                \setboolean{lh@lecture@answers}{false}}
\DeclareOption{outputnothing}  {\PassOptionsToPackage{outputnothing}{exercise}}
\DeclareOption{exercisedelayed}{\PassOptionsToPackage{exercisedelayed}{exercise}}
\DeclareOption{answerdelayed}  {\PassOptionsToPackage{answerdelayed}{exercise}}
\DeclareOption{lastexercise}   {\PassOptionsToPackage{lastexercise}{exercise}}
\DeclareOption{showlabel}      {\PassOptionsToPackage{showlabel}{exercise}}
\DeclareOption{newpage}{\setboolean{lh@lecture@newpage}{true}}



\ProcessOptions\relax
%\ProcessOptionsX\relax

\usepackage[T1]{fontenc}
\usepackage[default]{raleway}
\usepackage{sfmath}
\usepackage{fontawesome}
\usepackage{lastpage}
\usepackage{scrlayer-scrpage}

\usepackage[numbers, sort&compress]{natbib}
\usepackage{multicol}
\usepackage{amsmath}
\allowdisplaybreaks
\usepackage{xkeyval}

\usepackage{lh-logo}
\usepackage[some]{background}
\usepackage{tikz}
\usepackage{exercise}
\usepackage{enumitem}
\usepackage{etoolbox}
\usepackage{hyperref}
%
\makeatletter
\def\lh@handin{}
\newcommand{\handindate}[1]{\gdef\lh@handin{#1}}
\def\lh@discusion{}
\newcommand{\discussiondate}[1]{\gdef\lh@discussion{#1}}
\def\lh@lecture{}
\newcommand{\lecture}[1]{\gdef\lh@lecture{#1}}
\def\lh@academicyear{}
\newcommand{\academicyear}[1]{\gdef\lh@academicyear{#1}}
\def\lh@topic{}
\newcommand{\topic}[1]{\gdef\lh@topic{#1}}
\def\lh@sheetnumber{}
\newcommand{\sheetnumber}[1]{\gdef\lh@sheetnumber{#1}}

\def\lh@sheettype{Home Work Sheet}
\newcommand{\sheettype}[1]{\gdef\lh@sheettype{#1}}



\backgroundsetup{
  scale=1,
  angle=0,
  opacity=1,
  contents={\begin{tikzpicture}[remember picture,overlay]
    \path [fill=lhLightGray] (-0.5\paperwidth,0.5\paperheight) rectangle (0.5\paperwidth,0.5\paperheight-125);
    \path [fill=lhOrange] (-0.5\paperwidth+20,0.5\paperheight) rectangle (0.5\paperwidth-20,0.5\paperheight-12);
    \draw (-0.5\paperwidth+15,0.5\paperheight-115) node [anchor=base west] {\lhcomLogoLight[width=.25\paperwidth]};
    \draw (0,0.5\paperheight-30) node {\textcolor{lhBlack}{\huge\bfseries\lh@lecture}};
    \draw (0,0.5\paperheight-53) node
    {\textcolor{lhBlack}{\lh@sheettype{}
        \ifx\lh@sheetnumber\@emtpy\else\fi\lh@sheetnumber
        \ifthenelse{\boolean{lh@lecture@answers}}{ (with Solutions)}{}
      }};
    \draw (0,0.5\paperheight-70) node {\textcolor{lhBlack}{\Large\bfseries\lh@topic}};
    \draw (0.5\paperwidth-15,0.5\paperheight-115) node [anchor=base east]
    {\begin{minipage}[b]{.6\linewidth}
    \flushright\small
    \textbf{Academic year:} \lh@academicyear\\
     \ifx\lh@handin\@empty\else%
       \textbf{Hand-in date:} \lh@handin\\
      \fi%
     \ifx\lh@discussion\@empty\else%
       \textbf{Discussion date:} \lh@discussion
     \fi
  \end{minipage}};
    \end{tikzpicture}}
}

\renewcommand{\maketitle}{
  \BgThispage%
  \vspace*{1.4cm}
  }

\def\DifficultyMarker{\faStar}
\renewcommand{\ExerciseHeader}{%
  \noindent\bfseries\ExerciseName~%
  \ExerciseHeaderNB~{\slshape\ExerciseHeaderTitle}~\ExerciseHeaderOrigin
  \hfill
  \ifx\lh@cohort\@empty\else(\lh@cohort)\fi%
  \ifx\ExerciseHeaderDifficulty\@empty\else\marginpar{\ExerciseHeaderDifficulty}%\kern-.5ex
  \fi\\}
\renewcommand{\AnswerHeader}{\bigskip\noindent\bfseries Answer to \ExerciseName~\ExerciseHeaderNB\\}

\newcommand{\sidemark}[1]{\mbox{}\marginpar[\small\raggedleft\hspace{0pt}\textcolor{lhOrange}{#1}]{\small\raggedright\hspace{0pt}\textcolor{lhOrange}{#1}}}
\newcommand{\key}[1]{\emph{#1}\sidemark{#1}}


\newcommand{\answer}[2]{\ifthenelse{\boolean{lh@lecture@answers}}{\textcolor{lhOrange}{\textbf{#1}}}{#2}}


% Basic implementation of multiple-choice-questions:
\newcommand{\checkbox}{\faSquareO}
\newlist{mcq}{enumerate}{3}
\setlist[mcq]{label={\protect\checkbox\enspace\alph*}),before=\raggedright}

\ifthenelse{\boolean{lh@lecture@answers}}{%
  \newcommand{\correct}{\renewcommand{\checkbox}{\faCheckSquareO}\item}
}{%
  \newcommand{\correct}{\renewcommand{\checkbox}{\hphantom{\faCheckSquare0}\llap{\faSquareO}}\item}
}
\newcommand{\incorrect}{\renewcommand{\checkbox}{\hphantom{\faCheckSquare0}\llap{\faSquareO}}\item}


\def\lh@cohort{}
\define@key{PPExercise}{cohort}{\gdef\lh@cohort{#1}}

% default footer 
\ifoot{\small\textnormal{\textcopyright~\the\year~\href{https://logicalhacking.com}{LogicalHacking.com}}}
\cfoot{\small\textnormal{Student (COMx501) -- 2016/17}}
\ofoot{\small\textnormal{Page \thepage\ of \pageref{LastPage}}}
\pagestyle{scrheadings}


\ifthenelse{\boolean{lh@lecture@newpage}}{%
  \AtBeginEnvironment{Exercise}{\clearpage}%
  \AtEndEnvironment{Exercise}{\clearpage}%
  \AtBeginEnvironment{Answer}{\clearpage}%
  \AtEndEnvironment{Answer}{\clearpage}%
}{}


\endinput
