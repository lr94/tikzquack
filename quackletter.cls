\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{quackletter}[Classe LaTeX per carta da lettere coi paperi]
\LoadClass[a5paper,10pt]{article}
\pagestyle{empty}
\RequirePackage{tikzquack}
\RequirePackage{geometry}
\RequirePackage{eso-pic}

\geometry{
	left		= 1.4cm,
	right	= 1.7cm,
	top		= 2cm,
	bottom	= 4.5cm
}
\makeatletter
\newcommand{\quackletter@decorazioni}{%
	\begin{tikzpicture}[remember picture,overlay]
		\begin{scope}[x=1cm,y=1cm,shift={(current page.north west)}]
			\foreach \i in {1,...,8}{
				\def\scalapaperotti{0.3}
				\def\dire {1.0}
				% \ifnum\i>4
				% 	\def\dire {-1.0}
				% \fi
				\begin{scope}[shift={(\i*1.5+0.5,-1.)},xscale=\dire]
					\ifodd\i
						\papero[top,peppone,rotate=90,scale=\scalapaperotti]
					\else
						\papero[top,peppe,rotate=90,scale=\scalapaperotti]
					\fi
				\end{scope}
			}
		\end{scope}
		\begin{scope}[x=1cm,y=1cm,shift={(current page.south west)}]
			\begin{scope}[shift={(2.0,2.5)},xscale=-1]
				\papero[top,peppe,scale=0.8]
			\end{scope}
		\end{scope}
		\begin{scope}[x=1cm,y=1cm,shift={(current page.south west)}]
			\begin{scope}[shift={(4.5,1.2)}]
				\papero[front,peppone,scale=0.8]
			\end{scope}
		\end{scope}
		\begin{scope}[x=1cm,y=1cm,shift={(current page.south east)}]
			\begin{scope}[shift={(-2.0,2.5)}]
				\papero[top,peppone,scale=0.8]
			\end{scope}
		\end{scope}
		\begin{scope}[x=1cm,y=1cm,shift={(current page.south east)}]
			\begin{scope}[shift={(-4.5,1.2)}]
				\papero[front,peppe,scale=0.8]
			\end{scope}
		\end{scope}
	\end{tikzpicture}
}

\AddToShipoutPictureBG{\quackletter@decorazioni}
\makeatother