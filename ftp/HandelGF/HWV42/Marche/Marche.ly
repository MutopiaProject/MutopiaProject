% Created on Fri Jan 18 21:17:53 CET 2008
\version "2.10.33"

\header {
	title = "Marche"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Marche from Deidamia"
	mutopiacomposer = "HandelGF"
	mutopiapoet = "Paolo Antonio Rolli (1687-1765)"
	mutopiaopus = "HWV 42"
	mutopiainstrument = "Trumpets, Horns, Kettledrum, String Ensemble, Basso Continuo"
	date = "1740"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 94, 1885"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/02/19-1315"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"


staffTrumpetInC = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80
	\set Staff.instrumentName=\markup{\column{"Tromba I" \line{"Corno I"}}}
	\set Staff.midiInstrument="trumpet"
	\transposition c
	\key d \major
	\clef treble
	\relative c''' {
		a4 fis8 e16 d g4 e8 a |
		d, e fis16 e g fis e2 |
		fis4 d8 a g'4 e8 a |
		a g16 fis e8. d16 d2 |
		R1*4 \bar "||" |
		a'4 h8 a g4. fis8 |
		g fis16 g a8 g fis4. e8 |
		fis8 e16 fis g8 fis16 e fis8 e16 fis g8 fis16 e |
		fis16. gis32 fis16. gis32 gis8.\trill fis32 gis a2 |
		R1*4 |
		a4 d8 a h4 g8 fis16 e |
		a8 g16 fis e8 d e4. fis8 |
		d8 e16 fis g8 fis e fis16 g a8 h |
		a g16 fis e8. d16 d2 |
	\bar "|."
	}

}
staffTrumpetInCII = \new Staff  {
	\set Staff.instrumentName=\markup{\column{"Tromba II" \line{"Corno II"}}}
	\set Staff.midiInstrument="trumpet"
	\transposition c
	\key d \major
	\clef treble
	\relative c'' {
		fis4 d8 a e'4 a, |
		fis8 a a d, a'2 |
		a4 fis8 d e'4 a,8 e' |
		fis e16 d a8 a fis2 |
		R1*4 \bar "||" |
		fis'4 g8 fis e4. d8 |
		e d16 e fis8 e d d, fis a |
		r a e' a, r a e' a, |
		d, a' d8. d16 e2 |
		R1*4 |
		fis4 a8 fis g4 e8 a, |
		fis' e16 d g8 fis e a,16 a a8 d, |
		d4 r8 d a' d16 e fis8 g |
		fis e16 d a8 a fis2 |
	\bar "|."
	}

}
staffTimpani = \new Staff  {
	\set Staff.instrumentName="Timpani"
	\set Staff.midiInstrument="timpani"
	\key c \major
	\clef bass
	\relative c {
		d4 d a a8 a |
		d a d d a a16 a a8 a |
		d4 d8 d a4 a8 a |
		d a a a d2 |
		R1*4 \bar "||"
		d4 d8 d a4. a8 |
		a a16 a a8 a d4. a8 |
		d a r a d a r a |
		d d16 d d8 d a2 |
		R1*4 |
		d4 d8 d d4 a8 a |
		d d a d a a16 a a8 d |
		d4 r8 d a4 r8 a |
		d a16 a a8 a d2 |
	\bar "|."
	}

}
staffViolin = \new Staff  {
	\set Staff.instrumentName=\markup{\column{"Violino I" \line{"Oboe I"}}}
	\set Staff.midiInstrument="violin"
	\key d \major
	\clef treble
	\relative c''' {
		R1*4 |
		a4 g16 fis e d g4 fis16 e d cis |
		d8 e fis16 e g fis e2\trill |
		fis4 e16 d cis h g'4 fis16 e d cis |
		a'8 g16 fis e8. d16 d2 \bar "||"
		R1*4 |
		a'4 h8 a g4. fis8 |
		e fis16 g a8 g fis4. e8 |
		fis e16 fis g8 fis16 e fis8 e16 fis g8 fis16 e |
		fis16. gis32 fis16. gis32 gis8.\trill fis32 gis a4~ a16 a h cis |
		d4 a8 fis h4 g8 fis16 e |
		a8 g16 fis e8 d e4. fis8 |
		d e16 fis g8 fis e fis16 g a8 h16 cis |
		d8 g, e8. d16 d2 |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName=\markup{\column{"Violino II" \line{"Oboe II"}}}
	\set Staff.midiInstrument="violin"
	\key d \major
	\clef treble
	\relative c'' {
		R1*4 |
		fis4 e16 d cis h e4 a,16 g fis e |
		a8 cis d16 cis e d cis2\trill |
		a4 g16 fis e d e'4 d16 cis d e |
		fis8 e16 d cis8. d16 d2 \bar "||" |
		R1*4 |
		fis8 e d cis h cis16 d e8 d |
		cis h a h16 cis d4. cis8 |
		d cis16 d e8 d16 cis d8 cis16 d e8 d16 cis |
		d8 a d h cis d e cis |
		a4 d8 a g' d e d16 cis |
		d8 a h d cis h a a |
		h cis16 d e8 d cis d16 e fis8 g |
		a d, d cis d2 |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key d \major
	\clef alto
	\relative c'' {
		R1*4 |
		d4 a8 h cis4 h,8 cis |
		a a' a a a g16 fis e a g a |
		fis4 a,8 h h'4 a8 a |
		a h e, a fis2 \bar "||" |
		R1*4 |
		d'8 a fis e e e h' h |
		cis e, fis g a a h cis16 h |
		a8 a cis a a a cis a |
		fis d' d, e e d cis e |
		fis g a d d4 h8 cis |
		a a g g e' g,4 fis8 |
		g r16 d' cis8 a a e d' g, |
		fis h e, a fis2 |
	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Bassi"
	\set Staff.midiInstrument="harpsichord"
	\key d \major
	\clef bass
	\relative c {
		R1*4 |
		d4 fis8 g e fis g a |
		fis a d g, a h cis a |
		d, e fis g e g a cis |
		d g, a a, d2 \bar "||" |
		R1*4 |
		d'8 cis h cis16 d e8 h e, fis16 g |
		a8 g fis e d fis g a |
		d a r a d a r a |
		d, d' h e, a h cis a |
		fis e fis d g fis e a |
		fis d g h a h cis d |
		g, fis e fis16 g a8 g fis e |
		fis g a a, d2 |
	\bar "|."
	}

}


\score {
	<<
		\staffTrumpetInC
		\staffTrumpetInCII
		\staffTimpani
		\staffViolin
		\staffViolinII
		\staffViola
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

