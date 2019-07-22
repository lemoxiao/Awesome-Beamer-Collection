# MathBeamer Template

### Update

#### How to update?

It is quite easy to use the updated version of this template, just download the new version zip, and replace all the contents in `slides/*` by your own one, also you need to have a look at the **main file** `math-beamer.tex`, which includes what's new features in this update, and how to use it.

### [v 1.1.1]

1. add more example slides, which includes
 * auto pause in lists
 * two columns in a frame
 * include figure/subfigures in a frame
 * table
 * definition/example/theorem like environments
 * custom defn/examp/thm theorem like environments
 * hyperlinks between slides
2. add thanks before the references
3. user defined commands/environments should be written in `slides/usrdefn.tex`

#### [v 1.1.0]

1. new branch, add three color style:
 * `dark`: dark color style
 * `light`: light color style
 * the default is betwen the above two

#### [v 1.0.1]

1. add link to `slides/bib.bib`, so that you can open it in `WinEdt` by `Build Tree`
2. set the default font theme for math be `\usefonttheme{professionalfonts}`, which makes math formula looks more perfect
3. add `\newcommand{}{}` example and `\newtheorem{}{}` example

### Structure

The contents of the archives are structured as
.			
├── mathbeamer.cfg ( *configure file, setting `theorem` liks environment* )			
├── mathbeamer.cls ( *provide the `mathbeamer` class* )			
├── math-beamer.pdf ( *example output* )			
├── math-beamer.tex ( *example tex, set this to be `main` file, please* )			
├── README.md ( *this read me file* )			
├── slides ( *data dir, include your slides contents and bib data* )			
│   ├── bib.bib ( *your reference should be write here* )			
│   └── main.tex ( *the main contents of your slids* )			
└── sources ( *backup dir* )			
    ├── mathbeamer.cfg ( *backup of configure file* )			
    └── mathbeamer.cls ( *backup of class file* )			

#### Usage

1. download the [zip file](https://gitlab.lug.ustc.edu.cn/vanabel/math-beamer/repository/archive.zip?ref=master) and unzip it
2. get into the root folder of `math-beamer-master-*`, where * is the version of git, open the pdf file [`math-beamer.pdf`](https://gitlab.lug.ustc.edu.cn/vanabel/math-beamer/blob/master/math-beamer.pdf), see the template style
3. if you like it, then you can write your slides in `math-beamer.tex`
4. you will see, there are some options as explained at the begining
 * **thmnum**: numbered theorems
 * **eqsecnum**: number equaiton with section
 * **authoryear**: author-year style reference
 * **allcites**: output all the reference in bib.bib
 * **nds**: not use the default setting
5. **BE CAREFUL** to use the nds options, in that case, you will need to define at least the following options:
	* set theme by: `\usetheme{}`, see [beamer-theme-matrix](see http://www.hartwork.org/beamer-theme-matrix/) for a list of themes
	* set the title page by add `\frame{\titlepage}` right after the `\begin{document}`
  * set your theorem environment as your thesis, e.g.:  `\newtheorem{thm}{Theorem}`
  * *Optional* set the color theme by: `\usecolortheme{}`, see [index-by-theme-and-color](http://deic.uab.es/~iblanes/beamer_gallery/index_by_theme_and_color.html) for a list of color and theme
6. finally, the reference is proceeded by `amsrefs`, you need to find the `biblatex` data from [AMS MathScinet](http://www.ams.org/mathscinet/)

### Feedback
If you have any problem ahout this template, please open a new issue at [gitlab](https://gitlab.lug.ustc.edu.cn/vanabel/math-beamer/issues). PLEASE DO NOT write email to me directly, since your problem maybe help others too.
	
