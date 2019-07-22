LaTeX: Michigan Tech Beamer Template
================

What is this?
-------------------

A LaTeX template for preparing slides for presentation in Michigan 
Technological University. 


Disclaimer
-------------------

This and other associated files are distributed in the hope that they will 
be useful, but without any warranty; without even the implied warranty of 
merchantability or fitness for a particular purpose.

Using this unofficial template is not a substitute for learning LaTeX and/or 
understanding its how it works. 


Features
-------------------

Apart from modularizing the document preparation process, and producing title
and final slides, and Michigan Tech logo in every slide, the template provides 
the following:

  1. If using Linux/UNIX or Mac, the process of generating the PDF could
     be as simple as typing ```make```.

  2. Ability to make a timestamp-based snapshot of the entire folder via
     the command ```make snapshot```.


What all does one need to get started?
-------------------

  1. As complete an installation of LaTeX as possible.

     1. [TeXLive](http://www.tug.org/texlive/) for Linux and Mac, and
        [MiKTeX](http://miktex.org/) for Windows. 

     2. [TeXMaker](http://www.xm1math.net/texmaker/) -- a LaTeX-aware text 
        editor -- for Linux, Mac and Windows.

  2. This template in its entirety.

  3. Basic understanding of how LaTeX works.


Which files should one edit?
-------------------

  1. Rename (not just copy over) ```john_slides.tex``` by substituting ```john``` with your Michigan Tech ISO username.

  2. Open the renamed ```john_slides.tex``` and add relevant information.

  3. Update ```Personalize/Personalize.tex``` with relevant information.

  4. Place all figures (```.jpg```, ```.png```, ```.pdf```) in ```Figures``` folder.

  5. Update ```MichiganTech.cls``` iff there is a need, and iff there is an understanding of how the LaTeX class/style file works.


How does one compile? (parts of it to be updated)
-------------------

**Linux (or Mac) from a terminal using the command line, using ```Makefile```:**

```
cd LaTeX_BeamerTemplate
make
```

**Linux (or Mac) from a terminal using the command line, without using ```Makefile```:**

```
cd LaTeX_BeamerTemplate
pdflatex --shell-escape john_slides
pdflatex --shell-escape john_slides
```

**Mac using ```TeXMaker``` application:**

Navigate to ```TeXMaker » Preferences » Quick Build » Quick Build Command » User``` and enter the following

```
"/usr/texbin/pdflatex" -interaction=nonstopmode %.tex | 
"/usr/texbin/pdflatex" -interaction=nonstopmode %.tex
```

**Windows using ```TeXMaker``` application:**

Navigate to ```TeXMaker » Options » Configure TeXMaker » Quick Build » Quick Build Command » User``` and enter the following

```
pdflatex -interaction=nonstopmode %.tex | 
pdflatex -interaction=nonstopmode %.tex
```

What if one needs colored text?
-------------------

The template provides the following 140 named colors (given with their hexadecimal notation; color scheme adopted from http://www.w3schools.com/html/html_colorvalues.asp). Example usage: 

```\textcolor{Color}{colored text}```


| Hex code | Color             | Hex code | Color                |
|:---------|:------------------|:---------|:---------------------|
| #000000  | Black             | #BA55D3  | MediumOrchid         |
| #000080  | Navy              | #BC8F8F  | RosyBrown            |
| #00008B  | DarkBlue          | #BDB76B  | DarkKhaki            |
| #0000CD  | MediumBlue        | #C0C0C0  | Silver               |
| #0000FF  | Blue              | #C71585  | MediumVioletRed      |
| #006400  | DarkGreen         | #CD5C5C  | IndianRed            |
| #008000  | Green             | #CD853F  | Peru                 |
| #008080  | Teal              | #D2691E  | Chocolate            |
| #008B8B  | DarkCyan          | #D2B48C  | Tan                  |
| #00BFFF  | DeepSkyBlue       | #D3D3D3  | LightGray            |
| #00CED1  | DarkTurquoise     | #D8BFD8  | Thistle              |
| #00FA9A  | MediumSpringGreen | #DA70D6  | Orchid               |
| #00FF00  | Lime              | #DAA520  | GoldenRod            |
| #00FF7F  | SpringGreen       | #DB7093  | PaleVioletRed        |
| #00FFFF  | Aqua              | #DC143C  | Crimson              |
| #00FFFF  | Cyan              | #DCDCDC  | Gainsboro            |
| #191970  | MidnightBlue      | #DDA0DD  | Plum                 |
| #1E90FF  | DodgerBlue        | #DEB887  | BurlyWood            |
| #20B2AA  | LightSeaGreen     | #E0FFFF  | LightCyan            |
| #228B22  | ForestGreen       | #E6E6FA  | Lavender             |
| #2E8B57  | SeaGreen          | #E9967A  | DarkSalmon           |
| #2F4F4F  | DarkSlateGray     | #EE82EE  | Violet               |
| #32CD32  | LimeGreen         | #EEE8AA  | PaleGoldenRod        |
| #3CB371  | MediumSeaGreen    | #F08080  | LightCoral           |
| #40E0D0  | Turquoise         | #F0E68C  | Khaki                |
| #4169E1  | RoyalBlue         | #F0F8FF  | AliceBlue            |
| #4682B4  | SteelBlue         | #F0FFF0  | HoneyDew             |
| #483D8B  | DarkSlateBlue     | #F0FFFF  | Azure                |
| #48D1CC  | MediumTurquoise   | #F4A460  | SandyBrown           |
| #4B0082  | Indigo            | #F5DEB3  | Wheat                |
| #556B2F  | DarkOliveGreen    | #F5F5DC  | Beige                |
| #5F9EA0  | CadetBlue         | #F5F5F5  | WhiteSmoke           |
| #6495ED  | CornflowerBlue    | #F5FFFA  | MintCream            |
| #66CDAA  | MediumAquaMarine  | #F8F8FF  | GhostWhite           |
| #696969  | DimGray           | #FA8072  | Salmon               |
| #6A5ACD  | SlateBlue         | #FAEBD7  | AntiqueWhite         |
| #6B8E23  | OliveDrab         | #FAF0E6  | Linen                |
| #708090  | SlateGray         | #FAFAD2  | LightGoldenRodYellow |
| #778899  | LightSlateGray    | #FDF5E6  | OldLace              |
| #7B68EE  | MediumSlateBlue   | #FF0000  | Red                  |
| #7CFC00  | LawnGreen         | #FF00FF  | Fuchsia              |
| #7FFF00  | Chartreuse        | #FF00FF  | Magenta              |
| #7FFFD4  | Aquamarine        | #FF1493  | DeepPink             |
| #800000  | Maroon            | #FF4500  | OrangeRed            |
| #800080  | Purple            | #FF6347  | Tomato               |
| #808000  | Olive             | #FF69B4  | HotPink              |
| #808080  | Gray              | #FF7F50  | Coral                |
| #87CEEB  | SkyBlue           | #FF8C00  | DarkOrange           |
| #87CEFA  | LightSkyBlue      | #FFA07A  | LightSalmon          |
| #8A2BE2  | BlueViolet        | #FFA500  | Orange               |
| #8B0000  | DarkRed           | #FFB6C1  | LightPink            |
| #8B008B  | DarkMagenta       | #FFC0CB  | Pink                 |
| #8B4513  | SaddleBrown       | #FFD700  | Gold                 |
| #8FBC8F  | DarkSeaGreen      | #FFDAB9  | PeachPuff            |
| #90EE90  | LightGreen        | #FFDEAD  | NavajoWhite          |
| #9370DB  | MediumPurple      | #FFE4B5  | Moccasin             |
| #9400D3  | DarkViolet        | #FFE4C4  | Bisque               |
| #98FB98  | PaleGreen         | #FFE4E1  | MistyRose            |
| #9932CC  | DarkOrchid        | #FFEBCD  | BlanchedAlmond       |
| #9ACD32  | YellowGreen       | #FFEFD5  | PapayaWhip           |
| #A0522D  | Sienna            | #FFF0F5  | LavenderBlush        |
| #A52A2A  | Brown             | #FFF5EE  | SeaShell             |
| #A9A9A9  | DarkGray          | #FFF8DC  | Cornsilk             |
| #ADD8E6  | LightBlue         | #FFFACD  | LemonChiffon         |
| #ADFF2F  | GreenYellow       | #FFFAF0  | FloralWhite          |
| #AFEEEE  | PaleTurquoise     | #FFFAFA  | Snow                 |
| #B0C4DE  | LightSteelBlue    | #FFFF00  | Yellow               |
| #B0E0E6  | PowderBlue        | #FFFFE0  | LightYellow          |
| #B22222  | FireBrick         | #FFFFF0  | Ivory                |
| #B8860B  | DarkGoldenRod     | #FFFFFF  | White                |


Got questions? Need help?
-------------------

[Google](http://google.com/) search often provides a quick and reliable answer.
If all else fails, then contact the author.


Don't like this template OR have an idea to improve?
-------------------

Feel free to clone/fork this repository and make changes to fit your needs.
You have my explicit permission to do so. This template and/or the changes
you make may very well work for you (or your institution). Please note that
if you decide to do so, you are doing so entirely at your very own discretion
and that neither the author nor Michigan Technological University is
responsible for any/all damage -- intellectual and/or otherwise.


Author
-------------------

Dr. Gowtham, PhD          
Director of Research Computing, IT             
Adj. Asst. Professor, Physics/ECE               
Michigan Technological University                 
Email: g@mtu.edu             
http://sgowtham.com
