\version "2.18.2"
\language "deutsch"

scaleNote = \markup\concat{(
	\smaller\general-align #Y #DOWN \note #"4" #1
	" = "
	\smaller\general-align #Y #DOWN \note #"4." #1
)}

\include "flute.ly"
\include "oboe.ly"
\include "viola.ly"

\header {
	title = "Terzetto"
	subtitle = "in Two Movements"
	instrument = "for Flute, Oboe and Viola"
	composer = "Gustav Holst"
	opus = "H158"
	mutopiacomposer = "HolstGT"
	mutopiainstrument = "Flute, Oboe, Viola"
	%source = "IMSLP #21576"%}
	source = "London: J. & W. Chester, 1944. Plate J.W.C. 258."
	style = "Classical"
	license = "Creative Commons Attribution 4.0"
	maintainer = "Robert Clausecker"
	maintainerEmail = "fuzxxl@gmail.com"
	maintainerWeb = "http://fuz.su"
	footer = "Mutopia-2017/11/16-2208"
	copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2017 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
	tagline = ##f
}
