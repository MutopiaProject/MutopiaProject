% Created on Sun Dec 30 15:54:08 CET 2007
\version "2.10.33"

\header {
	title = "Fra l'ombre e gl'orrori"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Fra l'ombre e gl'orrori , Aria from Aci, Galatea e Polifemo"
	mutopiacomposer = "HandelGF"
	mutopiapoet = "Nicola Giuvo (1680-1748)"
	mutopiaopus = "HWV 72"
	mutopiainstrument = "Voice (Bass), String Ensemble, Basso Continuo"
	date = "1708"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 53, 1892"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/01/04-1205"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Fra l'om -- bre_e gl'or -- ro -- ri, fra l'om -- bre_e gl'or -- ro -- ri far -- fal -- la con -- fu -- sa già spen -- ta la fa -- ce non sà mai go -- der, non sà mai go -- der, far -- fal -- la con -- fu -- sa fra l'om -- bre_e gl'or -- ro -- ri già spen -- ta la fa -- ce non sà mai go -- der, non sà mai go -- der.
Co -- sì fra ti -- mo -- ri quest' al -- ma de -- lu -- sa non tro -- va mai pa -- ce ne spe -- ra pia -- cer, ne spe -- ra pia -- cer, non tro -- va mai pa -- ce ne spe -- ra pia -- cer.
Fra l'om -- bre_e gl'or
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 40
	\set Staff.instrumentName="Violino I sordi"
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c'' {
		r2 r4 r8 b \mark \markup { \musicglyph #"scripts.segno" } |
		g es b g es'4 r |
		r r8 b'8 g es b g |
		es'4.\trill as8 g es' f, b, |
		b' g es c' f, b d, b |
		a' c f, d' a, f' b, f' |
		c f d f a, b' c, a' |
		b d, es b' f d' g, es' |
		d, b' es,4\trill f\trill g\trill |
		b,4\trill es8 g c, c' b4 |
		b,1\trill |
		b2 b4. es'8 |
		d g, f c' b d, es b' |
		c es, d' es, es' es, b' b, |
		c c' b, d es g b es, |
		c' es, d' es, es' es, b' b, |
		c d16 es b8 d es4 \bar "||" r4 |
		r2 r8 g es c |
		f f' des b g e c g' |
		as, c' des f, c g' c f, |
		des' f, b, e as, f' c' f, |
		des' f, c e f f' b, f' |
		c f d, f a, f' a a, |
		d b' es, a fis d' g, d' |
		a d b d fis, d' g, es' |
		fis,4. g8 g4 r8 b |
		c es, d d' es as, b, f' |
		g es b d es4 r8 b' \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.S." } |
		\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II sordi"
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c'' {
		R1 |
		r4 r8 b g es b g |
		es'4 r r8 b' g es |
		c c' c, f b, b' f b, |
		b' g es c' f, b d, b |
		a' c f, d' a, f' b, f' |
		c f d f a, b' c, a' |
		b d, es b' f d' g, es' |
		d, b' g4\trill d\trill es\trill |
		d\trill es8 g c, c' b f |
		g b d, b' es, b' f b |
		d, b' es, b' f b b, es' |
		d g, f c' b d, es b' |
		c es, d' es, es' es, b' b, |
		c c' b, d es g b es, |
		c' es, d' es, es' es, b' b, |
		c d16 es b8 d es4 \bar "||" r4 |
		r r8 g es c g g' |
		f f' des b g e c g' |
		as, c' des f, c g' c f, |
		des' f, b, e as, f' c' f, |
		des' f, c e f f' b, f' |
		c f d, f a, f' a a, |
		d b' es, a fis d' g, d' |
		a d b d fis, d' g, es' |
		fis,4. g8 g4 r8 b |
		c es, d d' es as, b, f' |
		g es b d es4 r4 |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key b \major
	\clef alto
	\relative c'' {
		R1*2 |
		r8 b g es b g es4 |
		c'8 c' c, f b, b' f b, |
		b' g es c' f, b d, b |
		a' c f, d' a, f' b, f' |
		c f d f a, b' c, a' |
		b d, es b' es,, d' f, es' |
		b'1\trill |
		b4 es,8 g c, c' b f |
		g, b d, b' es, b' f b |
		d, b' es, b' f b g es' |
		d g, f c' b d es b |
		c es, d' es, es' es, b' b' |
		c, c' b, d es g, b es, |
		c' es, d' es, es' es, b' es, |
		c' d16 es b8 d es4 \bar "||" r4 |
		r8 g es c g es c g'' |
		f des g, g' c, e g c, |
		c f f f, c' g' c, f, |
		des' f, b e as, f' c f, |
		des' f, c e f f' b, f' |
		c f d f a, f' a, d |
		d, b' es, a fis d' g, d' |
		a d b d fis, d' g, es' |
		c2 d |
		d8 c b as g es' f b, |
		d b b as b4 r |
	\bar "|."
	}

}
staffBass = \new Staff  {
	\set Staff.instrumentName="Polifemo"
	\set Staff.midiInstrument="oboe"
	\key b \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			r4 r8 b g[ es] b g |
			es2 es4 r8 b'' |
			g[ es] b g es4 es8 b'' |
			c[ es,] as d es[ g,] b, b' |
			g4 as16[ g] f[ es] d8.[ c16] b8 f'' |
			f,4 r16 d'[c] b f,4 r16 d''[ es f] |
			f,,4 r16 b'[ c] d f,,2\melisma |
			f4 b b2\melismaEnd |
			r4 r8 es' d16[ c] b8 r16 g[ f es] |
			f[ d] b8 r b' c[c,] d d, |
			es4\melisma f g as |
			b c d8\melismaEnd b r es' |
			d[ g,]f c' b[ d] es es, |
			es4 g8 f16[ es] es4 r8 es' |
			es[ f16 g] b,,8. b'16 es,,2~ |
			es1 |
			r2 r4 \bar "||" r8 c'' |
			c4 g8 es c4 c8 c' |
			des,4 b'8 des e,[ g] b, b' |
			as4 b16[ as] g[ f] e8.[ d16] c8 c' |
			f,4 as16[ g] f8 f\melisma f'4\melismaEnd g16[ as] |
			b,,4 c8. c16 f,2~ |
			f2. d''4 |
			b c16[ b] a[ g] d2~ |
			d2. g'8 a |
			d,,,4 d8 g g2 |
			R1 |
			r4 r8 b' g[ es] b g |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Violone grosso"
	\set Staff.midiInstrument="cello"
	\key b \major
	\clef bass
	\relative c, {
		es1 |
		es |
		es |
		as4 r8 f g4 r8 d' |
		es4 r8 as, b4 r8 d |
		f,1 |
		f2~ f8 d es f |
		b2 b |
		b1\trill |
		b4 g as b8 d, |
		es4 f g as |
		b c d8 b es c |
		b4 as g g |
		as b c g |
		as b es, g |
		as b c g |
		as b es, \bar "||" r |
		c'1 |
		c4 b~ b8 g e4 |
		f b c r8 as |
		b4 c des as |
		b c f,2 |
		f2. fis4 |
		g4 c d2 |
		d2. c4 |
		d2 g, |
		as4 b c d |
		es8 g, b4 es,2 |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViolinII
		\staffViola
		\staffBass
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
		indent = 20
	}
}

\paper {
}

