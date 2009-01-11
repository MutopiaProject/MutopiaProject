% Created on Wed Dec 26 22:30:12 CET 2007
\version "2.10.33"

\header {
	title = "Solfeggio"
	composer = "N. Porpora (1686-1768)"
	mutopiatitle = "Solfeggio"
	mutopiacomposer = "PorporaN"
	mutopiainstrument = "Voice (Soprano) and Basso Continuo"
	source = "Levesque, Bêche: Solfèges d'Italie avec la basse chiffrée (ca. 1800)"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/01/04-1209"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"


staffSoprano = \new Staff  {
	\time 6/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 60 
	\set Staff.instrumentName="Canto"
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef treble
	\relative c'' {
		\autoBeamOff
		d4. a |
		\appoggiatura g8 fis16[ e d8] r h'[ g'32 e16. d32 cis16.] |
		\appoggiatura e8 d a4 h8[ cis d] |
		d[ fis a,] g fis4\prall |
		\appoggiatura fis8 e4\prall r8 e'[ e e] |
		\appoggiatura fis e16[ d] cis4 \times 2/3 {d16[ cis h]} fis'8[ a,] |
		\appoggiatura a8 \times 2/3 {gis16[ fis e]} e'4 \times 2/3 {r16 gis,[ a]} \times 2/3 {h[ a gis]} \times 2/3 {d'[ cis h]} |
		a8\trill e'4 \times 2/3 {r16 a,[ h]} \times 2/3 {cis[ h a]} \times 2/3 {e'[ d cis]} |
		h8\trill e4 \times 2/3 {r16 h[ cis]} \times 2/3 {d[ cis h]} \times 2/3 {fis'[ e d]} |
		cis8[ d e] fis gis,4 |
		a' a,8 \appoggiatura g' \times 2/3 {fis16[ e d]} \appoggiatura cis8 h4\trill |
		a4. r4 r8 \mark \markup { \musicglyph #"scripts.segno" } |
		d4. a |
		\appoggiatura g8 fis16[ e d8] r h'[ g'32 e16. d32 cis16.] |
		\appoggiatura e8 d a4 h8[ cis d] |
		d[ fis a,] g \appoggiatura g fis4 |
		\appoggiatura fis8 e4.\prall r8 a[ a] |
		\appoggiatura cis h16[ a] h4 \times 2/3 {r16 e[ fis]} \times 2/3 {g[ fis e]} \times 2/3 {d[ cis h]} |
		\appoggiatura h8 a16[ g] a4 \times 2/3 {r16 d[ e]} \times 2/3 {fis[ e d]} \times 2/3 {cis[ h a]} |
		g8 g'4 \times 2/3 {r16 cis,[ d]} \times 2/3 {e[ d cis]} \times 2/3 {h[ a g]} |
		fis8 \times 2/3 {r16 fis[ g]} \times 2/3 {a[ g fis]} h8 \times 2/3 {r16 h[ cis]} \times 2/3 {d[ cis h]} |
		a8 \times 2/3 {r16 d[ e]} \appoggiatura g8 \times 2/3 {fis16[ e d]} g8 \times 2/3 {r16 e[ fis]} \appoggiatura a8 \times 2/3 {g16[ fis e]} |
		fis8[ e d] h16[ e] \appoggiatura d cis4\trill |
		d r8 r4 r8 \bar "||" |
		h4. fis' |
		\appoggiatura e8 d16[ cis] h8.[ d16] cis8 h4 |
		\appoggiatura h8 ais16[ gis fis8] r r fis'16[ dis cis h] |
		g'8 h,4 a8[ \times 2/3 {a16 e' fis]} \times 2/3 {g[ fis e]} |
		fis8 a,4 g8 \times 2/3 {r16 d'[ e]} \times 2/3 {fis[ e d]} |
		e8 g,4 fis8 \times 2/3 {r16 cis'[ d]} \times 2/3 {e[ d cis]} |
		d8 \times 2/3 {r16 h[ cis]} \times 2/3 {d[ cis h]} e8 \times 2/3 {r16 h[ cis]} \times 2/3 {d[ cis h]} |
		fis'8 \times 2/3 {r16 h,[ cis]} \times 2/3 {d[ cis h]} g'8[ \appoggiatura fis e \appoggiatura d cis] |
		\appoggiatura h ais4 r8 r fis'[ h,] |
		cis16[ ais] fis8 r r16 fis' fis[ d] cis[ h] |
		cis[ ais] fis8 r h[ d fis] |
		ais,[ h cis] d[ e fis] |
		g4.~ g8 g16[ e d cis] |
		h[ cis] cis4\trill \appoggiatura d8 h4 r8 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.S." } |
	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key d \major
	\clef bass
	\relative c {
		d8 fis d cis a cis |
		d fis d g e a |
		d, fis d g r r |
		fis r r cis d gis, |
		a cis e a cis a |
		e a a, d d dis |
		e e e e e e |
		cis cis cis cis cis cis |
		gis gis gis gis gis gis |
		a h cis d e e, |
		fis fis' cis d e e, |
		a' e cis a a'16 g fis e |
		d8 fis d cis a cis |
		d fis d g e a |
		d, fis d g r r |
		fis r r cis d gis, |
		a a' g fis d fis |
		g g g cis, cis cis |
		fis fis fis h, h h |
		e e e a, a a |
		d d d d d d |
		d d d d cis cis |
		d e fis g a a, |
		d' a fis d4 r8 \bar "||" |
		h d h ais fis ais |
		h d h e fis g |
		fis fis e dis dis dis |
		e e d cis cis cis |
		d d d h h h |
		cis cis h ais ais ais |
		h h h g' g g |
		d d d e e e |
		fis fis fis fis fis fis |
		fis fis fis fis fis fis |
		fis fis16. e32 d16. cis32 h4. |
		fis'8 gis ais h cis d |
		e, e e e e e |
		fis4. h,16. h'32 a16. g32 fis16. e32 |
	\bar "|."
	}

}


\score {
	<<
		\staffSoprano
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

