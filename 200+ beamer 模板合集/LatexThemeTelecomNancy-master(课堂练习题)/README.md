Latex Themes for Telecom Nancy
==============================

Personnal beamer and exercise theme used at Telecom Nancy.

# 1) Beamer theme

## How to include the Beamer theme of Telecom Nancy in my project ?

Two solutions :
  1. copy the *beamerthemeTelecomNancy.sty* file in your latex project folder
  2. copy the *beamerthemeTelecomNancy.sty* on your latex packages folder (~/.texmf-var/tex/latex/)

## How to use the Beamer theme of Telecom Nancy in my latex files ?

### Minimal example

```latex
	\documentclass{beamer}
	\usetheme{TelecomNancy}
```

### Full example

```latex
	\documentclass{beamer}

	\usetheme[
		toccolumns,
		tocnbsections=3,
		addsecspace,
		backgroundtitlepage=myBackgroud.png,
		logo=myLogo.png,
		firstcolor=color1,
		secondcolor=color2,
	]{TelecomNancy}

	\definecolor{color1}{RGB}{100, 100, 100}%
	\definecolor{color2}{RGB}{220, 0, 0}%
```

## Beamer theme options

Option					| Default value | Description
-----------------------:|:-------------:|:-------------------------------------------------------------------
**toccolumns**			|				| Toc pages in two columns
**tocnbsections**		|	2			| Number of sections in the first toc column
**addsecspace**			|				| Add space between section names and section content in toc page
**onlysecinheadline**	|				| Show only sections in headline (no subsections)
**backgroundtitlepage**	|				| Background image of the first page
**logo**				|				| Logo in bottom left of slides
**firstcolor**			|	gray		| Primary color
**secondcolor**			|	red			| Secondary color




# 2) Exercise class

## How to include the exercise class of Telecom Nancy in my project ?

Two solutions :
  1. copy the *TelecomNancy.cls* file in your latex project folder
  2. copy the *TelecomNancy.cls* on your latex packages folder (~/.texmf-var/tex/latex/)

## How to use the exercise class of Telecom Nancy in my latex files ?

The TelecomNancy class provides `\globalinstructions` and `\exercise` commands.

`\globalinstructions[title]{instructions...}`: the title is optionnal, it is ``Global instructions'' by default.

`\nextExercise[title]{instructions}`: The title is optionnal and the instructions part can be empty.

`\nextQuestion{question}`: New question for the current exercise.

`\nextInstructions{instructions}`: allow to add specific instructions in the middle of an exercise.

Warning: if questions appear before instructions, use `\clearpage` command before the concerned `\nextExercise` command.

### Minimal example

```latex
	\documentclass{TelecomNancy}

	\begin{document}

		\coursetitle{Title of course}
		\courselevel{Course level}
		\courseyear{Year}

		\nextExercise{}

			\nextQuestion{First question of the current exercise}
			\nextQuestion{Second question of the first exercise.}

			\nextInstructions{
				Some specific instructions for the next questions of the current exercise.
			}

			\nextQuestion{Last question of the first exercise.}

	\end{document}
```

### Full example

```latex
	\documentclass[headheight=4.5cm,
				   margin=2cm,
				   titlewidth=0.6,
				   sansserif,
				   firstcolor=color1,
				   secondcolor=color2,
				   % logo=myLogo.png,
				   % footband=myFootBand.png
				  ]{TelecomNancy}

	\definecolor{color1}{RGB}{100, 100, 100}
	\definecolor{color2}{RGB}{220, 0, 0}

	\begin{document}

		\coursetitle{Title of course}
		\courselevel{Course level}
		\courseyear{Year}
			
		\globalinstructions[Optionnal title, ``Global Instructions'' by default]
		{
			The global instructions.
		}

		\nextExercise[This is the first exercise]{
			You can write here instructions of the first exercise... or nothing.
		}

			\nextQuestion{First question of the current exercise}
			\nextQuestion{Second question of the first exercise.}

			\nextInstructions{
				If you need to add some specific instruction for the next questions of the current exercise.
			}

			\nextQuestion{Last question of the first exercise.}

		\nextExercise{}

			\nextQuestion{First question of the current exercise}
			\nextQuestion{Second question of the second exercise.}
			\nextQuestion{Last question of the second exercise.}

	\end{document}
```

## Class options

Option			| Default value | Description
---------------:|:-------------:|:-------------------------------------------------------------------
**headheight**	|	4.5cm		| Height of headings. May be adapted according to **margin**.
**margin**		|	2cm			| Left and right margins.
**titlewidth**	|	0.6			| Percentage of the title box width.
**sansserif**	|				| Add this option to use sans serif text.
**firstcolor**	|	gray		| Primary color.
**secondcolor**	|	red			| Secondary color.
**logo**		|				| Logo in bottom left of page.
**footband**	|				| Foot band image in right of the logo.


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/akrah/latexthemetelecomnancy/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

