# LaTeX-presentation
A TeX presentation I created for my diploma thesis

Please improve if you can/want

I wrote the whole thing in TeXStudio with MikTeX on my Windows machine. But since TeXStudio compiles weirdly (at least Beamer presentations), I used two step final compilation in command prompt:

1. dvips texname.dvi // Creates ps from dvi file
2. ps2pdf texname.ps // Creates pdf from ps file

I think the issue was that TeXStudio didn't want to compile image, so this was a workaround that worked for me.
