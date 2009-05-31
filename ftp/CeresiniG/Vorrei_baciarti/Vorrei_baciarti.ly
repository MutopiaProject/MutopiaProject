% Created on Sun May 10 11:05:43 CEST 2009
\version "2.12.2"

\header {
	title = "Vorrei baciarti"
	composer = "Giovanni Ceresini (1584-1659)"
	mutopiatitle = "Vorrei baciarti"
	mutopiacomposer = "CeresiniG"
	mutopiainstrument = "Voice (TB), Basso Continuo"
	source = "Madrigali concertati a due, tre e quattro voci con il basso continuo [...] Opera Quatra, Venezia, Alessandro Vincenti, 1627"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2009/05/31-1646"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verseT= \lyricmode {
Vor -- rei ba -- ciar -- ti,_o Fil -- li Vor -- rei ba -- ciar -- ti,_o Fil -- li Ma non sò pri -- ma,_o -- ve'l mio ba -- cio scoc -- chi Ne la boc -- ca ne la boc -- ca_ò ne -- gli_oc -- chi Vor -- rei ba -- ciar -- ti,_o Fil -- li ne la boc -- ca,_o ne -- gli_oc -- chi Vor -- rei ba -- ciar -- ti Vor -- rei ba -- ciar -- ti,_o Fil -- li Ma non so pri -- ma_o -- ve'l mio ba -- cio scoc -- chi ne la boc -- ca ne la boc -- ca,_o ne gli_oc -- chi ne la boc -- ca ne la boc -- ca,_o ne gli_oc -- chi ce -- dan le la -- bra_a voi lu -- mi di -- vi -- ni Fi -- di spec -- chi del co -- re, Vi -- ve stel -- le vi -- ve stel -- le d'A -- mo -- re vi -- ve stel -- le vi -- ve -- stel -- le vi -- ve stel -- le d'A -- mo -- re Ahi pur mi vol -- go pur mi vol -- go_a voi a voi à voi à voi per -- le_e ru -- bi -- ni The -- so -- ro di bel -- lez -- za Fon -- ta -- na di dol -- cez -- za Boc -- ca_ho -- nor del bel vi -- so Na -- sce_il pian -- to da lor Tu m'a -- pri_il ri -- so Na -- sce_il pian -- to da lor tu m'a -- pri_il ri -- so Boc -- ca_ho -- nor del bel vi -- so Na -- sce_il pian -- to da lor tu m'a -- pri_il ri -- so tu m'a -- pri il ri -- so.
}
verseB= \lyricmode {
Vor -- rei bac -- ciar -- ti,_o Fil -- li Vor -- rei ba -- ciar -- ti_o Fil -- li Vor -- rei ba -- ciar -- ti, vor -- rei ba -- ciar -- ti_ò Fil -- li Ma non so pri -- ma_o -- ve'l mio ba -- cio scoc -- chi Ne la boc -- ca nel -- la boc -- ca,_o ne gl'oc -- chi Vor -- rei ba -- ciar -- ti vor -- rei ba -- ciar -- ti_ò Fil -- li ma non sò pri -- ma_o -- ve'l mio ba -- cio scoc -- chi Ne la boc -- ca ne la boc -- ca,_ò ne -- gl'oc -- chi ne la boc -- ca ne la boc -- ca ne la boc -- ca,_o ne -- gli_oc -- chi Ce -- dan le la -- bra_a voi lu -- mi di -- vi -- ni Fi -- di spe -- chi del co -- re vi -- ve stel -- le vi -- ve stel -- le d'A -- mo -- re vi -- ve stel -- le vi -- ve stel -- le vi -- ve stel -- le d'A -- mo -- re Ahi pur mi vol -- go pur mi vol -- go_à voi à voi à voi a voi per -- le,_e ru -- bi -- ni the -- so -- ro di bel -- lez -- za fon -- ta -- na di dol -- cez -- za boc -- ca,_ho -- nor del bel vi -- so Na -- sce_il pian -- to da lor tu m'a -- pri il ri -- so boc -- ca,_ho -- nor del bel vi -- so boc -- ca,_ho -- nor del bel vi -- so Na -- sce_il pian -- to da lor tu m'a -- pri il ri -- so Na -- sce_il pian -- to da lor tù m'a -- pri il ri -- so.
}


staffTenore = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Tenore"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			R1 |
			r8 d d c h4. h8 |
			a4 a8 c c8. c16 d8. d16 |
			e1 |
			e8 e d c d d c h |
			c4 c h2 |
			a4 a8 g fis fis h a |
			g4 g8 a a2 |
			g r8 e' e d |
			c4 d h2 |
			a r |
			R1 |
			r2 r4 h8 a |
			g4 g8 g g4\melisma fis\melismaEnd |
			g8 g g f e4 e |
			r2 r8 d' d c |
			h4 a h2 |
			a8 c h a h h a g |
			a4 c c\melisma h\melismaEnd |
			c e8 d c c c h |
			a4 a8 g fis4 fis |
			r h8 a g g g f |
			e4 h'8 h a2 |
			h4 d4. d8 e4 |
			c d h c~ |
			c8 c c4 c\melisma h\melismaEnd |
			c2 r2 |
			r4 d8 h c4 a8 a |
			d d h a g g e' d |
			c4 c8 d d2 |
			c c8 h a a |
			d c h h r4 a8 g |
			fis4 fis8 g g4\melisma fis\melismaEnd |
			g1 |
			r4 e2 fis8 fis |
			g g h h c4. c8 |
			h4 r8 h c4 r8 d |
			e4 e,8 f g4 f8 e |
			a4 a8 h c c h a |
			h4 h8 d d d c8. c16 |
			h1 |
			a2 r |
			R1 |
			r4 c4. h8 a4 |
			h8 g d'2\melisma cis4\melismaEnd |
			d d8 c h4 h8 c |
			a4 r r a |
			h8\melisma c d h cis4\melismaEnd d |
			d\melisma cis\melismaEnd d d8 d |
			c4 h8 a h4 g |
			a8\melisma h c a h4\melismaEnd c |
			c\melisma h\melismaEnd c c4~ |
			c8 h a4 h8 g d'4~\melisma |
			d cis\melismaEnd d d8 c |
			h4 h8 c a4 g |
			a8\melisma h c d h4\melismaEnd d |
			d\melisma cis\melismaEnd d2 |
			r4 g, g8\melisma a h g\melismaEnd |
			a4 h a2 |
			g1 |
		}

	\bar "|."
	}

}
staffBasso = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			r8 g g f e4. e8 |
			d4 d r2 |
			a'2 a8. a16 g8. g16 |
			c,1 |
			c2 r |
			R1 |
			R1*2 |
			r8 g'8 g f e16 e c'8 c h |
			a4 a a\melisma gis\melismaEnd |
			a8 a g f g g f e |
			f4 g e2 |
			d4 d8 c h h g' f |
			e4 c8 e d2 |
			g, r8 c c h |
			a d16 d d8 c h4 a |
			e'1 |
			a,8 a' g f g g f e |
			f4 a g2 |
			c,4 c'8 h a a a g |
			f4 f8 e d d d c |
			h h g' f e e e d |
			c4 g'8 g d2 |
			g,4 g'4. g8 e4 |
			f d e c4~ |
			c8 c8 e4 f\melisma g\melismaEnd |
			c,2. c'8 a |
			h4 g8 g a a f e |
			d d g f e2 |
			f4 a g2 |
			c,4 c8 h a a d c |
			h h e d c4 d8 e |
			d1 |
			g, |
			r4 c2 d8 d |
			g, g g' g a4. a8 |
			e4 r8 e a4 r8 g |
			c4 c,8 d e4 d8 c |
			f4 f8 g a a g f |
			g4 g8 h h h a4~ |
			a a4 gis2 |
			a4 d,4. c8 h4 |
			c8 a a'2\melisma gis4\melismaEnd |
			a2 r2 |
			r4 g8 f e4 e8 e |
			d4 d e8\melisma f g e\melismaEnd |
			fis4 g g\melisma fis\melismaEnd |
			g2 r4 g4~ |
			g8 f e4 fis8 d g4~\melisma |
			g fis\melismaEnd g2 |
			r r4 f4~ |
			f8 e8 d4 e8 c g'4~\melisma |
			g fis\melismaEnd g g8 f |
			e4 e8 e d4 d |
			e8\melisma f g e\melismaEnd fis4 g |
			g\melisma fis\melismaEnd g g8 fis |
			e4 e8 e d4 h |
			c8\melisma d e c\melismaEnd g'4 g |
			d1 |
			g,1 |
		}

	\bar "|."
	}

}
staffBassoII = \new Staff  {
	\set Staff.instrumentName="Basso continuo"
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c { 	
		g2 a |
		d e |
		a,2. g4 |
		c1 |
		c2 g |
		a e' |
		a, d4 h |
		c e d2 |
		g, c |
		f4 d e2 |
		a, c |
		b4 g a2 |
		d h |
		c4 c8 e d2 |
		g, c |
		a8 d d c h4 a |
		e'1 |
		a,2 g |
		f4 a g2 |
		c4. h8 a4. g8 |
		f4 f'8 e d4. c8 |
		h4 g'8 f e4 e8 d |
		c4 g d'2 |
		g,4 g'2 e4 |
		f d e c4~ |
		c e4 f g |
		c,2 a |
		h4 g a f' |
		d g c,2 |
		f,4 a g2 |
		c a4 d |
		h e c d8 e |
		d1 |
		g, |
		c2. d4 |
		g,2 a |
		e' a,4. g8 |
		c1 |
		f, |
		g2. a4 |
		e'1 |
		a,4 d h2 |
		c4 a e'2 |
		a,1 |
		g2 a |
		d e4 c |
		d h c d |
		g,2 a4 b |
		g a d h |
		c d g,2 |
		f4 a g f |
		g2 c |
		d g, |
		a d |
		e4 c d e |
		d2 g, |
		a d4 h |
		c2 g' |
		d1 |
		g, |
	\bar "|."
	}

}
BC = \new FiguredBass {
	\figuremode {
		s2 <4>4 <3> |
		s2 <4>4 <3> |
		s1*3 |
		s2 <4>4 <3+> |
		s2 <_+>4 s |
		s2 <4>4 <3> |
		s1 |
		s2 <4>4 <3> |
		s1 |
		s2 <4>4 <3> |
		<_+>2 s2 |
		s2 <4>4 <3> |
		s1 |
		<_+>8 s8 s4 s4 <4>8 <3> |
		<5 3>4 <6 4> <5 3>2 |
		s1 |
		s2 <4>4 <3> |
		s1 |
		s2 <_+>4 s4 |
		s1 |
		s2 <4>4 <3> |
		s1*2 |
		s4 <6> <6> s |
		s1*2 |
		<_+>4 s s2 |
		s2 <4>4 <3> |
		s2 s4 <_+> |
		s1 |
		<5 3>4 <6 4> <_+ 3> <5> |
		s1 |
		s2. <_+>4 |
		s1 |
		<_+>2 s |
		s1*3 |
		<4>2 <3> |
		<_+>4 s s2 |
		<6>4 r <4> <3> |
		s1 |
		s2 <4>4 <3> |
		s1 |
		<_+>4 s <6> <_+> |
		s2 <_+>4 <6> |
		s4 <_+> <_+> s |
		s <_+> s2 |
		s1 |
		<4>4 <3> s2 |
		<4>4 <3> s2 |
		<4>4 <3> s2 |
		s2 <_+>4 s |
		<4>4 <3> s2 |
		<4>4 <3> <_+> s |
		s1 |
		<3>4 <4> <3>2 |
		s1 |
	}
}

\score {
	<<
		\staffTenore
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \verseT }
		
		\staffBasso
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \verseB }
		
		\staffBassoII
		\BC
	>>
	
	\midi {
	}

	\layout  {
		indent=25
	}
}

\paper {
}

