\version "2.10.14"

\header {
	title = "Adagio e Fuga in do minore"
	subtitle = "K. 546"
	composer = "Wolfgang Amadeus Mozart"
	
	mutopiatitle = "Adagio and Fugue in C minor"
	mutopiacomposer = "MozartWA"
	mutopiaopus = "KV 546"
	mutopiainstrument = "String Quartet"
	date = "1788/Jun/26"
	source = "Peters, 1???"
	style = "Classical"
	copyright = "Creative Commons Attribution-ShareAlike 2.5"
	maintainer = "Carlo Stemberger"
	maintainerEmail = "carlo.stemberger@studenti.unimi.it"
	lastupdated = "2006/Oct/20"
 footer = "Mutopia-2007/02/01-852"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

% General markings and annotations for each movement

mvmttext = {
	\once \override TextScript   #'padding = #'2.5
	\once \override TextScript   #'extra-offset = #'(-3.5 . 0)
	\once \override TextScript   #'font-size = #1
	\once \override TextScript   #'font-series = #'bold
	\override Score.MetronomeMark   #'transparent = ##t
}

mI = \context Voice {
	\time 3/4
	\mvmttext
	s4^\markup { "Adagio" }
	s2 | s2.*11 |
	\mark \default s2.*11 |%		A
	\mark \default s2.*11 |%		B
	\mark \default s2.*18 |%		C
	\bar "||"
}

mII = \context Voice {
	\time 4/4
	\mvmttext
	s1*9^\markup { "Allegro" } |
	s1*4 |
	\mark #4 s1*16 |%		D
	\mark \default s1*15 |%		E
	\mark \default s1*15 |%		F
	\mark \default s1*13 |%		G
	\mark \default s1*18 |%		H
	\mark \default s1*12 |%		J
	\mark \default s1*17 |%		K
	\bar "|."
}
