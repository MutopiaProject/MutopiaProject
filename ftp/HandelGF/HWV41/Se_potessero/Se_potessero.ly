% Created on Tue Jan 01 11:38:27 CET 2008
\version "2.10.33"

\header {
	title = "Se potessero i sospir' miei"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Se potessero i sospir' miei , Aria from Imeneo"
	mutopiacomposer = "HandelGF"
	mutopiaopus = "HWV 41"
	mutopiainstrument = "Voice (Alto), String Ensemble, Basso Continuo"
	date = "1738-1740"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 93, 1885"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/02/19-1208"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Se po -- tes -- se -- ro_i so -- spir' mie -- i far che l'on -- de_a que -- ste spon -- de ri -- por -- tas -- se -- ro_il le -- gno_in -- fi -- do, io vor -- rei tut -- ti scio -- glie -- re là sul li -- do i so -- spi -- ri del mio cor, i so -- spi -- ri del mio cor; se po -- te -- se -- ro_i so -- spir mie -- i far che l'on -- de a que -- ste spon -- de, ri -- por -- tas -- se -- ro_il le -- gno_in -- fi -- do, i -- o vor -- re -- i, tut -- ti scio -- glie -- re là sul li -- do i so -- spi -- ri, tut -- ti, tut -- ti i so -- spi -- ri del mio cor, i so -- spi -- ri del mio cor.
Ma non pos -- so -- no far dal ma -- re ri -- tor -- na -- re a me Ros -- me -- ne, deh! sù l'a -- le a que -- ste_a -- re -- ne la con -- du -- ca_il Dio d'a -- mor, la con -- du -- ca_il Dio d'a -- mor, la con -- du -- ca_il Dio d'a -- mor.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 40 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key f \major
	\clef treble
	\relative c' {
		f8 f r16 a32 b c a g f b8 b b b |
		b a\trill r16 a32 b c a g f d'8 d d d~ |
		d c16 b c8 c~ c b16 a b f b8~ |
		b b b b~ b a r16 a32 b c a g f |
		\appoggiatura a8 g4\trill r b8 b b b |
		f a r16 a32 b c a g f d'8 d d d |
		d d c c r16 c d es d d e f |
		e g f e f c b a g8 g r16 a32 b c a g f |
		\appoggiatura f8 g4 r8 f r g r a |
		r b g'4 r16 a,32 b c a g f f'8 a, |
		g g h g' r e r g |
		r f r f r e r d |
		r d r h c r r4 |
		g'8 g r16 e32 f g e d c a'8 a r16 a,32 h c a g f |
		b'8 b r16 e,32 f g e d c a'8 a g g |
		g,4 r fis8 fis~ fis16 a b c |
		b d32 c b g a fis g8 b r b' r b, |
		r a r16 a g f r f e d e8 c' |
		r b r d r c r g' |
		r16 c, b a r c b f r f' es d c f, es d |
		c4 r r16 c' b a g f e d |
		e g' f e r g, f e r c' d b a8 g |
		r16 d' c b a8 r r16 a g f g8 r |
		r16 b a g a8 r r2 |
		a8. f'16 es d c b c4~ c16 c b a |
		g8 a16 b g8. f16 f4\fermata \bar "||" r4 |
		r16 d' c b a g f e d f32 g a f e d b'8 b |
		b d c c fis g g d |
		d c16 b a b c8 fis,16 d' c b a g fis e |
		d8 d' d d e e16 fis gis8 gis |
		e e e e e d d d |
		gis h, h h r c r e |
		r h' r gis a2\fermata |
		e,8 r r4 r2 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key f \major
	\clef treble
	\relative c' {
		c8 c f f f e\trill r16 e32 f g e d c |
		c'8 c c c c b\trill r16 d,32 es f d c b |
		es'8 es es es d d d d |
		e, e r16 e'32 f g e d c f8 f, r16 f32 g a f e d |
		\appoggiatura f8 e4\trill f8 f f e e e |
		c' c c c c b r16 d,32 es f d c b |
		es'8 es es es r16 a, b c b8 b |
		b a16 g a f g a c,8 e r16 f32 g a f e f |
		\appoggiatura f8 e4 r8 c r d r e |
		r f b4 r16 f32 g a f e f a,8 f' |
		h,8 e d d' r g, r e |
		r c' r c r c r c |
		r g r g g r r4 |
		r4 g'8 g g f16 e f8 a~ |
		a g16 f g8 g g16 f e f f8 f, |
		f e r4 c8 c~ c16 fis g fis |
		g b32 c d b c a b8 d r e r g |
		r c, r16 c b a r a g f g8 a |
		r f r b r g r c |
		r16 f g a r8 f a,8. f'16 es d c b |
		a4 r e8. c'16 b a g f |
		g e' d c r b a g r a g f f8 e |
		r16 b' a g f8 r r16 f e d c8 r |
		r16 g' f e f8 r r2 |
		r16 f' es d c b a g a4~ a16 a g f |
		e8 f4 e8 f4\fermata \bar "||" r4 |
		r16 b a g f e d cis d8 a'~ a g |
		d a'16 g g8 fis a16 b32 c d b a g g'16 d c b |
		es8 es es es d8. d16 c b a g |
		a8 a a a h h h h |
		c c c c a a b d |
		gis, gis gis gis r a r c |
		r e r e, c'2\fermata |
		h8 r r4 r2 |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key f \major
	\clef alto
	\relative c' {
		a16 a a a f f f f g g g g g g g g |
		f' f f f f f f f f f f f b, b b b |
		b' b a g f f a a f f f f d d b b |
		g g g g c c c c c c c c c c c c |
		c4 c16 c c c b b b b b b b b |
		c c c c f f f f f f f f b, b b b |
		b b b b f' f f f f f f f f f g g |
		c, c c c c c c c c c c c c c c c |
		c4 r8 a r b r c |
		r d c4 c16 c c c d d d d |
		d8 c g g r g r b' |
		r a r a r g r g |
		r f r d e r r4 |
		r4 c16 c c c c c c c c c c c |
		c c c c c c c c c c c c d d d d |
		c4 r a16 a a a a a d d |
		d d d d d8 g r g r e |
		r f r d c16 c c c c c e e |
		d d d d d d d d g g g, g g g e' e |
		a a b c f, f f f f f f f a, b a b |
		c b a g f a' g f c c c c c c c c |
		c c c c c c c c c c b d c c b b |
		a b c d c8 r r16 c c d e8 r |
		c4 r r2 |
		c4 r r16 f e d c8 d |
		e d g, c a4\fermata \bar "||" r4 |
		r16 b' a g f e d cis d d d d d d d d |
		d d d d a a a a d d d d d d d d |
		g g fis g a a a a a b a g fis g d e |
		a, a a a d d d d h h gis' fis e e e e |
		e e e e e e e e f f f f f f f f |
		h,8 e e e r e r a |
		r h r h fis2\fermata |
		gis8 r r4 r2 |
	\bar "|."
	}

}
staffAlto = \new Staff  {
	\set Staff.instrumentName="Tirinto"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			R1*4 |
			r4 f8. c16 b'8 b16 b b8 b |
			b a r4 r f8. b16 |
			es,8. es'16 es8 es es d r b16 b |
			b8 b16 c a8 g16[ f] f8 e c'8. a16 |
			g4 c8 f, f16[\melisma a g8~] g16[ b a8~] |
			a16\melismaEnd c b8 r16 d[ c]b a[ g] f8 r8 d'16 c |
			h8 c16[ a] h8. c16 c16[\melisma a b8~] b16[ b32 c d b a g] |
			a8[ a~] a16[ a32 b c a g f] g8[ g~] g16[ a32 h c g f e] |
			f8\melismaEnd d'4 f,8 e8. c'16 e,8[ d16] c |
			c4 r r2 |
			r4 b'8. c16 a8 g16 f d'8. b16 |
			g8 g c8. c16 c8 fis, r16 c' b a |
			b[ a] b8 r b16 g e'8 g,16 g b8 b |
			b a r16 a g f f8 e r a16 e |
			f[\melisma a b8~] b16[d32 c b a g f] g16[ e c'8~] c16[ b32 a] b16[ a32 g] |
			a8\melismaEnd g16 f es'8 d16[ c] c8 f, r4 |
			r c'8 b16[ a] g8 c, r c'16 c |
			c8 g b8. c16 a8[ b16] g f8[ g16] f |
			f4~\melisma f16[ a32 b c a g f] g4~ g16[ b32 c d b a g] |
			a4\fermata\melismaEnd r8 g16 f e'8 f a,[ g16] f |
			f2 r |
			r r4 \bar "||" a8. a16 |
			d8 c16 b a[ g] f[ e] f[ e] d8 r b'16 b |
			b8 a r16 a c c c8 b r a16 g |
			es'8 es16 d c[ b] a[g]fis[ e] d8 r4 |
			r a'8. a16 a8[ gis16] a h8 h |
			h[ a16 h c8] c16 c c8 b b8. a16 |
			gis4~\melisma gis16[ gis32 a h gis fis e] a8[ a~] a16[ c32 d e c h a] |
			h8[ h~] h32[ a gis fis e d' c h] c4\fermata\melismaEnd r8 h16 a |
			gis8[ a16] d c8[ h16] a a4 r |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c { 	
		f8 f r4 g8 g r4 |
		f8 f r4 b,8 b r4 |
		g8 g' a f b b r4 |
		c,8 c r4 c8 c c c |
		c4 a'8 a g g g g |
		g f r4 b,8 b r4 |
		g8 g g g b b b b |
		c c c c c c c c |
		c4 a8 a b b c c |
		d d e e f f f f |
		g g g g c, c c c |
		c c c c c c c c |
		c h16 a h8 g c f g g, |
		c c r4 c8 c r4 |
		c8 c r4 f8 a b g |
		c c, r4 d8 d r4 |
		g8 g g g c, c c c |
		f f b, b c c c c |
		d d d d e e e e |
		f f a, b f f f f |
		f4 a'8 b c c, c c |
		c c c c f b c c, |
		f f f f f f e e |
		f4 r8 b, b' a16 f c8 c, |
		f2 f8 g a b |
		c b c c, f4\fermata \bar "||" r4 |
		d'8 d r4 d8 d g g |
		g fis16 g a8 a d, g16 a b8 b |
		c, a'16 b c8 c d,4. g8 |
		fis fis f f e e d d |
		c c a a d d d d |
		e e d d c c c c |
		gis gis e' e dis2\fermata |
		e8 f e e, a4 r |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViolinII
		\staffViola
		\staffAlto
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

