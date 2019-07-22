%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines commands used by other prologue files.
% Version 2, 2009/08/11
% Morten Larsen
%
% Define commands to handle pdf/ps modes, used by other prologue files.
systemdict /pdfmark known {
  userdict /?pdfmark systemdict /exec get put
  userdict /?notpdfmark systemdict /pop get put
}{
  userdict /pdfmark systemdict /cleartomark get put
  userdict /?pdfmark systemdict /pop get put
  userdict /?notpdfmark systemdict /exec get put
} ifelse
% Define sigil and logo background path commands
/_ku_sigil_bg_path {
255.625 358.125 moveto
188.125 358.125 67.5 0 360 arc
closepath
} bind def
/_ku_sigil_ring_path {
256.125 358.125 moveto
188.125 358.125 68 0 360 arc
closepath
254.625 358.125 moveto
188.125 358.125 66.5 360 0 arcn
closepath
} bind def
/_ku_dots_path {
138.375 456.25 moveto
106.375 456.25 32 0 360 arc
closepath
204.825 525.175 moveto
188.125 525.175 16.7 0 360 arc
closepath
} bind def
/_ku_rings_path {
138.875 456.25 moveto
106.375 456.25 32.5 0 360 arc
closepath
137.375 456.25 moveto
106.375 456.25 31 360 0 arcn
closepath
205.325 525.175 moveto
188.125 525.175 17.2 0 360 arc
closepath
203.825 525.175 moveto
188.125 525.175 15.7 360 0 arcn
closepath
} bind def
