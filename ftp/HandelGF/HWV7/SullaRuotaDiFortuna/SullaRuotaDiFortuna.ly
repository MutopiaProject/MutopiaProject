% Created on Tue Jan 29 21:54:03 CET 2008
\version "2.10.33"

\header {
	title = "Sulla ruota di fortuna"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Sulla ruota di fortuna , Aria from Rinaldo"
	mutopiacomposer = "HandelGF"
	mutopiapoet = "Giacomo Rossi"
	mutopiaopus = "HWV 7"
	mutopiainstrument = "Voice (Alto) and Basso Continuo"
	date = "1711"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 58, 1874"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2009/01/07-1617"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Sul -- la ruo -- ta di for -- tu -- na và gi -- ran -- do la spe -- ran -- za; sul -- la ruo -- ta di for -- tu -- na và gi -- ran -- do la spe -- ran -- za, và gi -- ran -- do la spe -- ran -- za, sul -- la ruo -- ta di for -- tu -- na và gi -- ran -- do la spe -- ran -- za, và gi -- ran -- do la spe -- ran -- za, sul -- la ruo -- ta di for -- tu -- na và gi -- ran -- do la spe -- ran -- -za.
Mà se_un cor vir -- tu -- te_ad -- u -- na, gl'è sol ba -- se la co -- stan -- za, mà se_un cor vir -- tu -- te_ad -- u -- na, gl'è sol ba -- se la co -- stan -- za.
}
 

staffAlto = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 110 
	\set Staff.instrumentName="Eustazio"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			R2.*9 |
			r4 f4. c8 |
			f e f4. g8 |
			a g a4. b8 |
			c8 b16[ a] g4. f8 |
			e[ d] c4 r |
			R2.*3 |
			r4 f4. c8 |
			f8 e f4. g8 |
			a g a4 b |
			c8 b16[ a] g4. f8 |
			e[ d] c4 c'8 g |
			a16[ b] c8 f,4. f8 |
			h4.\melisma c16[ h] \times 2/3 {c8[ h a]} |
			\times 2/3 {g[ a f]} e4 d8. c16\melismaEnd |
			c2 r4 |
			c'8 b a g f e |
			d[ e] f2 |
			g8 a b a g f |
			e4.\melisma f16[ e] e8.[ d32 e] |
			f4. g16[ f] f8.[ e32 f] |
			g4. a16[ g] g8.[f32 g] |
			a4~ a16[ c b c] a[ b g a] |
			f4~ f16[ a g a] f[ g e f] |
			\times 2/3 {d8[ f e]} \times 2/3 {f8[ a g]} \times 2/3 {a8[ g f]} |
			b4.\melismaEnd g8 e d |
			c4. b'8 a[ g] |
			a16[ g f8] e2 |
			f2. |
			R2. |
			g8. a16 g8. a16 g8. a16 |
			g8 b16[ a] g8[ b16 a g8] e |
			c4. b'8 a8[ g] |
			a[ g16 f] e2 |
			f2. |
			R2.*6 |
			r4 a4. g8 |
			f16[ e] d8 b'4. b8 |
			b a a4. a8 |
			a8 d, g4. g8 |
			g4. a8 f e |
			f16[ e] d8 fis4. fis8 |
			g e gis4. gis8 |
			a gis a4. h8 |
			d,4.\melisma h'16[ a] gis[ fis e8] |
			c'16[ h a8] gis2\melismaEnd |
			a2. \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
			#begin-of-line-invisible \mark \markup { "D.C." } |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Bassi"
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c {
		f16 g a b c8 f, e c |
		f4 f, r |
		f'16 g a b c8 f, e c |
		d16 e f g a8 d, c a |
		b16 c d e f8 b, a f |
		c' c' a16 b c8 g c |
		f, c' e, c' d, c' |
		c,4. c'16 b a g f e |
		f8 b, c4. c8 |
		f,4 r r |
		r f' c |
		f8 e f4 g |
		a8 g a4 b |
		c r8 c a16 b c8 |
		f, c' e, c' d, b' |
		c,4. \clef tenor f'16 e d c b a |
		\clef bass b a g f c'4 c, |
		f, r r |
		r f' c |
		f8 e f4 g |
		a8 g a4 b |
		c8 g e16 f g8 c, e |
		f4. d8 h16 c d8 |
		g,4 f' e |
		f g g, |
		c16 d e f g8 c, b g |
		a4 r r |
		b16 c b c d8 c b a |
		g4 r r |
		c16 d e f g8 c, b g |
		a4. a'8 g f |
		e4. g8 e c |
		f16 g a b c8 f, e c |
		d16 e f g a8 d, c a |
		b4 r a' |
		g r f |
		e r f |
		b, c r8 c' |
		a16 b c8 g c f, c' |
		e, c' d, c' d, b' |
		c,4 r r |
		b r r |
		a4. g8 f4 |
		b c c, |
		f'16 g a b c8 f, e c |
		d16 e f g a8 d, c a |
		b16 c d e f8 b, a f |
		c' c' a16 b c8 g c |
		f, c' e, c' d, b' |
		c,4. c'16 b a g f e |
		f8 b, c4 c, |
		f2\fermata cis'4 |
		d r8 g, b g |
		c4 r8 f, a f |
		b4 r8 e16 f g8 e |
		a,16 h cis d e8 a, cis a |
		d4 r8 a' c a |
		b4 r8 h d h |
		c4 r8 f, d f |
		e16 fis gis a h8 e, d e |
		a, f' e4 e, |
		a2. |
	\bar "|."
	}

}


\score {
	<<
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

