% Created on Sat Jan 26 19:41:37 CET 2008
\version "2.10.33"

\header {
	title = "Impara, ingrata"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Impara, ingrata , Aria from Atalanta"
	mutopiacomposer = "HandelGF"
	mutopiaopus = "HWV 35"
	mutopiainstrument = "Voice (Basso), String Ensemble, Basso Continuo"
	date = "1736"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 87, 1882"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/02/19-1311"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Im -- pa -- ra, in -- gra -- ta, im -- pa -- ra ad es -- ser men cru -- de -- le a chi ti chie -- de_a -- mor, a chi ti chie -- de_a -- mor, a chi ti chie -- de_a -- mor, a chi ti chie -- de_a -- mor; im -- pa -- ra, in -- gra -- ta, im -- pa -- ra ad es -- ser men cru -- de -- le a chi ti chie -- de_a -- mor, a chi ti chie -- de_a -- mor, ad es -- ser men cru -- de -- le a chi ti chie -- de_a -- mor, a chi ti chie -- de_a -- mor.
Ei si mo -- strò sin -- ce -- ro, si pro -- te -- stò fe -- de -- le, e tu l'of -- flig -- gi_an -- cor, si pro -- te -- stò fe -- de -- le, e tu l'af -- flig -- gi_an -- cor!
}
 

staffViolin = \new Staff  {
	\time 3/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violini"
	\set Staff.midiInstrument="violin"
	\key c \minor
	\clef treble
	\relative c'' {
		\partial 8 g8 |
		es' d c |
		d c16 h a g |
		c h c h c8 |
		c,4 d8 |
		es16 g a h c d |
		es8 f g |
		as h,,4~ |
		h4. |
		d'16 h g f' es d |
		es c g es' d c |
		d h g f' es d |
		es c g es' d c |
		g'8 g g |
		g c, f |
		es16 d d8. c16 |
		c4 g8 |
		es' d c |
		d c16 h a g |
		c h c h c8 |
		c,4 d8 |
		es f g c d es |
		d16 b f f' as, f' |
		g, b es g, f d' |
		b8 as16 g f es |
		c'8 b16 as g f |
		b8 as16 g f es |
		c'4 d8 |
		es es,4 |
		es16 f g8 f |
		es16 b' g es g b |
		es8 es es |
		es16 g f es d c |
		d8 d d |
		es16 b es g es b |
		c f, as c f as |
		f,8 f' g |
		b,, d'4 |
		es,4. |
		d |
		c4 g'8 |
		c f,4 |
		g h,8 |
		c16 h c d es f |
		g8 a16 h c d |
		es8 f g |
		as h,,4~ |
		h g'8 |
		es' d c |
		d c16 h a g |
		c h c h c8 |
		c,4 g''8 |
		c,4 des8 |
		f, e e' |
		f c16 b as g |
		as f as c as f |
		h d h g g' c, |
		f d es d es f |
		d g, h d h g |
		f'4. |
		es16 g f es d c |
		f,8 d' h |
		c16 c, es g es c |
		c'8 c c |
		f,16 g as g as f |
		h c d c d h |
		g'8 c, g |
		as f d' |
		h16 g h d h g |
		es' c es g es c |
		g8 a h |
		c d es |
		f h,,4~ |
		h\fermata g'8 |
		es' d c |
		d h4 |
		c4. |
		b |
		as16 g f8 c |
		g4. |
		R4. |
		r8 r g'' |
		es d c |
		d c16 h a g |
		c h c h c8 |
		c,4 g''8 |
		as e f |
		g f16 e d c |
		f e f e f8 |
		f,4 as'8 |
		g16 b as g f es |
		f as g f es d |
		g8 f16 es d c |
		g4 d8 |
		es16 g a h c d |
		es8 f g |
		as8 h,,4~ |
		h d'16 f |
		es g f es d c |
		d8 g, h |
		c d,16 es f g |
		c,4\fermata \bar "||" r8 |
		R4.*25 |
		r8 r g' \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." }|
	\bar "|."
	}

}
staffBass = \new Staff  {
	\set Staff.instrumentName="Nicandro"
	\set Staff.midiInstrument="oboe"
	\key c \minor
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R4.*15 |
			r8 r g |
			es' d c |
			d c16[ h] a[ g] |
			c[ h c h c8] |
			c,4 d8 |
			es[ f] g |
			c16[ b as8] g |
			f b,4~ |
			b4. |
			b'8 as16[ g] f[ es] |
			c'8 b16[ as g f] |
			b8[\melisma as16 g f es] |
			c'4\melismaEnd d8 |
			es8 es,4 |
			es16[ f g8] f |
			es4.~\melisma |
			es16[b' as g f es] |
			f4.~ |
			f16[ g as g as f] |
			g4.\melismaEnd |
			r8 r c |
			d4 es8 b, f'4 |
			es4. |
			d |
			c4 g'8 |
			c f,4 |
			g4.~ |
			g |
			R4.*3 |
			r8 r g |
			es' d c |
			d c16[ h]a[ g] |
			c[ h c h c8] |
			c,4 b'8 |
			as[ g] f |
			c[ c'] b |
			as16[ g] f4 |
			r8 r g |
			f4 c'8 |
			h c16[ h c d] |
			g,4. |
			d' |
			es,8[ g] c |
			as[ f] g |
			c,4.~\melisma |
			c16[ d es d es c] |
			d4.~ |
			d16[ es f es f d] |
			es[ f g f g es] |
			f[ g as g as f] |
			g4.\melismaEnd |
			R4. |
			g8 a h |
			c[ d] es |
			f h,,4~ |
			h4 g'8 |
			es'[ d] c |
			d h4 |
			c4. |
			b |
			as16[ g f8] c' |
			g8.[ f16] g8 |
			c,4. |
			R4.*20 |
			r8 r \bar "||" es' |
			d c16[ b a g] |
			fis8 g4 |
			a8 d,4 |
			r8 r a' |
			b[ a] g |
			es'[ c] a |
			f[\melisma g16 a b c] |
			d8[ b g] |
			es[ f16 g a b] |
			c8[ a fis] |
			d16[ e fis g a b] |
			c[ es d c b a] |
			b[ a]\melismaEnd g4 |
			R4. |
			es'8 d c |
			b16[ a] a4 |
			g4. |
			R4. |
			d8 e16[ fis] g[ a] |
			b8[ c] d |
			es fis,4~ |
			fis4.\fermata |
			d'8 c16[ b] a[ g] |
			d8.[ c16] d8 |
			g4.~ |
			g4 r8 |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Bassi"
	\set Staff.midiInstrument="harpsichord"
	\key c \minor
	\clef bass
	\relative c {
		\partial 8 c16. h32 |
		c8 d es |
		f d g |
		c16 h c h c8 |
		c,4 d8 |
		es16 \clef tenor g a h c d |
		es8 f g |
		as \clef bass h,,4~ |
		h4. |
		\clef tenor g''8_\markup {Violone. soli.} g g |
		g g g |
		g g g |
		g g g |
		\clef bass g,,_\markup {(Tutti)} a16 h c d |
		es8 f16 g as8 |
		f g g, |
		c4 c16 h |
		c8 d es |
		f d g |
		c16 h c h c8 |
		c,4 g8 |
		c d es |
		as16 g f8 es |
		b b b |
		b b as |
		g4 r8 |
		as4 r8 |
		g4 r8 |
		as8 g f |
		g4 c8 |
		b as b |
		es es es |
		es es es |
		f f f |
		f f f |
		g g g |
		as as as |
		b, b as |
		b as b |
		es4. |
		d |
		c4 b8 |
		as4. |
		g4 h8 |
		c16 h c d es f |
		g8 \clef tenor a16 h c d |
		es8 f g |
		as \clef bass h,,4~ |
		h c16 h |
		c8 d es |
		f d g |
		c16 h c h c8 |
		c,4 e8 |
		f8 as, b |
		c4 c,8 |
		f4. |
		f'8 f f |
		f f es |
		d c c |
		h h h |
		h h h |
		c d es |
		as f g |
		c, c c |
		c c c |
		d d d |
		d d d |
		es es es |
		f f f |
		g g g |
		g g g |
		g a h |
		\clef tenor c d es |
		f \clef bass h,,4~ |
		h\fermata h8 |
		c d es |
		f d g |
		c, g' f |
		e d c |
		f4 as,8 |
		g4. |
		c8 g es |
		c4 h''8 |
		c g as |
		f g d |
		es g16 f es d |
		c8 d e |
		f g as |
		b c g |
		as c16 b as g |
		f8 d' b |
		es g, c |
		as b b, |
		es as f |
		g h g |
		c g es |
		c c'16 b as g |
		f8 as16 g f es |
		d c h a g8 |
		c es as |
		f g g, |
		c g es |
		c4\fermata \bar "||" c'8 |
		b4 c8 |
		d b g |
		d' fis a |
		fis d fis |
		g a b |
		c,4 r8 |
		a4 r8 |
		b4 r8 |
		g4 r8 |
		a4 r8 |
		fis4 r8 |
		d'4 r8 |
		g b16 a g f |
		es8 g16 f es d |
		c8 d es |
		d c d |
		g f16 es d c |
		b a g a b c |
		d8 e16 fis g a |
		b8 c d |
		es fis,,4~ |
		fis4. |
		g8 b c |
		d4 d,8 |
		g4 as'8 |
		g16 f es d c h |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
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

