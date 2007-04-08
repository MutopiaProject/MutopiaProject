COMMON_FILES = defs.ly k478-header.ly

.phony: all help

all: k478-violin.pdf k478-viola.pdf k478-cello.pdf k478-piano.pdf k478-score.pdf

k478-violin.pdf: k478-violin.ly $(COMMON_FILES) \
	k478-defs-1.ly k478-violin-1.ly \
	k478-defs-2.ly k478-violin-2.ly \
	k478-defs-3.ly k478-violin-3.ly 
	lilypond -f ps $<

k478-viola.pdf: k478-viola.ly $(COMMON_FILES) \
	k478-defs-1.ly k478-viola-1.ly \
	k478-defs-2.ly k478-viola-2.ly \
	k478-defs-3.ly k478-viola-3.ly
	lilypond -f ps $<

k478-cello.pdf: k478-cello.ly $(COMMON_FILES) \
	k478-defs-1.ly k478-cello-1.ly \
	k478-defs-2.ly k478-cello-2.ly \
	k478-defs-3.ly k478-cello-3.ly
	lilypond -f ps $<

k478-piano.pdf: k478-piano.ly k478-piano-layout.ly $(COMMON_FILES) \
	k478-defs-1.ly k478-piano-1.ly \
	k478-defs-2.ly k478-piano-2.ly \
	k478-defs-3.ly k478-piano-3.ly 
	lilypond -f ps $<

k478-score.pdf: k478-score.ly k478-piano-layout.ly $(COMMON_FILES) \
	k478-defs-1.ly k478-violin-1.ly k478-viola-1.ly k478-cello-1.ly k478-piano-1.ly \
	k478-defs-2.ly k478-violin-2.ly k478-viola-2.ly k478-cello-2.ly k478-piano-2.ly \
	k478-defs-3.ly k478-violin-3.ly k478-viola-3.ly k478-cello-3.ly k478-piano-3.ly
	lilypond -f ps $<

help:
	@echo "Available targets:"
	@echo
	@echo "  k478-violin.pdf     - Violin part"
	@echo "  k478-viola.pdf      - Viola part"
	@echo "  k478-cello.pdf      - Cello part"
	@echo "  k478-piano.pdf      - Piano part (alone)"
	@echo "  k478-score.pdf      - Complete score"
	@echo "  all                 - All the targets above"
	@echo
