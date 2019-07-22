%===============================================================================
% Template Name:      Starter Presentation template for Math Students
% Template URI:       https://gitlab.lug.ustc.edu.cn/vanabel/math-beamer
% Description:        Starter Presentation template for Math Students
% Version:            1.0.0
% Author:             Van Abel
% Author URI:         http://blog.vanabel.info
% License:            MIT License
% License URI:        http://opensource.org/licenses/MIT
%===============================================================================

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\LoadClass{beamer}

\ProvidesClass{mathbeamer}
\newif\ifMB@nds\MB@ndsfalse
\DeclareOption{nds}{\MB@ndstrue}
\newif\ifMB@thmnum\MB@thmnumfalse
\DeclareOption{thmnum}{\MB@thmnumtrue}
\newif\ifMB@eqsecnum\MB@eqsecnumfalse
\DeclareOption{eqsecnum}{\MB@eqsecnumtrue}
\newif\ifMB@authoryear\MB@authoryearfalse
\DeclareOption{authoryear}{\MB@authoryeartrue}
\newif\ifMB@allcites\MB@allcitesfalse
\DeclareOption{allcites}{\MB@allcitestrue}
\newif\ifMB@dark\MB@darkfalse
\DeclareOption{dark}{\MB@darktrue}
\newif\ifMB@light\MB@lightfalse
\DeclareOption{light}{\MB@lighttrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

\RequirePackage{hyperref, mathtools, bm}
\let\@title\@empty
\let\@author\@empty
\hypersetup{
	pdfpagemode=FullScreen,
	bookmarksopen=false,
	pdfencoding=auto,
	colorlinks=false,
	linkcolor=blue,
	pdfinfo={
		Title={\ifx\@title\@empty\else\@title\fi},
		Author={\ifx\@author\@empty\else\@author\fi},
	}
}
\RequirePackage[english]{babel}
\ifMB@authoryear
\RequirePackage[author-year, msc-links, lite, abbrev]{amsrefs}
\else
\RequirePackage[alphabetic, msc-links, lite, abbrev]{amsrefs}
\fi

%\DeclareRobustCommand{}
\ifMB@thmnum
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{theorems}[numbered]
\fi
\ifMB@eqsecnum
\numberwithin{equation}{section}
\fi

\ifMB@nds
%%please setting the style by yourself, else use my default setting
\else
%% transparent for marks
\mode<presentation>{
\setbeamercovered{transparent}}
%% remove the bottom navigation bar
\setbeamertemplate{navigation symbols}{}
%=================================================
% theme and color
%=================================================
\usetheme{CambridgeUS} %For other themes, see http://www.hartwork.org/beamer-theme-matrix/
% the the font
\usefonttheme{professionalfonts}
%%Insert title page
\AtBeginDocument{\frame[plain]{\titlepage}\addtocounter{framenumber}{-1}}
%%Load default settings
\AtEndOfClass{\makeatletter\input{mathbeamer.cfg}\makeatother}
\fi

%%Color theme
%For other themes & color, see http://deic.uab.es/~iblanes/beamer_gallery/index_by_theme_and_color.html
\mode<presentation>
\ifMB@dark
\definecolor{tbg}{RGB}{96, 34, 59}
\definecolor{tfg}{RGB}{255,227,189}
\definecolor{ftbg}{RGB}{220,224,224}
\definecolor{colorA}{RGB}{60, 60, 40}
%for structure
\setbeamercolor*{structure}{bg=tfg, fg=tbg}
%for subtitle
\setbeamercolor*{frametitle}{use=structure, bg=ftbg, fg=structure.fg}
%gradient top color
\setbeamercolor*{palette primary}{use=structure,  fg=structure.bg, bg=structure.fg}
\setbeamercolor*{palette secondary}{use=structure,fg=structure.bg, bg=structure.fg!75!black}
\setbeamercolor*{palette tertiary}{use=structure,fg=structure.bg, bg=structure.fg!50!black}
\setbeamercolor*{palette quaternary}{fg=structure.bg, bg=black}
%for sidebar
\setbeamercolor*{sidebar}{use=structure,bg=structure.fg}

\setbeamercolor*{palette sidebar primary}{use=structure,fg=structure.fg!10}
\setbeamercolor*{palette sidebar secondary}{fg=structure.bg}
\setbeamercolor*{palette sidebar tertiary}{use=structure,fg=structure.fg!50}
\setbeamercolor*{palette sidebar quaternary}{fg=structure.bg}

\setbeamercolor*{titlelike}{parent=palette primary}

\setbeamercolor*{block title}{use=structure, fg=structure.bg, bg=structure.fg}
\setbeamercolor*{block title alerted}{use=structure, fg=colorA, bg=structure.fg!75!black!50}
\setbeamercolor*{block title example}{fg=black, bg=black!20}

\setbeamercolor*{block body}{fg=black,bg=black!10}
\setbeamercolor*{block body alerted}{fg=black,bg=black!10}
\setbeamercolor*{block body example}{fg=black,bg=black!10}
\else
\ifMB@light
\usecolortheme{seahorse}
\else
\usecolortheme{seagull}
\fi
\fi
\mode
<all>


\AtEndDocument{%
	%========================
	% thanks
	%========================
    \section{Thanks}
	\newcounter{ffn}
	\setcounter{ffn}{\value{framenumber}}
	\renewcommand{\insertframenumber}{\inserttotalframenumber}
    \begin{frame}
    \begin{center}
        \LARGE{\bfseries
        \ifMB@dark\color{tbg}{Thanks!}
        \else
        Thanks!
        \fi
        }
    \end{center}
    \end{frame}
	%========================
	% bibliography
	%========================
	\section{Reference}
	\begin{frame}[t, allowframebreaks]{Reference}
		\bibliography{slides/bib}
		\ifMB@allcites\nocite{*}\fi
	\end{frame}
	\setcounter{framenumber}{\value{ffn}}
}
