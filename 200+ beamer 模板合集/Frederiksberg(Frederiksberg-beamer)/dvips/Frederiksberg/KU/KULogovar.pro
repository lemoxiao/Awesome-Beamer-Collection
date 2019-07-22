%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines KU logo command, dark bakground variant.
% Relies on KUcommon.pro and KUSigil.pro having been imported.
% Version 1, 2009/08/11
% Morten Larsen
%
/_ku_logo_var {
gsave
0 842 translate
0.8 -0.8 scale
144 255 div 25 255 div 30 255 div setrgbcolor % Design guide
newpath
_ku_dots_path
_ku_sigil_bg_path
fill
1 setgray
newpath
_ku_sigil_ring_path
_ku_rings_path
_ku_sigil_fg_path
fill
grestore
} bind def
% Define logo command:
[ /_objdef {ku_logo_var} /BBox [59 408 205 610] /BP pdfmark
{save _ku_logo_var restore}?pdfmark
[ /EP pdfmark
{/ku_logo_var {[ {ku_logo_var} /SP pdfmark} def}?pdfmark
{/ku_logo_var /_ku_logo_var load def}?notpdfmark
