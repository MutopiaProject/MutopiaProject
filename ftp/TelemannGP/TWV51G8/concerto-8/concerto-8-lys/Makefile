LP      = lilypond
LOPTS = -dno-point-and-click -drelative-includes
PLOC = parts
PARTS = principale								\
	violino1									\
	violino2									\
	viola										\
	cembalo										\
	oboe1										\
	oboe2

ALL = concerto-8 $(PARTS)
MUTOPIA = $(addprefix dist/a4-pdf/, $(addsuffix .pdf, $(ALL))) \
          $(addprefix dist/letter-pdf/,$(addsuffix .pdf, $(ALL))) \
          # $(addprefix dist/a4-ps/, $(addsuffix .ps, $(ALL))) \
          # $(addprefix dist/letter-ps/, $(addsuffix .ps, $(ALL)))

mutopia: $(MUTOPIA)

dist:
	mkdir -p dist/a4-pdf dist/a4-ps dist/letter-pdf dist/letter-ps dist/mid

# PARTS
dist/a4-pdf/%.pdf: $(PLOC)/%.ly ilys/%.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"a4\" -s -o $(basename $@) $<

dist/a4-ps/%.ps: $(PLOC)/%.ly ilys/%.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"a4\" -s --ps -o $(basename $@) $<

dist/letter-pdf/%.pdf: $(PLOC)/%.ly ilys/%.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"letter\" -s -o $(basename $@) $<

dist/letter-ps/%.ps: $(PLOC)/%.ly ilys/%.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"letter\" -s --ps -o $(basename $@) $<

# SCORE
dist/a4-pdf/concerto-8.pdf: concerto-8.ly ilys/*.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"a4\" -s -o $(basename $@) $<
	mv -f dist/a4-pdf/concerto-8.midi dist/mid/1allegro1.midi
	mv -f dist/a4-pdf/concerto-8-1.midi dist/mid/2andante.midi
	mv -f dist/a4-pdf/concerto-8-2.midi dist/mid/3allegro2.midi

dist/a4-ps/concerto-8.ps: concerto-8.ly ilys/*.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"a4\" --ps -s -o $(basename $@) $<

dist/letter-pdf/concerto-8.pdf: concerto-8.ly ilys/*.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"letter\" -s -o $(basename $@) $<

dist/letter-ps/concerto-8.ps: concerto-8.ly ilys/*.ily util.ily dist
	$(LP) $(LOPTS) -dpaper-size=\"letter\" --ps -s -o $(basename $@) $<

.PHONY: clean
clean:
	rm -f *.pdf *.midi
