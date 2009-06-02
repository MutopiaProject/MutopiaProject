OUTPUT_DIR=out
DELIVERY_DIR=delivery

LILYPOND_CMD=lilypond -ddelete-intermediate-files

REHEARSAL_FLAG=-d use-rehearsal-numbers
LETTER_FLAG=-d letter
HARDCOVER_BOOK_FLAG=-d hardcover

SCORES=

##################################################################################

define ALL_SCORE_PDFs
$(word 1,$(subst /, ,$(1)))_$(notdir $(1))_PDFs
endef

define DELIVERY_DIRECTORY
$(DELIVERY_DIR)/$(word 1,$(subst /, ,$(1)))
endef

define DELIVERY_FILE
$(call DELIVERY_DIRECTORY,$(1))/$(notdir $(1))
endef

define MAKE_SCORE_RULE
$(1)$(2):
	$(LILYPOND_CMD) $(3) -o $(OUTPUT_DIR)/$(notdir $(1))$(2) $(1)/main.ly
.PHONY: $(1)$(2)
$(call ALL_SCORE_PDFs,$(1))+=$(1)$(2)
endef

define MAKE_PART_RULE_AUX
$(1)-$(2):
	$(LILYPOND_CMD) -dpart=$(2) -o $(OUTPUT_DIR)/$(notdir $(1))-$(2) $(1)/$(3).ly
.PHONY: $(1)-$(2)
$(call ALL_SCORE_PDFs,$(1))+=$(1)-$(2)
endef

define MAKE_PART_RULE
$(eval $(call MAKE_PART_RULE_AUX,$(1),$(2),part))
endef

define DELIVER_PDF_RULE
$(call DELIVERY_DIRECTORY,$(1))/$(notdir $(1)):
	@if [ -e $(OUTPUT_DIR)/$(notdir $(1)).pdf ]; then \
		mkdir -p $(call DELIVERY_DIRECTORY,$(1)); \
		echo mv -f $(OUTPUT_DIR)/$(notdir $(1)).pdf $(call DELIVERY_DIRECTORY,$(1))/; \
		mv -f $(OUTPUT_DIR)/$(notdir $(1)).pdf $(call DELIVERY_DIRECTORY,$(1))/; \
	fi
.PHONY: $(call DELIVERY_DIRECTORY,$(1))/$(notdir $(1))
endef

define DELIVER_MIDI_ARCHIVE
	@echo tar zcf $(DELIVERY_DIR)/$(notdir $(1))-midi.tar.gz $(OUTPUT_DIR)/$(notdir $(1))\*.midi
	@if [ -e $(OUTPUT_DIR)/$(notdir $(1))-100.midi ]; then \
	  tar zcf $(call DELIVERY_FILE,$(1))-midi.tar.gz \
		$(OUTPUT_DIR)/$(notdir $(1)).midi \
		$(OUTPUT_DIR)/$(notdir $(1))-?.midi \
		$(OUTPUT_DIR)/$(notdir $(1))-??.midi \
		$(OUTPUT_DIR)/$(notdir $(1))-???.midi ;\
	elif [ -e $(OUTPUT_DIR)/$(notdir $(1))-10.midi ]; then \
	  tar zcf $(call DELIVERY_FILE,$(1))-midi.tar.gz \
		$(OUTPUT_DIR)/$(notdir $(1)).midi \
		$(OUTPUT_DIR)/$(notdir $(1))-?.midi \
		$(OUTPUT_DIR)/$(notdir $(1))-??.midi ;\
	else \
	  tar zcf $(call DELIVERY_FILE,$(1))-midi.tar.gz \
		$(OUTPUT_DIR)/$(notdir $(1)).midi \
		$(OUTPUT_DIR)/$(notdir $(1))-?.midi ;\
	fi
endef

define DELIVER_SOURCE_ARCHIVE
	git archive --prefix=$(notdir $(1))/ HEAD $(1) common templates Makefile | gzip > $(call DELIVERY_FILE,$(1)).tar.gz
endef

define MAKE_DELIVERY_RULE
$(foreach pdf,$($(call ALL_SCORE_PDFs,$(1))),$(eval $(call DELIVER_PDF_RULE,$(pdf))))
$(1)-delivery: $(foreach pdf,$($(call ALL_SCORE_PDFs,$(1))),$(call DELIVERY_DIRECTORY,$(pdf))/$(notdir $(pdf)))
	mkdir -p $(call DELIVERY_DIRECTORY,$(1))
	$(foreach pdf,$($(call ALL_SCORE_PDFs,$(1))),$(call DELIVER_PDF,$(pdf)))
	$(call DELIVER_MIDI_ARCHIVE,$(1))
	$(call DELIVER_SOURCE_ARCHIVE,$(1))
endef

define MAKE_ALL_SCORE_RULES
$(eval $(call MAKE_SCORE_RULE,$(1),,))
$(eval $(call MAKE_SCORE_RULE,$(1),-letter,$(LETTER_FLAG)))
#$(eval $(call MAKE_SCORE_RULE,$(1),-hardcover,$(HARDCOVER_BOOK_FLAG)))
$(eval $(call MAKE_SCORE_RULE,$(1),-rehearsal,$(REHEARSAL_FLAG)))
$(foreach part,$(2),$(eval $(call MAKE_PART_RULE,$(1),$(part))))
$(foreach part,$(4),$(eval $(call MAKE_PART_RULE_AUX,$(1),$(part),$(3))))
$(call MAKE_DELIVERY_RULE,$(1))
SCORES+=$(1)
$(1)-all: $($(call ALL_SCORE_PDFs,$(1))) $(1)-delivery
.PHONY: $(1)-all
endef

archive:
	git archive HEAD | gzip > delivery/backup.tar.gz
.PHONY: archive

##################################################################################

$(eval $(call MAKE_ALL_SCORE_RULES,Rameau/Opera/HippolyteEtAricie,violon1 flute1 hautbois1,,))

$(eval $(call MAKE_ALL_SCORE_RULES,Couperin/Orgue/MesseCouvents,,,))
$(eval $(call MAKE_ALL_SCORE_RULES,Couperin/Motets,,,))
$(eval $(call MAKE_ALL_SCORE_RULES,Couperin/Clavecin/lArtDeToucherLeClavecin,,,))

$(eval $(call MAKE_ALL_SCORE_RULES,Lully/Opera/LWV56Psyche,\
dessus1 dessus2 haute-contre taille quinte basse basse-continue voix,part5,trompette tambour timbales))
$(eval $(call MAKE_ALL_SCORE_RULES,Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee,,,))

$(eval $(call MAKE_ALL_SCORE_RULES,Charpentier/Opera/DavidEtJonathas,\
dessus1 dessus2 haute-contre taille basse voix,part-bc,basse-continue))

$(eval $(call MAKE_ALL_SCORE_RULES,Haendel/Opera/GiulioCesare,reduction,,))

help:
	@echo "usage: make <score-rule>"
	@echo "score-rule:"
	@echo "  <score>           Build a A4 PDF score"
	@echo "  <score>-rehearsal Build a A4 PDF score with rehearsal numbers"
	@echo "  <score>-letter    Build a Letter PDF score"
	@echo "  <score>-hardcover Build a hardcover sized PDF score"
	@echo "  <score>-<part>    Build a PDF part score"
	@echo "  <score>-delivery  Make archives and move PDF to delivery directory"
	@echo "  <score>-all       Build all PDF formats and make delivery"
	@echo "score:"
	@for score in $(SCORES); do echo "  $$score"; done
.PHONY: help
