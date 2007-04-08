LILYPOND = lilypond
RM = rm -f
LILYFLAGS =

violin1_inst = violin1
violin1_staffinst = Violin I
violin1_midiinst = violin
violin1_lilyinst = violinI

violin2_inst = violin2
violin2_staffinst = Violin II
violin2_midiinst = violin
violin2_lilyinst = violinII

viola_inst = viola
viola_staffinst = Viola
viola_midiist = viola
viola_lilyinst = viola

violoncello_inst = violoncello
violoncello_staffinst = Violoncello
violoncello_midiinst = cello
violoncello_lilyinst = cello

PDF = violin1.pdf violin2.pdf viola.pdf violoncello.pdf
LY = violin1.ly violin2.ly viola.ly violoncello.ly

all: .depend parts score

parts: $(PDF)
score: score.pdf

.depend: *.ly ../*.ly $(LY)
	$(RM) .depend
	for F in $(LY); do \
		echo -n $$F: >> .depend ; \
		sh ../lily-dep.sh $$F >> .depend ; \
		echo "" >> .depend ; \
	done

clean:
	-rm *.pdf *.midi $(LY)

.SUFFIXES: .pdf

%.pdf: %.ly
	$(LILYPOND) $<
	$(RM) $*.ps

violin1.ly violin2.ly viola.ly violoncello.ly: ../part_template.ly
	sed -e	"s/@INST@/$($(basename $@)_inst)/g" \
		-e	"s/@STAFF_INST@/$($(basename $@)_staffinst)/g" \
		-e	"s/@MIDI_INST@/$($(basename $@)_midiinst)/g" \
		-e	"s/@LILY_INST@/$($(basename $@)_lilyinst)/g" \
		../part_template.ly > $@

score.ly: ../score_template.ly
	cp ../score_template.ly score.ly

include .depend

# vim: ft=make :
