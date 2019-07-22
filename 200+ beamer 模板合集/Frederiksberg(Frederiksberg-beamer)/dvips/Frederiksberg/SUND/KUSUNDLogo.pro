%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines SUND logo command.
% Relies on KUcommon.pro and KUSUNDSigil.pro having been imported.
% Version 1, 2009/07/30
% Morten Larsen
%
/_kusund_logo {
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
_kusund_sigil_fg_path
fill
grestore
} bind def
% Define logo command:
[ /_objdef {kusund_logo} /BBox [59 408 205 610] /BP pdfmark
{save _kusund_logo restore}?pdfmark
[ /EP pdfmark
{/kusund_logo {[ {kusund_logo} /SP pdfmark} def}?pdfmark
{/kusund_logo /_kusund_logo load def}?notpdfmark
