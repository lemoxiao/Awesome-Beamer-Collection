# template-slides

Este repositório contém um modelo de apresentação slides utilizando LaTeX do Centro de Educação do Planalto Norte (CEPLAN). O template foi derivado do modelo Execushares de Kenton Hamaluik:

https://github.com/FuzzyWuzzie/Beamer-Theme-Execushares

## Dependências:

- latex-beamer class 3.0.7 (http://latex-beamer.sourceforge.net)
- texlive-latex 2008+ (http://www.tug.org/texlive/)
- automake (opcional, utilizado para rodar os comandos do xelatelatex)

## Instalação

Para instalar apenas baixe o código do github. Aqui um exemplo da instalação do template-slides para $HOME/template-slides:

```shell
$ cd $HOME
$ git clone https://github.com/ceplan/template-slides.git
```

## Gerando a apresentação:

> The example below is based on execushares template located in templates/execushares/

Customize template-slides/templates/execushares/sample.tex to your liking:

```shell
$ vim $HOME/template-slides/templates/execushares/slides.tex
```

Then change to the template-slides directory and run make to generate a presentation PDF:

```shell
$ cd $HOME/template-slides/templates/execushares/
$ make
```

If the folder already contains the pdf file, you can force make:

```shell
$ cd $HOME/template-slides/templates/execushares/
$ make --always-make
```

You can then view the resulting pdf, named sample.pdf, in the 'template-slides/templates/execushares/' directory:

```shell
$ xpdf $HOME/template-slides/templates/execushares/sample.pdf
```

You can also use make to do this automatically with either xpdf, okular, acroread, or evince:

```shell
$ make view-xpdf
$ make view-okular
$ make view-acroread
$ make view-evince
```

The above "make view-\*" commands will automatically build $HOME/template-slides/templates/execushares/sample.pdf if necessary

You can clean the directory runnig:

```shell
$ make clean
```

### Beamer Templates 

- See [https://www.hartwork.org/beamer-theme-matrix/] 

> Do you not know what is LaTeX? Access [here](http://latex-community.org/) and [here](http://www.latex-project.org/)

# Tips

Here's how to insert some elements in your presentation.

### How to insert multiple columns
```tex
\begin{frame}
		\frametitle{Multiple Columns}
		
		\begin{columns}[c] % The "c" option specifies centered vertical alignment while the "t" option is used for top vertical alignment
			\column{.45\textwidth} % Left column and width
			\textbf{Heading}
			
			\begin{enumerate}
				\item Statement
				\item Explanation
				\item Example
			\end{enumerate}
			
			\column{.5\textwidth} % Right column and width
			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lectus nisl, ultricies in feugiat rutrum, porttitor sit amet augue. Aliquam ut tortor mauris. Sed volutpat ante purus, quis accumsan dolor.
			
		\end{columns}
	\end{frame}
```

### How to insert a table
```tex
\begin{frame}
	\frametitle{Table}
		\begin{table}
			\begin{tabular}{l l l}
				\toprule
				\textbf{Treatments} & \textbf{Response 1} & \textbf{Response 2}\\
				\midrule
				Treatment 1 & 0.0003262 & 0.562 \\
				Treatment 2 & 0.0015681 & 0.910 \\
				Treatment 3 & 0.0009271 & 0.296 \\
				\bottomrule
			\end{tabular}
		\caption{Table caption}
		\end{table}
	\end{frame}
```

### How to insert a code
```tex
\begin{frame}[fragile]{Java}
	\begin{lstlisting}[language=java]
	class HelloWorldApp {
		public static void main(String[] args) {
			System.out.println("Hello World!"); // Display the string.
			for (int i = 0; i < 100; ++i) {
				System.out.println(i);
			}
		}
	}
	\end{lstlisting}
\end{frame}
```

### How to insert a code with destac
```tex
\begin{frame}[fragile]{Destac}
	\begin{lstlisting}
	public class Main {
		int |\red{counter}|;
		public static void main(String[] args) {
			for (|\red{counter}| = 0; |\red{counter}| < 10; |\red{counter}|++)
				System.out.println('HelloWorld');
			}
	}
	\end{lstlisting}
\end{frame}
```

### How to use Verbatim 
- For to use the verbatim in the Beamer is necessary to use the option \verb|fragile|.
```tex
\begin{frame}[fragile]\frametitle{Verbatim}
	\begin{verbatim}
	\begin{frame}[fragile]\frametitle{Verbatim}
	% any code LaTeX or others
	\end{frame}
	\end{verbatim}
	
\end{frame}
```

### How to insert a pseudocode
```tex
\begin{frame}
	\frametitle{NSGA-II}
	\scalebox{0.65}{%
	\begin{algorithm}[H]
		\caption{Pseudocódigo do NSGA-II}
		\label{alg:nsgaII}
		\Entrada{$N$, $g$}
		\Inicio{
			Population $P$ with size $N$\;
			\Para{$t \leftarrow 0$ até $g$}{
				\Para{$i \leftarrow 0$ até $\frac{N}{2}$}{
					\Se{$t < g$}{
						Selection/Crossover/Mutation\;
						$Q \leftarrow $ children\;
						$t = t + 2$\;
					}	
				}
				$R \leftarrow P \cup Q$\;
				Apply \textit{Fast Non-Dominated Sorting} in $R$ genereting vectors $F_{i}$ of non-dominated solutions\;
				Calculate the \textit{Crowding Distance Sorting} for each solution in $F_{i}$\;
				$P \leftarrow F(best)$\;
			}	
			\Retorna{$P$}
		}	
	\end{algorithm}
}
\end{frame}
```

### How to insert a transiction
```tex
\begin{frame}\frametitle{Transiction}
	A little example of transiction
	
	\pause
	
	\begin{enumerate}[a)]
		\item<2-> first;
		\item<3-> second;
		\item<4-> third.
	\end{enumerate}
\end{frame}
```

### How to insert a Blocks of Highlighted Text
```tex
\begin{frame}
		\frametitle{Blocks of Highlighted Text}
		
		\begin{block}{Block 1}
			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lectus nisl, ultricies in feugiat rutrum, porttitor sit amet augue. Aliquam ut tortor mauris. Sed volutpat ante purus, quis accumsan dolor.
		\end{block}

		\begin{block}{Block 2}
			Pellentesque sed tellus purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum quis magna at risus dictum tempor eu vitae velit.
		\end{block}
		
		\begin{block}{Block 3}
			Suspendisse tincidunt sagittis gravida. Curabitur condimentum, enim sed venenatis rutrum, ipsum neque consectetur orci, sed blandit justo nisi ac lacus.
		\end{block}
	\end{frame}
```

### How to insert a Theorem
```tex
	\begin{frame}
		\frametitle{Theorem}
		\begin{theorem}[Mass--energy equivalence]
		$E = mc^2$
		\end{theorem}
	\end{frame}
```

### How to insert a citation
```tex
\begin{frame}[fragile] % Need to use the fragile option when verbatim is used in the slide
\frametitle{Citation}
An example of the \verb|\cite| command to cite within the presentation:\\~

This statement requires citation \cite{p1}.
\end{frame}
```

### How to insert the references
```tex
\begin{frame}\frametitle{References}
	% Bibliography style
	\bibliographystyle{abbrv}
	% Calling file refs.bib
	\bibliography{refs}
\end{frame}
```
