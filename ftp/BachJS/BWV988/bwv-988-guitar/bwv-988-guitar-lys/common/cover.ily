\version "2.18.2"

%-----------------------Title Page
\bookpart {
  \header { maintainer = "Steve Shorter et al." }
  \include "../mutopia-header.ily"

  \markup { \fill-line { \center-column {
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null
	\line {\abs-fontsize #20 "J. S. Bach"}
	\null\null\null
	\line {\abs-fontsize #36 \bold "Goldberg Variations"}
	\null\null\null
	\line {\abs-fontsize #20 "BWV 988"}
	\null\null\null\null
	\fill-line { \abs-fontsize #20 "For Guitar Ensemble" }
	\null\null\null\null
	\null\null\null\null
        \fill-line { \abs-fontsize #14 "Transcribed and Engraved"}
        \null
        \fill-line { \abs-fontsize #14 "by"}
        \null
        \fill-line { \abs-fontsize #14 "Steve Shorter"}
	} } }
}


%---------------------------Dedication

\bookpart {
  \header { copyright = ##f }
  \paper { print-page-number = ##f }
  \markup { \fill-line { \center-column {
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null
	\line {\abs-fontsize #20 \italic "For"}
	\null\null\null
	\line {\abs-fontsize #20 \italic "Eli Kassner"}
	\null
	\line {\abs-fontsize #20 \italic "and"}
	\null
	\line {\abs-fontsize #20 \italic "Glenn Gould"}
	\null\null\null
	\line {\abs-fontsize #20 \italic "from"}
	\null\null\null
	\fill-line { \abs-fontsize #20 \italic "The Guitar Society of Toronto Orchestra" }
	} } }
}