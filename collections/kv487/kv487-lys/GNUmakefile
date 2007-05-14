
pieces = $(wildcard no*.ly)
pdfs = $(pieces:.ly=-a4.pdf) $(pieces:.ly=-letter.pdf)
midis = $(pieces:.ly=.midi)

%-a4.pdf: %.ly
	lilypond -spapersize=a4  $<
	mv $(<:.ly=.pdf) $@

%-letter.pdf: %.ly
	lilypond -spapersize=letter  $<
	mv $(<:.ly=.pdf) $@

files = $(pieces) $(pdfs) $(midis) README GNUmakefile
dist: $(files)
	zip duets $(files)



