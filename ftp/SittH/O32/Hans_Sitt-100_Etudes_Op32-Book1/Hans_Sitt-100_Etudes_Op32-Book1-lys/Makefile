# Makefile for Hans Sitt - 100 Etudes, op. 32 book 1
#


TITLE = Hans_Sitt-100_Etudes_Op32-Book1

LILYPOND = lilypond

MERGEPDF= gs -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -dCompressPages=true -dUseFlateCompression=false -dSubsetFonts=true -dEmbedAllFonts=true -dOptimize=true  -dNOPAUSE -dQUIET -dBATCH

MERGEPS=gs -sDEVICE=pswrite  -dBATCH -dNOPAUSE -q 



.phony: all

all: help



.phony : move
move :
	mkdir midi
	mv $(TITLE).midi midi/$(TITLE)-1.midi
	@for i in $$(ls *.midi); do \
		N=`ls $$i | cut -b 33-38 | cut -f1 -d "."` ; \
		M=`echo $$N + 1 | bc` ; \
		cp $$i midi/$(TITLE)-$$M.midi ; \
		done
	@printf '\033[1;60mZipping midi files...\033[0m\n'
	zip -D $(TITLE)-midi.zip midi/*.midi
	rm -rf *.midi midi



	
	
.phony : a4
a4: scorea4 covera4 move 

scorea4:
	$(LILYPOND) -o $(TITLE) lilypond/score.ly
	
.phony : covera4	
covera4:
	@printf '\033[1;60mBuilding score cover...\033[0m\n'
	$(LILYPOND) lilypond/cover.ly	
	
	@printf '\033[1;60mMerging score and cover...\033[0m\n'
	$(MERGEPDF) -sPAPPERSIZE=a4 -sOutputFile=$(TITLE)_.pdf cover.pdf $(TITLE).pdf
	$(MERGEPS) -sPAPPERSIZE=a4 -sOutputFile=$(TITLE)_.ps cover.ps $(TITLE).ps
	rm cover.pdf cover.ps $(TITLE).pdf $(TITLE).ps
	mv $(TITLE)_.pdf $(TITLE).pdf 
	mv $(TITLE)_.ps $(TITLE).ps 	
	
	
		
	
.phony : letter
letter: scoreletter coverletter move 

scoreletter: 
	$(LILYPOND) -d letter -o $(TITLE) lilypond/score.ly
	
.phony : coverletter
coverletter:
	@printf '\033[1;60mBuilding score cover...\033[0m\n'
	$(LILYPOND) -d letter lilypond/cover.ly		
	
	@printf '\033[1;60mMerging score and cover...\033[0m\n'
	$(MERGEPDF) -sPAPPERSIZE=letter -sOutputFile=$(TITLE)_.pdf cover.pdf $(TITLE).pdf
	$(MERGEPS) -sPAPPERSIZE=letter -sOutputFile=$(TITLE)_.ps cover.ps $(TITLE).ps
	rm cover.pdf cover.ps $(TITLE).pdf $(TITLE).ps
	mv $(TITLE)_.pdf $(TITLE).pdf 
	mv $(TITLE)_.ps $(TITLE).ps 	
	
	
	
	
	
.phony : clean
clean :
	rm -rf *.{pdf,ps,zip} midi

.phony: help
help :
	@echo "Makefile for Hans Sitt - 100 Etudes, op. 32 book 1"
	@echo "Usage:"
	@echo "  "\"make a4"\" ------> a4 paper format"
	@echo "  "\"make letter"\"---> letter paper format"
	@echo "  "\"make clean"\" ---> Remove all generated files"
