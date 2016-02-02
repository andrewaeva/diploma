all: build run

build:
	latexmk -xelatex \
	-synctex=1 main.tex
	
run:
	# Я использую atril для просмотра PDF
	open -a Preview.app main.pdf &
	
clean:
	rm *.aux \
	*.fdb_latexmk \
	*.fls \
	*.log \
	*.out \
	*.synctex.gz \
	*.toc
