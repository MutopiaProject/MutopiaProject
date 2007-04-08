OBOE1_PART = k477-oboe1-part.ly
OBOE2_PART = k477-oboe2-part.ly
CLARINET_PART = k477-clarinet-part.ly
BASSET_HORN_PART = k477-basset-horn-part.ly
HORN1_PART = k477-horn1-part.ly
HORN2_PART = k477-horn2-part.ly
VIOLIN1_PART = k477-violin1-part.ly
VIOLIN2_PART = k477-violin2-part.ly
VIOLA_PART = k477-viola-part.ly
CELLO_PART = k477-cello-part.ly

.phony: all

all: k477-oboe1.ps k477-oboe2.ps k477-clarinet.ps \
k477-basset-horn.ps k477-horn1.ps k477-horn2.ps \
k477-violin1.ps k477-violin2.ps k477-viola.ps k477-cello.ps \
k477-score.ps

%.ps: %.ly
	lilypond -f ps $<

k477-oboe1.ps: k477-oboe1.ly $(OBOE1_PART)

k477-oboe2.ps: k477-oboe2.ly $(OBOE2_PART)

k477-clarinet.ps: k477-clarinet.ly $(CLARINET_PART)

k477-basset-horn.ps: k477-basset-horn.ly $(BASSET_HORN_PART)

k477-horn1.ps: k477-horn1.ly $(HORN1_PART)

k477-horn2.ps: k477-horn2.ly $(HORN2_PART)

k477-violin1.ps: k477-violin1.ly $(VIOLIN1_PART)

k477-violin2.ps: k477-violin2.ly $(VIOLIN2_PART)

k477-viola.ps: k477-viola.ly $(VIOLA_PART)

k477-cello.ps: k477-cello.ly $(CELLO_PART)

k477-score.ps: k477-score.ly $(OBOE1_PART) $(OBOE2_PART) $(CLARINET_PART) \
$(BASSET_HORN) $(HORN1_PART) $(HORN2_PART) $(VIOLIN1_PART) $(VIOLIN2_PART) \
$(VIOLA_PART) $(CELLO_PART)
