UH_Beamer_Theme
===============
Author: Jeff Delmerico <<jad4@hawaii.edu>>

Theme and examples adapted from: Sascha Steinbiss <<steinbiss@zbh.uni-hamburg.de>> and LIM Lian Tze <<liantze@gmail.com>>, respectively.  

Theme for LaTeX Beamer presentations based on University of Hawai`i at Manoa logos and color scheme. It contains the theme files in the "theme" directory, and an example tex document and makefile in the "example" directory.

These instructions assume an Ubuntu system with an installation LaTeX with Beamer...if you're using something else, you're on your own.

Installation Instructions
=========================
1. Download the repository to the desired location on your system:  
    	git clone https://github.com/jeffdelmerico/UH_Beamer_Theme.git
2. Edit the Makefile to adjust your install location (DEST_DIR) if necessary  
3. Run install (sudo is necessary to put it in your system tex directory):  
    	sudo make install
4. If you want to uninstall:  
    	sudo make uninstall

Usage Instructions
==================
1. Once the theme is installed, see example.tex for examples of the theme functionality, and use the included makefile (make && make read) in the example directory to see the output.  
2. We assume that you will use the \institute command for your email address:  
    	\institute{\url{jad4@hawaii.edu}}
3. You can then renew the \address command to set your own address or other title frame information (see example in example.tex)  
4. You can also change the image on the title frame of the template:  
    	\renewcommand{\titlepic}{some_other_title_frame_image}  
	It's currently limited to 5cm height, but you can edit the style file if you'd like to change the size.  

Please feel free to contact me regarding comments, suggestions, bug fixes, etc.  
