%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines SUND logo command, dark bakground variant.
% Relies on KUcommon.pro and KUSUNDSigil.pro having been imported.
% Version 1, 2009/08/11
% Morten Larsen
%
/_kusund_logo_var {
gsave
0 842 translate
0.8 -0.8 scale
42 255 div 33 255 div 106 255 div setrgbcolor % Design guide
newpath
_ku_dots_path
_ku_sigil_bg_path
fill
1 setgray
newpath
_ku_sigil_ring_path
_ku_rings_path
_kusund_sigil_fg_path
fill
grestore
} bind def
% Define logo command:
[ /_objdef {kusund_logo_var} /BBox [59 408 205 610] /BP pdfmark
{save _kusund_logo_var restore}?pdfmark
[ /EP pdfmark
{/kusund_logo_var {[ {kusund_logo_var} /SP pdfmark} def}?pdfmark
{/kusund_logo_var /_kusund_logo_var load def}?notpdfmark
