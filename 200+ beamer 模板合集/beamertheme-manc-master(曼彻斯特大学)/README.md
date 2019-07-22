
# Manc - A theme for LaTeX-Beamer

A Manchester-styled beamer theme.

This is an unofficial theme, the University of Manchester logo is copyright of the University of Manchester.

Lots of ideas have been taken from

 - [The metropolis theme](https://github.com/matze/mtheme)
 - [The tudoposter theme](https://github.com/MaxNoe/tudoposter)

## Using the theme

You can use this theme by including
```latex
\usebeamertheme{manc}
```
in the header of your presentation.

The theme also accepts various boolean and keyword options in the form
```latex
\usebeamertheme[booleanOption,keywordOption=value]{manc}
```
Here is a table of all currently supported options:

Option | Type | Description
--- | --- | ---
`fullfootline` | Bool | Activates footline information (short title, short author).
`background` | Keyword | Sets a picture as the title background. If this option is not given, the primary color is used to create a solid background.
`brightbackground` | Bool | Whether the background is bright. By default, the text on the title page will use a bright foreground color. If it is given, then a dark color is used.
`primaryColor` | Keyword | The primary color to use for the theme. Defaults to a Manchester purple.
`primaryLightColor` | Keyword | This is intended to be a lighter version of the primary color.

## Demos

See [default_demo.pdf](./demo_default.pdf) for the default look of the theme:

[![default](./demo_default-0.jpg)](./demo_custom.pdf)

See [forest_demo.pdf](./demo_forest.pdf) for a version of the same
presentation, but with customized options. The title background image is by
[Frances Gunn](https://unsplash.com/francesgunn).

[![custom](./demo_custom-0.jpg)](./demo_custom.pdf)

