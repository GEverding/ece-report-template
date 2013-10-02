
build:
	./convert.sh
	sed -i -e 's/\\begin{verbatim}/\\begin{minipage}\{0\.95\\textwidth}\\begin{lstlisting}/g' s_*.tex
	sed -i -e 's/\\end{verbatim}/\\end{lstlisting}\\end{minipage}/g' s_*.tex
	latex document.tex
	#bibtex document
	#latex document.tex
	pdflatex document.tex

open:
	open document.pdf
	# evince document.pdf &

clean:
	rm -f *.out *.pdf *.aux *.dvi *.log *.blg *.bbl *.tex-e

