% Created on Wed Jan 02 22:49:56 CET 2008
\version "2.10.33"

\header {
	title = "Ecco il sol"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Ecco il sol , Aria from La Resurrezione"
	mutopiacomposer = "HandelGF"
	mutopiaopus = "HWV 47"
	mutopiainstrument = "Voice (Tenor), String Ensemble, Basso Continuo"
	date = "1708"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 39, 1887"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/01/04-1204"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Ec -- co_il sol ch'e -- sce del ma -- re, ec -- co_il sol ch'e -- sce del ma -- re e più chia -- ro che non so -- le smal -- ta_i pra -- ti, smal -- ta_i pra -- ti_i col -- li_in -- do -- ra. Ec -- co_il sol ch'e -- sce del ma -- re e più chia -- ro che non so -- le smal -- ta_i pra -- ti,_i col -- li_in -- do -- ra_i col -- li_in -- do -- ra.
Mà chi sa che di quel so -- le, mà chi sa che di quel so -- le, ch'og -- gi_in vi -- ta_ha da tor -- na -- re, que -- sto sol non sia l'au -- ro -- ra! Mà chi sa che di quel so -- le, ch'og -- gi_in vi -- ta_ha da tor -- na -- re, que -- sto sol non sia l'au -- ro -- ra, l'au -- ro --ra!
}
 

staffViolin = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c'' {
		R2.*41 |
		r8 f b4 r |
		r8 c, f,4 r |
		r8 d'16 es f8 d16 es f es f g |
		c,8 f, f'2~ |
		f8 b16. a32 g16 f es d es4~ |
		es8 a16 b c b a g f es d c |
		d8 b16 c d c d es f es f g |
		c,8 a16 b c b c d es d es f |
		b,8 g16 a b a b c d c d es |
		f8 g d4 c8 b |
		b4 \fermata \bar "||" r r |
		R2.*17 |
	}
}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c'' {
		R2.*41 |
		r4 r8 f d b |
		es4 r8 a es c |
		f f, b b b b |
		a4  r8 c a f |
		b4 r8 b b16 a g b |
		c b a g f8 c' c c |
		f, d f b16 c d c d b |
		c8 c16 b a8 f a c |
		b b16 a g f g a b a b c |
		d8 b b4 a |
		b\fermata \bar "||" r4 r |
		R2.*17 |
	}
}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key b \major
	\clef alto
	\relative c' {
		R2.*41 |
		d4 r r |
		a' r r |
		f r8 f f f |
		f4 r8 f16 g f es d c |
		b8 d es4 r8 b |
		f'4 r8 f f f |
		f f16 es f8 f f f |
		f f16 f f8 f f f |
		g g16 g g8 g g g |
		f b f4 f |
		d\fermata \bar "||" r r |
		R2.*17 |
	}
}
staffTenor = \new Staff  {
	\set Staff.instrumentName="S. Giovanni"
	\set Staff.midiInstrument="oboe"
	\key b \major
	\clef "G_8"
	\relative c {
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			R2.*7 |
			r4 f b |
			b\melisma a\melismaEnd r |
			f' es8[d] c[ b] |
			a[ g] f4 r |
			R2.*3 |
			r4 f'4. g8 |
			a,2. |
			f'4 es8[ d] c[ b] |
			a f f'4. d8 |
			b[ a] b4 es8 d |
			c8[ b] c4 c8 f |
			d16[\melisma c b c] d[ c d es] f[ es f g] |
			r8 c,16[ b] a[ b c d] es[ d es f] |
			r8 b,16[ a] g[ a b c] d[ c d es] |
			a,8\melismaEnd b c4. d8 |
			c d e[ f] g[ a] |
			d,[ g]\melisma e2\melismaEnd |
			f4 r f8 d |
			b4. g'8 f es |
			d4 c r |
			r r d8 b |
			g es' a,4 f'8[ d] |
			b[ a] b4 g'8 d |
			es2.~\melisma |
			es16[ f es d] c[ b a g] f[ es' d c] |
			d2.~ |
			d16[ es d c] b[ a g f] es[ d' c b] |
			c2.~ |
			c16[ d c b] a[ b a g] f[ c' b a] |
			b4~ b16[ d]\melismaEnd c[ d] es[ c] d[ es] |
			f,2~ f16[ es'] d[ c] |
			d8 c16[ b] a2 |
			b2. |
			R2.*9 |
			r4\bar "||" r b8 g |
			d'4. es8 d b |
			g[ fis] g4 r |
			r r d'8 a |
			b g es'4. es8 |
			es a, d4. d8 |
			g8 es c4. c8 |
			c4. es8 d c |
			b g c4. d8 |
			d[ e] fis4 g8 d |
			es f d4. g8 |
			es c es4. f8 |
			d8 es c4. b8 |
			a4. b8 c d |
			e f g a b,4~ |
			b2~ b16[ d c b] |
			a8 f' a,4 g8. f16] |
			f4 r r |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Bassi"
	\set Staff.midiInstrument="harpsichord"
	\key b \major
	\clef bass
	\relative c {
		r8 b16.\trill a32 b8 b b16 c d b |
		c8 c16. b32 c8 c c16 d es c |
		d8 b16. c32 d8 b16. c32 d16 c d b |
		f'8 f,16. es32 f8 f f16 g a f |
		g8 g16. f32 g8 g g16 a b g |
		a8 f16 g a b c d es f g a |
		b c d es f8 d16. es32 f8 f, |
		b, b16. a32 b8 b b16 c d b |
		c8 c16. b32 c8 c c16 d es c |
		d8 b16. c32 d8 b16. c32 d16 c d b |
		f'8 f,16. es32 f8 f f16 g a f |
		g8 g16. f32 g8 g g16 a b g |
		a8 f16 g a b c d es f g a |
		b c d es f8 d16 es f8 f, |
		b, b16. a32 b8 b b16 c d b |
		c8 c16. b32 c8 c c16 d es c |
		d8 b16. c32 d8 b16. c32 d16 c d b |
		f'8 f,16. es32 f8 f f16 g a f |
		g8 g16. f32 g8 g g16 a b g |
		a8 f16 g a b c d es f g a |
		b8 b16. a32 b8 b b b |
		a a16. g32 a8 a a a |
		g8 g16. f32 g8 g g g |
		f f16. g32 a8 f16. g32 a8 b |
		c f, c d e f |
		b g c b c c, |
		f f16. es32 f8 f, f16 g a f |
		g8 g16. f32 g8 g a16 b c a |
		b c d es f g a b c d es f |
		d8 d, d d d16 es f d |
		es8 c f d16 es f d es f |
		g8 g16. f32 g8 g g16 a b g |
		c8 c,16. b32 c8 c c16 d es c |
		f8 f16. es32 f8 f f16 g a f |
		b8 b,16. a32 b8 b b16 c d b |
		es8 es16. d32 es8 es es16 f g es |
		a8 a,16. g32 a8 a a16 b c a |
		d8 d16. c32 d8 d d16 es f d |
		g8 g16. f32 g8 g c, c |
		a f16 g a b c d es f g a |
		b \clef tenor c d es f8 d16 es f8 f, |
		b \clef bass b,16. a32 b8 b b16 c d b |
		c8 c16. b32 c8 c c16 d es c |
		d8 b16. c32 d8 b16. c32 d16 c d b |
		f'8 f,16. es32 f8 f f16 g a f |
		g8 g16. f32 g8 g g16 a b g |
		a8 f16 g a b c d es f g a |
		b8 b16. a32 b8 b b b |
		a a16. g32 a8 a a a |
		g g16. f32 g8 g g f16 es |
		d8 es f es f f, |
		b\fermata g'16 f \bar "||" g8 g g g |
		f f16. es32 f8 f f f |
		es es16. d32 es8 es b16 c d b |
		c d es c d8 c d d, |
		g g'16. f32 g8 g g16 c, d es |
		f8 f16. es32 f8 f f16 b, c d |
		es8 es16. d32 es8 es es16 a, b c |
		d8 d16. c32 d8 d d16 e fis d |
		g8 f es d es es |
		d d'16. c32 d8 c h16 g a h |
		c8 f, g g16. f32 g8 g, |
		c c'16 b c8 c c16 f, g a |
		b8 b, es es es16 c d es |
		f8 f' c d a b |
		g a e f g b |
		e, c16 d e f g a b \clef tenor c d e |
		f8 b, c b c c, |
		f \clef bass b,16. a32 b8 b b16 c d b \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViolinII
		\staffViola
		\staffTenor
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \verse }
		
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

