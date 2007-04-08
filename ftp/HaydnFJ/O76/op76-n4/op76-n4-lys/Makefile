SUBMAKEFILES = 1/Makefile 2/Makefile 3/Makefile 4/Makefile 5/Makefile 6/Makefile
SUBDIRS = 1 2 3 4 5 6

all: $(SUBMAKEFILES)
	for S in $(SUBDIRS); do \
		$(MAKE) -C $$S; \
	done
	$(MAKE) parts
	$(MAKE) score

parts: violin1.pdf violin2.pdf viola.pdf violoncello.pdf
score: score.pdf

.depend: $(SUBMAKEFILES)
	for S in $(SUBDIRS); do \
		$(MAKE) -C $$S .depend; \
	done

clean: $(SUBMAKEFILES)
	for S in $(SUBDIRS); do \
		$(MAKE) -C $$S clean; \
	done
	- rm -f $(SUBMAKEFILES)
	- rm -f *.pdf

$(SUBMAKEFILES): make_template
	cp make_template $@
	$(MAKE) -C $(dir $@) clean

.SUFFIXES: .pdf

%.pdf: 1/%.pdf 2/%.pdf 3/%.pdf 4/%.pdf 5/%.pdf 6/%.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@ $^
