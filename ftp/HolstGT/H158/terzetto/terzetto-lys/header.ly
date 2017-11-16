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
	source = "IMSLP #21576"
	style = "Classical"
	license = "Creative Commons Attribution 4.0"
	maintainer = "Robert Clausecker"
	maintainerEmail = "fuzxxl@gmail.com"
	maintainerWeb = "http://fuz.su"
}
