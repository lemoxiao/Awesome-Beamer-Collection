%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines common watermark handling code.
% Relies on KUcommon.pro having been imported and on certain commands being
% written by KUcommon.sty.
% Version 1, 2009/08/11
% Morten Larsen
%
/_kuwmark_hextorgb {
  dup 16#10000 idiv 255 div /r exch def
  16#10000 mod dup 16#100 idiv 255 div /g exch def
  16#100 mod 255 div /b exch def
} bind def
/_kuwmark_start {
  gsave
  96 508 moveto 96 608 lineto 178 608 lineto 178 508 lineto closepath clip
  0 842 translate
  0.8 -0.8 scale
  newpath
} bind def
/_kuwmark_end {
  eofill
  grestore
} bind def
% Define watermark commands depending on pdfmark mode or not:
{
  /_kuwmark_idsave {/_kuwmark_id exch def} bind def
  /_kuwmark_colordef_first {
    10 dict begin dup
    _kuwmark_hextorgb 16 6 string cvrs /tmpstr exch def
  } bind def
  /_kuwmark_colordef_last {
    [ /EP pdfmark
    [id /_kuwmark_idsave] cvx
    SDict begin def end end
  } bind def
  /KU_wmark {[ _kuwmark_id cvx exec /SP pdfmark} def
  /KU_wmark_var /KU_wmark load def
}?pdfmark
{
  /_kuwmark_colsave {3 array astore /_kuwmark_color exch def} bind def
  /KUwmark_colordef {
    10 dict begin
    _kuwmark_hextorgb
    [r g b /_kuwmark_colsave] cvx
    SDict begin def end end
  } bind def
}?notpdfmark
