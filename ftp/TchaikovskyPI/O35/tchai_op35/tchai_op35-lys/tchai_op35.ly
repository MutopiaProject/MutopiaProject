%%% Many thanks to the Case Western Reserve University Kulas Music library
%%% for providing the old texts that would otherwise rot on the shelves.

\version "2.18.0"

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 13)

\paper {
	bookTitleMarkup = \markup {}
	scoreTitleMarkup = \markup {\fill-line { \center-column { \line {\abs-fontsize #18 {\fromproperty #'header:subtitle }} \null \null \null \null \null}}}
}

\markup { \fill-line { \center-column {
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\line {\abs-fontsize #28 {VIOLIN CONCERTO IN D MAJOR}}
	\null \null
	\line {\abs-fontsize #20 {OPUS 35}}
	} } }

\pageBreak

\include "mvmt1/mvmt1.ly"

\pageBreak

\include "mvmt2/mvmt2.ly"

\pageBreak

\include "mvmt3/mvmt3.ly"
