% Created on Sat Jan 26 21:19:43 CET 2008
\version "2.10.33"

\header {
	title = "Gavotta"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Gavotta from Atalanta"
	mutopiacomposer = "HandelGF"
	mutopiaopus = "HWV 35"
	mutopiainstrument = "Ensemble: Trumpets, Timpani"
	date = "1736"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 87, 1882"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/02/19-1310"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"


staffTrumpetInC = \new Staff  {
	\time 2/2
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 160
	\set Staff.instrumentName="Tromba I"
	\set Staff.midiInstrument="trumpet"
	\key d \major
	\clef treble
	\relative c'' {
		\partial 2 fis4 g8 fis |
		e4 a d, e8 fis |
		e2 g4 a8 g |
		fis4 e8 d e2 |
		d \bar ":|:" fis4 g8 a |
		h4 h a g |
		fis2 fis4 fis8 g |
		a4 h8 a g4 fis |
		e2 fis4 g8 fis |
		e4 a d, e8 fis |
		e2 g4 a8 g |
		fis4 e8 d e2 |
		d g4 fis8 e |
		a4 d, e2 |
		d
	\bar ":|"
	}

}
staffTrumpetInCII = \new Staff  {
	\set Staff.instrumentName="Tromba II"
	\set Staff.midiInstrument="trumpet"
	\key d \major
	\clef treble
	\relative c'' {
		\partial 2 d4 e8 d |
		e4 a, fis d8 d |
		a'2 e'4 fis8 e |
		d4 fis, a2 |
		fis \bar ":|:" d'4 e8 fis |
		g4 g fis e |
		d2 d4 d8 e |
		fis4 g8 fis e4 d |
		e2 d4 e8 d |
		e4 a, fis d8 d |
		a'2 e'4 fis8 e |
		d4 fis, a2 |
		fis e'4 a,8 a |
		a4 fis a2 |
		fis
	\bar ":|"
	}

}
staffTrumpetInCIII = \new Staff  {
	\set Staff.instrumentName="Tromba III"
	\set Staff.midiInstrument="trumpet"
	\key d \major
	\clef treble
	\relative c'' {
		\partial 2 a4 a8 a |
		a4 a a a |
		a,2 a'4 a8 a |
		a4 a a,2 |
		a' \bar ":|:" a4 a8 a |
		d4 d, a' a |
		d,2 a'4 a8 a |
		d4 d a d, |
		a'2 a4 a8 a |
		a4 a a a |
		a,2 a'4 a8 a |
		a4 a a,2 |
		a' a,4 d8 d |
		fis4 a a,2 |
		a'
	\bar ":|"
	}

}
staffTimpani = \new Staff  {
	\set Staff.instrumentName="Tympano"
	\set Staff.midiInstrument="timpani"
	\key d \major
	\clef bass
	\relative c {
		\partial 2 d4 d8 d |
		a4 a d d |
		a2 a4 a8 a |
		d4 d a2 |
		d \bar ":|:" d4 d8 d |
		d4 d a a |
		d2 d4 d8 d |
		d4 d d d |
		a2 d4 d8 d |
		a4 a d d |
		a2 a4 a8 a |
		d4 d a2 |
		d a4 a8 a |
		a4 d a2 |
		d
	\bar ":|"
	}

}


\score {
	<<
		\staffTrumpetInC
		\staffTrumpetInCII
		\staffTrumpetInCIII
		\staffTimpani
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

