%%% Many thanks to the Case Western Reserve University Kulas Music library
%%% for providing the old texts that would otherwise rot on the shelves.

\version "2.18.2"

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 13)

\paper {
	bookTitleMarkup = \markup {}
	scoreTitleMarkup = \markup {\fill-line { \center-column { \line {\abs-fontsize #18 {\fromproperty #'header:subtitle }} \null \null \null \null \null}}}
}

\include "paper.ily"

\markup { \fill-line { \center-column {
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\line {\abs-fontsize #18 "P. TCHAIKOVSKY"}
	\null \null \null \null
	\line {\abs-fontsize #28 "VIOLIN CONCERTO IN D MAJOR"}
	\null \null \null \null
	\line {\abs-fontsize #20 "OPUS  35"}
	} } }

\include "mvmt1/includes.ily"
\bookpart {
   \include "mvmt1/header.ily"
   \include "mvmt1/score.ily"
}

\include "mvmt2/includes.ily"
\bookpart {
   \include "mvmt2/header.ily"
   \include "mvmt2/score.ily"
}

\include "mvmt3/includes.ily"
\bookpart {
   \include "mvmt3/header.ily"
   \include "mvmt3/score.ily"
}
