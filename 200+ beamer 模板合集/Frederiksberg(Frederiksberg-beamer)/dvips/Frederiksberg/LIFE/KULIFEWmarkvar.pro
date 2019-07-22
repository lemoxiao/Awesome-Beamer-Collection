%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines LIFE watermark code, variant for dark background.
% Relies on KUcommon.pro and KUcommonWmark.pro having been imported and on
% certain commands being written by KUcommon.sty.
% Also requires KULIFESigil.pro.
% Version 1, 2009/08/11
% Morten Larsen
%
% Water mark graphics:
/_kulife_wmark_var {
  _kuwmark_start
  _ku_sigil_ring_path
  _kulife_sigil_fg_path
  _kuwmark_end
} bind def
% Define watermark commands depending on pdfmark mode or not:
{
  /KULIFEwmarkvar_colordef {
    _kuwmark_colordef_first
    /id 22 string def
    id 0 ({KULIFEwmarkvar) putinterval
    id 15 tmpstr putinterval
    id 21 (}) putinterval
    [ /_objdef id cvx exec /BBox [96 508 178 608] /BP pdfmark
    save r g b setrgbcolor _kulife_wmark_var restore
    _kuwmark_colordef_last
  } bind def
  /KULIFE_wmark_var /KU_wmark_var load def
}?pdfmark
{
  /KULIFEwmarkvar_colordef /KUwmark_colordef load def
  /KULIFE_wmark_var {_kuwmark_color aload pop setrgbcolor _kulife_wmark_var} bind def
}?notpdfmark
