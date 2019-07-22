%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines KU watermark code, variant for dark background.
% Relies on KUcommon.pro and KUcommonWmark.pro having been imported and on
% certain commands being written by KUcommon.sty.
% Also requires KUSigil.pro.
% Version 1, 2009/08/11
% Morten Larsen
%
% Water mark graphics:
/_ku_wmark_var {
  _kuwmark_start
  _ku_sigil_ring_path
  _ku_sigil_fg_path
  _kuwmark_end
} bind def
% Define watermark commands depending on pdfmark mode or not:
{
  /KUwmarkvar_colordef {
    _kuwmark_colordef_first
    /id 18 string def
    id 0 ({KUwmarkvar) putinterval
    id 11 tmpstr putinterval
    id 17 (}) putinterval
    [ /_objdef id cvx exec /BBox [96 508 178 608] /BP pdfmark
    save r g b setrgbcolor _ku_wmark_var restore
    _kuwmark_colordef_last
  } bind def
}?pdfmark
{
  /KUwmarkvar_colordef /KUwmark_colordef load def
  /KU_wmark_var {_kuwmark_color aload pop setrgbcolor _ku_wmark_var} bind def
}?notpdfmark
