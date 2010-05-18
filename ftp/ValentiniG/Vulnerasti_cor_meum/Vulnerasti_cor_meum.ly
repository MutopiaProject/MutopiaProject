% Created on Tue May 04 22:41:18 CEST 2010
\version "2.12.3"

\header {
	title = "Vulnerasti cor meum"
	subtitle = "A 3. doi Tenori, e Basso"
	composer = "Giovanni Valentini (1582/83-1649)"
	mutopiatitle = "Vulnerasti cor meum"
	mutopiacomposer = "ValentiniG"
	mutopiainstrument = "Voices (TTB), Basso Continuo"
	date = "1615"
	source = "Raccolta di Gio. Battista Bonometti bergamasco. - Parnassus Musicus Ferdinandaeus in quo Musici nobilissimi, quà suavitate, quà arte prorsus admirabili & diuina ludunt: 1. 2. 3. 4. 5. Vocum. A Joanne Baptista Bonometti Bergomate Serenissimi Ferdinandi Archiducis Austriae, &c. Musico congestus, eidemque Serenissimo in grati animi symbolum dicatus, & consecratus. Cum Privilegio."
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"
 footer = "Mutopia-2010/05/17-1771"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verseTI= \lyricmode {
Vul -- ne -- ras -- ti cor me -- um So -- ror me -- a spon -- sa so -- ror me -- a spon -- sa so -- ror me -- a spon -- sa Vul -- ne -- ras -- ti cor me -- um in u -- no o -- cu -- lo -- rum tu -- o -- rum "&" in u -- no cri -- ne col -- li tu -- i "&" in u -- no cri -- ne col -- li tu -- i
Quam pul -- chræ sunt mam -- mæ tu -- æ so -- ror me -- a spon -- sa so -- ror me -- a spon -- sa
pul -- chri -- o -- ra sunt u -- be -- ra tu -- a vi -- no pul -- chri -- o -- ra sunt u -- be -- ra tu -- a vi -- no su -- per om -- ni -- a a -- ro -- ma -- ta su -- per om -- ni -- a a -- ro -- ma -- ta Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia.
}
verseTII= \lyricmode {
Vul -- ne -- ras -- ti cor me -- um So -- ror me -- a spon -- sa So -- ror me -- a spon -- sa So -- ror me -- a spon -- sa Vul -- ne -- ras -- ti cor me -- um in u -- no o -- cu -- lo -- rum tu -- o -- rum "&" in u -- no cri -- ne col -- li tu -- i "&" in u -- no cri -- ne col -- li tu -- i
So -- ror me -- a spon -- sa So -- ror me -- a spon -- sa
pul -- chri -- o -- ra sunt u -- be -- ra tu -- a vi -- no su -- per om -- ni -- a a -- ro -- ma -- ta Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia.
}
verseB= \lyricmode {
So -- ror me -- a spon -- sa Vul -- ne -- ras -- ti cor me -- um so -- ror me -- a spon -- sa so -- ror me -- a spon -- sa in u -- no o -- cu -- lo -- rum tu -- o -- rum in u -- no o -- cu -- lo -- rum tu -- o -- rum "&" in u -- no cri -- ne col -- li tu -- i "&" in u -- no cri -- ne col -- li tu -- i col -- li tu -- i
Quam pul -- chræ sunt mam -- mæ tu -- æ So -- ror me -- a spon -- sa
pul -- chri -- o -- ra sunt u -- be -- ra tu -- a vi -- no u -- be -- ra tu -- a vi -- no "&" o -- dor un -- guen -- to -- rum tu -- o -- rum "&" o -- dor un -- guen -- to -- rum tu -- o -- rum Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia.
}

staffTenore = \new Staff {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName = \markup {\smallCaps Tenore "Pri[mo]"}
	\set Staff.midiInstrument = "oboe"
	\key f \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			d2. a4 b2. b8 a |
			a1 g2 r |
			r1 b8 a g f g2~ |
			g4\melisma fis\melismaEnd g2 r1 |
			R\breve |
			c8 b a g a[\melisma b] c2 h4\melismaEnd c2 |
			a4 g f e fis\melisma g2 fis4\melismaEnd |
			g2 r d'2. es4 |
			c2 c4 b g2 a |
			R\breve*3 |
			r4 b d8 c b a g4 f8 g e2 |
			d r r d'~ |
			d8 d c a b a b c d2 a |
			r b~ b8 b a f g f g a |
			b2.\melisma a8 g a2\melismaEnd g |
			\time 3/1
			\tempo 2=240
			d'1 b a |
			g2 b1 b2 c1 |
			d2 d1 c2 b1 |
			a b\breve |
			a\breve. |
			R\breve.*2 |
			r2 d1 c2 b1 |
			a b\breve |
			\time 4/4
			\tempo 4=100
			\set Score.measureLength = #(ly:make-moment 4 1)
			a2 a8 b c d b4 b4. a8 b4 |
			c d c2 b r |
			r1 r2 d,8 e f g |
			es4 g4. f8 g4 a8 g g2\melisma fis4\melismaEnd |
			g2 r r1 |
			r4 c8 c d d d e e4. d8 d2 |
			R\breve |
			r2 r4 c8 c d d d e e4. d8 |
			d2 r4 d2 a4 b2 |
			a r r r4 a~ |
			a e f2 e r |
			r4 f8 g a a b a g2.\melisma fis4\melismaEnd |
			g b8 c d d es d c4 a f8 d f4~\melisma |
			f e\melismaEnd f2 r4 f8 g a a b a |
			g2.\melisma fis4\melismaEnd g2 r |
			\set Score.measureLength = #(ly:make-moment 7 1)
			r1 r2 b2. a4 a2 g\longa |
		}

	\bar "|."
	}

}
staffTenoreII = \new Staff {
	\set Staff.instrumentName = \markup {\smallCaps Tenore "Secondo"}
	\set Staff.midiInstrument = "oboe"
	\key f \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTenII" {
			\dynamicUp
			\autoBeamOff
			R\breve |
			d2. a4 b2. b8 a |
			a1 g2 c8 b a g |
			a2 g r1 |
			R\breve |
			r2 a8 g f e f2 e |
			r r4 c'4. b8 a g a2 |
			g r r1 |
			R\breve |
			r1 r2 c2~ |
			c4 d b2 b4 a f2 |
			g r r1 |
			r4 g b8 a g f e4 d8 e cis2 |
			d r r1 |
			r1 g2~ g8 g f d |
			e d e f g4 d r f4. f8 e c |
			d c d e fis4\melisma g2 fis4\melismaEnd g2 |
			\time 3/1
			\tempo 2=240
			R\breve.*2 |
			r2 b1 a2 g1 |
			fis1 g\breve |
			f\breve r1 |
			R\breve.*2 |
			r2 b1 a2 g1 |
			fis g\breve |
			\time 4/4
			\tempo 4=100
			\set Score.measureLength = #(ly:make-moment 4 2)
			fis2 r r1 |
			R\breve |
			r1 a8 b c d b4 b4~ |
			b8 a b4 c2. b4 a2 |
			g r r1 |
			R\breve |
			r1 r4 g8 g a a a h |
			h4. a8 a2 r1 |
			r2 r4 b2 fis4 g2 |
			fis r r r4 f~ |
			f cis d2 cis r |
			r r4 g'8 a b b c b a2 |
			g r r4 f8 g a a b a |
			g2 f r r4 g8 a |
			b b c b a2 g b~ |
			\set Score.measureLength = #(ly:make-moment 7 1)
			b4 a a2 g g2. fis4 fis2 g\longa |
		}

	\bar "|."
	}

}
staffBass = \new Staff {
	\set Staff.instrumentName = \markup{\smallCaps Basso}
	\set Staff.midiInstrument = "oboe"
	\key f \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			R\breve*2 |
			r1 g8 f es d es2 |
			d r g2. d4 |
			es2. es8 d d1 |
			c2 f8 e d c d2 c |
			f4 e d c d1 |
			g, r1 |
			r r2 r4 d' |
			f8 e d c b4 a8 b g2 f |
			R\breve |
			r4 e' g8 f e d c4 b8 c a2 |
			g1 r |
			r2 d'~ d8 d c a b a b c |
			d2 g, r d'~ |
			d8 d c a b a b c d2 c |
			g4 g d'1 g,2 |
			\time 3/1
			\tempo 2=240
			R\breve.*5 |
			d'1 b a |
			g2 b1 b2 c1 |
			d2 b1 f2 g1 |
			d' g,\breve |
			\time 4/4
			\tempo 4=100
			\set Score.measureLength = #(ly:make-moment 4 2)
			d'2 r r1 |
			r d8 e f g es4 es~ |
			es8 d es4 f g f2 b, | %es4 istead of e4 as in basso continuo
			r4 es4. d8 e4 f g d2 |
			g, r4 g g8 g g b b4 b8 d f2 b, r r4 d d8 d d f f4 f8 a, c2 f, |
			R\breve*2 |
			r4 d'8 e fis fis g f es2 d |
			r1 r4 a8 h cis cis d c |
			b2 f4 g2 c4 d2 |
			g, r4 c8 d es es f e d4.\melisma a8 |
			c2\melismaEnd f,4 c'8 d e e f e d4 g, |
			es' c d2 g, r |
			\set Score.measureLength = #(ly:make-moment 7 1)
			r1 r2 g2. d'4 d2 g,\longa |
		}

	\bar "|."
	}

}
staffBasso = \new Staff {
	\set Staff.instrumentName = "[Basso continuo]"
	\set Staff.midiInstrument = "harpsichord"
	\key f \major
	\clef bass
	\relative c { 	
		d1~ d~ |
		d g, |
		d' g8 f es d es2 |
		d g, g1~ |
		g~ g |
		c2 f8 e d c d2 c |
		f4 e d c d1 |
		g, g2. c4 |
		c2 c4 g es'2 d4 d |
		f8 e d c b4 a8 b g2 f~ |
		f4 b g2 g4 f d2 |
		c1 c'4 b8 c a2 |
		g1. a2 |
		d, d'~ d8 d c a b a b c |
		d2 g,~ g d' |
		d8 d c a b a b c d2 c |
		g4 g d'2~ d g,\fermata |
		\time 3/1
		\tempo 2=240
		g1 g d' |
		g,2 g1 g2 f1 |
		b2 b1 f2 g1 |
		d' g,\breve |
		d\breve. |
		d'1 b a |
		g2 b1 b2 c1 |
		d2 b1 f2 g1 |
		d' g,\breve |
		\time 4/4
		\tempo 4=100
		\set Score.measureLength = #(ly:make-moment 4 2)
		d2 d' g,1 |
		f b2 es4 es~ |
		es8 d es4 f g f2 b, |
		es4 es4. d8 e4 f g d2 |
		g,2. g4 g8 g g b b4 b8 d |
		f2 b, a d4 d |
		d8 d d f f4 f8 a, c2 f, |
		e a b a |
		d, r4 b'2 d4 g,2 |
		d'4 d8 e fis fis g f es2 d4 f, |
		f a d,2 a'4 a8 h cis cis d c |%h instead of b
		b2 f4 g2 c4 d2 |
		g,2. c8 d es es f e d4. a8 |
		c2 f, c'4 f8 e d4 g, |
		e' c d2 g, g~ |
		\set Score.measureLength = #(ly:make-moment 7 1)
		g4 d' d2 g, g2. d'4 d2 g,\longa |
	\bar "|."
	}

}


\score {
	<<
		\staffTenore
		\context Lyrics = "lmelodyTen" \lyricmode { \lyricsto "melodyTen" \verseTI }
		
		\staffTenoreII
		\context Lyrics = "lmelodyTenII" \lyricmode { \lyricsto "melodyTenII" \verseTII }
		
		\staffBass
		\context Lyrics = "lmelodyBas" \lyricmode { \lyricsto "melodyBas" \verseB }
		
		\staffBasso
	
	>>
	
	\midi {
	}

  \layout {
  	  indent=40
  }
}

\paper {
}


