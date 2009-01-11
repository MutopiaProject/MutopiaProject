% Created on Tue Jan 22 23:08:52 CET 2008
\version "2.10.33"

\header {
	title = "La vendetta e un cibo"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "La vendetta e un cibo , Aria from Silla"
	mutopiacomposer = "HandelGF"
	mutopiaopus = "HWV 10"
	mutopiainstrument = "Voice (Alto), String Ensemble, Basso Continuo"
	date = "1713?"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 61, 1875"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/02/19-1314"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
La ven -- det -- ta_è_un ci -- bo_al cor, se la chie -- de_of -- fe -- so_a -- mor, la ven -- det -- ta è_un ci -- bo_al cor, se la chie -- de_of -- fe -- so_a -- mor; la ven -- det -- ta_è_un ci -- bo_al cor, se la chie -- de_of -- fe -- so_a -- mor, se la chie -- de_of -- fe -- so_a -- mor, se la chie -- de_of -- fe -- so_a -- mor.
E chi vuo -- le ben go -- der, of -- fra vit -- ti -- me al pia -- cer, e chi vuo -- le ben go -- der, of -- fra vit -- ti -- me al pia -- cer.
}
 

staffViolin = \new Staff  {
	\time 3/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 70
	\set Staff.instrumentName="Tutti unisoni"
	\set Staff.midiInstrument="violin"
	\key g \minor
	\clef treble
	\relative c'' {
		g16 d d32 c b16 a g16 |
		d'' a a32 g fis16 e d |
		g d d g g32 a b16 |
		d,4. |
		es16 b b es es32 f g16 |
		b,4. |
		c16 g g c c32 d es16 |
		g,4. |
		g'16 d d'32 c b16 a g |
		g d d'32 c b16 a g |
		g d d b b g |
		g4. |
		r8 g' d |
		g4. |
		d'16 a a32 g fis16 e d |
		c' a a32 g fis16 e d |
		c'8. d,16 es8 |
		c d d |
		g,4 a8 |
		b4 r8 |
		b'16 f f32 es d16 c b |
		f'' c c32 b a16 g f |
		f' c c32 b a16 g f |
		f' c c32 b a16 g f |
		a,4 r8 |
		b8. c16 d8 |
		es f4 |
		b16 f f32 es d16 c b |
		f' c f f f32 g a16 |
		b4 r8 |
		f'16 c f f f32 g a16 |
		b,4 r8 |
		es16 b, es es es32 f g16 |
		a,4 r8 |
		b g r |
		c a r |
		d b r |
		es c r |
		d'16 a a32 g fis16 e d |
		c' a a32 g fis16 e d |
		g8 d es |
		c d4 |
		g16 d g g g32 a b16 |
		es, c a' a a32 b c16 |
		fis, d b' b b32 c d16 |
		es,4. |
		c'16 g g c c32 d es16 |
		fis,16 d d'32 c b16 a g |
		g d d b b g |
		g4.\fermata |
		R4.*2 |
		a'16 e e32 d cis16 h a |
		f'4 r8 |
		g16 d d32 c b16 a g |
		e'4 r8 |
		f4 r8 |
		R4.*8 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
staffAlto = \new Staff  {
	\set Staff.instrumentName="Silla"
	\set Staff.midiInstrument="oboe"
	\key g \minor
	\clef treble
	\relative c'' {
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			R4.*11 |
			r8 g d |
			g16[ fis g8] a |
			b32[ c d16] c[ b a g] |
			fis4. |
			r8 a b |
			fis[ e16 d g8]~ |
			g16 a b8[ a16] g |
			g16.[\melisma b32] a[ b g16] f32[ g es16] |
			d16.[ f32] es[ f d16] c32[ d b16] |
			f'4.\melismaEnd |
			r8 a b |
			c f, r |
			c' a f |
			es8. g16[f] es |
			d[ b' a g f8] |
			d'32[ c b16] a8. b16 |
			b4. |
			R4. |
			b16 f b d c b |
			c4. |
			d16 c b a g f |
			es4. |
			c'16 b a g fis e |
			d8.[\melisma g32 fis g a fis16] |
			e8.[ a32 g a b g16] |
			fis8.[ b32 a b c a16] |
			g16[ c32 b a b g16 fis32 g e16] |
			d4\melismaEnd r8 |
			r c' d |
			b8.[ a16 g8] |
			a d, fis |
			g4. |
			R4.*6 |
			r8 d b' |
			a8. g16[f8] |
			e[ g16 f] e[ d] |
			a'4. |
			r8 a d |
			b8. a16 b8 |
			r8 g c |
			a16[\melisma g a c b c] |
			f,[ e f a g a] |
			d,8\melismaEnd b' a |
			g8. fis16[ g8] |
			g[ fis] g |
			g b a |
			f8. e16[ d b'] |
			a32[ b g16] f8 e16.[ d32] |
			d4. |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key g \minor
	\clef bass
	\relative c' {
		g16 d d32 c b16 a g |
		d'' a a32 g fis16 e d |
		g d d g g32 a b16 |
		d,4. |
		es16 b b es es32 f g16 |
		b,4. |
		c16 g g c c32 d es16 |
		g,4. |
		g'16 d d'32 c b16 a g |
		g d d'32 c b16 a g |
		g d d b b g |
		g4. |
		R4. |
		r8 g' c, |
		d'16 a a32 g fis16 e d |
		c' a a32 g fis16 e d |
		c'8. d,16 es8 |
		c d d, |
		g4 a8 |
		b4 r8 |
		b'16 f f32 es d16 c b |
		\clef tenor f'' c c32 b a16 g f |
		f' c c32 b a16 g f |
		es' c c32 b a16 g f |
		\clef bass a,4 r8 |
		b8. c16 d8 |
		es f f, |
		b'16 f f32 es d16 c b |
		f' c f f f32 g a16 |
		b4 r8 |
		f'16 c f f f32 g a16 |
		b,4 r8 |
		es16 b, es es es32 f g16 |
		a,4 r8 |
		b g r |
		c a r |
		d b r |
		es c r |
		d'16 a a32 g fis16 e d |
		c' a a32 g fis16 e d |
		g8 d es |
		c d d, |
		g'16 d g g g32 a b16 |
		es, c a' a a32 b c16 |
		fis, d b' b b32 c d16 |
		es,4. |
		c'16 g g c c32 d es16 |
		fis,16 d d'32 c b16 a g |
		g d d b b g |
		g4.\fermata |
		cis8 d4 |
		g,8 a b |
		g'16 e e32 d cis16 h a |
		f'4 r8 |
		g16 d d32 c b16 a g |
		e'4 r8 |
		f4 c8 |
		d4 a8 |
		b d' c |
		b16 d d b b g |
		g b b g g e |
		cis4. |
		d8 a' b |
		f a a, |
		d4. |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffAlto
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
		indent=25
	}
}

\paper {
}

