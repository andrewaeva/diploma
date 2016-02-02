all: build run

build:
	latexmk -xelatex \
	-synctex=1 main.tex
	
run:
	open -a Preview.app main.pdf & #Открываем pdf в Preview
	
clean:
	rm *.aux \
	*.fdb_latexmk \
	*.fls \
	*.log \
	*.out \
	*.synctex.gz \
	*.toc
