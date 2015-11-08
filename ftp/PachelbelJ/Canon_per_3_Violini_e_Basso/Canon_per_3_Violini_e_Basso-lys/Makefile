LILYPOND=lilypond
COMMON_FILES = violin_common.ily header.ily  midi.ily paper.ily

all: canon_per_3_violini_e_basso violin_one_part violin_two_part violin_three_part violoncellopart

canon_per_3_violini_e_basso: canon_per_3_violini_e_basso.pdf

violin_one_part: violin_one_part.pdf

violin_two_part: violin_two_part.pdf

violin_three_part: violin_three_part.pdf

violoncellopart: violoncellopart.pdf

canon_per_3_violini_e_basso.pdf: canon_per_3_violini_e_basso.ly $(COMMON_FILES) violin_one.ily violin_two.ily violin_three.ily violoncello.ily 
	$(LILYPOND) canon_per_3_violini_e_basso.ly

violin_one_part.pdf: violin_one_part.ly violin_one.ily $(COMMON_FILES)
	$(LILYPOND) violin_one_part.ly

violin_two_part.pdf: violin_two_part.ly violin_two.ily $(COMMON_FILES)
	$(LILYPOND) violin_two_part.ly

violin_three_part.pdf: violin_three_part.ly violin_three.ily $(COMMON_FILES)
	$(LILYPOND) violin_three_part.ly

violoncellopart.pdf: violoncellopart.ly violoncello.ily $(COMMON_FILES)
	$(LILYPOND) violoncellopart.ly

clean:
	rm -f *.aux *.log *.pdf *.midi *.~?~ 
