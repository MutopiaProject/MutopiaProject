\version "2.12.2"

\header {
	title = "Parto ti lascio"
	composer = "Nicola Porpora (1686-1768)"
	mutopiatitle = "Parto ti lascio, Aria from Il Germanico"
	mutopiacomposer = "PorporaN"
	mutopiainstrument = "Soprano, Strings, Basso Continuo"
	date = "1732"
	source = "Biblioteca Statale del Monumento Nazionale di Montecassino - IT-FR0084 - 1-A-16"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"

 footer = "Mutopia-2009/11/30-1725"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Par -- to ti la -- scio ti la -- scio_ò Ca -- ra ma nel par -- ti -- re_io sen -- to trop -- po cru -- del tor -- men -- to non sa -- rà tan -- to_a -- ma -- ra non sa -- rà tan -- to_a -- ma -- ra La pe -- na del mo -- rir tan -- to a -- ma -- ra La pe -- na La pe -- na del mo -- rir. Par -- to ti la -- scio ò Ca -- ra ti la -- scio ò Ca -- ra ma nel par -- ti -- re_io sen -- to trop -- po cru -- del tor -- men -- to non sa -- ra tan -- to_a -- ma -- ra La pe -- na del mo -- rir La pe -- na del mo -- rir.
Per -- fi -- de Per -- fi -- de stel -- le_in -- gra -- te se non vo -- le -- te_oh di -- o ha -- ver di me pie -- ta -- de non da -- te_all' I -- dol mi -- o_all' I -- dol mi -- o si bar -- ba -- ro mar -- ti si bar -- ba -- ro mar -- tir.
}

staffViolinI = \new Staff  {
	\time 12/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 50 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key d \minor
	\clef treble
	\relative c'' {
		d8. f32 e d8 a a' d, \appoggiatura d cis4~ cis16 d32 e d8 f a |
		g16 fis g h, cis d cis d e g, f e f a' g f e d cis16. d32 d8.\trill cis32 d |
		e8 a, a' \appoggiatura d, cis4.\trill d8 a a' \appoggiatura d, cis4\trill cis16 d32 e |
		d16 e fis g a b c es, d c b a b a' g f e d cis b' a g f e |
		d'8. c32 b a8 \appoggiatura a8 b4 d,8 a8.\trill cis32 h a8 a' f d |
		\appoggiatura cis d8. a32 g f e d16 e'4~\trill e16 d32 e d4 a8 d,4 r8 |
		r4 a'8 a d f r4 e8 e gis a |
		r4 f8 f4 fis8\trill g4 g8 g4 gis8 |
		r4 e8 e gis a r4 cis,8 cis4 cis8 |
		d4 d8 d4 d8 g4 g8 g4 g8 |
		f4 f8 f16 e f g a b c8 c c f, f f |
		f f fis g16 fis g a b c d8 g, g g g g |
		g g g g g g f f f g g g |
		g g g a a a b b b g g g |
		a a a b b b a a a g g g |
		a c, c d d d c c c e e e |
		f c c c c c c a' a a a a |
		a a a a a a d, d d c4 r8 |
		a'16 b c4 a16 b c4 f,16.\trill g32 a4 f16.\trill g32 a4 |
		d,16 c' b a g f e f g b, a g f'8.\trill e32 d c8 \appoggiatura c d4 b'8 |
		a32 g f4 c16 g'4.\trill f4 c8 f,4 r8 |
		r4 c'8 c f a r4 d,8 d f as |
		r4 g8 g h c r4 e,8 e g b |
		r4 a8 d,16 cis d e f g a g a b c8~ c16 es, d c b a |
		b d es fis g a b a b c d d, f8 f f e e e |
		r16 gis, a h cis d cis d e fis gis a e8 e e e e e |
		d d d d d d d d d d d d |
		g g g g g g f f f f f f |
		e e e e e e f f f f f f |
		a a a b b b e, e e d d d |
		d d d cis cis cis d d d a' a a |
		a a a a a a b b b b b b |
		f4. r4\fermata r8 d8. f32 e d8 a a' d, |
		\appoggiatura d cis4~ cis16 d32 e d8 f a g16 fis g h, cis d cis d e g, f e |
		f a' g f e d cis d d8.\trill \times 2/3 {cis32 d e} e8 a, a' \appoggiatura d, cis4.\trill |
		d8 a a' \appoggiatura d, cis4~\trill cis16[ d32 e] d16 e fis g a b c es, d c b a |
		b a' g f e d cis b' a g f e d'8. c32 b a8 \appoggiatura a b4 d,8 |
		a8.\trill cis32 h a8 a' f d \appoggiatura cis d8. a32 g f e d16 e'4~\trill e16 d32 e |
		d4 r8\fermata \bar "||" \tempo 4=70 a'4 a8 a4 a8 c4 c,8 |
		r16 c d e f g a b c es, d c d8 b' b b b b |
		b a a a a a b b b b b b |
		b a a as as as a a a a a a |
		g g g g d d es es es es es es |
		d d d d d d h h h h h h |
		c c c es es es d d d d d d |
		g, g g g' g g a a a a a a |
		a a a a a a a c, c c4 r8 |
		R1.\fermata \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key d \minor
	\clef treble
	\relative c'' {
		d8. f32 e d8 a a' d, \appoggiatura d cis4~ cis16 d32 e d8 f a |
		g16 fis g h, cis d cis d e g, f e f a' g f e d cis16. d32 d8.\trill cis32 d |
		e8 a, a' \appoggiatura d, cis4.\trill d8 a a' \appoggiatura d, cis4\trill cis16 d32 e |
		d16 e fis g a b c es, d c b a b a' g f e d cis b' a g f e |
		d'8. c32 b a8 \appoggiatura a8 b4 d,8 a8.\trill cis32 h a8 a' f d |
		\appoggiatura cis d8. a32 g f e d16 e'4~\trill e16 d32 e d4 a8 d,4 r8 |
		r4 f8 f a d r4 a8 a c e |
		r4 f8 f4 fis8\trill g4 g8 g4 gis8 |
		r4 cis,8 cis8.\trill d16 e8 r4 e8 e4 e8 |
		d4 b'8 b4 b,8 c4 c8 c4 c8 |
		c4 c8 f16 e f g a b c8 f, f c c c |
		f, f' fis g16 fis g a b c d8 d, d d d d |
		c c c e e e d d d d d d |
		e e e f f f f f f e e e |
		f c c d d d c c c e e e |
		f a a b b b a a a g g g |
		a a, a a a a a f' f f f f |
		f f f f f f f f f c4 r8 |
		f16 g a4 f16 g a4 d,16.\trill e32 f4 d16.\trill e32 f4 |
		d16 c' b a g f e f g b, a g f'8.\trill e32 d c8 \appoggiatura c d4 b'8 |
		a32 g f4 c16 g'4.\trill f4 c8 f,4 r8 |
		r4 a8 a c f r4 h,8 h8.\trill c16 d8 |
		r4 c8 c es g r4 cis,8 cis8.\trill d16 e8 |
		r4 a8 d,16 cis d e f g a g a b c8~ c16 es, d c b a |
		b d es fis g a b a b c d d, d8 d d d d d |
		r16 gis, a h cis d cis d e fis gis a cis,8 cis cis cis cis cis |
		d d d b b b h h h h h h |
		c c c cis cis cis d d d d d d |
		a' a a cis, cis cis d d d d d d |
		d d d d d d cis cis cis a' a a |
		g g g e e e d d d e e e |
		<d f> <d f> <d f> <d f> <d f> <d f> <d f> <d f> <d f> <d e> <d e> <d e> |
		d4. r4\fermata r8 d8. f32 e d8 a a' d, |
		\appoggiatura d cis4~ cis16 d32 e d8 f a g16 fis g h, cis d cis d e g, f e |
		f a' g f e d cis d d8.\trill \times 2/3 {cis32 d e} e8 a, a' \appoggiatura d, cis4.\trill |
		d8 a a' \appoggiatura d, cis4~\trill cis16[ d32 e] d16 e fis g a b c es, d c b a |
		b a' g f e d cis b' a g f e d'8. c32 b a8 \appoggiatura a b4 d,8 |
		a8.\trill cis32 h a8 a' f d \appoggiatura cis d8. a32 g f e d16 e'4~\trill e16 d32 e |
		d4 r8\fermata \bar "||" c4 c8 c4 c8 g'4 g8 |
		r16 c, d e f g a b c es, d c b8 d d d d d |
		d c c c c c d d d d d d |
		d c c c c c d d d d d d |
		h h h h h h c c c c c c |
		h h h d h h d d d d d d |
		g, g g g g g g g g h h h |
		c c c c c c c c c cis cis cis |
		d d d dis dis dis e a, a a4 r8 |
		R1.\fermata |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key d \minor
	\clef alto
	\relative c' {
		f4 f8 e4 gis8 a4 b8 a4 d,8 |
		e4 e8 e4 cis8 d4 a'8 a4 gis8 |
		a8 cis, e e4 b'8 a d, f e4 b'8 |
		a a a fis fis fis g g g e e e |
		a a a d, d d cis cis cis d d b' |
		f f f cis cis cis d4 r8 r4 r8 |
		r4 d8 d4 a8 r4 e'8 e4 c8 |
		r4 d8 d4 d8 d4 d8 e4 e8 |
		r4 a8 a e cis r4 a'8 a4 a8 |
		a4 g8 g4 f8 e4 e8 e4 e8 |
		f4 f8 c c c f f f f f f |
		f d d d d d g g g h, h h |
		c c c c c c c c c b b b |
		b b b a a a g g g c c c |
		f f f f f f f f f c c c |
		f f f f f f f f f c c c |
		f f f f f f f f f e e e |
		d d d c c c b b b c c c |
		f f f e e e d d d c c c |
		g' g g g g g c, c f f f f |
		f f f e e e f4 c8 f,4 r8 |
		r4 f'8 f4 c8 r4 d8 d4 d8 |
		r4 es8 es4 es8 r4 g8 g4 g8 |
		r4 d8 a' a a c, c c a' a a |
		d, d d g g g h h h h h h |
		e, e e e e e a a a a a a |
		a a a g g g f f f f f f |
		e e e e e e a, a a a' a a |
		cis, cis cis a a a d d d b b b |
		f' f f g g g g g g f f f |
		g g g a a a b b b cis, cis cis |
		d d d c c c b b b g g g |
		a4. r4\fermata r8 f' a f e4 gis8 |
		a e b' a f d e4 e8 e4 cis8 |
		d4 a'8 a4 gis8 a cis, e e g b |
		a d, f e g b a a a fis fis fis |
		g g g e e e a a a d, d d |
		cis cis cis d d b' f f f cis cis cis |
		d4 r8\fermata \bar "||" f4 f8 f4 f8 e4 e8 |
		f8 f f f f f f f f f f f |
		f f f f f f f f f f f f |
		f f f f f f f f f f f f |
		f f f f f f fis fis fis fis fis fis |
		g g g g g g f f f f f f |
		es es es c c c h h h g g g |
		es' es es e e e f f f f f f |
		f f f f f f e e e e4 r8 |
		R1.\fermata |
	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName="Arminio"
	\set Staff.midiInstrument="oboe"
	\key d \minor
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1.*6 |
			d4 a8 r4 f'8 e4 a,8 r4 a8 |
			d2.~\melisma d4 e16[ f] e4\melismaEnd d8 |
			cis16[ h] a4 r4 e'8 e4 a,8 a4 a8 |
			b8[ a] b b4.~ b8 g'16[ f] e[ d] c4 b8 |
			b[ gis] a r4 c8 c[ b16 a] g[ f] f8[ c'] es |
			es16[ cis] \appoggiatura cis d4 r4 d8 d[ c16 h] a[ g] g8[ d'] f |
			f4 e8 r4 c8 d4.~\melisma d4 b'8 |
			c,4.~ c4 a'8 b,4.~ b4 g'8 |
			a,8\melismaEnd \appoggiatura g f4 d'8 \appoggiatura c b4 c8 \appoggiatura b a4 b8 \appoggiatura a g4 |
			a16[\melisma f g a b c] d32[ c b16] e8.[ f16] c32[ b a16] e'8.[ f16] b,32[ a g16] e'8.[ f16] |
			a,8 \appoggiatura g8 f4 c'8 \appoggiatura b a4 f'8\melismaEnd f f f f f |
			f16[\melisma g] a4 f16[ g] a4~ a8.\melismaEnd g32[ f e d c b] a8 g4\trill |
			f4. r4 r8 r2. |
			R1.*2 |
			c'4 f,8 r4 f'8 f4 h,8 r4 h8 |
			c16[ h] c4 r4 g'8 cis,4 cis8 r4 cis8 |
			d16[ cis] d4 r4 a8 a[ c] es es[ d] c |
			b16[ a] g4 d'4.~ d8 e f \appoggiatura f e4 d8 |
			cis16[ h] a4 r4 e'8 e4 a,8 a4 a8 |
			b4.\melisma d16[ c] b4 h16.[ a32 h16 c d e] f32[ e d16] c8[ h] |
			c16.[ h32 c16 d e f] g32[ f e16] d8[ cis] d a4\trill f'8 \appoggiatura e8 d4 |
			e16[ cis] a4 e'8 g,4\trill f16[ e] d4 f16[ e] d4 |
			a''4.~ a8\melismaEnd g16[ f] e[ d] a4\melisma cis8 d8[ f]\melismaEnd a |
			h,4. cis4\melisma d8\melismaEnd g,4. e'4~\melisma e16[ f32 g]\melismaEnd |
			f16[\melisma e] d4 f16[ e] d4 d2.~ |
			d4\melismaEnd a8 e'4 d8 d4. r4 r8 |
			R1.*5 |
			r4 r8 \bar "||" f8. c16 c8 a'8 g16[f] e[ d] c4 b8 |
			a16[ g] f4 r c'8 d4 d8 d16.[ e32 f8] d |
			d c4 r4 c8 d4 d8 d16.[e32 f8] d |
			d c4 r4 f8 h,4 h8 h4 h8 |
			h[ c] d d4 d8 es2. |
			d4 fis,8 g4.~\melisma g16[ fis g a h c] d[ es f d c h] |
			c8 g4\trill es'8 \appoggiatura d c4 d32[ c h a] g4 f'8 \appoggiatura es d4 |
			g8[ f16 es]\melismaEnd d[ c] c4 c8 c4 b8 a4.~\melisma |
			a4. a'~ a8[ g16 f]\melismaEnd e[ d] c8 h4 |
			a2.\fermata r2. |
		}
	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key d \minor
	\clef bass
	\relative c { 	
		d4 d'8 c4 b8 a4 g8 f4 f8 |
		e4 e8 a,4 a8 d4 d8 b4 b8 |
		a4 a'8 g4 g8 f4 d8 a'4 g8 |
		fis fis fis d d d g g g a a a |
		f f f g g g g g g f f g |
		a a a a, a a d4 r8 d4 r8 |
		r4 d8 d4 d8 c4 c8 c4 c8 |
		r4 b8 b4 b8 b4 b8 b4 b8 |
		r4 a'8 a4 a,8 r4 a'8 a4 a8 |
		a4 g8 g4 f8 e4 e8 e4 e8 |
		f4 f8 f f f a, a a a a a |
		b b b b b b h h h h h h |
		c c c c c c c c c b b b |
		b b b a a a g g g c c c |
		f f f f f f f f f c c c |
		f f f f f f f f f c c c |
		f f f f f f f f f e e e |
		d d d c c c b b b c c c |
		f f f e e e d d d c c c |
		b b b c c c a a a b b b |
		c c c c c c f4 c8 f,4 r8 |
		r4 f'8 f4 f8 r4 f8 f4 f8 |
		r4 es8 es4 es8 r4 g8 g4 g8 |
		r4 f8 f f f fis fis fis fis fis fis |
		g g g g g g gis gis gis gis gis gis |
		a a a a, a a a a a a a a |
		a a a g g g f' f f f f f |
		e e e e e e d d d d d d |
		cis cis cis a a a d d d b b b |
		f' f f g g g g g g f f f |
		g g g a a a b b b cis, cis cis |
		d d d c c c b b b g g g |
		a2.\fermata d4 d'8 c4 b8 |
		a4 g8 f4 f8 e4 e8 a,4 a8 |
		d4 d8 b4 b8 a4 a'8 g4 g8 |
		f4 d8 a'4 g8 fis fis fis d d d |
		g g g a a a f f f g g g |
		g g g f f g a a a a, a a |
		d4 r8\fermata \bar "||" f4 f8 f4 f8 e4 e8 |
		f f f f f f f f f f f f |
		f f f f f f f f f f f f |
		f f f f f f f f f f f f |
		f f f f f f fis fis fis fis fis fis |
		g g g g g g f f f f f f |
		es es es c c c h h h g g g |
		es' es es e e e f f f f f f |
		f f f f f f e2. |
		a, r\fermata |
	\bar "|."
	}

}

BC = \new FiguredBass {
	\figuremode {
		s4. <6>4 <6+>8 <_+>4 s8 <6>4 s8 |
		s4. <_+>4 s8 s4. s4 <6+>8 |
		<_+>4 s8  <6 4+>4 s8 s4. <_+>4 s8 |
		s1.*9 |
		s2. <2>8 s4 s4. |
		s1.*8 |
		s2. s4 <6 4!>8 s4. |
		s2. s4 <6 4!>8 s4. |
		s1.*3 |
		<2>8 s4 s4. <6 4!>8 s4 s4. |
		s4. <6+>8 s4 s2. |
		s1. |
		s2. <4+ 2>8 s4 <6>8 s4 |
		<4!>8 s4 <_+>8 s4 <6>8 s4 s4. |
		s1.*3 |
		s4. s4 <6+>8 <_+>4 s8 <6 4+>4 s8 |
		<6>4 s8 <_+>4 s8 s2. |
		s1.*3 |
		s2. <6 4>8 s4 s4. |
		s1. |
		s4. <_->8 s4 <6 4!>8 s4 s4. |
		s1. |
		<_!>8 s4 s4. <6 4!>8 s4 s4. |
		s1.*2 |
		s2. <6 4>2 <3+>4 |
		s1. |
	\bar "|."
	}
}

\score {
	<<
		\staffViolinI
		\staffViolinII
		\staffViola
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verse }
		
		\staffCello
		\BC
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

