% Copyright (c) 2013-16 Stephane GALLAND <galland@arakhne.org>
%
% UTBM logo and name are registered and owned by the
% "Universite de Technology of Belfort-Montbeliard".
%
% LE2I logo and name are registered and owned by the
% "Universite de Bourgogne".
%
% CNRS logo and name are registered and owned by the
% "Centre National de la Recherche Scientifique".
% 
% This program is free library; you can redistribute it and/or modify
% it under the terms of the GNU Lesser General Public License as
% published by the Free Software Foundation; either version 3 of the
% License, or any later version.
%
% This library is distributed in the hope that it will be useful, but
% WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
% Lesser General Public License for more details.
%
% You should have received a copy of the GNU Lesser General Public
% License along with this library; see the file COPYING.  If not,
% write to the Free Software Foundation, Inc., 59 Temple Place - Suite
% 330, Boston, MA 02111-1307, USA.
%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]

\ProvidesClass{le2iutbmbeamer}
   [2016/02/19 Class for LE2I-UTBM slides]

\LoadClassWithOptions{beamer}

\gdef\beamer@theme@leiiutbm@class@babel@lang{english}

\DeclareOption*{%
	\expandafter\ifx\csname tr@ml@\CurrentOption\endcsname\relax\else%
		\xdef\beamer@theme@leiiutbm@class@babel@lang{\CurrentOption}%
	\fi%
}
\ProcessOptions*

\expandafter\usepackage[\beamer@theme@leiiutbm@class@babel@lang]{babel}

\usetheme{LE2IUTBM}

\endinput
