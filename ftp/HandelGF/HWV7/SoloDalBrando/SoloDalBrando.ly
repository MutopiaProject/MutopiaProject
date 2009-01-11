% Created on Wed Jan 30 17:23:24 CET 2008
\version "2.10.33"

\header {
	title = "Solo dal brando"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Solo dal brando , Aria from Rinaldo"
	mutopiacomposer = "HandelGF"
	mutopiapoet = "Giacomo Rossi"
	mutopiaopus = "HWV 7"
	mutopiainstrument = "Voice (Alto), String Ensemble, Basso Continuo"
	date = "1711"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 58, 1874"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/02/19-1319"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
So -- lo dal bran -- do, dal sen -- no so -- lo, del -- la vit -- to -- ria na -- sce_il pia -- cer; so -- lo dal bran -- do, dal sen -- no so -- lo, del -- la vit -- to -- ria, del -- la vit -- to -- ri -- a na -- sce_il pia -- cer, del -- la vit -- to -- ria, del -- la vit -- to -- ri -- a na -- sce_il pia -- cer.
Mà un cor a -- man -- do fer -- ma_il suo vo -- lo, nè del -- la glo -- ria cu -- ra_il pen -- sier, nè del -- la glo -- ria cu -- ra_il pen -- sier.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violini unisoni"
	\set Staff.midiInstrument="violin"
	\key d \major
	\clef treble
	\relative c''' {
		a16 a, a a a a a a d d, d d d d d d |
		g' g g g g g g g a,, a a a a a a a |
		cis' a a a e' a, a a a' a, a a d fis, fis fis |
		e cis' d e cis d h cis d8 d, r4 |
		r2 r16 e' e e e e e e |
		e a, a a d d, d d h'4 r |
		r2 r16 d d d d d d d |
		cis e d e a, a' a a dis, dis dis dis dis fis e fis |
		h, e e e e e e e e a, a a a cis cis cis |
		d a a a d d, d d h' h, h h g' g g g |
		g h a g fis e fis d cis8 a d a |
		e' a, d a cis16 a' a a fis d' d d |
		cis8 a r4 r2 |
		r4 fis'16 fis fis fis fis fis fis fis e e e e |
		e e e e d d d d cis cis cis cis d d d d |
		a4 r r2 |
		a'16 a, a a a a a a d d, d d d d d d |
		g' g g g g g g g a,, a a a a a a a |
		cis' a a a e' a, a a a' a, a a d fis, fis fis |
		e cis' d e cis d h cis d8\fermata d, r4 \bar "||" |
		\time 3/4
		R2.*12 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
staffAlto = \new Staff  {
	\set Staff.instrumentName="Goffredo"
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef treble
	\relative c'' {
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			R1*3 |
			r2 r8 a fis e16[ d] |
			cis4 d r8 g g g |
			g[ fis] fis4 r8 g16[fis] e8 d |
			cis[ e] a4 r8 h gis8. a16 |
			a2 r8 a a a |
			a[ fis] g4 r8 g g h |
			g4 fis~ fis8 g16[ fis]e8 d |
			cis16[\melisma d h cis] d8[ r16 d] e[ fis d e] fis[ g e fis] |
			g[ fis g e] fis[ e fis d] e8\melismaEnd a, r4 |
			r a'8 g16 fis e8 fis16 g fis8 e16 d |
			d4 a'8 g16 fis h[\melisma a h cis] h[ e, fis g] |
			a[ g a h]a[ d, e fis] g[ h a g] fis[ a g fis] |
			fis8\melismaEnd e d' cis16 h a8 g16 fis fis8 e16 d |
			d4 r r2 |
			R1*3 |
			\time 3/4
			fis4 r8 fis8 g a |
			dis,2 e4 |
			fis g a |
			g2 fis4 |
			c' a f |
			dis2 h'4 |
			r g fis8 e |
			e2. |
			a4 b a |
			gis2 a4 |
			d4 c\melisma h8\melismaEnd a |
			a2. |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Bassi"
	\set Staff.midiInstrument="harpsichord"
	\key d \major
	\clef bass
	\relative c' {
		d8 cis h a h a g fis |
		e d cis h a4 r |
		g'8 r g r fis4 r8 h |
		g e a a, d e fis g |
		a fis h a g e cis a |
		d e fis d g h gis e |
		a gis fis cis d h e e, |
		a4 r8 a' dis, fis h, dis |
		e,4 r8 g' cis, e a, a' |
		d, cis d fis, g4 r8 e' |
		a4 r8 d, a'4 r |
		r2 r8 a d fis, |
		a g fis g a d, a' a, |
		d a' d d, g fis g e |
		fis e fis d e a d, fis |
		a g fis g a d, a' a, |
		d' cis h a h a g fis |
		e d cis h a4 r |
		g'8 r g r fis4 r8 h |
		g e a a, d4 r \bar "||" |
		\time 3/4
		c4 r r |
		a2 g4 |
		dis'2 r4 |
		e2 h4 |
		a'2. |
		a2 g4 |
		h2 h,4 |
		e2. c4 d2 |
		d c4 |
		fis e e, |
		a2. |
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

