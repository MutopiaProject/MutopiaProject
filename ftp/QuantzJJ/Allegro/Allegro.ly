% Created on Sun Nov 04 12:28:56 CET 2007
\version "2.10.33"

\header {
	title = "Allegro"
	composer = "Johann Joachim Quantz (1697-1773)"
	mutopiatitle = "Allegro"
	mutopiacomposer = "QuantzJJ"
	mutopiainstrument = "Flute and Basso Continuo"
	source = "Gieddes Samling I,17 mu 6310.0860"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/11/25-1166"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"


staffFlute = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Flute"
	\set Staff.midiInstrument="flute"
	\key g \major
	\clef treble
	\relative c'' {
		\partial 8 d8 |
		h d fis, d' g, d' a d |
		h d e g, fis e d d' |
		h e cis fis d g e a |
		fis a h d, \appoggiatura d cis4. e8 |
		fis a, e' a, a' a, g' a, |
		fis' a, e' a, a' a, g' a, |
		fis' d h e cis a' e g |
		fis d e cis d h a g |
		fis d' e, cis' d,4. \bar ":|:"
		a''8 |
		fis a cis, a' d, a' fis d |
		c e a, c h a g h |
		e h fis' h, g' h, a' h, |
		h' e, c' e, \appoggiatura e dis4. fis8 |
		g h, fis' h, h' h, a' h, |
		g' h, fis' h, h' h, a' h, |
		g' e fis cis dis h e h |
		fis fis' h, dis \appoggiatura dis e4 r8 g |
		a d, a' c, h g d' g, |
		e' a, e' g, fis e d d' |
		h d fis, d' g, d' a d 
		h d fis, d' g, d' a d |
		h g' d f e a e g |
		fis d' a c h d a d |
		h d a g \appoggiatura g fis4. a8 |
		h d, a' d, d' d, c' d, |
		h' d, a' d, d' d, c' d, |
		h' g a e fis d g h, |
		a a' d, fis \appoggiatura fis g4 r8 a, |
		h d, a' d, d' d, c' d, |
		h' d, a' d, d' d, c' d, |
		h' g e a fis d' a c |
		h g' a fis g e d c |
		h g' a fis g e d c |
		h g' a, fis' g,4
	\bar ":|"
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key g \major
	\clef bass
	\relative c' {
		\partial 8 r8 |
		g4 a h fis |
		g c, d fis |
		g a h cis |
		d g, a8 a, cis a |
		d4 a r cis |
		d a r cis |
		d g a cis |
		d8 fis, g a h4 cis |
		d8 fis, g a d,4. \bar ":|:"
		r8 |
		d4 e fis d |
		e fis g r8 fis |
		e4 dis e fis |
		g a h8 h, dis h |
		e4 h r dis |
		e h r dis |
		fis a2 g4 |
		a h e,8 fis g e |
		fis4 d g h, |
		c cis d r8 fis |
		g4 a h fis |
		g a h fis |
		g h c cis |
		d fis, g fis |
		g c d8 d, fis d |
		g4 d r fis |
		g d r fis |
		g c2 h4 |
		c d g,8 a h fis |
		g4 d r fis |
		g d r fis |
		g c, d fis |
		g8 h, c d e4 fis |
		g8 h, c d e4 fis |
		g8 h, c d g,4 
	\bar ":|"
	}

}


\score {
	<<
		\staffFlute
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

