beamer-erlangen
===============

A pdfTeX beamer theme for the Technical Faculty of the FAU Erlangen

1. Introduction
---------------

This beamer theme is derived from the [beamer-polymtl](https://github.com/mvonthron/beamer-polymtl) theme done by Manuel Vonthron. The color theme and watermarks have been changed to match the colors of the technical faculty of the FAU Erlangen.
The theme uses three main colors blue, orange and grey, which should be in good relationship to each other according to the color wheel. 
This theme was created and used for my defense and has neither been approved for official used nor has it been reviewed by the faculty office. 

2. Installation
---------------

Clone the repository to your local texmf tree using

    git clone https://github.com/haechi/beamer-erlangen.git
	
3. Usage
--------

Take a look at the included example file. Include the theme in your document preamble by 

    \documentclass{beamer}
    \usetheme[menuwidth={0.3\paperwidth}]{erlangen}
    \setbeamercovered{transparent=20}

4. Files Included
-----------------

Color theme and beamer style is included. The image files were created using OmniGraffe on OS X. Source files are included.

5. License
----------

This theme is provided as it, no strings attached. 
