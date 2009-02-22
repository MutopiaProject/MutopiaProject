% Created on Sat Jan 24 12:42:55 CET 2009
\version "2.12.1"

\header {
	title = "Al mormorar de' liquidi cristalli"
	composer = "Giacomo Gastoldi (1556-1622)"
	mutopiatitle = "Al mormorar de' liquidi cristalli, Madrigale a 6 voci"
	mutopiacomposer = "GastoldiG"
	mutopiainstrument = "Voice (SSAATB)"
	source = "G. Ricordi, 1908 (Milan). Plates 101373-409, Editor: Luigi Torchi (1858–1920)"
	style = "Renaissance"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2009/02/22-1637"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verseCan= \lyricmode {
Al mor -- mo - rar al mor -- mo -- rar al mor -- mo -- rar al mor -- mo -- rar de' li -- qui -- di cri -- stal li Che len -- ti si mo -- vean tra ver -- di val -- li Va -- ghe Nin -- fe_e Pa -- sto -- ri Va -- ghe Nin -- fe_e Pa -- sto -- ri Di -- cean con can -- ti_al -- le -- gri_al -- ti_e so -- no -- ri al -- ti_e so -- no -- ri Che fa -- cean rim -- bom -- bar che fa -- cean rim -- bom -- bar l'ae -- re d'in -- tor -- no Fe -- li -- ce_e lie -- to gior -- no Che po -- se Fe -- bo_al mon -- do A sì bel -- l'al -- ma_il pon -- do Sce -- sa quà giù da li ce -- le -- sti cho -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri la bel -- la Do -- ri
}

verseSes= \lyricmode {
Al mor -- mo - rar Al mor -- mo -- rar al mor -- mo -- rar Al mor -- mo -- rar de' li -- qui -- di cri -- stal -- li Che len -- ti si mo -- vean tra ver -- di val -- li Va -- ghe Nin -- fe_e Pa -- sto -- ri Va -- ghe Nin -- fe_e Pa -- sto -- ri Di -- cean con can -- ti_al -- le -- gri_al -- ti_e so -- no -- ri al -- ti_e so -- no -- ri Che fa -- cean rim -- bm -- bar l'ae -- re d'in -- tor -- no Sce -- sa quà giù da li ce -- le -- sti cho -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri
}

verseTen= \lyricmode {
Al mor -- mo - rar Al mor -- mo -- rar al mor -- mo -- rar Al mor -- mor -- rar de' li -- qui -- di cri -- stal -- li Che len -- ti si mo -- ve -- an tra ver -- di val -- li Va -- ghe Nin -- fe_e Pa -- sto -- ri Va -- ghe Nin -- fe_e Pa -- sto -- ri Di -- cean con can -- ti_al -- le -- gri al -- ti_e so -- no -- ri Che fa -- cean rim -- bom -- bar che fa -- cean rim -- bom -- bar l'ae -- re d'in -- tor -- no Fe -- li -- ce_e lie -- to gior -- no Che po -- se Fe -- bo_al mon -- do A sì bel -- l'al -- ma_il pon -- do Sce -- sa quà giù da li ce -- le -- sti cho -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri
}

verseQuin= \lyricmode {
Al mor -- mo - rar al mor - mo -- rar al mor -- mo -- rar de' li -- qui -- di cri -- stal -- li Che len -- ti si mo -- vean tra ver -- di val -- li Va -- ghe Nin -- fe_e Pa -- sto -- ri Di -- cean con can -- ti_al -- le -- gri al -- ti_e so -- no -- ri al -- ti_e so -- no -- ri Che fa -- cean rim -- bom -- bar che fa -- cean rim -- bom -- bar l'ae -- re d'in -- tor -- no Fe -- li -- ce_e lie -- to gior -- no Che po -- se Fe -- bo_al mon -- do A sì bel -- l'al -- ma_il pon -- do Sce -- sa quà giù da li ce -- le -- sti cho -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri
}

verseTenII= \lyricmode {
Al mor -- mo - rar al mor -- mo -- rar al mor -- mo -- rar Al mor -- mo -- rar de' li -- qui -- di cri -- stal li Che len -- ti si mo -- vean tra ver -- di val -- li Va -- ghe Nin -- fe_e Pa -- sto -- ri Di -- cean con can -- ti_al -- le -- gri al -- ti_e so -- no -- ri Che fa -- cean rim -- bom -- bar che fa -- cean rim -- bom -- bar l'ae -- re d'in -- tor -- no Sce -- sa quà giù da li ce -- le -- sti_ar -- do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri
}

verseBas= \lyricmode {
Al mor -- mo -- rar al mor -- mo -- rar de' li -- qui -- di cri -- stal -- li Che len -- ti si mo -- vean tra ver -- di val -- li Va -- ghe Nin -- fe_e Pa -- sto -- ri Di -- cean con can -- ti_al -- le -- gri al -- ti_e so -- no -- ri Che fa -- cean rim -- bom -- bar l'ae -- re d'in -- tor -- no Sce -- sa quà giù da li ce -- le -- sti cho -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri Vi -- va la bel -- la Do -- ri
}


staffCanto = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Canto"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyCan" {
			\dynamicUp
			\autoBeamOff
			r2 r4 c |
			e g c,8[ d e f] |
			g1 |
			e2 e4 e |
			d2 r4 g, |
			h d g,8[\melisma a h c] |
			d2\melismaEnd r4 g, |
			h d g,2 |
			r2 r4 g' |
			f4. f8 e4 fis |
			g1 |
			g |
			r2 c,~ |
			c f~ |
			f d~ |
			d g~ |
			g c,~ |
			c f~ |
			f f |
			d1 |
			d2 d~ |
			d4\melisma c8[ h] a2\melismaEnd |
			h2 d8[\melisma c d e] |
			d4\melismaEnd c h2 |
			h4 a g8[\melisma a h g] |
			a[ h] c2 h4\melismaEnd |
			c1~ |
			c |
			R1*2 |
			r2 c8[\melisma h c d] |
			c4\melismaEnd d e2 |
			e4 d c8[\melisma h] h[ a16 g] |
			a4 h a2\melismaEnd |
			h2 r4 h |
			h h h c |
			h e4. d8 c4 |
			h c g'4. g8 |
			fis4 g2\melisma fis4\melismaEnd |
			g2 r4 d |
			e e e g |
			g2 r4 d |
			e e e fis |
			g c,4. c8 c4 |
			h\melisma c2 h4\melismaEnd |
			c2 r4 e |
			d8[\melisma c d e] f4\melismaEnd e |
			d c d2 |
			d4 e f g |
			f d e2 |
			e d4 d8 c |
			d2. h4 |
			a1\melisma |
			h2. c4\melismaEnd |
			d2 r |
			g g4 f |
			e2 d |
			c4 d e f |
			g2.\melisma f8[ e] |
			d4 c d2\melismaEnd |
			e1 |
			R1 |
			d4 h8 c d4 e |
			d g, r2 |
			R1 |
			r2 d'4 c8 d |
			e4 f e2 |
			e4 c c c |
			h2 a |
			h4 g8 a h4 c |
			h c r2 |
			d4 h8 c d4 e |
			d e r2 |
			h4 g8 a h4 c |
			h2 g |
			r4 g' g g |
			g1 |
			e |
		}

	\bar "|."
	}

}
staffSesto = \new Staff  {
	\set Staff.instrumentName="Sesto"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySes" {
			\dynamicUp
			\autoBeamOff
			r4 c e g |
			c,8[ d e f] g2 |
			r4 c, e g |
			c,8[\melisma d e f] g2\melismaEnd |
			r4 g, h d |
			g,8[\melisma a h c] d4. c8 |
			h1\melismaEnd |
			r4 g h d |
			a2. c4 |
			c4. c8 c4 c |
			d1 |
			e1~ |
			e1 |
			r2 c |
			d1 |
			h |
			c |
			a1 |
			d2. c4 |
			h2 a |
			h2.\melisma c4 |
			d1\melismaEnd |
			d2 h8[\melisma a h c] |
			h4\melismaEnd c d2 |
			d4 d e8[\melisma f g e] |
			f[ e] e[ d16 c] d2\melismaEnd |
			e1~ |
			e |
			R1*2 |
			r2 e8[\melisma d e f] |
			e4\melismaEnd f g2 |
			g4 f e8[\melisma f g e] |
			fis4 g2 fis4\melismaEnd |
			g2 r4 d |
			d d d e |
			d g4. f8 e4 |
			d4 e r d~ |
			d8 d d4 d2 |
			d1 |
			r2 r4 d |
			e e e g |
			g c,4. c8 d4 |
			e8[\melisma d e f] g2~ |
			g4 f8[ e] d2\melismaEnd |
			e1 |
			R1*7 |
			d2 d4 c |
			h1 |
			e2 e4 f |
			g2 g |
			g1 |
			e |
			R1 |
			r2 e4 c8 d |
			e4 f e4.\melisma f8 |
			g4\melismaEnd d r2 |
			R1 |
			c4 a8 h c4 g |
			c2 c |
			r g'4 e8 f |
			g4 a g\melisma fis8[ e] |
			fis4 g2 fis4\melismaEnd |
			g1 |
			R1 |
			h,4 g8 a h4 c |
			d c g'4 e8 f |
			g4 g d c |
			r2 d4 h8 c |
			d4 e d2~\melisma |
			d4 c2 h4\melismaEnd |
			c1 |
		}

	\bar "|."
	}

}
staffTenore = \new Staff  {
	\set Staff.instrumentName="Tenore"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef mezzosoprano
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			c2 c4 c |
			c1 |
			c2 r4 c |
			e g c,8[\melisma d e f] |
			g1\melismaEnd |
			r2 r4 g, |
			h d g,8[\melisma a h c] |
			d2\melismaEnd r4 d |
			f a f g |
			a4. a8 a2 |
			h4 c2\melisma h4\melismaEnd |
			c1 |
			g |
			a~ |
			a |
			g |
			e2 e |
			f2.\melisma g4\melismaEnd |
			a1 |
			g2 a~ |
			a g |
			fis4\melisma g2 fis4\melismaEnd |
			g1 |
			r2 g8[\melisma f g a] |
			g4\melismaEnd f e2 |
			d4 a' g2 |
			c,1~ |
			c2 r |
			R1*2 |
			g'8[\melisma f g a] g2~ |
			g4\melismaEnd f e2 |
			c2. e4 |
			d1 |
			g,2 r4 g' |
			g g g g |
			g2 e |
			r4 c'4. c8 h4 |
			a\melisma g a2\melismaEnd |
			h r4 h |
			c c c h |
			c2. h4 |
			c c c a |
			c2 g |
			g4 g g2 |
			g r4 c |
			h\melisma a8[ g] a4\melismaEnd c4 |
			h a h2 |
			h4 g a c |
			c h c2 |
			g c4 h8 a |
			h2 a4 g~ |
			g\melisma fis8[ e] fis2\melismaEnd |
			g r |
			g g4 f |
			e2. d4 |
			c4 c 'g2 |
			g c~\melisma |
			c4 h8[ a] g4 a |
			h c2 h4\melismaEnd |
			c1 |
			R1 |
			h4 g8 a h4 c |
			h2 c |
			r2 g4 e8 f |
			g4 a g2 |
			c, e4 c8 d |
			e4 f e c |
			R1*2 |
			r2 f4 e8 f |
			g4 d g g |
			h g8 a h4 c |
			d c r2 |
			r h4 g8 a |
			h4 c h4.\melisma a8 |
			g1\melismaEnd |
			g |
		}

	\bar "|."
	}

}
staffQuinto = \new Staff  {
	\set Staff.instrumentName="Quinto"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef alto
	\relative c' { 	
		\context Voice = "melodyQuin" {
			\dynamicUp
			\autoBeamOff
			R1 |
			r2 r4 c |
			e g c,8[ d e f] |
			g2 r4 c, |
			h d g,8[ a h c] |
			d1 |
			r4 g, h d |
			g,8[\melisma a h c] d4\melismaEnd h4 |
			c2. c4 |
			c2 a |
			d1 |
			c2 g~ |
			g c~ |
			c a~ |
			a d~ |
			d g,~ |
			g c~ |
			c a~ |
			a d~ |
			d d |
			h2.\melisma a8[ g] |
			a1\melismaEnd |
			g1~ |
			f2 r |
			R1*2 |
			r2 g'8[\melisma f g a] |
			g4\melismaEnd f e2 |
			e4 d c4.\melisma d16[ e] |
			f8[ e] e[ d16 c] d2\melismaEnd |
			e1~ |
			e |
			R1 |
			r2 r4 d |
			d d d g, |
			d'8[\melisma c h a] g4\melismaEnd g |
			r g'4. g8 c,4 |
			g'2 e4 g |
			a b a2 |
			g r4 g, |
			c c a d |
			c2 r4 g' |
			g g a d, |
			g2 c, |
			d4 e g2 |
			e r4 c |
			g'\melisma f8[ e] d4\melismaEnd c |
			g' a g2 |
			g4 e d e |
			f g c,2 |
			c1 |
			g'4 fis8 e fis4 g |
			d1 |
			g, |
			R1*2 |
			g'2 g4 f |
			e2. d4 |
			c d e f |
			g1 |
			c,~ |
			c |
			R1 |
			g'4 e8 f g4 a |
			g f e c8 d |
			e4 f e e |
			R1 |
			c4 a8 h c4 e |
			d4\melisma cis8[ h] cis4 d\melismaEnd |
			g,1 |
			h4 g8 a h4 c |
			d d r2 |
			g4 e8 f g4 a |
			g g r2 |
			d4 h8 c d4 e |
			d g, h g8 a |
			h4 c d2 |
			e1 |
		}

	\bar "|."
	}

}
staffTenoreII = \new Staff  {
	\set Staff.instrumentName="Tenore"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef alto
	\relative c' { 	
		\context Voice = "melodyTenII" {
			\dynamicUp
			\autoBeamOff
			R1 |
			r4 c e g |
			c,8[ d e f] g2 |
			r4 c, e g |
			g,8[\melisma a h c] d2\melismaEnd |
			r4 g, h d |
			g,8[\melisma a h c] d2\melismaEnd |
			R1 |
			r4 a c e |
			a, c c4. c8 |
			h4 g g'2 |
			e1 |
			R |
			c |
			f |
			d |
			g |
			c,1 |
			f |
			r2 d |
			d d |
			d1 |
			d2 r2 |
			R1*3 |
			r2 e8[\melisma d e f] |
			e4\melismaEnd f g2 |
			g4 g f8[\melisma e] e[ d16 c] |
			d4 c2 h4\melismaEnd |
			c1~ |
			c |
			R1*2 |
			r2 r4 d |
			d d d c |
			d\melisma c8[ h] c4\melismaEnd g |
			r2 r4 d'~ |
			d8 d g,4 d'2 |
			d r4 g |
			g g a g |
			g2 r4 g, |
			c c a d |
			c2 e |
			d4 c d2 |
			c1 |
			R1*6 |
			r2 d |
			d4 c h2~ |
			h4 a g a |
			h h c2~\melisma |
			c4 h8[ a] h2\melismaEnd |
			c1 |
			R1*2 |
			r2 g'4 e8 f |
			g4 a g2 |
			g1 |
			r2 e4 c8 d |
			e4 f g g |
			r2 g4 e8 f |
			g4 a g2 |
			c,1 |
			R1 |
			d4 h8 c d4 e |
			d c r2 |
			R1*2 |
			r2 g'4 e8 f |
			g4 e d g, |
			r2 d'4 h8 c |
			d4 e d2 |
			c1 |
		}

	\bar "|."
	}

}
staffBasso = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef varbaritone
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			R1*2 |
			c2 c4 c |
			c1 |
			R |
			g2 g4 g |
			g1~ |
			g2 g |
			f2. e4 |
			f2 a |
			g1 |
			c, |
			c |
			f |
			d |
			g |
			c, |
			f |
			d |
			g2 fis |
			g2.\melisma f8[ e] |
			d1\melismaEnd |
			g |
			R1*4 |
			r2 c8[\melisma h c d] |
			c4\melismaEnd h a2 |
			f4 a g2 |
			c,1~ |
			c |
			R1*2 |
			r2 r4 g' |
			g g g c, |
			g'8[\melisma f e d] c4\melismaEnd c |
			r4 c'4. c8 g4 |
			d1 |
			g |
			r2 r4 g |
			c c a d |
			c2 r |
			c, c4 c |
			g'1 |
			c, |
			R1*7 |
			r2 g' |
			g4 f e2~ |
			e4 d c d |
			e f g2 |
			c,1~ |
			c |
			R1*4 |
			r2 c'4 a8 h |
			c4 d c2 |
			c1~ |
			c |
			R1*3 |
			g4 e8 f g4 a |
			g2 g |
			R1 |
			g4 e8 f g4 a |
			g1~ |
			g~ |
			g |
			c, |
		}

	\bar "|."
	}

}


\score {
	<<
		\staffCanto
		\context Lyrics = "lmelodyCan" \lyricmode  { \lyricsto "melodyCan" \verseCan }
		
		\staffSesto
		\context Lyrics = "lmelodySes" \lyricmode  { \lyricsto "melodySes" \verseSes }
		
		\staffTenore
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \verseTen }
		
		\staffQuinto
		\context Lyrics = "lmelodyQuin" \lyricmode  { \lyricsto "melodyQuin" \verseQuin }
		
		\staffTenoreII
		\context Lyrics = "lmelodyTenII" \lyricmode  { \lyricsto "melodyTenII" \verseTenII }
		
		\staffBasso
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \verseBas }
		
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

