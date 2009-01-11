\version "2.10.7"

\header {
	title = "Bel piacer"
	composer = "N. Porpora (1686-1768)"
	mutopiatitle = "Bel piacer, Aria from Semiramide riconosciuta"
	mutopiacomposer = "PorporaN"
	mutopiainstrument = "Voice (Soprano), String Ensemble, Basso Continuo"
	date = "1729"
	source = "Copy of various copyists, 1710-1740"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/04/01-948"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Bel pia -- cer bel pia -- cer sa -- ri -- a sa -- ria d'un co -- re quel po -- te -- re a su -- o ta -- len -- to, quan -- d'a -- mor gli dà tor -- men -- to, ri -- tor -- na -- re in li -- ber -- tà ri -- tor -- na -- re in  li -- ber -- tà in li -- ber -- tà, in li -- ber -- tà. Bel pia -- cer, bel pia -- cer sa -- ri -- a, sa -- ria d'un co -- re quel po -- ter a suo ta -- len -- to quan -- d'a -- mor gli dà tor -- ment -- to, gli dà tor -- men -- to ri -- tor -- na -- re in li -- ber -- tà, ri -- tor -- na -- re in li -- ber -- tà, ri -- tor -- na -- re in li -- ber -- tà, in li -- ber -- tà, in li -- ber -- tà. Ma non li -- ce e vuol' a -- mo -- re vuol a -- mo -- re che a sof -- frir l'al -- ma s'av -- vez -- zi, s'av -- vez -- zi e che a -- do -- ri an -- che i di -- sprez -- zi d'u -- na bar -- ba -- ra bel -- tà, d'u -- na bar -- ba -- ra bel -- tà, d'u -- na bar -- ba -- ra bel -- tà.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 60
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key a \major
	\clef treble
	\relative c'' { 	
		e8 a d,8. cis32 d \appoggiatura d8 cis4. a'8 |
		e32 d cis16 e32 d cis16 h8.\prall a32 h a4 fis'8.\prall e32 fis |
		e8 a, fis'8.\prall e32 fis e d cis16 e32 d cis16 h8.\prall cis32 d |
		cis16 a' gis a gis a gis a h,8. cis32 d cis8 h |
		cis16 a' gis a gis a gis a h,8. cis32 d cis8 h |
		cis16 a gis a h a h a cis a gis a h a h a |
		e' a, gis a h a h a fis'8 fis4\prall gis8 |
		a a,4 d8 cis16 e a8 h,8.\prall cis32 d |
		cis16 e a8 h,8.\prall cis32 d cis16 a' a, h h8.\prall a16 |
		a8 e a,4 e''8 e fis fis |
		e e e e a a gis gis |
		a e fis8.\prall e32 fis e8 a, fis'8.\prall e32 fis |
		e d cis16 e32 d cis16 h4 a16 a' gis a gis a gis a |
		h,8.\prall cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8.\prall cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8.\prall cis32 d cis8 h cis e e a |
		a a, a a gis16 e' dis e dis e dis e |
		<d, a' fis'>8 fis'4\prall gis8 a16 a, gis a gis a gis a |
		d8 cis4 h8 cis16 e dis e dis e dis e |
		e,4 gis'\prall a16 e dis e dis e dis e |
		e,4 gis'4\prall a8 a, a' a |
		gis gis fis fis gis a h e, |
		e4 dis\prall <gis, h e> r |
		<gis h e> r <<{gis'8 gis gis gis}\\{<e, h'>2}>> |
		gis'16 h gis e h gis' e h e,8. fis16 e d cis h |
		a4 r e''8 a d,8.\prall cis32 d |
		cis4\prall r e32 d cis16 e32 d cis16 h4\prall |
		a8 a, fis''8.\prall e32 fis e8 a, fis'8.\prall e32 fis |
		e d cis16 e32 d cis16 d4\prall cis16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis gis'4\prall a8 |
		c,2\prall h16 e dis e dis e dis e |
		fis8 fis4\prall gis8 a16 a, gis a gis a gis a |
		d8 cis4 h8 cis16 a gis a h a h a |
		d a gis a h a h a e' a, gis a h a h a |
		fis'8\prall fis4\prall gis8 a a, fis' a, a4 gis\prall cis16 a gis a h a h a |
		d a gis a h a h a e' a, gis a h a h a |
		fis'8 fis4\prall gis8 a gis16 fis e8 a, |
		a4 gis <a cis e> <a cis e> |
		<a cis e> <a cis e> r16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis16 e a8 h,8. cis32 d |
		cis16 e a8 h,8. cis32 d cis16 a' a, h h8.\prall a16 |
		a4 r \cadenzaOn \cadenzaOff
		\time 6/4
		\key a \minor
		\tempo 4 = 100
		e'8.\prall d32 e f4 e \appoggiatura e d2\prall c4 |
		h8 f'e a, h gis a f' e a, h gis |
		a8. gis32 a h4 r e8. d32 e f4 e |
		\appoggiatura e d2 c4 h8 f' e a, h gis |
		a f' e a, h gis a4 r r |
		g'8 g g g g g a a a a a a |
		e e e e d d c c c c c c |
		fis4 fis2\prall g4 g, fis'~ |
		fis e dis e e e |
		\times 2/3 {e8 fis e} \times 2/3 {d e d} \times 2/3 {c d c} \times 2/3 {h c h} \times 2/3 {a h a} \times 2/3 {g a g} |
		fis4 dis'2\prall e4 e e |
		g8 g, g g g g h,4 r r |
		R1. |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key a \major
	\clef treble
	\relative c'' { 	
		e8 a d,8. cis32 d \appoggiatura d8 cis4. a'8 |
		e32 d cis16 e32 d cis16 h8.\prall a32 h a4 fis'8.\prall e32 fis |
		e8 a, fis'8.\prall e32 fis e d cis16 e32 d cis16 h8.\prall cis32 d |
		cis16 a' gis a gis a gis a h,8. cis32 d cis8 h |
		cis16 a' gis a gis a gis a h,8. cis32 d cis8 h |
		cis16 a gis a h a h a cis a gis a h a h a |
		e' a, gis a h a h a fis'8 fis4\prall gis8 |
		a a,4 d8 cis16 e a8 h,8.\prall cis32 d |
		cis16 e a8 h,8.\prall cis32 d cis16 a' a, h h8.\prall a16 |
		a8 e a,4 cis'8 cis d d |
		a a cis cis cis cis h h |
		cis cis fis8.\prall e32 fis e8 a, fis'8.\prall e32 fis |
		e d cis16 e32 d cis16 h4 a16 a' gis a gis a gis a |
		h,8.\prall cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8.\prall cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8.\prall cis32 d cis8 h cis cis cis cis |
		cis cis cis cis h16 e dis e dis e dis e |
		<d, a' fis'>8 fis'4\prall gis8 a16 a, gis a gis a gis a |
		d8 cis4 h8 cis16 e dis e dis e dis e |
		e,4 gis'\prall a16 e dis e dis e dis e |
		e,4 h'\prall cis8 e fis fis |
		h, h h fis' gis a h e, |
		e4 dis\prall <gis, h e> r |
		<gis h e> r <<{gis'8 gis gis gis}\\{<gis, h>2}>> |
		<gis h e>16 gis' e h gis e' h gis e8. fis16 e d cis h |
		a4 r e''8 a d,8.\prall cis32 d |
		cis4\prall r e32 d cis16 e32 d cis16 h4\prall |
		a8 a, fis''8.\prall e32 fis e8 a, fis'8.\prall e32 fis |
		e d cis16 e32 d cis16 d4\prall cis16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis gis'4\prall a8 |
		c,2\prall h16 e dis e dis e dis e |
		fis8 fis4\prall gis8 a16 a, gis a gis a gis a |
		d8 cis4 h8 cis16 a gis a h a h a |
		d a gis a h a h a e' a, gis a h a h a |
		fis'8\prall fis4\prall gis8 a a, fis' a, a4 gis\prall cis16 a gis a h a h a |
		d a gis a h a h a e' a, gis a h a h a |
		fis'8 fis4\prall gis8 a gis16 fis e8 a, |
		a4 gis <a cis e> <a cis e> |
		<a cis e> <a cis e> r16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis16 e a8 h,8. cis32 d |
		cis16 e a8 h,8. cis32 d cis16 a' a, h h8.\prall a16 |
		a4 r |
		\time 6/4
		\key a \minor
		a gis a h, gis' a |
		d, c e a, c e |
		a, e' d c16 e a8 gis4 a |
		h,4 gis' a d, c e |
		a, c e a, r r |
		c'8 c c c c c c c c c c c |
		c c c c h h e, e' e e e e |
		fis4 fis2\prall g4 g, fis'~ |
		fis e dis e e e |
		\times 2/3 {e8 fis e} \times 2/3 {d e d} \times 2/3 {c d c} \times 2/3 {h c h} \times 2/3 {a h a} \times 2/3 {g a g} |
		fis4 dis'2\prall e4 e e |
		e8 e, e e e e h4 r r |
		R1. |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key a \major
	\clef alto
	\relative c' { 	
		cis8 cis fis fis e e e e |
		e a gis e cis cis d d |
		cis cis d d cis a' gis gis |
		a e e e fis a a gis |
		a e e e fis a a gis |
		a e e e a, d d d |
		a e' e e a, a d d |
		cis cis d h' e, e gis gis |
		a e gis gis a cis, fis e |
		cis4 r a8 a a a |
		a a a a a a e' e |
		e a d, d cis cis d d |
		cis a' gis gis a e e e |
		fis a a gis a e e e |
		fis a a gis a e e e |
		fis a a gis a a a e |
		fis fis fis fis h, h' a a |
		a a d, d cis cis cis cis |
		fis a a gis a a a a |
		h, h e e e a a a |
		h, h e e e a fis fis |
		e e dis dis e fis gis cis, |
		h4 a gis r |
		h r e8 e e e |
		e e, e e e'8. fis16 e d cis h |
		a8 e' fis fis e e fis fis |
		e a gis4\prall a8 a gis4\prall |
		a8 cis, d d cis cis d d |
		cis a' h, gis' a e e e |
		fis a a gis a cis, e e |
		fis a a gis a cis, e e |
		fis a a gis a cis, cis a |
		<fis' a> <fis a> <fis a> <fis a> gis gis a a |
		a a d, d cis cis cis cis |
		h' a4 gis8 a e e e |
		a, d d d a e' e e |
		a, a' d, d cis cis d fis |
		e e d d cis e e e |
		a, d d d a e' e e |
		a, a' d, d cis d e fis |
		e4 d cis cis |
		cis cis cis8 cis e e |
		fis a a gis a e e e |
		fis a a gis a cis fis, gis |
		a cis fis, gis a cis, fis e |
		cis4 r 
		\time 6/4
		\key a \minor
		R1.*4 |
		r2. r4 r8 c h a |
		g e' e e e e f f f f f f |
		g g g g g g a a a a a a |
		c, c c c c c <h d> <h d> <h d> <h d> <h d> <h d> |
		g' g g g fis fis \times 2/3 {e fis e} \times 2/3 {d e d} \times 2/3 {c d c} |
		h4 h' a gis dis e |
		c h fis' \times 2/3 {h8 c h} \times 2/3 {a h a} \times 2/3 {g a g} |
		cis,8 cis cis cis cis cis h4 r r |
		R1. |
	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName="Mirteo"
	\set Staff.midiInstrument="oboe"
	\key a \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*9 |
			r2 e8[ a] \appoggiatura e d4 |
			\appoggiatura e8 cis2 e32[ d cis16] e32[\melisma d cis16] h4\prall\melismaEnd |
			a fis'8.[\prall e32 fis] e8 a, fis'8.\prall[ e32 fis] |
			e32[ d cis16] e32[ d cis16] h4\prall a r |
			h8.[\melisma cis32 d] cis8\melismaEnd h cis16[ h] a8 r e' |
			h8.[ cis32 d] cis8 h cis16[ d] e8 e e |
			h8. cis32[ d] cis8 h cis\melisma e4 a8~ |
			a cis,4.\prall\melismaEnd h4 r |
			fis'8 fis4\prall\melisma gis8\melismaEnd a a,4 h16[ cis] |
			d8 cis4\melisma h8\melismaEnd cis16[\melisma e dis e] dis[ e dis e] |
			e,[ fis gis a h d cis h] cis[ e dis e dis e dis e] |
			e,[ fis gis a h d cis h] cis4\prall dis\prall |
			e\prall\melismaEnd fis8 h, gis'8[ fis16 e] dis[ cis] h[ a] |
			gis[ fis e8] fis4 e8 h' e h |
			e, h' e h e,4 r |
			R1 |
			e'8[ a] d,8.[\prall cis32 d] \appoggiatura d8 cis4 r |
			e32[ d cis16] e32[\melisma d cis16] h4\prall\melismaEnd a r |
			r fis'8.[\prall e32 fis] e8 a, fis'8.\prall[ e32 fis] |
			e32[ d cis16] e32[ d cis16] d4\prall cis e8 e |
			h8. cis32[ d] cis8 h cis16[ d] e8 e e |
			h8. cis32[ d] cis8 h cis16[ d e8] e e |
			h8.[\melisma cis32 d] cis8\melismaEnd h cis\melisma gis'4 a8 |
			c,2\melismaEnd h4 r |
			fis'8 fis4\prall\melisma gis8\melismaEnd a8 a,4 h16[ cis] |
			d8 cis4\melisma h8\melismaEnd cis16[\melisma a gis a h a h a] |
			d[ a gis a h a h a] e'[ a, gis a h a h a]\melismaEnd |
			fis'8\prall fis4\prall\melisma gis8\melismaEnd a a,4 d8 |
			cis4 h\prall cis16[\melisma a gis a h a h a] |
			d[ a gis a h a h a] e'[ a, gis a h a h a]\melismaEnd |
			fis'8\prall fis4\prall\melisma gis8\melismaEnd a8[ gis16 fis] e8 d |
			cis4 h\prall a8 e' a e |
			a, e' a e a,4 r |
			R1*3 |
			r2 
			\time 6/4
			\key a \minor
			e'8.[\prall\melisma d32 e] f4\melismaEnd e \appoggiatura e d2\prall c4 |
			h8[ f'] e[ a,] h[ gis] a f' e[ a,] h[ gis] |
			a8.[ gis32 a] h4 r e8.\prall[ d32 e] f4 e |
			\appoggiatura e d2 c4\melisma h8[ f']\melismaEnd e[ a,] h[ gis] |
			a[ f'] e[ a,] h[ gis] a4 e r |
			c' c4. d16[ e] c4.\prall\melisma h8\melismaEnd c4 |
			c g'16[ f e8] f16[ e d8] c4.\prall h8 c4 |
			fis4 fis2 g4\melisma g,\melismaEnd fis'~ |
			fis e dis e e e |
			\times 2/3 {e8[\melisma fis e]} \times 2/3 {d[ e d]} \times 2/3 {c[ d c]} \times 2/3 {h[c h]} \times 2/3 {a[ h a]\melismaEnd} \times 2/3 {g[ a g]} |
			fis4 dis'2\prall e4 e e |
			e2.~ e4 d8[ c h a] |
			g4 fis2\prall e r4 |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key a \major
	\clef bass
	\relative c { 	
		a8 a a a a a a a |
		a a e' e a, a a a |
		a a a a a a e' e |
		a, a cis cis d d e e |
		a, a cis cis d d e e |
		a a a a fis fis fis fis |
		cis cis cis cis d d h h |
		a a fis' gis a a e e |
		a a e e a, fis' d e |
		a,4 r a8 a a a |
		a a a a a a e' e |
		a, a a a a a a a |
		a a e' e a, a cis cis |
		d d e e a, a cis cis |
		d d e e a, a cis cis |
		d d e e a, a a a |
		dis dis dis dis e e cis cis |
		d d h h a a fis' fis |
		d d e e a a cis cis |
		gis gis e e a a cis cis |
		gis gis e e a a fis fis |
		e e dis dis e fis gis a |
		h4 h, e r |
		e r e8 e e e |
		e e, e e e'8. fis16 e d cis h |
		a8 a a a a a a a |
		a a e' e a, a e' e |
		a, a a a a a a a |
		a a e' e a, a cis cis |
		d d e e a, a cis cis |
		d d e e a, a cis cis |
		d d e e a, a fis' fis |
		dis dis dis dis e e cis cis |
		d d h h a a fis' fis |
		d d e e a a a a |
		fis fis fis fis cis cis cis cis |
		d d h h a a d d |
		e e e, e a a a a |
		fis' fis fis fis cis cis cis cis |
		d d h h a h cis d |
		e4 e, a a |
		a a a8 a cis cis |
		d d e e a, a cis cis |
		d d e e a, fis' d e |
		a, fis' d e a, fis' d e |
		a,4 r
		\time 6/4
		\key a \minor
		R1.*4 |
		r2. r4 r8 a' g f |
		e8 e e e e e f f f f f f |
		g g g g g g a a a a a a |
		as as as as as as g g g g g g |
		h h h h h h \times 2/3 {c d c} \times 2/3 {h c h} \times 2/3 {a h a} |
		\times 2/3 {g a g} \times 2/3 {fis g fis} \times 2/3 {e fis e} dis4 h e |
		a h a \times 2/3 {g8 a g} \times 2/3 {fis g fis} \times 2/3 {e fis e} |
		a, a a a a a h2.~ |
		h e,2 r4 |
		
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViolinII
		\staffViola
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verse }
		
		\staffCello
	>>
	
	\midi {
		%\tempo 4 = 60 
	}

	\layout  {
	}
}

\paper {
}

