%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines KU watermark code.
% Relies on KUcommon.pro and KUcommonWmark.pro having been imported and on
% certain commands being written by KUcommon.sty.
% Also requires KUSigil.pro.
% Version 1, 2009/08/11
% Morten Larsen
%
% Water mark graphics:
/_ku_wmark {
  _kuwmark_start
  _ku_sigil_bg_path
  _ku_sigil_fg_path
  _kuwmark_end
} bind def
% Define watermark commands depending on pdfmark mode or not:
{
  /KUwmark_colordef {
    _kuwmark_colordef_first
    /id 15 string def
    id 0 ({KUwmark) putinterval
    id 8 tmpstr putinterval
    id 14 (}) putinterval
    [ /_objdef id cvx exec /BBox [96 508 178 608] /BP pdfmark
    save r g b setrgbcolor _ku_wmark restore
    _kuwmark_colordef_last
  } bind def
}?pdfmark
{
  /KU_wmark {_kuwmark_color aload pop setrgbcolor _ku_wmark} bind def
}?notpdfmark
