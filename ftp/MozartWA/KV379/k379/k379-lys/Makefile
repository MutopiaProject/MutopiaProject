COMMON_FILES = defs.ly k379-header.ly k379-markings-3.ly

.phony: all

all: k379-violin.pdf k379-piano.pdf k379-score.pdf

k379-violin.pdf: k379-violin.ly $(COMMON_FILES) \
	k379-defs-1.ly k379-violin-1.ly \
	k379-defs-2.ly k379-violin-2.ly \
	k379-defs-3.ly k379-violin-3.ly
	lilypond $<

k379-piano.pdf: k379-piano.ly $(COMMON_FILES) \
	k379-defs-1.ly k379-piano-1.ly \
	k379-defs-2.ly k379-piano-2.ly \
	k379-defs-3.ly k379-piano-3.ly
	lilypond $<

k379-score.pdf: k379-score.ly $(COMMON_FILES) \
	k379-defs-1.ly k379-violin-1.ly k379-piano-1.ly \
	k379-defs-2.ly k379-violin-2.ly k379-piano-2.ly \
	k379-defs-3.ly k379-violin-3.ly k379-piano-3.ly
	lilypond $<
