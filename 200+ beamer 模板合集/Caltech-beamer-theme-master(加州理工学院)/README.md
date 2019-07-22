# Caltech beamer theme
######A LaTeX beamer theme using Caltech logo and color

### How to use this theme
The syntax is very easy; simply insert the following command in the LaTeX preamble:
```{tex}
\usetheme[<option>]{Caltech}
```
where `<option>" should be substituted with one of these three options: `minimal`, `sidebarleft`, or `sidebarright`. It is not recommended to leave the `<option>` blank, because the slides would have no Caltech logo.

An example `.tex` template has been included (`caltech_beamer_template.tex`), which can produce the three example PDF documents in this repository.

### How does this theme look like
##### 1. The `minimal` style
This style has the Caltech logo on the bottom-right corner, and slide titles in Caltech orange. This style is named "minimal" because there are minimal decorations on it. This style looks good in both 4:3 and 16:9 aspect ratios.

![](https://github.com/jsh9/Caltech-beamer-theme/blob/master/screenshots/minimal.png)

##### 2. The `sidebarleft` ("side bar left") style
This style has a side bar on the left, which shows the structure of the presentation (e.g., abbreviated title, table of contents, etc.). The Caltech logo is on the top-left corner. The use of 16:9 aspect ratio is recommended, since the side bar takes up some horizontal space, and also most of the projectors these days support 16:9 ratio.

![](https://github.com/jsh9/Caltech-beamer-theme/blob/master/screenshots/sidebarleft.png)

##### 3. The `sidebarright` ("side bar right") style
This style is exactly the same as `sidebarleft`, except that the side bar is on the right.

![](https://github.com/jsh9/Caltech-beamer-theme/blob/master/screenshots/sidebarright.png)

### How to customize the styles
1. **Aspect ratio**: the first line in the `.tex` template, substitute `aspectratio=169` with `aspectratio=43` can change the aspect ratio from 16:9 into 4:3.
2. **Colors**: It is not recommended to change the colors of this theme, because these colors come from Caltech's identity standards (http://identity.caltech.edu/). However, if you still insist, you can edit the file `beamercolorthemeCaltechBeaver.sty`
3. **Other theme elements**: If you wish to change some theme elements (e.g., width of the side bar), study the file `beamerthemeCaltech.sty` and make careful changes as you wish.

### Acknoledgements
I got my inspiration from an older Caltech beamer theme: https://github.com/hmaarrfk/caltech-beamer. However, this theme is already outdated: the Caltech seal image is now discouraged for non-formal usage such as presentation slides (http://identity.caltech.edu/standards/visual/seal).
