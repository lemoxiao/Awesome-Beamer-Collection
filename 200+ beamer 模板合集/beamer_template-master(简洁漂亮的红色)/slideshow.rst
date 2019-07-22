===========================
Beautiful Beamer
===========================

--------
Subtitle
--------

:author: Stephen Diehl
:date: September 3, 2011
:organization: Awesome Company

Restructured Text
~~~~~~~~~~~~~~~~~

This is a paragraph and a quote:

    They will swing back to the belief that they can make people... better. And I do not hold to that. So no more runnin'. I aim to misbehave.

This is another one:

    Lorem ipsum dolor sit amet. 

An example of preformatting code::
    
    fib = 1 : 1 : [ a+b | (a,b) = zip fib $ tail fib ] ;


Bullet Points
~~~~~~~~~~~~~

Some programming languages:

- LaTeX
- Haskell
- Python
- Lisp
- Erlang
- Pure
- Javascript
- C++

Math
===============

Here is an example of using LaTeX's excellent math rendering:

.. raw:: latex

    \begin{equation}
    e^{\pi i} = -1
    \end{equation}


Time for some quantum mechanics:

.. raw:: latex

    \begin{equation}
    i\hbar\frac{\partial}{\partial t} \Psi(\mathbf{r},\,t) = -\frac{\hbar^2}{2m}\nabla^2\Psi(\mathbf{r},\,t) + V(\mathbf{r})\Psi(\mathbf{r},\,t)
    \end{equation}
