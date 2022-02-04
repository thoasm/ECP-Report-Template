filename := report

temp_suffices := ps pdf log aux out dvi bbl blg

temp_files := $(foreach name,${temp_suffices},${filename}.${name})

pdf:
	pdflatex ${filename}
	bibtex ${filename}
	pdflatex ${filename}
	pdflatex ${filename}

clean:
	rm -f ${temp_files}

