% Created on Sat May 31 15:26:19 CEST 2008
\version "2.11.48"

\header {
	title = "Cantata. Non sia chi mi riprende"
	composer = "G. F. Sances (1600-1679)"
	mutopiatitle = "Cantata. Non sia chi mi riprende"
	mutopiacomposer = "SancesGF"
	mutopiainstrument = "Voice (Soprano) and Basso Continuo"
	date = "1636"
	source = "Il quarto libro delle cantate et arie a voce sola, Venetia, Vincetini, 1636"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/06/15-1460"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Non sia non sia chi mi ri -- pren -- da per -- ch'a -- mi_un cor un cor di sas -- so ch'u -- na Ti -- gre m'of -- fen -- da ne dal mar -- ti -- rio mio pur vol -- ga_un pas -- so ch'A -- mor ch'A -- mor è_u -- na paz -- zi -- a e ben può nel suo re -- gno es -- ser be -- a -- to chi per es -- ser co -- stan -- te se sfor -- tu -- na -- to Al -- tri ri -- da fa -- sto -- so con le sue glo -- rie_in se -- no il mio vi -- ver pe -- no -- so se non mi gu -- sta mi con -- ten -- ta_al me -- no Bel -- le -- za che m'of -- fen -- de ri -- gor ch'al -- le -- ra e cru -- del -- tà che pia -- ce m'in -- se -- gna -- no_a sprez -- zar m'in -- se -- gna -- no_a sprez -- zar l'o -- tio_e la pa -- ce Non a -- mo non a -- mo non a -- mo la mer -- ce -- de a -- do -- ro il bel -- lo_in -- ten -- to non ca -- drà la mia fe -- de sot -- to_il pe -- so mor -- tal del mio tor -- men -- to il cor non te -- me_af -- fan -- no che frà spe -- me_e ti -- mor in mar d'or -- go -- glio un sas -- so e l'a -- mor mio la fe -- de la fe -- de_un sco -- glio Di co -- lei che mi pia -- ce la ca -- te -- na_e più for -- te ch'io do -- no la mia pa -- ce a_i fa -- vo -- ri d'A -- mor a_i fa -- vo -- ri d'A -- mor non del -- la for -- te ne per es -- ser pie -- to -- sa ne per es -- ser pie -- to -- sa don -- na pro -- di -- ga trop -- po un -- qua m'ac -- cen -- de che mi -- ra l'oc -- chio o -- ve_il mio sol ri -- splen -- de Lu -- sin -- ghe scher -- zi e vez -- zi non mi muo -- vo -- no_o Clo -- ri a -- mo più i tuoi di -- sprez -- zi che d'al -- tra qual fi fia gra -- tie_e fa -- vo -- ri Mi -- se -- ro ma con -- ten -- to mi -- se -- ro ma con -- ten -- to pa -- sco l'al -- ma di do -- glia e se mi van -- to e se mi van -- to l'af -- fe -- ta -- to mio cor be -- ve_il mio pian -- to be -- ve_il mio pian -- to l'af -- fe -- ta -- to mio cor l'af -- fe -- ta -- to mio cor be -- ve_il mio pian -- to.
}
 

staffSoprano = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Soprano"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*3 |
			r4 g e2 |
			r4 d' c2 |
			g8 f16 e d4 c2 |
			r2 r8 c' d e |
			d2~ d8 e e4~ |
			e2 e4.\melisma d8\melismaEnd |
			d2 c |
			r2 r4 r8 e,16 f |
			g8 a16 g f4 e4.\melisma d8 |
			e16[ f g a] h8[ a16 h] c4.\melismaEnd e8 |
			d8 c c8. h16 c4. d8 |
			e8[\melisma d] c16[ c c h] c8[ h] a16[ a a g] |
			a8\melismaEnd d, d4 c2 |
			r8 e16[ f] g4 r8 a16[ h] c8 c |
			h a g8. f16\melisma e2\melismaEnd |
			e'8 e d e16 d c4 h |
			a8 h16 c c8. h16\melisma c4\melismaEnd c8 c |
			c4 c8 c c2~ |
			c c4. d8 |
			d2.~ d8 es |
			es4\melisma d\melismaEnd c2 |
			R1 |
			r2 r4 c8 d |
			e[\melisma f16 e] d[ h c d] c8[ d16 c] h[ g a h] |
			a8\melismaEnd g16 a f4 e2 |
			r4 r8 g f e e d |
			d2 c4 g'8 g |
			g2. g8 g |
			g2. g4~ |
			g2 r4 r8 c |
			d e d4 c e8 e |
			d16[\melisma c h a] h[ d c h] c[ h a g] a[ c h c] |
			a8\melismaEnd c c8. h16\melisma c2\melismaEnd |
			r8 e4 d c h8~ |
			h8 a g8. f16\melisma e8\melismaEnd c e f |
			g4 g r8 c b8. b16 |
			a8 g f\melisma g\melismaEnd e4. g8 |
			e8 g a h c4. h8 |
			a h c d e2 |
			e,16[\melisma f g a] h[ d c h] a[ c h a] g[ f e d] |
			c8\melismaEnd f16 e d4 c2 |
			R1*2 |
			r4 r8 h' c4 c |
			r4 r8 d e4 e |
			r4 r8 e f f c c |
			c4. h8\melisma c2\melismaEnd |
			r4 r8 h a a4 g8 |
			a g f4 e e'8. f16 |
			g4.\melisma f8 e16[ d c h] a[ g f e] |
			d4. e16[ d] c2\melismaEnd |
			r8 e16[\melisma f] g8[ f16 g] e8[ a16 h] c8[ h16 c] |
			a8\melismaEnd c c8. h16\melisma c4\melismaEnd g8 g |
			g4 a8 h c4. e8 |
			d es es8. d16\melisma c2\melismaEnd |
			r2 r4 r8 g |
			f e f d e c e f |
			g4. f16 g e4. g'8 |
			f8.[\melisma e16 d8. f16] e8.[ d16 c8. e16] |
			d8.[ c16 h8. d16] c8.[ h16 a8. c16] |
			h8.[ a16 g8. f16] e8.[ g16 f8. e16] |
			d8.[ f16 e8. d16] c4.\melismaEnd g'8 |
			a4\melisma h16[ g a h]\melismaEnd c4. g8 |
			g2. g4~ |
			g8 g g g g2~ |
			g r4 g |
			g2 g |
			r4 g g4. g8 |
			g2 g |
			r4 e8 f g4 g8 a |
			h2 h4 d8 d |
			d1~ |
			d4 g,8 fis g2 |
			a4. d8 e4 e~ |
			e a,8 g a2 |
			h4 h8 h h a16 h e,4 |
			e'8 e e d16 e a,4 d~ |
			d gis,8 a a4. gis8\melisma |
			a2.\melismaEnd a8 a |
			g4 g8 fis fis2 |
			fis4 d'8 d c4. c16 h |
			h2 h4 h8. d16 |
			g,4 g8 d e2 |
			e4 c'2 h8. d16 |
			a2 g8 h c d |
			e4 e g, a8 h |
			c4. c8 c4. h8\melisma |
			c1\melismaEnd |
			R1*2 |
			r4 r8 d c16[\melisma d c h] a8[ g16 a] |
			f8\melismaEnd d r4 e16[\melisma d e f] g[ f g a] |
			h[ a h c] d[ c d e] f8\melismaEnd c r e |
			d[\melisma c] d16[ c\trill c h] c8[ h] c16[ h\trill h a] |
			h8[ a] h16[ a\trill a g] c8[ h] c16[ h\trill h a] |
			d8[ c] d16[ c\trill c h] c8\melismaEnd c c c |
			c1~ |
			c8 d16 e d4 c2 |
			g8 g g2 r8 g |
			f f f4 e4. f8 |
			g8 a h h c2 |
			a16[\melisma h c a] h[ g a h] c[ d e c] d[ h c d] |
			e8[ g16 f] e[ d c h] c8[ e16 d] c[ h a g] |
			a16[ c h a] g[ f e d] e[ c d e] f[ g a h] |
			c8[ h16 h]\trill h[ h a g] c8[ h16 h] h[\trill h a g] |
			a8\melismaEnd c16 c c8. h16\melisma c2\melismaEnd |
			r8 gis4 gis8 gis4 gis8 a |
			a2 a |
			r8 h4 h8 h4 h8 h |
			h h h h h4 h8 h |
			h1 |
			a2 r4 r8 a |
			g8. f16 e4 d4. d'8 |
			c8. h16 a4 g c8 c |
			d4 d8 d e4 d~ |
			d d2 d4 |
			d2 c |
			e16[\melisma d e c] d[ c d h] c[ h c a] h[a h g] |
			a[ g a f] g[ f g f] e4 c16[ d e f] |
			g[ a h c] d[ g, a h] c[ d e f] g4\melismaEnd |
			d8 d d4 c2 |
			r4 g8 g g4 g8 g |
			a1 |
			r4 a8 a a4 a8 a |
			h2. c4~ |
			c d2 d4 |
			d1 |
			c |
		}

	\bar "|."
	}

}
staffBasso = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c' { 	
		c4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'1 |
		g |
		g4 fis g d |
		e1 |
		d2 cis |
		fis1 |
		e2 e' |
		cis fis, |
		e1 |
		a |
		h4 cis d2 |
		d, e4 fis |
		g2. a4 |
		h2 c~ |
		c d |
		d, g |
		c1 |
		e,2 g |
		c,1 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		h'1 |
		a |
		gis |
		gis2 cis,4 d |
		e1 |
		a2. fis4 |
		g a d h |
		c d g, e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'4 g a e |
		f g c,2 |
		c'1 |
		f, |
		d |
		g2 e |
		f g4 f |
		g1 |
		c, |
		
	\bar "|."
	}

}


\score {
	<<
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verse }
		
		\staffBasso
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

