LUH Beamer Theme
================

An unofficial LaTeX Beamer theme that is trying to follow the Coprorate Design Guidelines of Leibniz Universität Hannover. Here are some examples of how it might look:


![Some Lists][example-0]

![Some Lists][example-1]

![Some Block][example-2]


Installation
------------

Simply clone the repository (or copy the files) to a location where LaTeX can find the `.sty` files.

* One way would be to copy them to your working directory.
* Or you could use the following commands to specify one or more directories where LaTeX should look for files:

  ```latex
  \makeatletter
  % The folder beamerthemeLUH is in the parent directoy.
  \def\input@path{{../beamerthemeLUH/}{/some/other/path/}}
  \makeatother
  ```



Configuration
-------------

You should use the following commands to set up the logos:

```latex
\unilogo{\includegraphics[height=\LUHLogoHeight]{luh_logo_rgb}}
\logo{\includegraphics[height=\LUHLogoHeight]{department_logo}}
\titleimage{\includegraphics[width=.7\paperwidth]{luh_title_image}}
```

You will have to obtain the university logo and title image yourself (in PDF, PNG or JPEG format) because I'm not sure if it's okay to upload them here.

If you want to leave out any of the abovementioned design elements, simply pass an empty argument as in `\titleimage{}`.

For further customization please read the source code. If you find anything that can be improved, feel free to write an issue or send a pull request.

[example-0]: https://raw.github.com/fritzw/beamerthemeLUH/master/example-0.png "Title Page"

[example-1]: https://raw.github.com/fritzw/beamerthemeLUH/master/example-1.png "Some Lists"

[example-2]: https://raw.github.com/fritzw/beamerthemeLUH/master/example-2.png "Some Block"
