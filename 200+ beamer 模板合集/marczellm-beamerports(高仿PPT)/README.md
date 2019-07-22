# BeamerPorts
## PowerPoint themes for Beamer

BeamerPorts is my personal project, to develop LaTeX Beamer presentation themes that are not instantly recognisable as Beamer. Specifically, I want to port some great PowerPoint & Powerdot themes to Beamer.

Please send feature requests, bug reports and improvement ideas to the issue tracker.

#### Things to be aware of
Except for the Metro theme, you should not use the `[t]` option to beamer, because the relative positioning done with the `textpos` package expects the default centered horizontal alignment. (I should change this to use absolute positioning but I don't feel the urge, prompt me if you need this fix.)

The themes use these packages:

- TikZ/PGF

- `textpos`

- `mdframed` is used by the _PraterStreet_ theme

- `garamondx` is loaded by the _Milano_ theme


The following features are workarounds because I didn't find the way to hook into some Beamer mechanisms. Except for the Metro theme,

- `\sectionframe` should be used instead of `\frame{\sectionpage}`

- `\begin{xplainframe}` and `\end{xplainframe}` should be used instead of `\begin{frame}[plain]` etc.


Median
------
_Median_ was originally a PowerPoint theme. You can use it like this:

    \usetheme{Median}

If you're compiling with XeLaTeX or LuaLaTeX, you can also do

    \usepackage[no-math]{fontspec}
    \usetheme[beteckna]{Median}

in which case the theme will load the Beteckna fonts. These are GPL fonts that are available from their now defunct website [through WaybackMachine](http://web.archive.org/web/20130517030302/http://gnu.ethz.ch/linuks.mine.nu/beteckna). They were the most similar to the Twentieth Century fonts in the original PowerPoint theme. Be aware though that there is no bold italic and several European accents are missing.


Klope
-----
_Klope_ was ported from the KlopeSpring theme of Powerdot.


PraterStreet
------------
_PraterStreet_ is ported from a semi-official PowerPoint theme of the Faculty of Information Technology and Bionics, Pázmány Péter Catholic University, Budapest. Options supported:

- `widescreen`, to change the page size to a widescreen layout

- `nofont`, to suppress the loading of the TeX Gyre Adventor font.


Metro
-----

_Metro_ tries to resemble the Windows ModernUI style presentation from http://alesandrab.wordpress.com/2013/06/03/metro-ui-style-powerpoint-2010-template.  Options supported:

 - `SegoeUI` will assume that `fontspec` package is loaded and try to load the _Segoe UI Light_ font that the original presentation used.

 - `nonav` suppresses the redesigned navigation symbols.

It seems that XeTeX does not support the hyperlink features, so if you want to use the Segoe font or other OpenType/TrueType font, compile with LuaLaTeX.


Milano
------

_Milano_ is based on a thesis presentation theme of __Università Degli Studi de Milano__. It loads the `garamondx` package, so right now it isn't likely to work with XeTeX or LuaTeX. It defines the following commands:

- `\supervisor{}` and `\department{}` are similar to `\author{}` and `\institute{}`
- `\titlepagelogoA{}` and `\titlepagelogoB{}` set up the two logos on the title page
- `\backgroundlogo{}` sets up the opaque background used on the title page
- `\thanksframe{text}` creates a 'thanks for your attention' frame with the given text.

By request I removed the logos of said university and replaced them with the logo of my university.
