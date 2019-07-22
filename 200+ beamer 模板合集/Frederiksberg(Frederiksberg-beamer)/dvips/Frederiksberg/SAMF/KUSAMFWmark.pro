%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines SAMF watermark code.
% Relies on KUcommon.pro and KUcommonWmark.pro having been imported and on
% certain commands being written by KUcommon.sty.
% Also requires KUSAMFSigil.pro.
% Version 1, 2010/10/11
% Morten Larsen
%
% Water mark graphics:
/_kusamf_wmark {
  _kuwmark_start
  _ku_sigil_bg_path
  _kusamf_sigil_fg_path
  _kuwmark_end
} bind def
% Define watermark commands depending on pdfmark mode or not:
{
  /KUSAMFwmark_colordef {
    _kuwmark_colordef_first
    /id 18 string def
    id 0 ({KUSAMFwmark) putinterval
    id 11 tmpstr putinterval
    id 17 (}) putinterval
    [ /_objdef id cvx exec /BBox [96 508 178 608] /BP pdfmark
    save r g b setrgbcolor _kusamf_wmark restore
    _kuwmark_colordef_last
  } bind def
  /KUSAMF_wmark /KU_wmark load def
}?pdfmark
{
  /KUSAMFwmark_colordef /KUwmark_colordef load def
  /KUSAMF_wmark {_kuwmark_color aload pop setrgbcolor _kusamf_wmark} bind def
}?notpdfmark
