% Created on Mon Apr 09 22:08:10 CEST 2007
\version "2.10.20"

\header {
	title = "Al fiero mio sospetto"
	composer = "L. Vinci (1690-1730)"
	mutopiatitle = "Al fiero mio sospetto, Aria from Caduta dei Decemviri"
	mutopiacomposer = "VinciL"
	mutopiainstrument = "Voice (Bass), Viola, Bassoon and Basso Continuo"
	date = "1727"
	source = "Copy, 1710-1740"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/04/16-958"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Al fie -- ro mio so -- spet -- to s'ai vo -- glia di tre -- mar tre -- mar tre -- ma t'a -- spet -- to col fie -- ro mio so -- spet -- to s'ai vo -- glia di tre -- mar al fie -- ro mio so -- spet -- to s'ai vo -- glia  di tre -- mar tre -- ma tre -- ma t'a -- spet -- to t'a -- spet -- to tre -- ma t'a -- spet -- to tu non pa -- ven -- ti_e ri -- di io ti per -- do -- no io ti per -- do -- no con l'ar -- co A -- mor ti sem -- bro e_un mar -- te io so -- no un mar -- te io so -- no al gran pe -- ri -- glio_e ri -- o tre -- mar tu non do -- vrai tre -- mar degg' i -- o tre -- mar tu non do -- vrai tre -- mar degg' i -- o
}
 

staffBass = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Flacco"
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R1*3 |
			r4 r8 a d a fis e16[ d] |
			a'8 a r a d, e16[ fis] e8 d |
			cis4 r a'2 |
			gis fis |
			e4 r8 a e2\prall |
			cis4 r r2 |
			R1 |
			r4 r8 e a a a h16[ cis] |
			d8 d, r d' d d, d d |
			cis r4 cis'8 cis cis, cis cis |
			h h r h' h h, h h |
			a4 r cis2 |
			d4 r gis2\prall |
			a4 r8 d8 a2 |
			d,4 r d'8 d d, r |
			gis2 a4 r8 d |
			a2 d,4 r8 a' |
			d d, fis d a' a, r a' |
			h a \appoggiatura a g4 fis r8 fis |
			g fis \appoggiatura fis e4 d r8 a' |
			d cis16 h cis8 h16[ a] h8 a r g |
			fis e16 d a'8[ a,] d4 r8 d' |
			h a16 g a8[ a,] d4 r |
			R1*2 |
			r4 r8\fermata fis \bar "||" h fis d cis16[ h] |
			fis'8 fis r fis ais ais ais gis16[ fis] |
			h4 r8 h g e fis4 |
			h, r8 h' eis, eis eis eis |
			fis4 r8 h g e fis4 |
			h,2 r4 r8
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Violetta e Fagotti unisono col basso"
	\set Staff.midiInstrument="bassoon"
	\key d \major
	\clef bass
	\relative c' {
		\partial 8 a8 |
		d16 d d d d d d d cis cis cis cis cis cis cis cis |
		h h h h h h h h a a a a a a a a |
		fis fis fis fis g g g g a a a a a, a a a |
		d4 r d16 d d d d d d d |
		cis cis cis cis cis cis cis cis h h h h h h h h |
		a a a a a a a a a' a a a a a a a |
		gis gis gis gis gis gis gis gis fis fis fis fis fis fis fis fis |
		e e e e dis dis dis dis e e e e e e e e |
		a a a a a a a a gis gis gis gis gis gis gis gis |
		fis fis fis fis cis cis cis cis d d d d e e e e |
		a,4 r a'16 a a a g g g g |
		fis fis fis fis fis fis fis fis d d d d d d d d |
		cis cis cis cis cis cis cis cis cis cis cis cis cis cis cis cis |
		h h h h h h h h h h h h h h h h |
		a a a a a a a a cis cis cis cis cis cis cis cis |
		d d d d d d d d gis gis gis gis gis gis gis gis |
		a a a a gis gis gis gis a a a a a a a a |
		d, d d d d d d d d d d d d d d d |
		gis, gis gis gis gis gis gis gis a a a a gis gis gis gis |
		a a a a a a a a d4 cis |
		r8 d fis d a' a, a' fis |
		g fis e a, d d fis d |
		e d cis a d8 d16 e r8 a |
		d8 cis16 h cis8 h16 a h8 a r g |
		fis e16 d a'8 a, d4 r8 d' |
		h a16 g a8 a, d'16 d d d d d d d |
		cis cis cis cis cis cis cis cis h h h h h h h h |
		fis fis fis fis g g g g a a a a a, a a a |
		d4 r h16 h h h h h h h |
		fis' fis fis fis fis fis fis fis e e e e e e e e |
		d d d d h' h h h g g g g fis fis fis fis |
		h, h h h h h h h eis eis eis eis eis eis eis eis |
		fis fis fis fis h h h h g8 e fis fis, |
		h2 r4 r8 
		

	\bar "|."
	}

}


\score {
	<<
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

