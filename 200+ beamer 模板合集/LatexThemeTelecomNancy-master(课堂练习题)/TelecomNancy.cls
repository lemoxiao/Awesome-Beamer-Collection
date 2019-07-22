%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright (c) 2014, Adrien Krähenbühl <adrien.krahenbuhl@gmail.com>
% All rights reserved.
%
% Redistribution and use in source and binary forms, with or without modification,
% are permitted provided that the following conditions are met:
% 
% * Redistributions of source code must retain the above copyright notice, this
%   list of conditions and the following disclaimer.
% 
% * Redistributions in binary form must reproduce the above copyright notice, this
%   list of conditions and the following disclaimer in the documentation and/or
%   other materials provided with the distribution.
% 
% * Neither the name of Adrien Krähenbühl nor the names of its
%   contributors may be used to endorse or promote products derived from
%   this software without specific prior written permission.
% 
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
% ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
% WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
% DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
% ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
% (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
% LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
% ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
% (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
% SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Class TelecomNancy for exercices.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{TelecomNancy}[2014/02/06 Exercices class for Telecom Nancy, v1.0]
 
% Base class
 
\LoadClass[12pt]{article}
 
% extensions

\RequirePackage{xkeyval}
 
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[frenchb]{babel}
\frenchbsetup{StandardLists=true}
\RequirePackage{lmodern}
\RequirePackage{graphicx}
\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
\RequirePackage[tikz]{bclogo}
\RequirePackage{geometry}
\RequirePackage{enumitem}
\RequirePackage{colortbl}
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}

% Options

\DeclareOptionX*{\PassOptionsToClass{\CurrentOption}{article}}

\setlength{\headheight}{4.5cm}
\DeclareOptionX{headheight}[4.5cm]{\setlength{\headheight}{#1}}

\newlength{\pmargin}
\setlength{\pmargin}{2cm}
\DeclareOptionX{margin}[2cm]{\setlength{\pmargin}{#1}}

\newlength{\titlewidth}
\setlength{\titlewidth}{.6\paperwidth}
\DeclareOptionX{titlewidth}[.6\paperwidth]{\setlength{\titlewidth}{#1\paperwidth}}

\def\firstcolor{gray}
\DeclareOptionX{firstcolor}[red]{\def\firstcolor{#1}}

\def\secondcolor{red}
\DeclareOptionX{secondcolor}[gray]{\def\secondcolor{#1}}

\newif\ifsansserif
\DeclareOptionX{sansserif}{\sansseriftrue}

\def\logo{}
\DeclareOptionX{logo}[]{\def\logo{#1}}

\def\footband{}
\DeclareOptionX{footband}[]{\def\footband{#1}}

\ProcessOptionsX


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Length

\newlength{\headleftwidth}
\setlength{\headleftwidth}{\paperwidth}
\addtolength{\headleftwidth}{-\titlewidth}
\addtolength{\headleftwidth}{-.5cm}

\setlength{\footskip}{1.5cm}
\geometry{margin=\pmargin,top=\headheight,bottom=\footskip}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fonts

\ifsansserif
	\renewcommand{\familydefault}{\sfdefault}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lists

\setitemize{itemsep=-.15cm,label=$\bullet$}
\setenumerate{itemsep=0cm,topsep=0cm,itemindent=.5cm}
\setdescription{itemsep=-.12cm,itemindent=.1cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Header

\renewcommand{\headrulewidth}{0mm}
\fancyhead[L]{
	\hspace{-.5cm}
	\begin{minipage}{\headleftwidth}%
		\begin{bclogo}[couleur=white,barre=none,logo=,marge=6,noborder=true]{}%
			\color{\secondcolor}
				\textbf{\large \thecourselevel}\\
				\textbf{\large \thecourseyear}\\
				Page \thepage/\pageref{LastPage}
		\end{bclogo}%
	\end{minipage}
}
\fancyhead[C]{
}
\fancyhead[R]{
	\begin{minipage}{\titlewidth}%
		\begin{bclogo}[couleur=\firstcolor,arrondi=.4,ombre=true,couleurOmbre=black!40,epOmbre=.2,barre=none,logo=,marge=10,noborder=true]{}%
			\vspace{-.55cm}%
			\centering \color{white}{\textbf{\Large \thecoursetitle}}%
		\end{bclogo}%
	\end{minipage}%
	\hspace{-\pmargin}
	\hspace{-1.3cm}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Footer

\fancyfootoffset{\pmargin}
\renewcommand{\footrulewidth}{0mm}
\fancyfoot[L]{
	\ifx\logo\@empty%
	\else%
		\ifx\footband\@empty%
		\else%
			\vbox{
				\hspace{1cm}
				\includegraphics[height=.7\footskip]{\logo}
				\vspace{.4cm}
			}
		\fi
	\fi
}
\fancyfoot[C]{
	\ifx\logo\@empty%
		\ifx\footband\@empty%
		\else%
			\includegraphics[width=\headwidth,height=\footskip]{\footband}
		\fi
	\else%
		\ifx\footband\@empty%
			\vbox{
				\includegraphics[height=.85\footskip]{\logo}
				\vspace{.15\footskip}
			}
		\else%
		\fi
	\fi
}
\fancyfoot[R]{
	\ifx\footband\@empty%
	\else%
		\ifx\logo\@empty%
		\else%
			\vbox{
				\includegraphics[width=.78\headwidth,height=\footskip]{\footband}
			}
		\fi
	\fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Text variables

\def\@coursetitle{Template example}
\newcommand{\coursetitle}[1]{\def\@coursetitle{#1}}
\newcommand{\thecoursetitle}{\@coursetitle}

\def\@courselevel{1A}
\newcommand{\courselevel}[1]{\def\@courselevel{#1}}
\newcommand{\thecourselevel}[1]{\@courselevel}

\def\@courseyear{Course name}
\newcommand{\courseyear}[1]{\def\@courseyear{#1}}
\newcommand{\thecourseyear}[1]{\@courseyear}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Commands

\newcommand{\globalinstructions}[2][Global instructions]{%
	~\vspace{-2em}%
	{\color{\secondcolor}\hrule depth .3mm \vspace{1em}}%
	{\color{\secondcolor} \large \bfseries \itshape \noindent #1}\\%
		\textit{#2}%
	{\vspace{1em}\color{\secondcolor}\hrule depth .3mm}%
}

\newcounter{ExoCount}
\setcounter{ExoCount}{0}

\newcommand{\nextExercise}[2][]{%
	\stepcounter{ExoCount}%
	\def\@extitle{#1}%
	\def\@instr{#2}%
	\vspace{1em}
	\begin{table}[!ht]%
		\arrayrulecolor{\secondcolor}%
		\setlength{\arrayrulewidth}{1.5mm}%
		\noindent\begin{tabular}{|l}%
			\begin{minipage}[l]{.96\columnwidth}%
				\textbf{\large Exercice \theExoCount{ }\ifx\@extitle\@empty\else: #1\fi}%
				\ifx\@instr\@empty%
				\else%
					\\
					\vspace{-.7em}\\
					#2
				\fi%
			\end{minipage}%
		\end{tabular}%
	\end{table}%
}

\newcommand{\nextTopic}[2][]{%
	\def\@extitle{#1}%
	\def\@instr{#2}%
	\vspace{1em}
	\begin{table}[!ht]%
		\arrayrulecolor{\secondcolor}%
		\setlength{\arrayrulewidth}{1.5mm}%
		\noindent\begin{tabular}{|l}%
			\begin{minipage}[l]{.96\columnwidth}%
				\ifx\@extitle\@empty\else\textbf{\large #1}\fi%
				\ifx\@instr\@empty%
				\else%
					\\
					\vspace{-.7em}\\
					#2
				\fi%
			\end{minipage}%
		\end{tabular}%
	\end{table}%
}

\newcommand{\nextInstructions}[1]{%
	\def\@instr{#1}%
	\begin{table}[!ht]%
		\arrayrulecolor{\secondcolor}%
		\setlength{\arrayrulewidth}{1.5mm}%
		\noindent\begin{tabular}{|l}%
			\begin{minipage}[l]{.96\columnwidth}%
				#1
			\end{minipage}%
		\end{tabular}%
	\end{table}%
}

\newcounter{QuestCount}[ExoCount]
\setcounter{QuestCount}{0}

\newcommand{\nextQuestion}[1]{%
	\stepcounter{QuestCount}
	\begin{enumerate}[leftmargin=*,itemindent=*,labelsep=.4em,label=(\theExoCount.\theQuestCount)]%
		\item #1
	\end{enumerate}%
}

\newcommand{\answer}[1]{%
	\begin{center}
		\textit{\color{red}#1}
	\end{center}
}

\renewcommand{\emph}[1]{\textbf{\color{\secondcolor}#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
