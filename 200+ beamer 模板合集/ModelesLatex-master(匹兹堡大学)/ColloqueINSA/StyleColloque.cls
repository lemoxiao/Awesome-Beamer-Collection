%%%%%%%%%%%%%%%
%
% Modèle latex pour le colloque pédagogique inter-INSA
% Auteur : Nicolas Stouls, Laboratoire CITI, INSA Lyon
% Usage libre.
% Diffusion sous licence CC-BY 4.0
% https://creativecommons.org/licenses/by/4.0/
%
%%%%%%%%%%%%%%%
% Exemple d'entête d'un document latex exploitant ce modèle :
%
%\documentclass{StyleColloque}
%\setLieu{LYON 30 et 31 mars 2017}
%\setNumeroColloque{5$^{\textnormal{e}}$}
%
%\begin{document}
%
%\title{...}
%\author{...}
%\date{...}
%
%\maketitle
%\thispagestyle{fancy}
%\begin{abstract}~
%
%Mon abstract 
%
%\noindent\textbf{Mots clefs}
%
%Mes, mots, clefs
%\end{abstract}
%%%%%%%%%%%%%%%


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{StyleColloque}[2017/02/15 INSA-Lyon Colloque pédagogique inter-INSA]
\LoadClass[10pt,a4paper]{article}
\RequirePackage{graphicx}
\RequirePackage{amsmath,amssymb,amsfonts}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[francais]{babel}
\RequirePackage{lmodern}
\RequirePackage{url}
\RequirePackage{times}
\RequirePackage{color}
\RequirePackage[table]{xcolor} 
\RequirePackage[runin]{abstract}
\RequirePackage{fancyhdr}
\RequirePackage[explicit]{titlesec} 
\RequirePackage{lastpage}	
\RequirePackage{hyperref}


\definecolor{gris}{rgb}{0.95,0.95,0.95} 
\definecolor{GrisClair}{rgb}{0.98,0.98,0.98}
\setlength{\parskip}{0.2cm}



%% Custom headers and footers
\pagestyle{fancy}					% Enabling the custom headers/footers
%% Header (empty)

%\addtolength{\topmargin}{-20pt}
%\addtolength{\headsep}{30pt}
% https://en.wikibooks.org/wiki/LaTeX/Page_Layout
% Marge haute visée = 35 mm. Cela inclue l'entête
% Marge haute constituée de : 
%  1pouce + 
% voffset (avant l'entête) + 
% topmargin +
% headheight + 
% headsep (entre entête et texte

\setlength{\voffset}{0mm} % 25.4 mm = 1 pouce  => 1 pouce + voffset = 35mm
\setlength{\topmargin}{0mm}
\setlength{\headheight}{27mm}

% La marge basse visé : 28mm
% Elle est ce qu'il reste après la marge haute et la hauteur de texte (textheight)
\addtolength{\headsep}{-12mm}
\addtolength{\voffset}{-10mm}
\addtolength{\textheight}{-20pt}
\addtolength{\textheight}{32mm}


% Marges latérale : 30 et 35 mm
\setlength{\oddsidemargin}{0mm}
\setlength{\marginparsep}{0mm}
\setlength{\marginparwidth}{0mm}
\setlength{\textwidth}{160mm}


\newcommand{\lieu}{}
\newcommand{\setLieu}[1]{\renewcommand{\lieu}{#1}}

\newcommand{\numeroColloque}{}
\newcommand{\setNumeroColloque}[1]{\renewcommand{\numeroColloque}{#1}}


% Header
\lhead{\includegraphics[width=2.76cm]{LogoINSA.png}}
\chead{
\parbox{16cm}{\centering
\color{red}\Large \textbf{\numeroColloque\ Colloque \og Pédagogie et Formation\fg}\\
\large\lieu\vspace*{.8cm}}
}
\rhead{}
% Footer 
\lfoot{}
\cfoot{}
\rfoot{\footnotesize \thepage\ / \pageref{LastPage}}

\renewcommand{\headrulewidth}{0.0pt}
\renewcommand{\footrulewidth}{0.0pt}


% Change the abstract environment
\setlength{\absleftindent}{30pt}		% left margin
\setlength{\absrightindent}{30pt}		% right margin
\setlength{\abstitleskip}{-15pt}



% Change titles
\titleformat{\section}[display]{\fontsize{14pt}{0pt}\selectfont\centering \bfseries}{{\thesection\hspace{20pt} \textsc{#1}}}{-35pt}{\Huge}
\titleformat{name=\section,numberless}[display]{\fontsize{14pt}{0pt}\selectfont\centering\bfseries}{\textsc{#1}}{-35pt}{\Huge}
\renewcommand\thesection{\Roman{section}}

