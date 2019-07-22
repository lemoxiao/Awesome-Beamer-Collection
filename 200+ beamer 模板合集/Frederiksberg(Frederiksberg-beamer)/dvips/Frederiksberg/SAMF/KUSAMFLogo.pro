%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines SAMF logo command.
% Relies on KUcommon.pro and KUSAMFSigil.pro having been imported.
% Version 1, 2010/10/11
% Morten Larsen
%
/_kusamf_logo {
gsave
0 842 translate
0.8 -0.8 scale
225 255 div 50 255 div 24 255 div setrgbcolor % Design guide
newpath
_ku_dots_path
_ku_sigil_bg_path
fill
1 setgray
newpath
_kusamf_sigil_fg_path
fill
grestore
} bind def
% Define logo command:
[ /_objdef {kusamf_logo} /BBox [59 408 205 610] /BP pdfmark
{save _kusamf_logo restore}?pdfmark
[ /EP pdfmark
{/kusamf_logo {[ {kusamf_logo} /SP pdfmark} def}?pdfmark
{/kusamf_logo /_kusamf_logo load def}?notpdfmark
