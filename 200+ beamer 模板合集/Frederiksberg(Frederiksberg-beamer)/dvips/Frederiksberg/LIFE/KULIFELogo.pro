%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines LIFE logo command.
% Relies on KUcommon.pro and KULIFESigil.pro having been imported.
% Version 3, 2009/07/30
% Morten Larsen
%
/_kulife_logo {
gsave
0 842 translate
0.8 -0.8 scale
84 255 div 24 255 div 0 setrgbcolor % Design guide
newpath
_ku_dots_path
_ku_sigil_bg_path
fill
1 setgray
newpath
_kulife_sigil_fg_path
eofill
grestore
} bind def
% Define logo command:
[ /_objdef {kulife_logo} /BBox [59 408 205 610] /BP pdfmark
{save _kulife_logo restore}?pdfmark
[ /EP pdfmark
{/kulife_logo {[ {kulife_logo} /SP pdfmark} def}?pdfmark
{/kulife_logo /_kulife_logo load def}?notpdfmark
