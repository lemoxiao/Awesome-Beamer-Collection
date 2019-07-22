LaTeX output is beautiful, but it's source is horrific. What if
you could just write Restructured text and have it automatically
make a beutiful presenation. Well you can!

beautiful-beamer is a toolchain to create a beautiful looking
Beamer presentation without fussing with LaTeX. The output uses:

* XeTeX - for page rendering
* AB Garamond  - for beautiful typography
* Berlin Style - for professional looking layout.
* MIT Color Theme - for classy color.

Example Output
==============

![Example Output](http://www.stephendiehl.com/wp-content/uploads/beautifultex-300x226.png)

[slideshow.pdf](https://github.com/sdiehl/beautiful-beamer/raw/master/slideshow.pdf)

Usage
=====

1) Change the `SRC` variable in the Makefile to point to your
desired file.

2) Run `make` . This will output a pdf with the same name as your input file.

Dependencies
============

* XeTeX ( http://www.tug.org/texlive )
* GNU Make
* Python
* docutils ( pip install docutils )

Credits
=======

* mit-beamer - Justin Riley ( https://github.com/jtriley/mit-beamer )
* rst2beamer -  Ryan Krauss & Paul-Michael Agapow ( https://github.com/ryanGT/rst2beamer )
* EB Garamond - Georg Duffner (  http://www.georgduffner.at ) 
