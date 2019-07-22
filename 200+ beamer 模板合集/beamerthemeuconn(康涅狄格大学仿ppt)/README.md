# UConn Beamer themes

This is a repo for the development of LaTeX themes and templates for the University of Connecticut, to complement the PowerPoint themes available on the [Brand Standards website](http://brand.uconn.edu/resources/powerpoint-templates/).

## Contents

### Themes

This repo contains the following coordinated Beamer themes:

- `beamercolorthemeuconn.sty` (color theme)
- `beamerinnerthemeuconn.sty` (inner theme)
- `beamerouterthemeuconn.sty` (outer theme)
- `beamerthemeuconn.sty` (theme incorporating the above)

They're not complete, but they demonstrate the basics of each type of theme.

### Templates

Three templates are included, which illustrate the color and font themes (`uconn-color-font-example.tex`), the inner and outer themes (`uconn-inner-outer-example.tex`), and all four themes (`uconn-theme-example.tex`).

It would be useful to include poster and report templates as well; i don't have plans for this, but contributions would be welcome.

## Use

### Current versions

The examples (the `.tex` files) illustrate how to use the themes in LaTeX documents.

To use these themes in your own Beamer slideshow, either store the `.sty` files and the `images` folder in the same directory as the `.tex` file, or clone this repo and edit one of the `.tex` files into your own slideshow. I have not yet tried installing them in a `texmf` directory.

To make subtle changes, for example to remove the oak leaf background or to permute the bullet point colors, edit the `.sty` files directly.

### Ongoing development

To see several university themes that illustrate a range of design space, check out [Martin Madsen's Ultimate Beamer Theme List](https://github.com/martinbjeldbak/ultimate-beamer-theme-list).

If you think these themes could be improved, please make suggestions in an [issue](https://guides.github.com/features/issues/) or send a [pull request](https://guides.github.com/activities/forking/)!

## License

The code, including templates and examples, are [products of authorship](http://research.uconn.edu/technology-commercialization/resources-for-faculty/tech-transfer-faqs/invention-ownership-flowchart/) and released into the public domain. Wordmarks and logos are [trademarks of the University of Connecticut](http://brand.uconn.edu/standards/wordmark-and-logos/) and used with permission. See the [University Logo and Wordmark Policy](http://policy.uconn.edu/2015/01/29/university-logo-and-wordmark/) for guidance or [email the Brands office](mailto:brand@uconn.edu) with questions.
