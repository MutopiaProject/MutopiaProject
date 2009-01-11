% Created on Sat Jan 12 10:04:39 CET 2008
\version "2.10.33"

\header {
	title = "Vado a recar la morte"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Vado a recar la morte , Aria from Faramondo"
	mutopiacomposer = "HandelGF"
	mutopiaopus = "HWV 39"
	mutopiainstrument = "Voice (Basso), String Ensemble, Basso Continuo"
	date = "1737"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 91, 1884"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/04/21-1392"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Va -- do_a re -- car la mor -- te all' em -- pio tra -- di -- tor, va -- do_a re -- car la mor -- te all' em -- pio tra -- di -- tor, va -- do_a re -- car la mor -- te all' em -- pio tra -- di -- tor, all' em -- pio tra -- di -- tor! Va -- do_a re -- car la mor -- te, va -- do_a re -- car la mor -- te all' em -- pio tra -- di -- tor, all' em -- pio tra -- di -- tor, va -- do_a re -- car la mor -- te all' em -- pio tra -- di -- tor!
Fau -- sta mi sia la sor -- te ca -- da_al mio brac -- cio for -- te sve -- na -- to dal fu -- ror; fau -- sta mi sia la sor -- te ca -- da_al mio brac -- cio for -- te, sve -- na -- to dal fu -- ror, sve -- na -- to dal fu -- ror.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violini"
	\set Staff.midiInstrument="violin"
	\key d \major
	\clef treble
	\relative c' {
		d8 e16 fis g8 a h16 cis d8 r fis, |
		g fis16 g a8 cis d d d8. cis32 d |
		e8 a, a16 g fis e d8 fis' fis8. e32 fis |
		g8 e, e16 d cis h a8 a'' a8. gis32 a |
		h16 a gis fis e8 d cis16 h a gis a8 a' |
		fis h e, gis a16 e d cis d h e d |
		cis h a h e,8 gis a a' a8. gis32 a |
		h8 e,, e16 d cis h a8 cis'' cis8.\trill h32 cis |
		d8 h, h16 a gis fis e8 a' a16 gis fis e |
		d cis h a e8 gis' a a, r4 |
		a,8 h16 cis d8 e fis16 gis a8 r4 |
		d,8 e16 fis g8 a h16 cis d8 d8.\trill cis32 d |
		e8 a, a16 g fis e d8 fis' fis8. e32 fis |
		g8 e, e16 d cis h a8 a'' a8.\trill g32 a |
		h16 a g fis e8 d cis16 h a g fis8 e |
		d4 r r2 |
		r8 d'' d8. cis32 d e8 a,, a16 g fis e |
		d8 fis' fis8. e32 fis g8 e, e16 d cis h |
		a8 a'' a16 g fis e d8 g g16 fis e d |
		cis8 fis fis16 e d cis h a g fis e d cis h |
		a4 r8 cis'' d cis16 h a g fis e |
		fis8 d e, cis' d4\fermata r \bar "||"
		d8 cis16 h ais8 h fis h r4 |
		c8 h16 a gis8 a e a r h |
		g fis16 e h'8 h, e4 r |
		r2 r8 g' g8.\trill fis32 g |
		a8 d,, d16 c h a g8 h'' h8.\trill a32 h |
		c8 a, a16 g fis e d8 d'' d8.\trill c32 d |
		e16 d c h a g fis e d c h a g4 |
		R1 |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key d \major
	\clef alto
	\relative c' {
		d8 e16 fis g8 a h16 cis d8 r fis, |
		g fis16 g a8 e fis4 r |
		r8 a a16 g fis e d8 a' r4 |
		r8 e e16 d cis h a8 e' r4 |
		r8 h' h16 a gis fis e8 cis' r e, |
		h' fis gis h a4 r8 h |
		e,4 r8 d cis4 r |
		r8 e e16 d cis h a8 e' r4 |
		r8 h' h16 a gis fis e8 e' cis a |
		fis fis gis e e4 r |
		a,8 h16 cis d8 e fis16 gis a8 r4 |
		d,8 e16 fis g8 a h16 cis d8 r a, |
		h a a'16 g fis e d8 a' d a |
		r e e16 d cis h a8 d d' d, |
		d d h'4 r8 cis, a a' |
		fis d r4 r2 |
		r8 fis fis fis g e a16 g fis e |
		d8 a' d d, d cis e16 d cis h |
		a8 d fis a h, h' h16 a gis fis |
		e8 d a' fis d h e16 d cis h |
		a4 r8 g' a4 d, |
		r8 fis a e fis4\fermata r \bar "||"
		d'8 cis16 h ais8 h g h r4 |
		c8 h16 a gis8 a e a r h |
		g8 fis16 e h'8 h, e4 g~ |
		g8 a16 h c8 a h16 a g8 r4 |
		r8 d d16 c h a g4 r |
		r8 a' a16 g fis e d4 r |
		r8 e e a fis d g4 |
		R1 |
	\bar "|."
	}

}
staffBass = \new Staff  {
	\set Staff.instrumentName="Teobaldo"
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef bass
	\relative c {
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			d8 e16 fis g8 a h16[ cis] d8 r fis, |
			g fis16[ g] a8 a, d4 d'~ |
			d8 cis16 h cis8 a d d, r d |
			e e e8. e16 fis4 r |
			gis8 h16 a gis8 e a e r cis' |
			d cis16[ d]e8 e, fis4 r8 gis |
			a cis16[ d] e8 e, a4 r |
			R1*3 |
			a,8 h16 cis d8 e fis16[ gis] a8 r4 |
			d,8 e16 fis g8 a h16[ cis]d8 r fis, |
			g fis16[ g] a8 a, d4 r8 d |
			e e e8. e16 fis4 r |
			g8 h16 a g8 fis16[ e] a8 a, r cis' |
			d[ fis, g] d a'4. a8 |
			d,4 r4 r2 |
			R1*5 \bar "||"
			d'8 cis16 h ais8 h fis h r4 |
			c8 h16 a gis8 a e a r h |
			g fis16[ e] h'8 h, e4 g~ |
			g8 a16 h c8 a h16[ a] g8 r g |
			g fis16[ e]fis8 d g d r g |
			a a a8. a16 h4 r8 h |
			c[\melisma a16 h] c8[ a] d[ fis, g]\melismaEnd c, |
			d4. d8 g2 |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Cello"
	\set Staff.midiInstrument="harpsichord"
	\key d \major
	\clef bass
	\relative c { 	
		d8 e16 fis g8 a h16 cis d8 r fis, |
		g fis16 g a8 a, d4 d'~ |
		d8 cis16 h cis8 a d d, r d |
		e e e e fis fis fis fis |
		gis h16 a gis8 e a e cis' a |
		d cis16 d e8 e, fis4 r8 gis |
		a cis16 d e8 e, a,4 r8 a' |
		a gis16 fis gis8 e a a, a a |
		h h h h cis cis cis cis |
		d fis e e, a4 r |
		a8 h16 cis d8 e fis16 gis a8 r4 |
		d,8 e16 fis g8 a h16 cis d8 r fis, |
		g fis16 g a8 a, d4 r8 d |
		e e e8. e16 fis8 fis fis fis |
		g h16 a g8 fis16 e a8 a, r cis' |
		d fis, g d a'4 a, |
		d8 d' d d d cis16 h cis8 a |
		d d, d d e e e e |
		fis fis fis fis h e, e e |
		a d, d d g g, g g |
		g4 r8 e' fis e fis g |
		a4 a, d\fermata r \bar "||"
		d'8 cis16 h ais8 h fis h r4 |
		c8 h16 a gis8 a e a r h |
		g fis16 e h'8 h, e4 r8 d |
		c h a d g,4 g'~ |
		g8 fis16 e fis8 d g, g' g g |
		a a a a h h h h |
		c a16 h c8 a d fis, g c, |
		d4 d, g2 |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViola
		\staffBass
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

