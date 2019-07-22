# Beamer Theme TU Ilmenau
This is a latex presentation (beamer) theme for the technical university of ilmenau.
The background image from TUIlmenau template is from Institut of Werkstofftechnik. 

## Usage
```latex
\input{style/template.tex}
\usepackage{style/tuilmenau} % for TUIlmenau coperate design
%\usepackage{style/clear} % for a clear design
```

## Styles
In the folder style are different files. General settings are implemented in "style/template.tex".

You can use "\usepackage{style/tuilmenau}" to get the TU Ilmenau corporate design. The "\usepackage{style/clear}" - package includes my simply clear design.

You can copy one of these files to create your own theme!

**important:** you have to change the package name on the top of the file: "\ProvidesPackage{tuilmenau}"

## additional commands

* add reference to the left lower corner

```latex
\addcite{reference_name, reference_name2, ...}
```

* enable dualview mode
* the generated pdf has the double width, the right one is for notes
* you have to use a special pdf viewer to show this pdfs with notes

```latex
\setDualView
```

* add reference frames 
  * argument 1: frame title
  * argument 2: bibtex style or path to bibtex style (e.g. deIEEEtran, IEEEbib -> both styles are included in this repository) 

```latex
\insertReferenceFrame{References}{IEEEbib}{MyReferences.bib}
```

## pdf viewer

### dspdfviewer
* dual monitor pdf viewer
* more informations on http://dspdfviewer.danny-edel.de/

### pdf-presenter-console
* dual monitor pdf viewer
* include the following line to use embeded videos in you presentation
```latex
\usepackage{style/pdfpc-commands}

```
* more informations on https://pdfpc.github.io/








