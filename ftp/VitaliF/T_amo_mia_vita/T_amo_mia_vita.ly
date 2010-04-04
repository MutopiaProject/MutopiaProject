% Created on Sat May 16 21:30:47 CEST 2009
\version "2.12.2"

\header {
	title = "T'amo mia vita"
	subtitle = "A duoi Canti o Tenori"
	composer = "Filippo Vitali (ca. 1599-1653)"
	mutopiatitle = "T'amo mia vita"
	mutopiacomposer = "VitaliF"
	mutopiainstrument = "Voice (SS), Basso Continuo"
	source = "Concerto di Filippo Vitali madrigali et altri generi di canti a 1. 2. 3. 4. 5. & 6. voci, Libro primo, Venezia: Bartolomeo Magni, 1629"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"
 footer = "Mutopia-2010/04/04-1757"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verseSI= \lyricmode {
T'a -- mo mia vi -- ta la mia ca -- ra vi -- ta dol -- ce -- men -- te mi di -- ce la mia ca -- ra vi -- ta dol -- ce -- men -- te mi di -- ce dol -- ce -- men -- te dol -- ce -- men -- te mi di -- ce E'n que -- sta so -- la si so -- a -- ve pa -- ro -- la par -- che tras -- for -- mi lie -- ta -- men -- te lie -- ta -- men -- te_il co -- re per far -- me -- ne per far -- me -- ne si -- gno -- re o o vo -- ce di dol -- cez -- za vo -- ce di dol -- cez -- za vo -- ce di dol -- cez -- za e di di -- let -- to Pren -- di -- la to -- sto pren -- di -- la to -- sto pren -- di -- la to -- sto_a -- mo -- re stam -- pa -- la stam -- pa -- la nel mio pet -- to spi -- ri so -- lo per lei l'a -- ni -- ma mi -- a l'a -- ni -- ma mi -- a T'a -- mo mia vi -- ta la mia vi -- ta si -- a la mia vi -- ta si -- a.
}
verseSII= \lyricmode {
T'a -- mo mia vi -- ta la mia ca -- ra vi -- ta dol -- ce -- men -- te mi di -- ce dol -- ce -- men -- te dol -- ce -- men -- te mi di -- ce O o vo -- ce di dol -- cez -- za vo -- ce di dol -- cez -- za vo -- ce di dol -- cez -- za e di di -- let -- to pren -- di -- la to -- sto pren -- di -- la to -- sto_a -- mo -- re stam -- pa -- la stam -- pa -- la nel mio pet -- to Spi -- ri so -- lo per lei l'a -- ni -- ma mi -- a l'a -- ni -- ma mi -- a t'a -- mo mia vi -- ta la mia vi -- ta si -- a la mia vi -- ta si -- a la mia vi -- ta si -- a.
}
 

staffSoprano = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Canto I"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			a2. g8 f |
			e2 d |
			a'8 a a h c h c a |
			b4 d8 d d4\melisma cis\melismaEnd |
			d2 r |
			e,8 e e f g f g e |
			f4 a8 a a4\melisma gis\melismaEnd |
			a2 r4 fis8 e |
			g4 g r e8 d |
			fis4 g8 g g4\melisma fis\melismaEnd |
			g1 |
			r8 c a g a2 |
			a4 f8 e f4 f8 g |
			g2 g |
			e4 f8 f g g a16[ h c a] |
			h[ c d h] c8 a h16[ c d h] c[ d e c] |
			d8 g, c2\melisma h4\melismaEnd |
			c4 g a4. g8 |
			fis4 a d4. c8 |
			h4 h a2 |
			g1 |
			r2 g |
			r4 d' h8 h a g |
			a4 a r2 |
			g8 g f e e4 e |
			a8 a g fis fis4 fis |
			r8 e' h h h2 |
			a1 |
			\time 3/4
			\tempo 4=160
			e4. f8 g4 |
			a2 a4 |
			d,4. e8 f4 |
			g2 f4 |
			e4. f8 g4 |
			a2 g4 |
			f2. |
			e |
			f4. e8 d4~ |
			d4 g4. f8 |
			e4 fis2 |
			g4 g\melisma fis\melismaEnd |
			g2. |
			\time 4/4
			\tempo 4=100
			r4 e2 e4 |
			fis fis8 fis gis2 |
			R1 |
			r4 e2 g8 f |
			e2 d4 fis4~ |
			fis a8 g g4\melisma fis\melismaEnd |
			g2 r |
			R1*2 |
			r4 a2 g8 f |
			e2 d |
			a'4 h c2~ |
			c4 b4 d2 |
			h r2 |
			f4 g a2~ |
			a4 f4 e2 |
			d1 |
		}

	\bar "|."
	}

}
staffSopranoII = \new Staff  {
	\set Staff.instrumentName="Canto II"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySopIII" {
			\dynamicUp
			\autoBeamOff
			R1*2 |
			r2 a~ |
			a4 g8 f e2 |
			d a'8 a a h |
			c h c a b2 |
			d8 d d4 h2 |
			r4 cis8 h d4 d |
			r h8 a c2~ |
			c4 h8 a a2 |
			g1 |
			R1*10 |
			r2 e |
			r4 h' g8 g fis e |
			fis4 fis d'8 d c h |
			h4 h e8 e d cis |
			cis4 cis r8 d a a |
			a2.\melisma gis4\melismaEnd |
			a1 |
			\time 3/4
			R2. |
			a4. h8 c4 |
			d2 c4 |
			h4. c8 d4 |
			e2 d4 |
			c2.~ |
			c2 h4 |
			r c4. h8 |
			a2 d4~ |
			d8 c h2 |
			c2. |
			h4 a2 |
			g2. |
			\time 4/4
			r4 gis2 gis4 |
			a a8 a h4 h~ |
			h d8 c h2 |
			a r |
			r r4 a~ |
			a c8 h a2 |
			g r4 a~ |
			a g8 f e2 |
			d a'4 h |
			c2 b4 d~ |
			d\melisma cis\melismaEnd d2 |
			r e,4 f |
			g2 f4 a~ |
			a\melisma gis\melismaEnd a2 |
			a4 h c2 |
			b4 d2\melisma cis4\melismaEnd |
			d1 |
		}

	\bar "|."
	}

}
staffBasso = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c { 	
		d2 g, |
		a4~ a d2 |
		d a4 f |
		g2 a4~ a |
		d1 |
		a2 g |
		d' e4~ e |
		a,2 d |
		g, c |
		d4 d2 d4 |
		g,1 |
		f |
		f |
		c' |
		c4 d e f |
		g a g a |
		g e f g |
		c, e f e |
		d c h a |
		g2 d' |
		g,1 |
		c |
		h2 e4~ e |
		d2 fis |
		g c,4 h |
		a2 d |
		cis4 d e~ e |
		a,1 |
		\time 3/4
		a'2 g4 |
		f4. g8 a4 |
		b2 a4 |
		g4. a8 h4 |
		c2 h4 |
		a4 a,8 h c4 |
		d2 d4 |
		c2 c4 |
		f2 g4 |
		g,2 e'4 |
		c a2 |
		g4 d'2 |
		g,2. |
		\time 4/4
		e'1 |
		a,2 e' |
		d e4~ e |
		a,2 g |
		a d2~ |
		d4 c d2 |
		g, d' |
		g, a |
		d2. h4 |
		a f g2 |
		a d |
		d4 h a2 |
		g d' |
		e a, |
		f1 |
		g2 a |
		d1 |
	\bar "|."
	}

}

BC = \new FiguredBass {
	\figuremode {
		s2 <_-> |
		<4>4 <_+> s2 |
		s1 |
		<_->2 <4>4 <_+> |
		s1 |
		s2 <_-> |
		s <4>4 <_+> |
		<_+>2 <_+> |
		s1 |
		<_+>4 <4>2 <_+>4 |
		s1*9 |
		s2 <4>4 <_+> |
		s1*2 |
		s2 s4 <6+> | %???
		<_+>2 s |
		s1 |
		<_+>2 s |
		s2 <4>4 <_+>4 |
		s1 |
		\time 3/4
		s2.*6 |
		<7>2 <6>4 |
		s2.*3 |
		s4 <6> <_+> |
		s <_+>2 |
		s2. |
		\time 4/4
		<_+>1 |
		<6+>2 <_+> |
		s2 <4>4 <_+>4 |
		s2 <_-> |
		<4>4 <_+>4 <_+>2 |
		s2 <4>4 <_+>4 |
		s1 |
		<_->2 <4>4 <_+>4 |
		s1 |
		s2 <_-> |
		<4>4 <_+> s2 |
		s1 |
		<_->2 s |
		<4>4 <_+> s2 |
		s1 |
		<_->2 <4>4 <_+> |
		s1 |
	}
}

\score {
	<<
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verseSI }
		
		\staffSopranoII
		\context Lyrics = "lmelodySopIII" \lyricmode  { \lyricsto "melodySopIII" \verseSII }
		
		\staffBasso
		\BC
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

