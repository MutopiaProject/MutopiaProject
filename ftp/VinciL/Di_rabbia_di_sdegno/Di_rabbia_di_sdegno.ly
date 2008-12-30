% Created on Tue Nov 27 19:42:26 CET 2007
\version "2.10.33"

\header {
	title = "Di rabbia, di sdegno"
	composer = "Leonardo Vinci (1690-1730)"
	mutopiatitle = "Di rabbia, di sdegno, Aria from Semiramide"
	mutopiacomposer = "VinciL"
	mutopiainstrument = "Ensemble: Alto, Strings, Basso Continuo"
	source = "Conservatorio S. Pietro a Majella, DM02032202162"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/12/02-1180"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Di rab -- bia di sde -- gno mi sen -- to mo -- ri -- re mi sen -- to mo -- ri -- re ta -- ce -- re_o par -- ti -- re par -- ti -- re_o ta -- ce -- re di rab -- bia di sde -- gno mi sen -- to mo -- ri -- re mo -- ri -- re mi sen -- to ta -- ce -- re_o par -- ti -- re par -- ti -- re_o ta -- cer ta -- ce -- re_o par -- ti -- re par -- ti -- re_o ta -- cer Ah la -- scia -- mi pria pu -- nir quell' in -- de -- gno.. la -- scia -- mi.. la -- scia -- mi.. pu -- nir quell' in -- de -- gno.
Non più si dia del -- la bat -- ta -- glia il se -- gno.
}

Sem = {\set Staff.forceClef = ##t \clef treble \mark "Semiramide:"}

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violini"
	\set Staff.midiInstrument="violin"
	\key d \major
	\clef treble
	\relative c' {
		\partial 8 r8 |
		fis16 fis d' d fis, fis d' d e, e cis' cis e, e a a |
		d, d d' d h h g g cis, cis cis' cis a a fis fis |
		h, h h' h g g e e h h a' a fis fis d' d |
		gis, gis e' e gis, gis e' e a, a e' e e, e a a |
		fis fis a a d, d e e h h e' e cis cis a' a |
		e e cis' cis a a e e a, a fis' fis d d a a |
		fis fis cis' cis a a fis fis dis dis fis fis h h fis fis |
		g8 g fis e dis16 dis h' h fis fis h h |
		eis, eis cis' cis gis gis eis eis fis fis a a fis fis a a |
		dis, dis a' a fis fis dis dis e e g g e e g g |
		cis, cis g' g e e cis cis d4 r8 a' |
		fis e16 d a'8 a, d16 d d' d fis, fis d' d |
		d, d d' d fis, fis d' d d, d fis' fis a, a a' a |
		d, d d' d d, d d' d cis8 d e, cis' |
		d d, e, cis' d4 r |
		fis,16 fis a a d, d fis fis g g d' d h h d d |
		gis, gis h h e, e gis gis a a cis cis a a cis cis |
		e, e e' e cis cis e e a, a a' a e e a a |
		d,8 cis h a e' e, r4 |
		R1*3 |
	\bar "|."
	}

}
staffAlto = \new Staff  {
	\set Staff.instrumentName="Ircano"
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef treble
	\relative c' {
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			\partial 8 d8 |
			fis d r d a' a r a |
			d g, r g g fis r fis |
			h e, r e d d r a' |
			gis[ a] h cis cis h r e, |
			fis[ a] d, e e a, r e' |
			a a r cis fis, fis r fis |
			a a r a c h r a |
			g4 fis8 e h' h, r h' |
			h4 cis,8. cis16 a'8 a r a |
			a4 h,8. h16 g'4 r8 g |
			g4 a,8. a16 fis'8 fis r a |
			fis[ e16 d] a'8 a d,4 r |
			R1*2 |
			r2 r4 a' |
			fis fis8. fis16 g4 r8 r16 d' |
			gis,4 gis8. gis16 a8 a r4 |
			a8 e16 e r4 cis'8 a16 a r8 a |
			d8[ cis] h a e' e, r \Sem cis'8 |
			e4 r8 e cis4 cis8 d16 e |
			fis8 d r cis a a r4 |
			R1 |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Viola col Basso"
	\set Staff.midiInstrument="harpsichord"
	\key d \major
	\clef bass
	\relative c {
		\partial 8 r8 |
		d16 d d d d d d d cis cis cis cis cis cis cis cis |
		h h h h h h h h a a a a a a a a |
		g g g g g g g g fis fis fis fis fis fis fis fis |
		e' e e e e e e e e e e e cis cis cis cis |
		d d d d d d e e a, a a a a a a a |
		cis cis cis cis cis cis cis cis d d d d d d d d |
		dis dis dis dis dis dis dis dis dis dis dis dis dis dis dis dis |
		e8 e d c h16 h h h h h h h |
		cis cis cis cis cis cis cis cis fis fis fis fis fis fis fis fis |
		h, h h h h h h h e e e e e e e e |
		a, a a a a a a a d8 d r a' |
		fis e16 d a'8 a, d16 d d d d d d d |
		h h h h h h h h fis fis fis fis fis fis fis fis |
		g g g g g g g g a8 fis' g a |
		h fis g a d,4 r |
		d16 d d d c c c c h h h h h h h h |
		e e e e d d d d a a a a a a a a |
		a a a a a a a a a a a a a a a a |
		d'8 cis h a e' e, r4 |
		gis2 a |
		d,~ d4 e |
		a, r r2 |
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
		indent=20
	}
}

\paper {
}

