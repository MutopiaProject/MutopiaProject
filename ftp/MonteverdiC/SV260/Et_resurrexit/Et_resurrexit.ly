\version "2.12.3"

\header {
	title = "Et resurrexit"
	subtitle = "A due Soprani o Tenori con due violini"
	composer = "Claudio Monteverdi (1567-1643)"
	mutopiatitle = "Et resurrexit"
	mutopiacomposer = "MonteverdiC"
	mutopiaopus = "SV 260"
	mutopiainstrument = "Voices (SS or TT), 2 Violins, Basso Continuo"
	date = "1641"
	source = "Selva Morale e Spirituale di Claudio Monteverde Maestro di Capella della Serenissima Republica Di Venetia Dedicata alla Sacra Cesarea Maesta dell'Imperatrice Eleonora Gonzaga Con Licenza de Superiori & Priuilegio. - In Venetia 1640 Appresso Bartolomeo Magni."
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"
 footer = "Mutopia-2010/05/17-1774"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verseSI= \lyricmode {
Et re -- sur -- re -- xit re -- sur -- re -- xit "&" re -- sur -- re -- xit re -- sur -- re -- xit "&" re -- sur -- re -- xit ter -- ti -- a di -- e ter -- ti -- a di -- e se -- cun -- dum scrip -- tu -- ras se -- cun -- dum scrip -- tu -- ras "&" as -- cen -- dit "&" as -- cen -- dit "&" as -- cen -- dit as -- cen -- dit in Cæ -- lum se -- det se -- det ad dex -- te -- ram pa -- tris as -- cen -- dit in Cæ -- lum as -- cen -- dit "&" as -- cen -- dit "&" as -- cen -- dit "&" as -- cen -- dit "&" as -- cen -- dit as -- cen -- dit in cæ -- lum se -- det se -- det ad dex -- te -- ram pa -- tris ad dex -- te -- ram pa -- tris.
}
verseSII= \lyricmode {
Et re -- sur -- re -- xit re -- sur -- re -- xit "&" re -- sur -- re -- xit re -- sur -- re -- xit "&" re -- sur -- re -- xit ter -- ti -- a di -- e ter -- ti -- a di -- e se -- cun -- dum scrip -- tu -- ras se -- cun -- dum scrip -- tu -- ras "&" as -- cen -- dit "&" as -- cen -- dit "&" as -- cen -- dit as -- cen -- dit in cæ -- lum se -- det se -- det ad dex -- te -- ram pa -- tris as -- cen -- dit in Cæ -- lum as -- cen -- dit "&" as -- cen -- dit "&" as -- cen -- dit "&" as -- cen -- dit "&" as -- cen -- dit as -- cen -- dit in cæ -- lum se -- det se -- det ad dex -- te -- ram Pa -- tris ad dex -- te -- ram Pa -- tris.
}

staffSopranoI = \new Staff  {
	\time 3/2
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 2 = 200 
	\set Staff.instrumentName=\markup {\smallCaps Canto "Primo"}
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySopI" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 3 1)
			h2\melisma c4 d e d c h a2\melismaEnd d4 c |
			h2 g r c4 h a1 |
			g r r |
			R\breve. |
			r2 e' e e d1 |
			f2\melisma e\melismaEnd d c h1 |
			a r2 c d2. e4 |
			f2 e g f4 e d1 |
			c r r |
			R\breve.*2 |
			r2 e2. d4 c2 h1 |
			a r g |
			a2\melisma g\melismaEnd f e d1 |
			c r r |
			R\breve.*2 |
			r1 r g' |
			a2\melisma g\melismaEnd f e d1 |
			c r r |
			e2. g4 f2. a4 g2. h4 |
			a2. c4 h2. d4 c2 c |
			R\breve.*3 |
			r2 d d e4 f g2 g |
			R\breve. |
			c,1 a r |
			R\breve.*2 |
			a\breve g2 f |
			g1 f2 e d1 |
			e r r |
			r2 a a h4 c d2 d |
			R\breve. |
			r2 c c\melisma d4 e f2\melismaEnd f |
			R\breve. |
			e,2. g4 f2. a4 g2. h4 |
			a2 a r1 r |
			h2. d4 c2. e4 d2. f4 |
			e2 e r1 r |
			r2 c c d4 e f2 f |
			R\breve. |
			e4\melisma d c h c h c a\melismaEnd h1 |
			R\breve. |
			f'\breve e2 d |
			e1 d2 c h1 |
			a\breve a1 |
			\time 4/4
			\tempo 4=100
			c2 c4 c |
			c2\melisma h\melismaEnd |
			c1\fermata |
		}

	\bar "|."
	}

}

staffSopranoII = \new Staff  {
	\set Staff.instrumentName="Soprano Sec."
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySopII" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 3 1)
			g2\melisma a4 h c h a g fis2\melismaEnd g4 a |
			g2 e r a4 g fis1 |
			g r r |
			R\breve. |
			r2 c c c h1 |
			d2\melisma c\melismaEnd h a a2.\melisma gis4\melismaEnd |
			a1 r2 a h2. c4 |
			d2 c e d4 c h1 |
			a r r |
			R\breve.*2 |
			r2 c2. h4 a2 gis1 |
			a r e |
			f2\melisma e\melismaEnd d c c2.\melisma h4\melismaEnd |
			c1 r r |
			R\breve.*2 |
			r1 r d |
			f2\melisma e\melismaEnd d c c2.\melisma h4\melismaEnd |
			c1 r r |
			c2. e4 d2. f4 e2. g4 |
			f2. a4 g2. h4 a2 a |
			R\breve.*3 |
			r2 h h c4 d e2 e |
			R\breve. |
			a,1 f r |
			R\breve.*2 |
			f\breve c2 d |
			e1 d2 c c2.\melisma h4\melismaEnd |
			c1 r r |
			r2 fis fis g4 a h2 h |
			R\breve. |
			r2 a a\melisma h4 c d2\melismaEnd d |
			R\breve. |
			c,2. e4 d2. f4 e2. g4 |
			f2 f r1 r |
			g2. h4 a2. c4 h2. d4 |
			c2 c r1 r |
			r2 a a h4 c d2 d |
			R\breve. |
			c4\melisma h a g a g a fis\melismaEnd g1 |
			R\breve. |
			d'\breve a2 h |
			c1 h2 a a2.\melisma gis4\melismaEnd |
			a\breve a1 |
			\time 4/4
			\tempo 4=100
			e4.\melisma f8 g4\melismaEnd g8 g |
			g1 |
			g\fermata |
		}

	\bar "|."
	}

}

staffViolinoI = \new Staff {
	\set Staff.instrumentName = "Violino Primo"
	\set Staff.midiInstrument = "violin"
	\key c \major
	\clef treble
	\relative c'' { 	
		\set Score.measureLength = #(ly:make-moment 3 1)
		R\breve.*2 |
		h2 c4 d e d c h a2 d4 c |
		h2 g r f'4 e d1 |
		c r r |
		R\breve.*3 |
		r1 r2 c d2. e4 |
		f2 e g f4 e d1 |
		c2 e2. d4 c2 h1 |
		a r r |
		R\breve.*2 |
		r2 g'2. f4 e2 d1 |
		c r e |
		f2 e d c c2. h4 |
		c1 r r |
		R\breve.*4 |
		h2. d4 c2. e4 d2. f4 |
		e2. g4 f2. a4 g2 g |
		r c, c d4 e f2 f |
		R\breve. |
		e1 c r |
		R\breve. |
		f\breve e2 d |
		e1 d2 c h1 |
		a1 r r |
		R\breve. |
		r2 g g a4 h c2 c |
		R\breve. |
		r2 h h c4 d e2 e |
		R\breve. |
		r2 d d e4 f g2 g |
		R\breve. |
		a,2. c4 h2. d4 c2. e4 |
		d1 r r |
		e2. g4 f2. a4 g2. h4 |
		a1 r r |
		r2 d, d e4 f g2 g |
		R\breve. |
		a4 g f e f e f d e1 |
		R\breve.*2 |
		a\breve a2 g |
		\time 4/4
		\tempo 4=100
		g2. f8 e |
		d1 |
		c\fermata |
	\bar "|."
	}
}

staffViolinoII = \new Staff {
	\set Staff.instrumentName = "Violino Secondo"
	\set Staff.midiInstrument = "violin"
	\key c \major
	\clef treble
	\relative c'' { 	
		\set Score.measureLength = #(ly:make-moment 3 1)
		R\breve.*2 |
		g2 a4 h c h a g fis2 g4 a |
		g2 e r a4 c h2. a8 h |
		c1 r r |
		R\breve.*3 |
		r1 r2 c h2. c4 |
		d2 c e d4 c c2. h4 |
		c2 c2. h4 a2 a2. gis4 |
		a1 r r |
		R\breve.*2 |
		r2 e'2. d4 c2 h1 |
		a r g |
		a2 g f e d1 |
		c r r |
		R\breve.*4 |
		g'2. h4 a2. c4 h2. d4 |
		c2. e4 d2. f4 e2 e |
		r a, a h4 c d2 d |
		R\breve. |
		c1 a r |
		R\breve. |
		d\breve a2 h |
		c1 h2 a a2. gis4 |
		a1 r r |
		R\breve. |
		r2 e e f4 g a2 a |
		R\breve. |
		r2 g g a4 h c2 c |
		R\breve. |
		r2 h h c4 d e2 e |
		R\breve. |
		f,2. a4 g2. h4 a2. c4 |
		h1 r r |
		c2. e4 d2. f4 e2. g4 |
		f1 r r |
		r2 h, h c4 d e2 e |
		R\breve. |
		c4 h a g a g a f g1 |
		R\breve.*2 |
		f'\breve c2 d |
		\time 4/4
		\tempo 4=100
		e2. d8 c |
		g'1 |
		e\fermata |
	\bar "|."
	}
}

staffBC = \new Staff {
	\set Staff.instrumentName = "Basso continuo"
	\set Staff.midiInstrument = "harpsichord"
	\key c \major
	\clef bass
	\relative c' { 	
		\set Score.measureLength = #(ly:make-moment 3 1)
		g1 c, d |
		e1. c2 d1 |
		g c, d |
		e1. f2 g1 |
		c,2 d e f g1 |
		f2 g g d e1 |
		a r2 a g1 |
		f e2 f g1 |
		a r2 a g1 |
		f1 e2. f4 g1 |
		c,1. d2 e1 |
		a,\breve e'1 |
		f\breve c1 |
		f,\breve g1 |
		c2 d e f g1 |
		a1. h2 c1 |
		f,\breve g1 |
		c,\breve h1 |
		a2 h c f, g1 |
		c1. c2 g1 |
		c d e |
		f g a |
		g, a h |
		c d e |
		f\breve d1 |
		g\breve e1 |
		a\breve g1 |
		f\breve e1 |
		d\breve c2 h |
		a h c d e1 |
		f\breve e2 d |
		c d e f g1 |
		c,\breve a1 |
		d\breve h1 |
		e\breve c1 |
		f\breve d1 |
		g\breve e1 |
		c d e |
		f g a |
		g, a h |
		c d e |
		f\breve d1 |
		g\breve e1 |
		a\breve g1 |
		f\breve e1 |
		d\breve c2 h |
		a h c d e1 |
		f\breve e2 d |
		\time 4/4
		\tempo 4=100
		c4. d8 e4. f8 |
		g1 |
		c,\fermata |
	\bar "|."
	}
}
staffBCFig = \new FiguredBass {
	\figuremode {
		s\breve.*33 |
		<_+>\breve s1 |
		s\breve.*14 |
		\time 4/4
		\tempo 4=100
		s1*3 |
	}
}


\score {
	<<
		\staffSopranoI
		\context Lyrics = "lmelodySopI" \lyricmode  { \lyricsto "melodySopI" \verseSI }
		
		\staffSopranoII
		\context Lyrics = "lmelodySopII" \lyricmode  { \lyricsto "melodySopII" \verseSII }
		
		\staffViolinoI
		
		\staffViolinoII
		
		\staffBC
		\staffBCFig
	>>
	
	\midi {
	}

	\layout  {
		indent=40
	}
}

\paper {
}

