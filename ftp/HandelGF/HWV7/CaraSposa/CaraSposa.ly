% Created on Thu Jan 31 20:24:55 CET 2008
\version "2.11.44"

\header {
	title = "Cara sposa, amanta cara"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Cara sposa, amanta cara , Aria from Rinaldo"
	mutopiacomposer = "HandelGF"
	mutopiapoet = "Giacomo Rossi"
	mutopiaopus = "HWV 7"
	mutopiainstrument = "Voice (Soprano), String Ensemble, Basso Continuo"
	date = "1711"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 58, 1874"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/05/18-1308"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Ca -- ra spo -- sa, a -- man -- te ca -- ra, do -- ve se -- i? do -- ve se -- i? deh! ri -- tor -- na a pian -- ti mie -- i! ca -- ra spo -- sa, a -- man -- te ca -- ra, do -- ve sei? ri -- tor -- na, ri -- tor -- na a pian -- ti mie -- i! ca -- ra spo -- sa, deh! ri -- tor -- na, deh! ri -- tor -- na_a pian -- ti mie -- i! ca -- ra spo -- sa, spo -- sa ca -- ra, do -- ve se -- i? deh! ri -- tor -- na, do -- ve sei, do -- ve sei? deh! ri -- tor -- na a pian -- ti miei, ri -- tor -- na_a pian -- ti mie -- i, deh! ri -- tor -- na, deh! ri -- tor -- na_a pian -- ti mie -- i!
Del vo -- stro_e -- re -- bo sull' a -- ra, col -- la fa -- ce del mio sde -- gno io vi sfi -- do, col -- la fa -- ce del mio sde -- gno io vi sfi -- do, oh spir -- ti re -- i! col -- la fa -- ce del mio sde -- gno, del vo -- stro_E -- re -- bo sull' a -- ra, io vi sfi -- do, io vi sfi -- do, oh spir -- ti re -- i, oh spir -- ti re -- i!
}
 

staffViolin = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 60 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key e \minor
	\clef treble
	\relative c' {
		R2.*2 |
		r4 e8 fis g e |
		a fis h a g fis |
		e4 e e |
		fis fis fis |
		r8 h' h e, e d |
		cis g' g fis fis e |
		dis fis fis a, g fis |
		g fis' g h, a g |
		a g' a dis, e ais, |
		h gis a fis' e dis |
		e a, g4 fis8. e16 |
		e4 e'8 fis g e |
		a fis c4 a |
		fis h, g'~ |
		g fis8 e fis4 |
		h h h~ |
		h8 a a g a4 |
		a g h |
		a a a |
		g g h |
		h8 a a4 c |
		r8 h h a g fis |
		e e' e a, a g |
		fis fis' fis h, h a |
		g4 e'8 dis e4~ |
		e8 fis dis4. fis8 |
		h,4 h4. c8 |
		a4 fis'2~ |
		fis8 h, e4. d8 |
		c8 a' fis4. fis8 |
		g4 d e |
		a, a8 g a h |
		g4 g8 fis g e |
		d'2.~ |
		d4 c8 h a g |
		fis4 d r |
		d''2.~ |
		d8 c h a g fis |
		e2~ e8 e |
		fis4 d4. e8 |
		c4. c8 a' g |
		fis4. a8 d,4~ |
		d8 e a,4. g8 |
		g4 r r |
		r8 d' fis e fis d |
		e a, a'2~ |
		a4 g8 fis e fis |
		dis4 h r |
		h2.~ |
		h4 a8 g fis e |
		dis4 h''2~ |
		h2.~ |
		h8 a g fis e gis, |
		a4 ais ais |
		h8 fis h a g fis |
		e e' e a, a g |
		fis fis' fis h, a fis |
		g4 e' h'8 e, |
		e4 ais, cis |
		h dis dis |
		e e e |
		fis a, fis |
		g h h |
		g fis fis |
		e4 e8 fis g e |
		fis a h a g fis |
		e a a g fis e |
		dis h' fis' dis h4~ |
		h8 c fis,4. e8 |
		e4 h' h |
		c cis cis |
		d dis dis |
		e8 h' h e, e d |
		cis g' g fis fis e |
		dis fis fis a, g fis |
		g fis' g dis e ais, |
		h gis a fis' e dis |
		e a, g4 fis8. e16 |
		e4\fermata \bar "||" \time 4/4 \tempo 4=80 r^\markup{Allegro} r2 |
		r8 a16 a a8 d, r d'16 d d8 g, |
		r c16 c c8 fis, r h16 h e,8 e16 e |
		a16 d, e fis g a h c d8 a16 a d8 d, |
		r2 r8 a'16 a d8 d |
		r d16 cis h8 h, r d'16 cis h8 h, |
		r d'16 cis h8 h, r fis''16 fis dis8 h |
		r e16 e cis8 a r fis'16 fis d8 d, |
		R1*2 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
			#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key e \minor
	\clef treble
	\relative c' {
		r4 e8 fis g e |
		a fis h a g fis |
		g e e' dis e4~ |
		e8 fis dis4. e8 |
		e, e' e a, a g |
		fis fis' fis h, h a |
		g4 gis gis |
		a ais ais |
		h8 dis dis fis, e dis |
		e dis' e g, fis e |
		fis e' fis fis, g cis, |
		dis e fis a g fis |
		g fis e4 dis |
		e g e' |
		e,8 fis fis4 c |
		h h' h |
		a dis, fis~ |
		fis e g~ |
		g8 fis fis e fis4 |
		d' d d |
		dis dis dis |
		e h e, |
		e e a |
		fis fis fis |
		e' e, e' |
		fis h, fis' |
		h, h8 a h g |
		fis4 fis h |
		h8 a g fis g a |
		fis g a fis h4 |
		h h e, |
		e d a' |
		g h8 a h g |
		a4 a8 d, d'4 |
		g, g8 c, g' c |
		fis,4 d r |
		d'2.~ |
		d4 c8 h a g |
		fis4 d g |
		a d8 c h a |
		g4 c4. h8 |
		a4 h8 fis g4 |
		g fis8 g a4~ |
		a8 g fis e d4 |
		c fis fis |
		r8 d h' a h g |
		d' d, d'2~ |
		d8 d c h c a |
		e4 r r |
		h'2.~ |
		h4 a8 g fis e |
		dis4 h r |
		h''2.~ |
		h4 a8 g fis e |
		dis4 h gis |
		e fis fis |
		fis fis fis |
		c a' e' |
		a, h fis' |
		r8 h h e, e d |
		cis g' g fis fis e |
		dis4 fis, fis |
		g g g |
		dis' dis dis |
		e4. fis8 g4 |
		c, h h |
		g4 g8 fis e g |
		a fis fis h, h h' |
		h e, e e' e a, |
		a4 g8 fis e4 |
		e h dis |
		h e g |
		r8 e' e a, a g |
		fis fis' fis h, h a |
		g4 gis gis |
		a ais ais |
		h8 dis dis fis, e dis |
		e dis' e fis, g cis, |
		dis e fis a g fis |
		g e e4 dis |
		e\fermata \bar "||" \time 4/4 r r2 |
		r8 fis16 fis fis8 fis r fis16 fis g8 g |
		r a16 a fis8 fis r g16 g g8 e16 e |
		fis d e fis g a h c d8 fis,16 fis fis8 fis |
		r2 r8 fis16 fis fis8 fis |
		r g16 g fis8 fis r e16 e fis8 fis |
		r g16 g gis8 gis r cis16 cis fis,8 fis |
		r h16 h a8 e r a16 a h8 h |
		R1*2 |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key e \minor
	\clef alto
	\relative c' {
		R2.*3 |
		r4 h h |
		c cis cis |
		d dis dis |
		e e, e |
		a fis fis |
		h h h |
		h h h |
		h h h |
		h h h |
		e8 a, h4 h |
		e e8 d c h |
		a4 a a~ |
		a g8 fis g e |
		fis4 dis' dis |
		e e8 d c h |
		a4 d d |
		g, g' g |
		g8 fis fis e fis g |
		e4 e8 d c h |
		a4 a a |
		h dis dis |
		e a a, |
		a' fis dis |
		g g8 fis e4 |
		c'4 h h, |
		g' g e |
		c' c h |
		h h8 e, fis g |
		a4 a d, |
		d d g |
		fis fis a,8 fis' |
		e4 e e |
		a, h4. c8 |
		d4 fis g |
		a4 fis g |
		a fis8 d e fis |
		fis4 fis d' |
		h e, c' |
		d, d d |
		e fis4. g8 |
		a4. a8 h fis |
		g4 d d |
		h d8 c d g |
		g4 fis8 g a h |
		e,4 e8 d e fis |
		e fis g a h c |
		fis,4 g8 h a g |
		fis4 g g |
		fis dis g |
		fis dis g |
		fis dis g |
		fis e e |
		c fis fis |
		fis dis dis |
		g e e |
		d fis fis |
		e e gis |
		cis, cis ais' |
		fis h, h |
		h h h |
		h h h |
		h dis h8 e |
		e4 h dis |
		h c c |
		c fis, h |
		e c c |
		fis, fis g |
		c h h |
		g8 h'16 a g8 fis e d |
		c4 a' e8 a, |
		a4 h' e8 a, |
		a4 e h'8 e, |
		e8 cis cis4 cis8 fis |
		fis h h h, h4 |
		h h h |
		fis dis' h |
		h8 c h4 h |
		g4\fermata \bar "||" \time 4/4 r r2 |
		r8 d'16 d d8 d r d16 d e8 e |
		r fis16 fis d8 d r d16 d c8 c16 c |
		d d e fis g a h c d8 d,16 d d8 d |
		r2 r8 d16 d d8 d |
		r8 g,16 g d'8 d r8 e16 e d8 d |
		r h16 h cis8 cis r cis16 cis h8 h |
		r h16 h cis8 cis r d16 d fis8 fis |
		R1*2 |
	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Rinaldo}
	\set Staff.midiInstrument="oboe"
	\key e \minor
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R2.*11 |
			r4 h2~ |
			h~ h8 a |
			g[ fis] e2 |
			c'4 a fis |
			dis2 e4 |
			r a4. a8 |
			a4 g8[\melisma fis] g4\melismaEnd |
			r4 c4. e8 |
			c2 h4 |
			r h4. h8 |
			e4 e,2 |
			c'4 a fis |
			dis2 dis4 |
			R2.*3 |
			r4 fis4. fis8 |
			fis4 e2 |
			a4 a4. a8 |
			a4 g2 |
			r4 c4. c8 |
			c4\melisma h\melismaEnd r8 e |
			e[ a,] a4 r8 d |
			d[ g,] g4 c~ |
			c h a8[ g] |
			fis[ e] d2 |
			r4 d'2~\melisma |
			d4 c8[ h]\melismaEnd a[ g] |
			fis[ e] d4 r |
			r a'4. a8 |
			d,4 g2 |
			r4 c4. c8 |
			c4. d8 h[ a] |
			h[ g] fis2 |
			g4 h4. h8 |
			h4 a2 |
			r4 c4. c8 |
			c4 h2 |
			r4 h e, |
			dis h r |
			r h'2~ |
			h4 a8[ g fis e] |
			dis4 h r |
			r h'4. h8 |
			c4 cis4. cis8 |
			d4 dis4. dis8 |
			e4 e, a~ |
			a fis h |
			g gis2 |
			a4 ais2 |
			h2.~\melisma |
			h~ |
			h~ |
			h4. a8[ g fis]\melismaEnd |
			g[ e] dis2 |
			e4 c' c |
			c h r |
			r e e, |
			h'4. a8 g[ fis] |
			g[ e] dis2 |
			e2. |
			R2.*8 |
			r4 \bar "||" \time 4/4 r8 g16 a h8 g d' c16[ h] |
			a8 d, r a'16 a d8 g, r g16 g |
			c8 fis, r fis16 fis h8 e, r e16 e |
			a d, e fis g a h c d8 a r d16[ cis] |
			h[ a] g[ fis] e4 d r8 d'16 cis |
			h[ ais] h8 r16 cis[ d] cis h[ ais] h8 r d16 cis |
			h16[ ais] h[ ais] h[ d cis] h ais[ gis] fis8 r h16 h |
			g8 e r a16 a fis8 d r d'16[ cis] |
			h[ ais] h[ cis] ais4 h4. a16[ g] |
			fis[ e] fis[ g] cis,8.[ h16] h4 r |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Bassi"
	\set Staff.midiInstrument="harpsichord"
	\key e \minor
	\clef bass
	\relative c {
		R2.*23 |
		r4 h h |
		c cis cis |
		d dis dis |
		e8 h e fis g e |
		a8 fis h a g fis |
		g e \clef tenor e' dis e4~ |
		e8 fis dis4. e8 |
		e4 e8 d c h |
		a4 \clef bass e' d, |
		g g8 fis g e |
		fis4 fis8 e fis d |
		e4 e8 d e c |
		d4 g g, |
		d' d d |
		d d d |
		d d d |
		d d' d |
		d c8 h c4 |
		c4 h8 a h4 |
		h a8 g fis e |
		d4 fis g |
		c, d d, |
		g g'4. h,8 |
		d4 d'4. d,8 |
		a'4 a,4. c8 |
		e h e fis g e |
		h'4 e, g |
		h dis, e |
		h dis e |
		h' dis e |
		h dis, e |
		h' e, e |
		a fis fis |
		h h, h |
		c cis cis |
		d dis dis |
		e e e |
		a fis fis |
		h,8 fis' fis a, a g |
		g e' e g, g fis |
		fis fis' fis a, a g |
		g4 dis' e |
		a, h h |
		e, e' e |
		dis d d |
		cis c c |
		h dis e |
		a, h h |
		e e e |
		a, a' a |
		d, h h |
		e e e |
		a4 fis fis |
		h h h |
		h h h |
		h, h h |
		e8 a h4 h, |
		e\fermata \bar "||" \time 4/4 r8 e16 fis g8 e h c |
		d d16 d c8 c r h16 h e8 e |
		r8 a,16 a d8 d r g,16 g c8 c16 c |
		fis, d' e fis g a h c d8 d,16 d h8 fis' |
		g d a' a, d d16 d h8 h |
		r e16 e fis8 fis r g16 g d8 d |
		r e16 e eis8 eis fis ais16 ais h8 dis,16 dis |
		e8 g16 g a8 cis,16 cis d8 d'16 d h8 fis |
		g e fis fis, g' fis16 e d8 e |
		fis h, fis' fis, h4 r |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViolinII
		\staffViola
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

