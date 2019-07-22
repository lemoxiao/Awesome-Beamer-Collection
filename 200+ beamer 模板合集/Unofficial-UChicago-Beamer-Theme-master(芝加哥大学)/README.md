# Unofficial-UChicago-Beamer-Theme
Files to theme your LaTeX Beamer presentation to match the University of Chicago colors.

Note that this theme is unofficial. It is in no way endorsed by the University of Chicago.

The screenshots below give an idea of what the main elements of the presentation look like. For more information on how the entire theme looks, see the [compiled example presentation (.pdf)]("https://github.com/michaelkirker/Unofficial-UChicago-Beamer-Theme/blob/master/Unofficial_UChicago_Theme_Example.pdf") within the repository.

![Screenshot 1](http://i.imgur.com/tyfjsUy.png "Title slide") ![Screenshot 2](http://i.imgur.com/7dsPxEO.png "Itemized list slide")
![Screenshot 3](http://i.imgur.com/vdQM0zh.png "Block slide") ![Screenshot 4](http://i.imgur.com/2wrP9zG.png "End slide")

## Contact details ##

Created by: Michael Kirker

Email: <mkirker@uchicago.edu>

Website: [http://michaelkirker.net](http://michaelkirker.net "http://michaelkirker.net")

Git repository: [https://github.com/michaelkirker/Unofficial-UChicago-Beamer-Theme]("https://github.com/mkirker/Unofficial-UChicago-Beamer-Theme")

This theme is an ongoing side-project, and there are (probably) many Beamer commands that either don't quite look nice or simply don't work well with this theme. Please feel free to report any bugs or improvements you would like to see. Otherwise updates to the theme will generally occur each time I put together a new presentation and encounter some new element in the presentation would could look better.


## Repository structure ##

* /graphics/
	* Folder containing the graphical images used in the slides.
* beamerthemeUnofficialUChicago.sty
	* Beamer theme style file.
* Unofficial\_UChicago\_Theme\_Example.tex
	* Example Beamer presentation showing the main features of the theme.




## How to use the theme ##

If you do not use Git, you can download the the necessary files as a zip file by clicking [here](https://github.com/michaelkirker/Unofficial-UChicago-Beamer-Theme/archive/master.zip "here").


Add the folder */graphics/* and the file *beamerthemeUnofficialUChicago.sty* to the folder containing the .tex file for your beamer presentation.

Alternatively, add the graphics folder and .sty file to the TeX search path so that all your Beamer presentations can call the files from one location. 


The following code illustrates how to call the theme inside your .tex file.

    \documentclass[12pt]{beamer}
	
	\usetheme{UnofficialUChicago}

	\begin{document}

	\maketitle % It is important to use the command "\maketitle" to generate your title slide. "\titlepage" does not automatically generate the background image.

	% The rest of your Beamer presentation goes here

	\end{document}


This Beamer theme also works in the wide screen (16:9) aspect ratio. To create wide screen slides (rather than the default 4:3 ratio), add `,aspectratio=169` into the options for \documentclass (the first line in the example above).


## License

Note that this theme is unofficial and not endorsed by the University of Chicago. The LaTeX code has been developed independently and is available for your use.

The MIT License (MIT)

Copyright (c) 2016 Michael Kirker

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.