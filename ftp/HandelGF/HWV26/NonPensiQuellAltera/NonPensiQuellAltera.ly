\version "2.10.33"

\header {
	title = "Non pensi quell'altera"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Non pensi quell'altera , Aria from Lotario"
	mutopiacomposer = "HandelGF"
	mutopiapoet = "Giacomo Rossi"
	mutopiaopus = "HWV 26"
	mutopiainstrument = "Voice (Tenor), String Ensemble, Basso Continuo"
	date = "1729"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 77, 1879"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/05/18-1318"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Non pen -- si quell' al -- te -- ra di vin -- cer -- mi d'or -- go -- glio; vo -- glio che t'a -- mi, o vo -- glio op -- pres -- so_il suo ri -- gor, vo -- glio che t'a -- mi, o vo -- glio op -- pres -- so_il suo ri -- gor, o vo -- glio op -- pres -- so_il suo ri -- gor; non pen -- si quell' al -- te -- ra di vin -- cer -- mi d'or -- go -- glio; vo -- glio che t'a -- mi,_o vo -- glio op -- pres -- so_il suo ri -- gor, vo -- glio che t'a -- mi_o vo -- glio vo -- glio che t'a -- mi,  o vo -- glio op -- pres -- so_il suo ri -- gor, vo -- glio che t'a -- mi,_o vo -- glio op -- pres -- so_il suo ri -- gor, vo -- glio op -- pres -- so_il suo ri -- gor.
A -- spet -- ti dal mio sde -- gno du -- re ca -- te -- ne_al pie -- de, se_al mio vo -- ler non ce -- de, o sprez -- za_ar -- di -- ta,_e fie -- ra i lac -- ci del tuo_a -- mor, se sprez -- za_ar -- di -- ta,_e fie -- ra i lac -- ci del tuo_a -- mor.
Non
}


staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120
	\set Staff.instrumentName="Violini"
	\set Staff.midiInstrument="violin"
	\key a \major
	\clef treble
	\relative c'' {
		\partial 8 a8 |
		cis4 e fis, d' |
		gis, a a'2~ |
		a16 cis h a d cis h a gis a gis fis e d cis d |
		cis h a gis a4 r r16 e' d cis |
		fis a gis a fis a gis a fis a gis a fis a gis fis |
		h dis, cis dis h dis cis h e gis fis gis e gis fis e |
		a cis, h cis a cis h a d fis e fis d fis e d |
		gis h, a h gis h a gis cis e d e cis e d cis |
		fis a, gis a fis d' cis d h fis' e fis d h' a h |
		gis h a h d, fis e d cis a' gis a a, cis h a |
		d8. gis,16 a8. h16 e,4 gis'\trill |
		a a, r r8 a \mark \markup { \musicglyph #"scripts.segno" } |
		cis4 e fis, d' |
		gis, a a'2~ |
		a4 h~ h16 a gis fis e d cis h |
		a e d e cis a' gis a e cis' h cis a e' d e |
		cis4 cis, r16 a'' gis a fis a gis a |
		h dis, cis dis h dis cis h e gis fis gis e gis fis gis |
		a4 a, r16 fis' e fis dis fis e fis |
		h, e dis e gis, h a h e, gis fis gis e gis fis e |
		h'4 h, r h'~ |
		h a8. gis16 a16 a' gis a cis, a' gis a |
		fis,4 h, gis''2 |
		r16 a, gis a fis cis' h a fis'4 r |
		r16 gis, fis gis e h' a gis e'4 r |
		r16 cis h cis fis, a gis a dis,4 fis' |
		h,, r r2 |
		r16 fis' e fis h, h' a h fis fis' e fis dis h' a h |
		h, h' a h e, gis fis gis h, e dis e gis, h a h |
		e,4 r r2 |
		r r4 r8 h' |
		gis'4 h cis, a' |
		dis, e a2~ |
		a16 cis h a d cis h a gis a gis fis e d cis d |
		cis h a gis a4 r r8 e |
		a4 cis fis, d' |
		gis, e' r cis |
		ais4. h8 fis4 r |
		r16 fis' e fis d fis e fis h, d cis d fis, a gis fis |
		gis4 r r2 |
		R1*4 |
		r16 e' d e cis e d e a, cis h cis e, a gis a |
		fis fis' e fis d fis e fis h, d cis d fis, a gis fis |
		gis gis' fis gis e gis fis gis cis, e d e gis, h a gis |
		a a' gis a fis a gis a d, fis e fis h, d cis d |
		gis, h' a h d, fis e d cis e d e a, cis h a |
		gis4 e r2 |
		R1 |
		r16 a' gis a cis, e d e a, cis h cis cis, e d e |
		a,4 r r2 |
		R1*3 |
		r16 h'' a h d, fis e d cis e d e a, cis h a |
		gis h a h e,4 r2 |
		R1 |
		r2 r4 r8 e |
		cis'4 e fis, d' |
		gis, a a'2~ |
		a16 cis h a d cis h a gis a gis fis e d cis d |
		cis h a gis a4 r r16 e' d cis |
		fis a gis a fis a gis a fis a gis a fis a gis fis |
		h dis, cis dis h dis cis h e gis fis gis e gis fis e |
		a cis, h cis a cis h a d fis e fis h, d cis h |
		gis' h a h d, fis e d cis a' gis a a, cis h a |
		d8. gis,16 a8. h16 e,4 gis' |
		a a,\fermata \bar "||" r2 |
		R1*18 |
		r2 r4 r8 a |
		cis4 e fis, d' |
		gis16 h a h d, fis e d cis a' gis a a, cis h a |
		d8. gis,16 a8. h16 e,4 gis' |
		a a, r r8 a \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.S." } |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key a \major
	\clef alto
	\relative c' {
		\partial 8 a8 |
		cis4 e fis, d' |
		gis, a r e' |
		fis h h, gis' |
		a cis, e cis |
		r cis' cis, cis' |
		dis, gis r gis |
		fis cis h fis' |
		h, e r e |
		d a d fis |
		e gis a e |
		gis8. d16 cis8. fis16 e4 d |
		cis2 r4 r8 a |
		cis4 e fis, d' |
		gis, a r2 |
		R1*16 |
		r2 r4 r8 h' |
		h4 e, e fis |
		fis gis r e |
		fis d h' gis |
		a cis, r2 |
		R1*24 |
		r2 r4 r8 e |
		e4 a a, h |
		h4 cis r e |
		fis h h gis |
		a cis, e cis |
		r cis' cis, cis' |
		dis, gis r gis |
		fis cis h fis' |
		e gis a e |
		gis8. h,16 cis8. d16 h4 e |
		cis2\fermata \bar "||" r2 |
		R1*18 |
		r2 r4 r8 a |
		cis4 e fis, d' |
		h e e e |
		gis8. d16 cis8. d16 cis4 h |
		cis2 r4 r8 a |
	\bar "|."
	}

}
staffTenor = \new Staff  {
	\set Staff.instrumentName="Berengario"
	\set Staff.midiInstrument="oboe"
	\key a \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R1*11 |
			r2 r4 r8 a |
			cis4 e fis, d' |
			gis, a r e' |
			fis16[ e d8] d16[ cis h8] gis4. e'8 |
			cis[ h] a4 r2 |
			cis4 d8. e16 fis4 fis8. fis16 |
			fis4 gis, r e' |
			e8.[ dis32 e fis8] e dis[ cis] h[ a] |
			gis2 r |
			fis4 gis8. a16 h4 cis8. dis16 |
			e4 e, r fis' |
			dis dis8.[ cis16] dis8[ fis] e[ dis] |
			cis2~\melisma cis8.[ e16]dis[ e cis8] |
			h2~ h8[ e16 dis] cis[ e h8] |
			a4 fis'~ fis16[ e dis cis] h[ a gis fis] |
			gis[ a h8] a16[ h cis8] h16[ cis dis8] cis16[ dis e8] |
			dis2~\trill dis4.\melismaEnd cis16[ h] |
			e4 e, r e' |
			e2~\melisma e4 dis8.[ cis16] |
			h4.\melismaEnd cis8 gis4\melisma fis8.\melismaEnd e16 |
			e2 r |
			R1*2 |
			r2 r4 r8 e |
			a4 cis fis, d' |
			gis, e' r cis |
			ais4. h8 fis4. cis'8 |
			d[ cis] h4 r2 |
			h4 cis8 d e4. d8 |
			cis4 h r cis8[ gis] |
			a4 fis' fis16[ e d8] cis16[ h a8] |
			gis4\melisma e'~ e16[ d cis h a gis fis e] |
			fis4 d'~ d16[ cis h a gis fis e d] |
			e2\melismaEnd r |
			a4 fis8. a16 h4 h |
			h gis r2 |
			cis4 a8. fis16 d'4 d8. d16 |
			d4 e, r cis' |
			h e fis, d' |
			e,8[\melisma fis16 gis] a8[ h16 cis] d8[ h16 cis] d[ cis h8] |
			cis2\melismaEnd r |
			d4 e8. fis16 ais,4. ais8 |
			h[ cis] d4 r cis8.[\trill h16] |
			cis8[ d16 cis d8] h gis4. a8 |
			a16[\melisma h cis8] h16[ cis d8] cis16[ dis e8] dis8.[ cis32 dis]\melismaEnd |
			e4 e, r2 |
			r r4 h' |
			e2. fis,4 |
			gis2. a4 |
			a1 |
			R1*8 |
			r2 \bar "|" r4 a |
			cis e a, cis |
			d8[ cis] d4 r2 |
			c4 e8 d c4 h |
			h ais r ais |
			h4. fis8 cis'4. fis,8 |
			d'[ cis] h4 r gis |
			a e h' e, |
			cis'8[ h]a4 r e' |
			dis cis8[ his] cis4 dis |
			gis,2~\melisma gis8[ his16 ais] gis8[ ais16 his] |
			cis4 e~ e16[ dis cis8] h16[ a gis8] |
			a4 fis~ fis8[ a16 gis] a[ gis fis8] |
			fis'4. e8 dis16[ cis h8] a16[ gis fis8] |
			gis2\melismaEnd r4 e' |
			d fis8[ e] d4 cis |
			his cis2 a4 |
			gis2. e'4 |
			his2. cis4 |
			cis2 r |
			R1*3 |
			r2 r4 r8 a8 |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Bassi"
	\set Staff.midiInstrument="harpsichord"
	\key a \major
	\clef bass
	\relative c' { 	
		\partial 8 a8 |
		cis4 e fis, d' |
		gis, a r cis, |
		d h e e, |
		a a' cis a |
		r a a, a' |
		gis gis, r cis |
		fis fis, h d |
		e e, r a' |
		d d, r h' |
		e e, r cis' |
		h a8. d,16 e4 e, |
		a2 r4 r8 a' |
		cis4 e fis, d' |
		gis, a r cis, |
		d h e e, |
		a' a, r2 |
		a'4 a, a a' |
		gis gis, r gis' |
		fis fis, h dis |
		e e, r2 |
		dis'4 e8. fis16 gis4 gis, |
		cis cis, r a'' |
		h h, h' e, |
		a a, r fis' |
		gis gis, r e' |
		fis a h dis, |
		e fis gis a |
		h h, a a' |
		gis gis, r gis' |
		cis cis, gis a |
		h e h' h, |
		e gis a fis |
		h e, r cis' |
		d h e e, |
		a, a' cis a |
		r a, d h |
		e cis r e |
		fis e fis fis, |
		h' h, r2 |
		e4 d cis h |
		a e' r cis |
		fis fis, h d |
		e r cis r |
		d r h r |
		cis r r2 |
		d4 d, r2 |
		e'4 e, r2 |
		fis'4 fis, r2 |
		e'4 gis a a, |
		e' cis d h |
		cis fis h, gis' |
		a a, g g' |
		fis e8. d16 cis4 fis |
		d h'8 a gis4 e |
		a d, e e, |
		a gis' a fis |
		e e, r2 |
		r r4 d' |
		cis2. d4 |
		e2 e, |
		a4 cis d h |
		e4 a, r cis' |
		d h e e, |
		a, a' cis a |
		r a a, a' |
		gis gis, r cis |
		fis fis, h d |
		e e, r cis'' |
		h a8.[ d,16] e4 e, |
		a2\fermata \bar "||" r4 a' |
		g a, r g' |
		fis d8 e fis4 d |
		e e, e' e, |
		e' e, r e' d h' ais, fis' |
		h, d8 cis d4 h |
		cis a' gis, gis' |
		a cis8 h a4 gis |
		fis gis a fis |
		gis fis e dis |
		e cis r e |
		fis4 a8 gis a4 fis |
		dis h r dis |
		e fis gis e |
		fis fis, r a' |
		gis e8 dis e4 fis |
		gis2 fis |
		gis gis, |
		cis r4 r8 a' |
		cis4 e fis, d' |
		e, gis a cis |
		h a8. d,16 e4 e, |
		a2 r4 r8 a' |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViola
		\staffTenor
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}
