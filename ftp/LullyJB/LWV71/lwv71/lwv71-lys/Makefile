
OUTPUT_DIR=out
LETTER_FLAG=-d letter
NEW_CLEF_FLAG=-d modern-clefs

### Templates

SCORES=

define COMMAND_template
 lilypond $(3) -o $(OUTPUT_DIR)/$(1)$(2) $(1).ly
endef

define SCORE_RULE_template
$(1)$(2):
	$(call COMMAND_template,$(1),$(2),$(3))
.PHONY: $(1)$(2)
endef

define ALL_SCORE_RULES_template
 $(call SCORE_RULE_template,$(1),,)
 $(call SCORE_RULE_template,$(1),-new-clefs,$(NEW_CLEF_FLAG))
 $(call SCORE_RULE_template,$(1),-letter,$(LETTER_FLAG))
 $(call SCORE_RULE_template,$(1),-letter-new-clefs,$(LETTER_FLAG) $(NEW_CLEF_FLAG))
SCORES+=$(1)
endef

define PART_RULE_template
$(1)-$(2):
	lilypond -dpart=$(2) $(NEW_CLEF_FLAG) -o $(OUTPUT_DIR)/$(1)-$(2) $(1)-part.ly
endef

### Actual rule definitions

$(eval $(call ALL_SCORE_RULES_template,lwv05))
$(eval $(call ALL_SCORE_RULES_template,lwv05-rc))
$(eval $(call ALL_SCORE_RULES_template,lwv08))
$(eval $(call ALL_SCORE_RULES_template,lwv43))
$(eval $(call ALL_SCORE_RULES_template,lwv56))
$(eval $(call ALL_SCORE_RULES_template,lwv71))

$(eval $(call PART_RULE_template,lwv71,dessus1))
$(eval $(call PART_RULE_template,lwv71,dessus2))
$(eval $(call PART_RULE_template,lwv71,haute-contre))
$(eval $(call PART_RULE_template,lwv71,taille))
$(eval $(call PART_RULE_template,lwv71,quinte))
$(eval $(call PART_RULE_template,lwv71,basse))
$(eval $(call PART_RULE_template,lwv71,basse-continue))

help:
	@echo "usage: make <score-rule>"
	@echo "score-rule:"
	@echo "  <score>                   Build a A4 PDF score, with original clefs"
	@echo "  <score>-new-clefs         Build a A4 PDF score, with treble&bass clefs"
	@echo "  <score>-letter            Build a Letter PDF score, with original clefs"
	@echo "  <score>-letter-new-clefs  Build a Letter PDF score, with treble&bass clefs"
	@echo "score: $(SCORES)"
.PHONY: help
