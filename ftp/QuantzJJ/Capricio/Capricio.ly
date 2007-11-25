% Created on Sun Oct 28 11:49:10 CET 2007
\version "2.10.33"

\header {
	title = "Capricio"
	composer = "Johann Joachim Quantz (1697-1773)"
	mutopiatitle = "Capricio"
	mutopiacomposer = "QuantzJJ"
	mutopiainstrument = "Flute"
	source = "Gieddes Samling I,17 mu 6310.0860"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/11/25-1167"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"


staffFlute = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Flute"
	\set Staff.midiInstrument="flute"
	\key d \major
	\clef treble
	\relative c' {
		d16 d' cis h a g fis e d fis' e d cis h a g |
		fis a' g fis e d cis h a d' cis h a g fis e |
		d a' g fis e d cis h a fis' e d cis h a g |
		fis d' cis h a g fis e d4\trill r8 a'' |
		h16 g d h h' g d h g h d g h g h g |
		a fis d a a' fis d a fis a d fis a fis a fis |
		g e cis a g' e cis a e a cis e g e g e |
		fis d g e a fis h g \appoggiatura fis4 e2 |
		a16 e cis a e a cis e g e cis a e a cis e |
		fis d cis d fis d a' d, fis d cis d fis d a' d, |
		h' fis dis h fis h dis fis a fis dis h fis h dis fis |
		gis e dis e gis e h' e, gis e dis e gis e h' e, |
		a gis fis e d cis h a h' a gis fis e d cis h |
		cis' h a gis fis e d cis d' cis h a g fis e d |
		cis a' a8\trill cis16 a e' a, d, a' a8\trill d16 a fis' a, |
		cis, a' a8\trill cis16 a e' a, h, gis' gis8\trill h16 gis d' gis, |
		a e' cis a e cis' a e cis a' e cis a e' cis a |
		a'8 gis16 fis e d cis h a4\trill r |
		cis16 e cis a cis e cis a d fis d a d fis d a |
		e' g e a, e' g e a, d fis d a d fis d a |
		cis e cis a cis e cis a d fis d a d fis d a |
		e' g e a, e' g e a, d fis d a d fis d a |
		fis' a fis d fis a fis d g h g d g h g d |
		a' c a fis a c a d, g h g d g h g d |
		fis a fis d fis a fis d g h g d g h g d |
		a' c a d, a' c a d, g h g d g h g d |
		h' g g8\trill h16 g d' g, a fis fis8\trill a16 fis d' fis, |
		g e e8\trill g16 e h' e, fis d d8\trill fis16 d a' d, |
		e g h a g fis e dis e fis g fis e dis cis h |
		cis d e d cis h a gis a4\trill r |
		d,16 d' cis h a g fis e d fis' e d cis h a g |
		fis a' g fis e d cis h a d' cis h a g fis e |
		d a' g fis e d cis h a fis' e d cis h a g |
		fis d' cis h a g fis e d4\trill r8 a' |
		h16 g fis g h g fis g e fis g a h cis d h |
		cis a g a cis a g a fis g a h cis d e cis |
		d h a h d h a h g a h cis d e fis d |
		e cis h cis e cis h cis a h cis d e fis g e |
		fis a, a8\trill fis'16 a, a' a, e' a, a8\trill e'16 a, g' a, |
		fis' a, a8\trill fis'16 a, a' a, e' a, a8\trill e'16 a, g' a, |
		fis' d' a fis d a' fis d a fis' d a fis d' a fis |
		d d' cis h a g fis e d4\trill r
	\bar "|."
	}

}


\score {
	<<
		\staffFlute
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

