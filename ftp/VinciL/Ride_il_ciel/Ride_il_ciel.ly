% Created on Fri Nov 23 23:36:51 CET 2007
\version "2.10.33"

\header {
	title = "Ride il ciel per me sereno"
	composer = "Leonardo Vinci (1690-1730)"
	mutopiatitle = "Ride il ciel per me sereno, Aria from Siface"
	mutopiacomposer = "VinciL"
	mutopiainstrument = "Voice (Soprano), String Ensemble, Basso Continuo"
	source = "Conservatorio S. Pietro a Majella, DM02032202163"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/12/02-1179"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Ri -- de_il ciel per me se -- re -- no tut -- to è pie -- no di dol -- cez -- za il ven -- to el mar e tu bar -- ba -- ro_e spie -- ta -- to vuoi ch'io va -- da a nau -- fra -- gar a nau -- fra -- gar Ri -- de_il ciel per me se -- re -- no e tu bar -- ba -- ro e tu spie -- ta -- to vuoi ch'io va -- da à nau -- fra -- gar ri -- de_il ciel per me se -- re -- no e tu bar -- ba -- ro e tu spie -- ta -- to vuoi ch'io  va -- da à nau -- fra -- gar à nau -- fra -- gar.
mà se sde -- gno ti con -- si -- glia d'u -- na fi -- glia sven -- tu -- ra -- ta pas -- sa_il se -- no_el san -- gue spar -- gi deh m'in -- vo -- la al mio pe -- nar deh m'in -- vo -- la al mi -- o pe -- nar
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key g \major
	\clef treble
	\relative c'' {
		g2 d' |
		g4. fis16 e d8 c h a |
		h16 a g8 r d' e16 e fis g a a, h c |
		d d e fis g g, a h c c h a h g d' h |
		h8 a r a h16 d c e d8 r |
		a16 c h d c8 r h16 d c e d8 g |
		a,16 c h d c8 r h16 d c e d8 g, |
		fis16 a g h a c h d c e d fis e g fis a |
		g h a g g h a g g h a g g h a g |
		g h a g fis e d c \appoggiatura c8 h a16 g \appoggiatura h8 a4 |
		g8 d g,4 g'2 |
		d' g4. fis16 e |
		d8 c h a h16 a g4 d'8 |
		e fis4 g8 d fis4 g8 |
		c,8 h4 a8 h d4 g8 |
		d c4 h8 h a a a |
		d,4 a' d4. cis16 h |
		a8 g fis e fis16 e d8 r4 |
		d'8 d d d d d d d |
		e e e e e e e e |
		fis fis fis fis e e e e |
		a g4 fis8 e e e e |
		fis fis fis fis e e e e |
		a g4 fis8 e e e e |
		a a a a a h, h d |
		g g g g g a, a d |
		fis fis fis fis fis g, g h |
		e e e e a, a a a |
		a a a a a a a a |
		a a a a a r r4 |
		d8 r d r d r r4 |
		d8 r d r g g fis fis |
		e e d d cis e e e |
		e e e e e e e e |
		e e e e e e e e |
		e e e e fis fis fis fis |
		fis d' d d d cis16 h a8 g |
		fis4 e d2 |
		a' d4. cis16 h |
		a8 g fis e fis16 a g h a8 d, |
		cis16 e d fis e8 g, fis16 a g h a cis h d |
		cis a d a e' a, fis' a, g' a, a' a, h' a, cis' a, |
		d' cis h a g fis e d a4 e' |
		d8 a d,4 d2 |
		a' d4. a'8 |
		a c, c c c c h h |
		g'16 d h g g' d h g g'4 g |
		r8 d c h h4 a |
		d16 a fis d d' a fis d d' a fis d d' a fis d |
		fis'8 r fis r fis r r4 |
		fis8 r fis r fis r r4 |
		c8 a' c, c c a' c, c |
		c a' c, c c a' c, c |
		h d d d d d d d |
		e e e e e e e e |
		fis fis fis fis a a a a |
		d d, d d d d d d |
		d d d d d d d c |
		h16 d c e d8 g a,16 c h d c8 a' |
		h, a16 h c8 a h4 a |
		g'16 h a g g h a g g h a g g h a g |
		g h a g g h a g g h a g g h a g |
		g h a g g h a g g d h g g' d h g |
		e'4 d r8 d c h |
		h h a a a g g g |
		g a a a a h h h |
		h c c c c d d d |
		d d d d d d d d |
		d d d d d d d d |
		h16 d c e d8 g a,16 c h d c8 a' |
		h, r r4 d8 r r4 |
		g8 r r4 h8 r r4 |
		g8 fis16 e d8 c h4 a |
		g16 h' a g fis e d c h h' a g fis e d c |
		h2\fermata a4 r |
		g2 d' |
		g4. fis16 e d8 c h a |
		h16 d c e d8 r fis,16 a g h a8 r |
		h16 d c e d8 g, fis16 a g h a c h d |
		c e d fis e g fis a g h a g g h a g |
		g h a g g h a g g h a g fis e d c |
		h8 a16 g a4 g8 d g,4 \bar "||" |
		d''8 d d d d d c c |
		f f e e d d d d |
		g16 d h g g' d h g e'4 d |
		g16 d h g g' d h g e'4 d |
		g8 h, h h c c c c |
		d d d d d c c c |
		c c c c c a' g f |
		e e d d c c c c |
		d d d d e e f f |
		g g a a d, d d d |
		d2 e8 d c fis, |
		g2\fermata c,4 r8 e' |
		d16 e fis g a c, h c h d c e d8 r |
		a16 c h d c8 r h16 d c e d8 g |
		a,16 c h d c8 a' \appoggiatura c, h a16 g \appoggiatura c8 h a16 g |
		g4 a g8 d g,4 |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key g \major
	\clef treble
	\relative c'' {
		g2 d' |
		g4. fis16 e d8 c h a |
		h16 a g8 r d' e16 e fis g a a, h c |
		d d e fis g g, a h c c h a h g d' h |
		h8 a r a h16 d c e d8 r |
		a16 c h d c8 r h16 d c e d8 g |
		a,16 c h d c8 r h16 d c e d8 g, |
		fis16 a g h a c h d c e d fis e g fis a |
		g h a g g h a g g h a g g h a g |
		g h a g fis e d c \appoggiatura c8 h a16 g \appoggiatura h8 a4 |
		g8 d g,4 h'8 h h h |
		a a a a g g g g |
		a a a a d, h' h h |
		c c c c h h h h |
		g g d d d h' h h |
		h a4 g8 g fis fis fis |
		d4 a' d4. cis16 h |
		a8 g fis e fis16 e d8 fis g |
		a a a a h h h h |
		h h h h cis cis cis cis |
		d d d d cis cis cis cis |
		fis e4 d8 cis cis cis cis |
		d d d d cis cis cis cis |
		fis e4 d8 cis cis cis cis |
		d d d d h h h h |
		h h h h a a a a |
		a a a a g g g g |
		g g g g fis fis fis fis |
		e e e e fis fis fis fis |
		e e e e fis r r4 |
		d'8 r d r d r r4 |
		d8 r d r cis cis d d |
		a a d, gis a cis cis cis |
		cis cis cis cis cis cis cis cis |
		cis cis cis cis cis cis cis cis |
		cis cis cis cis d d d d |
		d d' d d d cis16 h a8 d, |
		d4 cis d2 |
		a' d4. cis16 h |
		a8 g fis e fis16 a g h a8 d, |
		cis16 e d fis e8 g, fis16 a g h a cis h d |
		cis a d a e' a, fis' a, g' a, a' a, h' a, cis' a, |
		d' cis h a g fis e d a4 e' |
		d8 a d,4 a'8 a a a |
		a a a a a a a a |
		a a a a a a g g |
		g'16 d h g g' d h g e'4 d |
		r8 h a g g4 fis |
		d'16 a fis d d' a fis d d' a fis d d' a fis d |
		d'8 r d r d r r4 |
		a8 r a r a r r4 |
		a8 c a a a c a a |
		a c a a a c a a |
		g h h h g g g g |
		g g g g a a a a |
		a a a a fis' fis fis fis |
		g h, h h a a a a |
		h h h h a a a a |
		h16 d c e d8 g a,16 c h d c8 a' |
		h, a16 h c8 a g4 fis |
		g'16 h a g g h a g g h a g g h a g |
		g h a g g h a g g h a g g h a g |
		g h a g g h a g g d h g g' d h g |
		e'4 h r8 h a g |
		g g fis e d d d d |
		e e e e fis fis fis fis |
		g g g g a a a a |
		h h h h a a a a |
		h h h h a a a a |
		h16 d c e d8 g a,16 c h d c8 a' |
		h, r r4 h8 r r4 |
		h8 r r4 d8 r r4 |
		g8 fis16 e d8 c g4 fis |
		g16 g' fis e d c h a g g' fis e d c h a |
		g2\fermata fis4 r |
		g2 d' |
		g4. fis16 e d8 c h a |
		h16 d c e d8 r fis,16 a g h a8 r |
		h16 d c e d8 g, fis16 a g h a c h d |
		c e d fis e g fis a g h a g g h a g |
		g h a g g h a g g h a g fis e d c |
		h8 a16 g a4 g8 d g,4 \bar "||" |
		h'8 h h a g g g g |
		a a a a h h h h |
		g'16 d h g g' d h g c4 h |
		g'16 d h g g' d h g c4 h |
		h8 d d d e e e e |
		f f f f f e e f |
		g g g g g f e d |
		c c h h h a a a |
		a g g g g g f f |
		e c' c c c h h h |
		h2 c8 h a fis |
		g2\fermata c,4 r8 e' |
		d16 e fis g a c, h c h d c e d8 r |
		a16 c h d c8 r h16 d c e d8 g |
		a,16 c h d c8 a' \appoggiatura c, h a16 g \appoggiatura c8 h a16 g |
		g4 a g8 d g,4 |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key g \major
	\clef alto
	\relative c' {
		h8 h h h a a' a a |
		g e d c h a g fis |
		g a h h c c e e |
		d d d d c fis g g, |
		d' e fis d g a h g |
		fis g a d, g a h g |
		fis g a d, g, a h c |
		d e fis g a h c d |
		h h a a g g fis e |
		d d d a' g4 fis |
		g r d8 d d d |
		d d d d e e e e |
		fis fis fis fis g g g g |
		g g g g g g g g |
		e e fis fis g g g g |
		h, h c c d d d d |
		d d a' a d d d cis16 h |
		a8 g fis e d d d e |
		fis fis fis fis g g g g |
		g g g g a a a a |
		a a a a a a a a |
		a a a a a a a a |
		a a a a a a a a |
		a a a a a a a g |
		fis fis fis fis g g g g |
		e e e e fis fis fis fis |
		d d d d e e e e |
		cis cis cis cis d d d d |
		cis cis cis cis d d d d |
		cis cis cis cis d r r4 |
		d'8 d cis cis h r r4 |
		h8 a g fis e e d d |
		cis cis h h a a' a a |
		g g g g g g g g |
		g g g g g g g g |
		g cis, e e d d cis cis |
		h h' a g a g a h |
		a a a, a fis' fis fis fis |
		e e e e d h' a g |
		fis e d cis d e fis g |
		a h, cis a d e fis g |
		a h cis d e, fis g e |
		fis g a h a4 cis |
		d8 a d,4 fis8 fis fis fis |
		fis fis fis fis fis fis fis fis |
		fis fis a d, d d d d |
		h g h g c4 h |
		r8 h c cis d d d d |
		d d d d d d d d |
		a' r a r a r r4 |
		d,8 r d r d r r4 |
		d8 d d d d d d d |
		d d d d d d d d |
		g g g g h, h h h |
		c c c c cis cis cis cis |
		d d d d d d d d |
		g g g g fis fis fis fis |
		g g g g fis fis fis fis |
		g a h g fis g a d, |
		d d g e d d d d |
		g g fis fis e e d c |
		h g' g fis e e d c |
		d d d d d d h g |
		g'4 g r8 h, c cis |
		d d d c h h h h |
		c c c c d d d d |
		e e e e fis fis fis fis |
		g g g g fis fis fis fis |
		g g g g fis fis fis fis |
		g a h g fis g a d, |
		g r r4 g8 r r4 |
		d8 r r4 g8 r r4 |
		h,8 c d e d d d d |
		h4 r h8 c d e |
		d2~ d |
		h8 h h' h a a a a |
		g e d c h a g fis |
		g a h c d e fis d |
		g, a h c d e fis g |
		a h c d h h a a |
		g g fis e d d d e |
		d4 fis g8 d g,4 \bar "||" |
		g'8 g f f e e e e |
		f f fis fis g g g g |
		g g g g g g g g |
		g g g g g g g g |
		g g g f e e e e |
		h h h h c c c d |
		e e e e f f f f |
		g g g, g a a a a |
		h' h h h c c, d d |
		e e f f g g g g |
		g g g g c h a fis |
		g2 c,4 r8 g' |
		g g fis fis g a h g |
		fis g a d, g a h g |
		fis g a d, g d e c |
		d4 fis g8 d g,4 |
	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName="Ismene"
	\set Staff.midiInstrument="oboe"
	\key g \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*10 |
			r2 g |
			d' g4. fis16[ e] |
			d8[ c] h[ a] h16[ a] g8 r4 |
			e'8 fis4 g8 d16[ c] h8 r4 |
			c8 h4\melisma a8\melismaEnd h16[ a] g8 r g |
			d' c4 h8 h[ a] r4 |
			d,4 a' d4. cis16[ h] |
			a8[ g] fis[e] fis16[ e] d8 r4 |
			a''4 a, h16[ a] g8 r d' |
			g16[ fis e8] d16[ cis h8] cis16[\melisma a h a] a4 |
			d16[ a h a] a4 e'16[ a, h a] a4 |
			fis'8 e4 d8 cis16[ a h a] a4 |
			d16[ a h a] a4 e'16[ a, h a] a4 |
			fis'8 e4 d8 cis16[ a h a] a4 |
			a'16[ g fis e d cis h a] h[ g a g] g4\prall |
			g'16[ fis e d cis h a g] a[ fis g fis] fis4\prall |
			fis'16[ e d cis h a g fis] g[ e fis e] e4 |
			e'16[ d cis h] a8[ g] fis16[ g a a] a4 |
			e'16[ d cis h] a8[ g] fis16[ g a a] a4 |
			e'16[ d cis h] a8[ g] fis16[ d e fis] g[ a h cis] |
			d[ d e d] d[ d e d] d[ d, e fis] g[ a h cis] |
			d[ d e d] d[ d e d] g4 fis |
			e d cis e |
			r8 cis16[ d] e[ cis h a] g4 e' |
			r8 cis16[ d] e[ cis h a] g2 |
			g' fis16[ e d d] d4\prall |
			fis16[ e d d] d4\prall d8[ cis16 h] a8\melismaEnd g |
			fis16[ e d8] e4 d r |
			R1*5 |
			r2 d |
			a' d4. a'8 |
			a16[ g fis8] e16[ d c8] c4 h |
			r4 d8 g, e'8. d16 d4 |
			r8 g c, h h4 a |
			r2 d4 d |
			d16[\melisma cis fis e] d[ cis fis e] d[ cis h a] g[ fis e d] |
			d'[ cis fis e] d[ cis fis e] d[ cis h a] g[ fis e d] |
			c'[ h e d] c4 c16[ h e d] c4 |
			c16[ h e d] c4 c16[ c h a] c[ c h a] |
			h8[ a16 g] d'4 r8 d16[ c] h[ a g fis] |
			\appoggiatura fis8 e[ d16 c] e'4 r8 e16[ d] cis[ h a g] |
			\appoggiatura g8 fis[ e16 d] a''4 r8 a16[ g] fis[ e d c] |
			h[ c d d] d4 a'16[ g fis e] d8[ c] |
			h16[ c d d] d4 a'16[ g fis e] d[ c h a] |
			h[ d c e] d4 a16[ c h d] c4 |
			h8[ a16 h]\melismaEnd c8 h16[ a] g4\melisma a8.\melismaEnd g16 |
			g4 r g' g, |
			g r8 d' g4 g, |
			g8[ fis] g4 r d'8 g, |
			e'8. d16 d4 r8 g c, h |
			h4 a d r8 d, |
			e[\melisma e'16 d] c[ h a g] fis8[ fis'16 e] d[ c h a] |
			g8[ g'16 fis] e[ d c h] a8[ a'16 g] fis[ e d c] |
			h[ c d d] d4 a'16[ g fis e] d8[ c] |
			h16[ c d d] d4 a'16[ g fis e] d[ c h a] |
			h[ d c e] d4 a16[ c h d] c4 |
			h16[ g a h] c[ d e fis] g8[ d h g] |
			h16[ g a h] c[ d e fis] g[ g, a h] c[ d e fis]\melismaEnd |
			g8[ fis16 e d8] c h16[ a g8] a4 |
			g2 r4 r8 g |
			g2\melisma a4.\melismaEnd g8 |
			g2 r |
			R1*6 \bar "||"
			g4 d' g4. f16[ e] |
			d4 c h16[ a] g8 r4 |
			r d'8 g, e'4 d |
			r d8 g, e'4 d |
			r4 d8 g, c4. h16[ c] |
			d16[ c h8] a16[ g f8] f4 e |
			g4. b8 a[ f'] e d |
			c4. c8 c16[\melisma c d c] c4 |
			d16[ d e d] d4 e8[ d16 c] f8[ e16 d] |
			g8[ f16 e] d[ c h a] g2\melismaEnd |
			\grace {d'16[ e]} f4. e16[ d] e8[ d] c c |
			c4 d8. c16 c2 |
			R1*4 |
		}
	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key g \major
	\clef bass
	\relative c' {
		g8 g g g fis fis fis fis |
		e e d c h a g fis |
		g a h g c c c c |
		h h h h a a g g |
		d' e fis d g a h g |
		fis g a d, g a h g |
		fis g a d, g, a h c |
		d e fis g a h c d |
		g, g fis fis e e d c |
		h h h c d4 d, |
		g r g'8 g g g |
		fis fis fis fis e e e e |
		fis fis fis fis g g g g |
		g g g g g g g g |
		e e fis fis g g g g |
		h, h c c d d d d |
		d d a' a d d d cis16 h |
		a8 g fis e d d d e |
		fis fis fis fis g g g g |
		g g g g a a a a |
		a a a a a a a a |
		a a a a a a a a |
		a a a a a a a a |
		a a a a a a a g |
		fis fis fis fis g g g g |
		e e e e fis fis fis fis |
		d d d d e e e e |
		cis cis cis cis d d d d |
		cis cis cis cis d d d d |
		cis cis cis cis d r r4 |
		d'8 d cis cis h r r4 |
		h8 a g fis e e d d |
		cis cis h h a a' a a |
		a a a a a a a a |
		a a a a a a a a |
		a a a a d d cis cis |
		h h a g fis e fis g |
		a a a, a d d' d d |
		cis cis cis cis h h a g |
		fis e d cis d e fis g |
		a h, cis a d, e fis g |
		a h cis d e fis g a |
		d, e fis g a4 a, |
		d r d8 d d d |
		d d d d d d d d |
		d d d d g g g g |
		g, g g g c4 h |
		r8 h c cis d d d d |
		d d d d d d d d |
		d r d r d r r4 |
		d8 r d r d r r4 |
		d8 d d d d d d d |
		d d d d d d d d |
		g g g g h, h h h |
		c c c c cis cis cis cis |
		d d d d d d d d |
		g g g g fis fis fis fis |
		g g g g fis fis fis fis |
		g a h g fis g a d, |
		g g, e' c d d d d |
		g g fis fis e e d c |
		h g' g fis e e d c |
		h h h h g g g g |
		c4 g' r8 h, c cis |
		d d d c h h h h |
		c c c c d d d d |
		e e e e fis fis fis fis |
		g g g g fis fis fis fis |
		g g g g fis fis fis fis |
		g a h g fis g a d, |
		g r r4 g8 r r4 |
		g8 r r4 g8 r r4 |
		g,8 a h c d d d d |
		g,4 r g8 a h c |
		d1 |
		g8 g g g fis fis fis fis |
		e e d c h a g fis |
		g a h c d e fis d |
		g, a h c d e fis g |
		a h c d g, g fis fis |
		e e d c h h h c |
		d4 d, g r \bar "||" |
		g'8 g f f e e e e |
		f f fis fis g g g g |
		g g g g g g g g |
		g g g g g g g g |
		g g g f e e e e |
		h h h h c c c d |
		e e e e f f f f |
		g g g g a a a a |
		h h h h c c, d d |
		e e f f g g g g |
		g g g g c h a fis |
		g2 c,4 r8 c' |
		h h a a g a h g |
		fis g a d, g a h g |
		fis g a d, g g, e' c |
		d4 d, g r |
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

