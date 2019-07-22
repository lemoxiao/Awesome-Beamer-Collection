# Simple LaTeX Package
A LaTeX package cocktail for grad school level writings (and presentations)

## Description

It always annoys me when I start to write a new paper and I have use an old paper as a template. I don't want to remember all the packages. So I created this to streamline my writing process (just for a little bit).

## Compatible Document Classes

- Templates: [`./templates/`](templates/)
    + Journal: based on the `IEEEtran` class
    + Beamer: based on the `beamer` class (with a CRIS-Lab style)
- Other (under construction):
    + Report
    + Book
    + R markdown

## Versions

#### 0.27 (2017-10-22)

- Added a beamer template and cleaned up the files

#### 0.24 (2017-08-12)

- Defined a new macro `\red{ }` that changes text color to red

#### 0.23 (2017-08-12)

- Replaced `hidegraphics` option with `nopic`
    + Same functionality as `hidegraphics`
    + Except for when the figure is a picture, now it uses `draft` option of `graphicx` package to create a block with file path of the picture instead
- Added a new `nohl` option to hide highlights from `\hl`

#### 0.22 (2017-07-20)

- Added `draft` option with watermark "Confidential" on every page
- Improved `hidegraphics`
- Added a new command `\vecfig` that imports TikZ codes

#### 0.19 (2017-06-07)

- Last version before I created this repository
