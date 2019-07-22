# lh-logo
Trivial LaTeX style for using logo LogicalHacking logo of the 
[Software Assurance & Security Research Team at The University of Sheffield](https://logicalhacking.com).

## Usage
Including the style in your latex document, i.e., 
```
\usepackage{lh-logo}
```
defines two families of commands:
* for light backgrounds:
```
\lhLogoLight
\lhMediumLogoLight
\lhSmallLogoLight
\lhcomLogoLight
```
* for dark backgrounds:
```
\lhLogoDark
\lhMediumLogoDark
\lhSmallLogoDark
\lhcomLogoDark
```
where the first family prints the logo designed for white (light)
backgrounds and the latter print the logo designed for coloured (dark)
backgrounds. Both commands take the same optional arguments as the
`\includegraphics[]{}` command of the `graphicx` package.

In addition, the style defines the two colors `lhOrange`, `lhDarkGray`, and `lhLightGray`.

## Author
* [Achim D. Brucker](http://www.brucker.ch/)

## License
The LaTeX style is dual-licensed under a 2-clause BSD-style license and/or 
the LPPL version 1 or any later version. 

Note that the logos are licensed under the more restrictive 
[CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/). You are free to 
use them to link to the [logicalhacking.com](https://logicalhacking.com) website. 
