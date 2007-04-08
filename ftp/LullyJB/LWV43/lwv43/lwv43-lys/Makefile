SCORES=lwv05 lwv08 lwv43

# define SCORE_BUILD_RULE_template \
# $(1): \
# 	lilypond -b null -d write-tweaks $(1).ly \
# 	lilypond $(1).ly \
# $(1)-letter: \
# 	lilypond -b null -d write-tweaks -d letter -o $(1)-letter $(1).ly \
# 	lilypond -d letter -o $(1)-letter $(1).ly \
# .PHONY: $(1) \
# .PHONY: $(1)-letter 
# endef

# $(foreach score, $(SCORES), $(eval $(call SCORE_BUILD_RULE_template,$(score))))

lwv05:
	lilypond -b null -d write-tweaks -o out/lwv05 lwv05.ly && \
	lilypond -o out/lwv05 lwv05.ly 
lwv05-letter:
	lilypond -b null -d write-tweaks -d letter -o out/lwv05-letter lwv05.ly && \
	lilypond -d letter -o out/lwv05-letter lwv05.ly
.PHONY: lwv05
.PHONY: lwv05-letter 

lwv08:
	lilypond -b null -d write-tweaks -o out/lwv08 lwv08.ly && \
	lilypond -o out/lwv08 lwv08.ly
lwv08-letter:
	lilypond -b null -d write-tweaks -d letter -o out/lwv08-letter lwv08.ly && \
	lilypond -d letter -o out/lwv08-letter lwv08.ly
.PHONY: lwv08
.PHONY: lwv08-letter 

lwv43:
	lilypond -b null -d write-tweaks -o out/lwv43 lwv43.ly && \
	lilypond -o out/lwv43 lwv43.ly
lwv43-letter:
	lilypond -b null -d write-tweaks -d letter -o out/lwv43-letter lwv43.ly && \
	lilypond -d letter -o out/lwv43-letter lwv43.ly
.PHONY: lwv43
.PHONY: lwv43-letter 
