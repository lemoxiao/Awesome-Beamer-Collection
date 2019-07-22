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
\ProvidesClass{lh-poster}%
  [2017/04/14 v0.0  LaTeX poster class implementing the cooperate design of LogicalHacking.com]
\RequirePackage{ifthen}
\LoadClassWithOptions{beamer}[]
\DeclareOptionBeamer{inverse}{\PassOptionsToPackage{inverse}{beamerthemelh-poster}}
\ProcessOptionsBeamer\relax
\usetheme{lh-poster}
\usepackage{beamerposter}
\endinput
