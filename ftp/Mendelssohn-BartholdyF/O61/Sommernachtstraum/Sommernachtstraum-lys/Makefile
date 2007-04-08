%-part.midi: %.ly %-part.ly
	lilypond -m $*-part.ly
%-part.tex : %.ly %-part.ly
	lilypond $*-part.ly
all:	Sommernachtstraum.dvi
Sommernachtstraum.midi:
	lilypond -m Sommernachtstraum.ly
Sommernachtstraum.tex: *.ly
	lilypond Sommernachtstraum.ly
clean:	
	rm -f *.log *.midi *.tex *.dvi *~
