\version "2.12.2"

\header {
	title = "Salve Regina"
	composer = "Claudio Monteverdi (1567-1643)"
	mutopiatitle = "Salve Regina"
	mutopiacomposer = "MonteverdiC"
	mutopiaopus = "SV 327"
	mutopiainstrument = "Voice (T), Basso Continuo"
	date = "1625"
	source = "Raccolta di Leonardo Simonetti. - Ghirlanda sacra scielta da diuersi Eccellentissimi Compositori de uarij Motetti à Voce sola Libro Primo Opera Seconda per Leonardo Simonetti Musico nella Capella del Ser.mo Prencipe di Venezia in S. Marco. - Stampa del Gardano. In Venezia 1625."
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"
 footer = "Mutopia-2010/01/31-1740"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Sal -- ve Re -- gi -- na Sal -- ve Sal -- ve Re -- gi -- na Ma -- ter Sal -- ve Ma -- ter mi -- se -- ri -- cor -- di -- e Sal -- ve Sal -- ve Sal -- ve vi -- ta Dul -- ce -- do Sal -- ve "&" spes no -- stra spes nos -- tra Sal -- ve ad te ad te cla -- ma -- mus ò Re -- gi -- na ad te sus -- pi -- ra -- mus sus -- pi -- ra -- mus ge -- men -- tes ge -- men -- tes "&" flen -- tes in hac la -- cri -- ma -- rum val -- le E -- ia er -- go ò ad -- vo -- ca -- ta ad -- vo -- ca -- ta no -- stra ad -- vo -- ca -- ta il -- los tu -- os mi -- se -- ri -- cor -- des oc -- cu -- los ad nos con -- ver -- te "&" Ie -- sum Be -- ne -- dic -- tum fruc -- tum ven -- tris tu -- i no -- bis post hoc e -- xi -- li -- um os -- ten -- de o -- sten -- de ò Cle -- mens o -- sten -- de ò pi -- a o -- sten -- de o -- sten -- de ò dul -- cis ò dul -- cis Vir -- go Dul -- cis ò Dul -- cis Vir -- go Ma -- ri -- a.
}

staffTenore = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 140 
	\set Staff.instrumentName="Tenore"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 1)
			a1 b2. a4 g2 f e1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d\fermata r4 d4. d8 d4 |
			\set Score.measureLength = #(ly:make-moment 6 2)
			f2. g4 a1 a |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a4. a8 b2 b4. a8 a4. g8 |
			g2. g4 f2 c'4. f,8 |
			\set Score.measureLength = #(ly:make-moment 6 2)
			g2 g d'4. g,8 b4 b8 b a1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a2 h1 h2 |
			c2 c h1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			a2. a4 a1 a a\melisma |
			\set Score.measureLength = #(ly:make-moment 4 2)
			b2. a4 g2 f |
			e1\melismaEnd d\fermata |
			r4 d a'8. a16 d8. c16 d8. d16 a2 h4 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c2 c8.[\melisma d16] c16.[ d32 c16. d32] |
			c16[ h32 h h h h h h h h h] h16[ a32 g] a16.[ b32 a16. b32] a16.[ b32 a16. b32] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a8[ g32 g g g g g g g g g g g] g4. f16[ e] f4.\melismaEnd c'8 f,4 f8. g16 |
			g1 f |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r4 c'8. c16 c4\trill b8 b |
			b4 a r a |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a g8 g g4 f r f f f8 f |
			\set Score.measureLength = #(ly:make-moment 6 2)
			f2 e e1 d |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d'8. d16 d4 d d2 a8 a c2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			a4 a8 h c4. c8 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			c2.\melisma h4\melismaEnd c\melisma d~ d2\melismaEnd |
			r4 c8 h a2 g4 g8 g a2 |
			\set Score.measureLength = #(ly:make-moment 6 2)
			a8 h h h h4. h8 h4. h8 h4 c a2. a4 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a2.\melisma gis4\melismaEnd a2 r4 a |
			\set Score.measureLength = #(ly:make-moment 4 4)
			gis2~ gis8 gis gis fis |
			gis2 gis4 gis8 gis |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a4. a8 h2 h c |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c8 c c h d8. c16 c8. h16 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			h1 a2 r4 a |
			c2 f,4. g8 g1 |
			f4 a c2. b4 d2 |
			a1 g4 h h h8 h |
			d2. c8. h16 h1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			a4 c2 b8. a16 |
			a8. g16 g4~ g2 |
			f4 d16[\melisma e f g] a[ h c d]~ d4~ |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d2\melismaEnd fis,4. g8 g1 |
			f2 f e1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			d\longa |
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
		\set Score.measureLength = #(ly:make-moment 4 1)
		d1 g,\breve a1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d1\fermata d |
		\set Score.measureLength = #(ly:make-moment 6 2)
		b f f |
		\set Score.measureLength = #(ly:make-moment 4 2)
		f2 b b f |
		c'1 f, |
		\set Score.measureLength = #(ly:make-moment 6 2)
		c' g d' |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d2 d e1 |
		a,2 a e'1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		a,2. g4 f2. e4 d1 d' |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g,~ g |
		a d\fermata |
		d1 d |
		\set Score.measureLength = #(ly:make-moment 4 4)
		a |
		a |
		\set Score.measureLength = #(ly:make-moment 4 2)
		a2~ a f b4 a |
		c1 f, |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f'2 d |
		cis c |
		\set Score.measureLength = #(ly:make-moment 4 2)
		h b a g |
		\set Score.measureLength = #(ly:make-moment 6 2)
		g1 a d~ |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d~ d2 a |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f c' |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g1 c2 h |
		a4 g d'2 g, d' |
		\set Score.measureLength = #(ly:make-moment 6 2)
		d1 e2~ e f d |
		\set Score.measureLength = #(ly:make-moment 4 2)
		e1 a, |
		\set Score.measureLength = #(ly:make-moment 4 4)
		e'1 |
		e |
		\set Score.measureLength = #(ly:make-moment 4 2)
		fis2 gis1 a2~ |
		\set Score.measureLength = #(ly:make-moment 4 4)
		a d, |
		\set Score.measureLength = #(ly:make-moment 4 2)
		e1 a, |
		f c' |
		f, g |
		d' g, |
		g2 a e'1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		a,2 g |
		f e |
		d d'4 c |
		\set Score.measureLength = #(ly:make-moment 4 2)
		b2 a g1 |
		d a' |
		\set Score.measureLength = #(ly:make-moment 4 1)
		d,\longa |
	\bar "|."
	}

}

BC = \new FiguredBass {
	\figuremode {
		\set Score.measureLength = #(ly:make-moment 4 1)
		s1 <_->\breve s1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		\set Score.measureLength = #(ly:make-moment 6 2)
		s\breve. |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve*2 |
		\set Score.measureLength = #(ly:make-moment 6 2)
		s1 <_->1 <_+>1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		<_+>2 <_+>2 <_+>1 |
		s\breve |
		\set Score.measureLength = #(ly:make-moment 4 1)
		s\longa |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s1 <_->1 |
		s\breve*2 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		s1*2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve*2 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		s1*2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		\set Score.measureLength = #(ly:make-moment 6 2)
		s\breve. |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		\set Score.measureLength = #(ly:make-moment 4 4)
		s1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve*2 |
		\set Score.measureLength = #(ly:make-moment 6 2)
		s\breve. |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		\set Score.measureLength = #(ly:make-moment 4 4)
		s1*2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		\set Score.measureLength = #(ly:make-moment 4 4)
		s1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve*2 |
		s1 <_->1 |
		s\breve*2 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		s2 <_->2 |
		s1 |
		s2 s4 <_->4 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s1 <_->1 |
		s\breve |
		\set Score.measureLength = #(ly:make-moment 4 1)
		s\longa |
	\bar "|."
	}
}

\score {
	<<
		\staffTenore
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \verse }
		
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

