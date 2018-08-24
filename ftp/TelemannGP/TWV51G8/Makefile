LP 		= lilypond
LOPTS = -dno-point-and-click
PARTS = principale violino1 violino2 viola cembalo oboe1 oboe2
ALL = score $(PARTS)
MUTOPIA = $(addprefix dist/a4-pdf/, $(addsuffix .pdf, $(ALL))) \
					$(addprefix dist/letter-pdf/,$(addsuffix .pdf, $(ALL))) \
					# $(addprefix dist/a4-ps/, $(addsuffix .ps, $(ALL))) \
					# $(addprefix dist/letter-ps/, $(addsuffix .ps, $(ALL)))

mutopia: $(MUTOPIA)

dist:
	mkdir -p dist/a4-pdf dist/a4-ps dist/letter-pdf dist/letter-ps dist/mid

# PARTS
dist/a4-pdf/%.pdf: %.ly ilys/%.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"a4\" -s -o $(basename $@) $<

dist/a4-ps/%.ps: %.ly ilys/%.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"a4\" -s --ps -o $(basename $@) $<

dist/letter-pdf/%.pdf: %.ly ilys/%.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"letter\" -s -o $(basename $@) $<

dist/letter-ps/%.ps: %.ly ilys/%.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"letter\" -s --ps -o $(basename $@) $<

# SCORE
dist/a4-pdf/score.pdf: score.ly ilys/*.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"a4\" -s -o $(basename $@) $<
	mv -f dist/a4-pdf/score.midi dist/mid/1allegro1.midi
	mv -f dist/a4-pdf/score-1.midi dist/mid/2andante.midi
	mv -f dist/a4-pdf/score-2.midi dist/mid/3allegro2.midi

dist/a4-ps/score.ps: score.ly ilys/*.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"a4\" --ps -s -o $(basename $@) $<

dist/letter-pdf/score.pdf: score.ly ilys/*.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"letter\" -s -o $(basename $@) $<

dist/letter-ps/score.ps: score.ly ilys/*.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"letter\" --ps -s -o $(basename $@) $<

.PHONY: clean
clean:
	rm -f *.pdf *.midi
