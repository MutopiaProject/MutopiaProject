\version "2.12.2"

\header {
	title = "Litania"
	subtitle = "A 3"
	composer = "Alessandro Grandi (1577-1630)"
	mutopiatitle = "Litania"
	mutopiacomposer = "GrandiA"
	mutopiainstrument = "Voices (SSA), Basso Continuo"
	date = "1626"
	source = "Raccolta di D. Lorenzo Calvo. - Rosarium Litaniarium Beatae V. Mariae ternis, quaternis, quinis, senis, septenis, et octonis vocibus Concinendarum. Vna cum Basso ad Organum a D. Laurentio Calvo in aede Cathedrali Paviae Musico, ex Varijs Auctoribus desumptum Nunc primum in lucem aeditum. Cum Privilegio. - Venetiis, apud Alexandrum, Vincentium. 1626."
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"
 footer = "Mutopia-2010/04/04-1756"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verseSIA= \lyricmode {
Ky -- ri -- e e -- le -- i -- son Chri -- ste e -- le -- i -- son Chri -- ste au -- di nos Chri -- ste ex -- au -- di nos Pa -- ter de Cæ -- lis De -- us mi -- se -- re -- re no -- bis Fi -- li Re -- demp -- tor mun -- di De -- us mi -- se -- re -- re no -- bis mi -- se -- re -- re no -- bis Sanc -- ta Tri -- ni -- tas u -- nus De -- us mi -- se -- re -- re mi -- se -- re -- re no -- bis
Sanc -- ta Vir -- go Vir -- gi -- num o -- ra pro no -- bis Ma -- ter Chri -- sti o -- ra pro no -- bis o -- ra o -- ra pro no -- bis o -- ra o -- ra pro no -- bis Ma -- ter in -- vi -- o -- la -- ta o -- ra o -- ra pro no -- bis Ma -- ter A -- ma -- bi -- lis o -- ra o -- ra pro no -- bis o -- ra o -- ra pro no -- bis
Vir -- go præ -- di -- can -- da o -- ra pro no -- bis Vir -- go Cle -- mens o -- ra o -- ra pro no -- bis Spe -- cu -- lum ius -- ti -- ti -- æ o -- ra pro no -- bis
Cau -- sa no -- stræ læ -- ti -- ti -- æ o -- ra pro no -- bis
Ro -- sa mis -- ti -- ca Tur -- ris Da -- vi -- di -- ca Tur -- ris E -- bar -- ne -- a
o -- ra pro no -- bis o -- ra pro no -- bis
Stel -- la Ma -- tu -- ti -- na o -- ra pro no -- bis o -- ra o -- ra o -- ra pro no -- bis Re -- fu -- gi -- um pec -- ca -- to -- rum Au -- xi -- li -- um Au -- xi -- li -- um Chris -- ti -- a -- no -- rum Au -- xi -- li -- um Au -- xi -- li -- um Chris -- ti -- a -- no -- rum
o -- ra pro no -- bis o -- ra pro no -- bis pro no -- bis o -- ra pro no -- bis
Re -- gi -- na An -- ge -- lo -- rum o -- ra pro no -- bis Re -- gi -- na A -- pos -- to -- lo -- rum o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis Re -- gi -- na Con -- fes -- so -- rum Re -- gi -- na Vir -- gi -- num o -- ra o -- ra pro no -- bis Re -- gi -- na Re -- gi -- na San -- cto -- rum o -- ra pro no -- bis Re -- gi -- na San -- cto -- rum San -- cto -- rum om -- ni -- um o -- ra pro no -- bis pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis.
}
verseSIIA= \lyricmode {
Ky -- ri -- e e -- le -- i -- son Chri -- ste e -- le -- i -- son Chri -- ste au -- di nos Chri -- ste ex -- au -- di ex -- au -- di nos Pa -- ter de Cæ -- lis De -- us mi -- se -- re -- re no -- bis Fi -- li Re -- demp -- tor mun -- di De -- us mi -- se -- re -- re no -- bis mi -- se -- re -- re no -- bis Sanc -- ta Tri -- ni -- tas u -- nus De -- us mi -- se -- re -- re mi -- se -- re -- re no -- bis
Sanc -- ta De -- i Ge -- ne -- trix o -- ra pro no -- bis Ma -- ter Chris -- ti o -- ra pro no -- bis Ma -- ter pu -- ris -- si -- ma Ma -- ter Cas -- tis -- si -- ma o -- ra pro no -- bis Ma -- ter Ad -- mi -- ra -- bi -- lis o -- ra o -- ra pro no -- bis pro no -- bis o -- ra o -- ra pro no -- bis
Vir -- go pru -- den -- tis -- si -- ma o -- ra pro no -- bis Vir -- go po -- tens o -- ra  o -- ra pro no -- bis Se -- des sa -- pi -- en -- ti -- æ o -- ra pro no -- bis
Vas spi -- ri -- tu -- a -- le Vas ho -- no -- ra -- bi -- le Vas in -- si -- gnæ de -- vo -- ti -- o -- nis o -- ra pro no -- bis
o -- ra pro no -- bis pro no -- bis o -- ra pro no -- bis
o -- ra pro no -- bis pro no -- bis
Stel -- la Ma -- tu -- ti -- na o -- ra pro no -- bis o -- ra o -- ra o -- ra pro no -- bis Con -- so -- la -- trix af -- flic -- to -- rum Au -- xi -- li -- um Au -- xi -- li -- um Chris -- ti -- a -- no -- rum Au -- xi -- li -- um Au -- xi -- li -- um Chris -- ti -- a -- no -- rum
o -- ra pro no -- bis pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis
Re -- gi -- na Pro -- phe -- ta -- rum o -- ra pro no -- bis Re -- gi -- na A -- pos -- to -- lo -- rum o -- ra pro no -- bis Re -- gi -- na Mar -- ti -- rum Re -- gi -- na Mar -- ti -- rum o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis Re -- gi -- na Con -- fes -- so -- rum Re -- gi -- na Vir -- gi -- num o -- ra  o -- ra pro no -- bis o -- ra o -- ra pro no -- bis Re -- gi -- na San -- cto -- rum om -- ni -- um Re -- gi -- na San -- cto -- rum San -- cto -- rum om -- ni -- um o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis.
}
verseAA= \lyricmode {
Ky -- ri -- e e -- le -- i -- son Chri -- ste au -- di nos Chri -- ste ex -- au -- di nos Pa -- ter de Cæ -- lis De -- us mi -- se -- re -- re no -- bis mi -- se -- re -- re no -- bis Spi -- ri -- tus sanc -- te De -- us mi -- se -- re -- re no -- bis Sanc -- ta Tri -- ni -- tas u -- nus De -- us mi -- se -- re -- re mi -- se -- re -- re no -- bis
Sanc -- ta Ma -- ri -- a o -- ra pro no -- bis Ma -- ter Chris -- ti o -- ra pro no -- bos Ma -- ter di -- vi -- næ gra -- ti -- æ Ma -- ter cas -- tis -- si -- ma o -- ra o -- ra pro no -- bis Ma -- ter in -- te -- me -- ra -- ta o -- ra o -- ra pro no -- bis Ma -- ter Cre -- a -- to -- ris o -- ra o -- ra pro no -- bis
Vir -- go Ve -- ne -- ran -- da o -- ra pro no -- bis Vir -- go fi -- de -- lis o -- ra pro no -- bis
Cau -- sa no -- stræ læ -- ti -- ti -- æ o -- ra o -- ra pro no -- bis o -- ra o -- ra pro no -- bis
Do -- mus Au -- re -- a Fe -- de -- ris Ar -- ca Ia -- nu -- a Cæ -- li
o -- ra pro no -- bis
Sa -- lus in -- fir -- mo -- rum Con -- so -- la -- trix af -- fli -- cto -- rum Au -- xi -- li -- um Au -- xi -- li -- um Chris -- ti -- a -- no -- rum
o -- ra pro no -- bis pro no -- bis o -- ra pro no -- bis
Re -- gi -- na Pa -- tri -- ar -- cha -- rum o -- ra pro no -- bis pro no -- bis Re -- gi -- na Mar -- ti -- rum Re -- gi -- na Mar -- ti -- rum o -- ra pro no -- bis o -- ra pro no -- bis Re -- gi -- na Con -- fes -- so -- rum Re -- gi -- na Vir -- gi -- num o -- ra o -- ra pro no -- bis Re -- gi -- na o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis o -- ra pro no -- bis.
}


staffSopranoIA = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Canto I"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySopIA" {
			\dynamicUp
			\autoBeamOff
			d2. d4 |
			d2 d |
			es4\melisma d d2~ |
			d\melismaEnd c2 |
			d r4 d |
			c b b\melisma a8[ g] |
			a2.\melismaEnd a4 |
			g1 |
			d'2. d4 |
			es\melisma d d2~ |
			d\melismaEnd c |
			d1 |
			r4 d b g |
			a4. g8 g2 |
			d'4 d8 d h4 c |
			d2 d |
			r4 c8 d es4 a,16[ b c b] |
			a2 g |
			d'4 d8 d d4 b |
			c d es2 |
			d r4 c8 d |
			es4 a,16[ b c b] a2 |
			g1 |
			R1 |
			r2 r4 c8 d |
			es4 a,16[ b c b] a2 |
			g1\fermata |
			d'4 d d c8 b |
			c a d2\melisma c4\melismaEnd |
			d2 r4 c8 d |
			es2 b4 b8 c |
			d4 a16[ b c b] a2 |
			g1\fermata |
			\time 3/1
			\tempo 2=300
			R\breve.*10 |
			d'\breve b1 |
			c\breve d1 |
			es\breve es1 | %instead of e\breve e1
			d\breve d1 |
			c2\melisma b c d\melismaEnd es\melisma d |
			c b\melismaEnd a\breve |
			g\breve. |
			d'\breve b1 |
			c\breve a1 |
			b\breve c1 |
			b a\breve |
			g\breve.\fermata |
			R\breve.*3 |
			a\breve h1 |
			cis cis d |
			d\breve\melisma cis1\melismaEnd |
			d\breve. |
			R\breve. |
			a\breve h1 |
			cis cis d |
			d\breve\melisma cis1\melismaEnd |
			d\breve. |
			R\breve.*4 |
			d1 b g |
			a\breve b1 |
			b\breve\melisma a1\melismaEnd |
			b f g |
			a h c | %instead of ais b c
			c\breve\melisma h1\melismaEnd |
			c\breve. |
			R\breve.*5 |
			d1 c b |
			c1. c2 c1 |
			R\breve.*2 |
			r1 d e |
			f e d |
			e\breve. |
			d\breve. |
			r1 c d |
			es c b |
			a\breve. |
			g\breve.\fermata |
			\time 4/4
			\tempo 4=100
			R1*4 |
			c8 b b a b4 b8 d |
			g,4. a8 a2 |
			g a4 f16[ g a f] |
			g4 g r4 fis8 g |
			a4 g8 g g4\melisma fis\melismaEnd |
			g2 d'8 c c b |
			c8. c16 c4 r2 |
			r8 b a g a[\melisma b c b] |
			a2\melismaEnd g |
			\time 3/1
			\tempo 2=300
			R\breve.*2 |
			g\breve a1 |
			b a g |
			a1. g2 f1 |
			g\breve a1 |
			b a\breve |
			g\breve. |
			R\breve.*12 |
			\time 4/4
			\tempo 4=100
			d'4 e16[ d c b] c8. c16 c4 |
			f4 es8 d es8. es16 es4 |
			c b8 a b8. b16 b4 |
			\time 3/1
			\tempo 2=300
			R\breve. |
			c1 d es |
			d\breve. |
			c\breve r1 |
			g\breve a1 |
			b a\breve |
			\time 4/4
			\tempo 4=100
			g2 r |
			R1*3 |
			\time 3/1
			\tempo 2=300
			R\breve.*3 |
			\time 4/4
			\tempo 4=100
			R1 |
			f'8 es es d es4 c |
			r8 d b b c4 a |
			d b c a |
			r8 d c b a2 |
			g~ g |
			r r4 d' |
			d c8 b c4 a |
			b2.\melisma c4\melismaEnd |
			a2 r |
			R1 |
			r4 d b4. b8 |
			b2 r4 d |
			b b8 b b4 b8 c |
			a2 a |
			r4 f'16[ e d c] d4. d8 |
			d2 r4 f16[ e d c] |
			d4 d8 d d4 d8 e |
			c2 c |
			\time 3/1
			\tempo 2=300
			R\breve. |
			d1 e f |
			e\breve. |
			d |
			R\breve.*2 |
			g,1 a b |
			a h c |
			c\breve\melisma h1\melismaEnd |
			c\breve r1 |
			g\breve a1 |
			b a\breve |
			\time 4/4
			\tempo 4=100
			g1\fermata |
			r4 r8 d' b d c b |
			a2 a |
			R1*3|
			r2 r8 b a g |
			a[\melisma b c b] a2\melismaEnd |
			g r4 b |
			c2 c4 d |
			b c d2 |
			d4 f2 es4~ |
			es d c2 |
			b1 |
			R1*5 |
			r4 f'2 es4~ |
			es d c2 |
			b4 d2 c4~ |
			c b a2 |
			g r |
			r4 c b8 a b g |
			a4\melisma d2 cis4\melismaEnd |
			d a b c |
			d4. d8 c4 c~ |
			c8 b b2 a8 g |
			g2 f |
			R1 |
			r4 a f fis |
			r2 r4 c' |
			a a8 c c4\melisma h\melismaEnd |
			c2 r |
			r4 r8 c a a b4 |
			g2 r4 f' |
			d d8 d es4 es8 d |
			f4 es d4. c8 |
			c2 r4 r8 b |
			g g c4 d8 c h4 |
			c4. c8 a a d4 |
			b r r8 f g f |
			e2 d4. d'8 |
			h h c2 b4 |
			r8 b c b a2 |
			g4 d'2 c4~ |
			c b a2 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			g\longa |
			}

	\bar "|."
	}

}

staffSopranoIIA = \new Staff  {
	\set Staff.instrumentName="Canto II"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySopIIA" {
			\dynamicUp
			\autoBeamOff
			b2. b4 |
			b2 a |
			b2.\melisma a4\melismaEnd |
			g1 |
			a2 r4 d, |
			e fis g2~ |
			g fis2 |
			g1 |
			b2 a |
			b2.\melisma a4 |
			g2\melismaEnd g |
			a4 d b g |
			a2 g4 g |
			g fis g2 |
			h4 h8 h g4 a |
			b2 b |
			r4 a8 b c4 g |
			g\melisma fis\melismaEnd g2 |
			b4 b8 b b4 g |
			a b b\melisma a\melismaEnd |
			b2 r4 a8 b |
			c4 g g\melisma fis\melismaEnd |
			g1 |
			R1 |
			r2 r4 a8 b |
			c4 g g\melisma fis\melismaEnd |
			g1\fermata |
			b4 b b a8 g |
			a4 f g2 |
			fis r4 a8 h |
			c2 g4 g8 a |
			b4 g g\melisma fis\melismaEnd |
			g1\fermata |
			\time 3/1
			\tempo 2=300
			R\breve.*4 |
			fis\breve g1 |
			a\breve b1 |
			b\breve a1 |
			b\breve b1 |
			a2\melisma g a b c1\melismaEnd |
			b a\breve |
			g\breve. |
			R\breve.*6 |
			b\breve g1 |
			a\breve f1 |
			g\breve es1 | %es1 instead of e1
			g g\melisma fis\melismaEnd |
			g\breve.\fermata |
			R\breve.*6 |
			a1 a b |
			g\breve g1 |
			fis\breve. |
			R\breve.*3 |
			g1 a b |
			a1. b2 c1 |
			b\breve b1 |
			a a\breve |
			g\breve. |
			R\breve.*12 |
			a1. a2 g f |
			g1. g2 g1 |
			r g a |
			b a g |
			a a d |
			d\breve\melisma cis1\melismaEnd |
			d\breve. |
			r1 a h |
			c a g |
			g\breve\melisma fis1\melismaEnd |
			g\breve.\fermata |
			\time 4/4
			\tempo 4=100
			b8 a a g a a a c |
			f,4. g8 g2 |
			f r |
			R1*3 |
			d'4 b16[ c d b] c4 c |
			r2 r4 a8 b |
			c4 b8 a a2 |
			g r |
			a8 g g f g8. g16 g4 |
			r8 g f e fis[\melisma g a g] |
			g4 fis\melismaEnd g2 |
			\time 3/1
			\tempo 2=300
			R\breve.*7 |
			d'\breve d1 |
			d\breve c1 |
			c\breve c1 |
			es\breve. |
			es\breve d1 |
			d1. d2 d1 |
			b\breve b1 |
			b b2 b b a |
			a\breve a1 |
			R\breve. |
			g1 a b |
			a\breve. |
			g\fermata |
			\time 4/4
			\tempo 4=100
			R1*3 |
			\time 3/1
			\tempo 2=300
			g1 a b |
			a b c |
			c\breve\melisma h1\melismaEnd |
			c\breve r1 |
			e,\breve fis1 |
			g g\melisma fis\melismaEnd |
			\time 4/4
			\tempo 4=100
			g2 r |
			R1*3 |
			\time 3/1
			\tempo 2=300
			f1 g a |
			g a b |
			a\breve. |
			\time 4/4
			\tempo 4=100
			g2 d'8 c c b |
			c4 h r8 d a a |
			b4 g r a |
			fis g e r |
			r8 b' a g g4\melisma fis\melismaEnd |
			g1 |
			R1*2 |
			r4 g8 g g2~ |
			g4 f f d |
			es2.\melisma f4\melismaEnd |
			d2 r4 d' |
			b4. b8 b4 b |
			g g8 g g4 g8 a |
			fis2 fis |
			r2 r4 f'16[ e d c] |
			d4. d8 d4 d16[c b a] |
			b4 b8 b b4 b8 c |
			a2 a |
			\time 3/1
			\tempo 2=300
			a1 h cis | %h instead of b
			h cis d | %h instead of b
			d\breve\melisma cis1\melismaEnd |
			d\breve r1 |
			g,1 a b |
			a\breve. |
			g\breve r1 |
			c d es |
			d\breve. |
			c\breve r1 |
			e,\breve fis1 |
			g g\melisma fis\melismaEnd |
			\time 4/4
			\tempo 4=100
			g\fermata |
			R1*3 |
			r2 r4 c |
			a8 c b a g2 |
			g r8 g f e |
			fis[\melisma g a g] g4 fis\melismaEnd |
			g2 r4 g |
			a2 a4 b |
			g a b2 |
			b4 d2 c4~ |
			c b b\melisma a\melismaEnd |
			b2 r4 f |
			f g a4. a8 |
			a2 r4 a |
			a b c4. c8 |
			c4 a2 g4~ | %c4 instead of c2
			g f4 e2 |
			d4 d'2 c4~ |
			c b4 b\melisma a\melismaEnd |
			b b2 a4~ |
			a g4 g\melisma fis\melismaEnd |
			g2 r |
			r r4 g |
			f8 e f d e2 |
			d4 fis g a |
			b4. b8 a4 a4~ |
			a8 g8 g2 f8 f |
			f4\melisma e\melismaEnd f a4~ |
			a8 g8 g2 f8 e |
			e2 d4 d' |
			h h r2 |
			R1 |
			r8 es f es d4. d8 |
			c2 r |
			r4 es c c |
			r h c c8 c |
			d4 c c h |
			c4. c8 a a d4 |
			b r8 es f es d4 |
			c2 r4 r8 b |
			g g c4 a r |
			r2 r8 a fis fis |
			g4 g8 c a a d4 |
			b8 g a g g4\melisma fis\melismaEnd |
			g b2 a4~ |
			a g4 g\melisma fis\melismaEnd | %fis instead of f
			\set Score.measureLength = #(ly:make-moment 4 1)
			g\longa |
			}

	\bar "|."
	}

}

staffAltoA = \new Staff  {
	\set Staff.instrumentName="Alto"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyAltA" {
			\dynamicUp
			\autoBeamOff
			g2. g4 |
			g2 fis |
			g2.\melisma f4\melismaEnd |
			es1 |
			d |
			R1*2 |
			r2 g~ |
			g fis2 |
			g2.\melisma f4 |
			es2\melismaEnd es |
			d r4 g |
			f d es2 |
			d g, |
			g'4 g8 g g4 c, |
			b2 b4 d8 e |
			f2 c |
			d g, |
			R1*2 |
			r4 d'8 e f2 |
			c d |
			g,2 d'4 d8 d |
			es4 f g2 | %g2 instead of gis2
			f4 d8 e f2 |
			c d |
			g,1\fermata |
			g'4 g g g8 g |
			f4 d es2 |
			d4 d8 e f2 |
			c4 c8 d es2 |
			b4\melisma c\melismaEnd d2 |
			g,1\fermata |
			\time 3/1
			\tempo 2=300
			g'1 d e |
			f d f |
			e2\melisma d e f g1\melismaEnd |
			f e\breve |
			d\breve. |
			R\breve.*12 |
			g\breve g1 |
			f\breve f1 |
			es\breve c1 |
			g d'\breve |
			g,\breve.\fermata |
			d'1 d e |
			f\breve d1 |
			g\breve g1 
			fis\breve. |
			R\breve.*7 |
			d1 e f |
			e1. f2 g1 |
			f\breve e1 |
			g\breve g1 |
			g g\melisma fis\melismaEnd |
			g\breve. |
			R\breve.*5 |
			g1 es c |
			d\breve f1 |
			f\breve\melisma e1\melismaEnd |
			f c d |
			e fis g |
			g\breve\melisma fis1\melismaEnd |
			g\breve. |
			R\breve. |
			es1. d2 d2 c |
			d\breve d1 |
			R\breve.*3 |
			r1 d e |
			f e d |
			c\breve.\melisma |
			d\breve.\melismaEnd |
			g,\breve.\fermata |
			\time 4/4
			\tempo 4=100
			R1*2 |
			f'8 es es d es4 es8 g |
			c,4. d8 d2 |
			c r |
			R1*4 |
			g'4 f8 e d4 d |
			r2 r8 es d c |
			d4 d r2 |
			R1 |
			\time 3/1
			\tempo 2=300
			d\breve e1 |
			f es d |
			es\breve es1 |
			d\breve. |
			f\breve d1 |
			e\breve fis1 |
			g g\melisma fis\melismaEnd |
			g\breve. |
			R\breve.*8 |
			d1 e f |
			e f g~\melisma |
			g\breve fis1\melismaEnd |
			g\breve. |
			\time 4/4
			\tempo 4=100
			R1*3 |
			\time 3/1
			\tempo 2=300
			R\breve.*6 |
			\time 4/4
			\tempo 4=100
			r2 g4 e16[ f g e] |
			f8. e16 d4 f es8 d |
			es4 c c b8 a |
			b[\melisma g16 a] b[ c d e] f4\melismaEnd d |
			\time 3/1
			\tempo 2=300
			R\breve. |
			e1 f g |
			g\breve\melisma fis1\melismaEnd |
			\time 4/4
			\tempo 4=100
			g2 r |
			R1*4 |
			r2 g~ |
			g4 f f d |
			es2.\melisma f4\melismaEnd |
			d1 |
			r4 d8 d d2~ |
			d4 c c a |
			b2 g |
			R1*2 |
			r2 r4 d'16[ c b a] |
			b4. b8 b2 |
			r4 d16[ c b a] b4. b8 |
			b4 b b b |
			f'2 f |
			\time 3/1
			\tempo 2=300
			R\breve.*3 |
			d1 e f |
			e fis g |
			g\breve\melisma fis1\melismaEnd |
			g\breve r1 |
			R\breve.*3 |
			c\breve a1 |
			g d'\breve |
			\time 4/4
			\tempo 4=100
			g,1\fermata |
			R1 |
			r2 r4 d' |
			d2 d8 f e d |
			c2 c |
			R1 |
			r8 es d c d2 |
			d4 b c\melisma d\melismaEnd |
			g,1\fermata |
			R1*4 |
			r2 r4 d |
			d e fis4. fis8 |
			fis2 r4 fis |
			fis g a4. a8 |
			a4 f2 e4~ |
			e d4 d\melisma cis\melismaEnd |
			d2 r |
			R1 |
			r4 g, a2 |
			b4\melisma c\melismaEnd d2 |
			g,4 g' f8 e e d |
			es2 d |
			R1 |
			r4 d g f |
			b,4. b8 f'2 |
			R1 |
			r2 r4 f4~ |
			f8 e e2 d8 d |
			d4\melisma cis\melismaEnd d2 |
			r4 g e e |
			R1*2 |
			r8 g e e f4 d |
			R1*3 |
			r8 g e e f4 d |
			R1 |
			r8 g e e f4 d |
			r2 r8 d e d |
			d4\melisma cis\melismaEnd d2 |
			r8 g e e f4 d |
			R1 |
			r4 b4 c4. c8 |
			d1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			g,\longa |
			}

	\bar "|."
	}

}

staffBassoContinuoA = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c' {
		g1 |
		g2 fis |
		g2. f4 |
		es1 |
		d2 h |
		c es |
		d1 |
		g,2 g'~ |
		g fis |
		g2. f4 |
		es1 |
		d2 g |
		f4 d es2 |
		d g, |
		g' g4 c, |
		b2 b4 d8 e |
		f2 c |
		d g, |
		g' g |
		f4 d c2 |
		b4 d8 e f2 |
		c d |
		g, g' |
		c,4 b es2 |
		d4. e8 f2 |
		c d |
		g,1 |
		g'2. g4 |
		f d es2 |
		d4. e8 f2 |
		c4. d8 es2 |
		b4 c d2 |
		g,1 |
		\time 3/1
		\tempo 2=300
		g'1 f e |
		d\breve d1 |
		a\breve g1 |
		d' a\breve |
		d g1 |
		f\breve d1 |
		es\breve f1 |
		b,\breve g1 |
		d'\breve c1 |
		g d'\breve | %g instead of a
		g g1 f\breve d1 |
		c\breve c1 |
		b\breve b1 |
		f'\breve c1 |
		g d'\breve |
		g,\breve. |
		g'\breve g1 |
		f\breve f1 |
		es\breve c1 |
		g d'\breve |
		g,\breve. |
		g'\breve e1 |
		d\breve b1 |
		es\breve es1 |
		d\breve. |
		a'\breve b1 |
		g a\breve |
		d, g1 |
		es\breve es1 |
		d\breve. |
		a'\breve b1 |
		g a\breve |
		d,\breve. |
		c\breve g1 |
		d'\breve c1 |
		es\breve es1 |
		c d\breve |
		g,\breve g'1 |
		f\breve d1 |
		es\breve f1 |
		b, a g |
		f g a |
		g\breve. |
		c |
		b\breve a1 |
		b\breve c1 |
		f e d |
		c d es |
		d\breve. |
		g, |
		f |
		c' |
		g'\breve fis1 |
		g f e |
		d\breve b'1 |
		a\breve. |
		d,\breve e1 |
		f e d |
		c\breve. |
		d |
		g,\fermata |
		\time 4/4
		\tempo 4=100
		g2 f4 a |
		b d c2 |
		f, c'4 es |
		f as g2 |
		c, g4 b |
		c es d2 |
		g f |
		es d |
		c d |
		g,4 a b2 |
		f c' |
		g d'4 b |
		c d g,2 |
		\time 3/1
		\tempo 2=300
		g'1 f e |
		d\breve h1 |
		c\breve. |
		g |
		d'\breve d1 |
		c\breve a1 |
		g d'\breve |
		g,1 b c |
		d\breve e1 |
		f\breve f1 |
		c\breve d1 |
		es\breve f1 |
		g\breve g1 |
		g,\breve a1 |
		b\breve c1 |
		d\breve d1 |
		b\breve d1 |
		c\breve g1 |
		d'\breve. |
		g,\fermata |
		\time 4/4
		\tempo 4=100
		g2 f |
		a4 h c2 |
		e4 fis g2 |
		\time 3/1
		\tempo 2=300
		g,\breve g'1 |
		f\breve c1 |
		g'\breve. |
		c,\breve r1 |
		c\breve a1 |
		g d'\breve |
		\time 4/4
		\tempo 4=100
		g,2 g4 a |
		d b f g |
		c2 e4 fis |
		g2 d |
		\time 3/1
		\tempo 2=300
		d\breve a1 |
		c\breve g1 |
		d'\breve. |
		\time 4/4
		\tempo 4=100
		g,2 b'4 g |
		f g c, f |
		b, es c f |
		d es c f |
		b, c d2 |
		g,1 |
		d'2 h |
		c1 |
		g |
		d'2 h |
		c1 |
		g |
		g |
		g |
		d' |
		b |
		b |
		b |
		f |
		\time 3/1
		\tempo 2=300
		f'\breve c1 |
		g'\breve d1 |
		a'\breve. |
		d, |
		c\breve g1 |
		d'\breve. |
		g, |
		f |
		c'1 g\breve |
		c r1 |
		c\breve a1 |
		g d'\breve |
		\time 4/4
		\tempo 4=100
		g,1\fermata |
		g2 b4 c |
		d1 |
		b2 d4 e |
		f2 f, |
		a4 b c2 |
		c g |
		d'4 b c d |
		g,2 g' |
		f f4 d |
		es c b2 |
		b c |
		d4 es f2 |
		b,2. b4 |
		b g d'2 |
		d2. d4 |
		d g f2 |
		f, g |
		a1 |
		d4 b c2 |
		d4 es f2 |
		b,4 g a2 |
		b4 c d2 |
		g, d' |
		c g |
		d' a |
		d4 d g f |
		b,2 f'4 f, |
		g2 a4 b |
		c2 f,4 d' |
		e2 f4 g |
		a2 d, |
		g, c |
		f,4 a g2 |
		c4 f, g2 |
		c f4 b, |
		es2 f |
		g c, |
		f, g |
		c f,4 b |
		es c f g |
		c,2 f,4 b |
		es c d g, |
		a2 d |
		g,4 c f, b |
		es c d2 |
		g,4 b c2 |
		d1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		g,\longa |
		\bar "|."
	}

}

staffBCA = \new FiguredBass {
	\figuremode {
		s1*24 |
		<_+>4. s8 s2 |
		s1*8 |
		\time 3/1
		\tempo 2=300
		s\breve.*26 |
		<_+>\breve s1 |
		s\breve. |
		<_+>\breve s1 |
		s\breve. |
		<_+>\breve. |
		<_+>\breve s1 |
		s\breve.*12 |
		<_->\breve. |
		s\breve.*7 |
		<_->\breve. |
		s\breve.*6 |
		<_->\breve. |
		s\breve.*2 |
		\time 4/4
		\tempo 4=100
		s1*7 |
		s2 <_+>2 |
		s1*2 |
		s2 <_->2 |
		s1*2 |
		\time 3/1
		\tempo 2=300
		s\breve.*15 |
		<_+>\breve s1 |
		s\breve.*4 |
		\time 4/4
		\tempo 4=100
		s1 |
		s2 <_->2 |
		<6>4 s4 s2 |
		\time 3/1
		\tempo 2=300
		s\breve.*6 |
		\time 4/4
		\tempo 4=100
		s1*2 |
		<_->2 <6>4 s4 |
		s1 |
		\time 3/1
		\tempo 2=300
		s\breve.*3 |
		\time 4/4
		\tempo 4=100
		s1 |
		s2 <_->4 s4 |
		s1 |
		<_+>4 s4 s2 |
		s1*3 |
		<_->1 |
		s1*2 |
		<_->1 |
		s1*3 |
		<_+>1 |
		s1*4 |
		\time 3/1
		\tempo 2=300
		s\breve. |
		<_+>\breve s1 |
		s\breve.*6 |
		<_->1 s\breve |
		s\breve.*3 |
		\time 4/4
		\tempo 4=100
		s1*2 |
		<_+>1 |
		s1*3 |
		<_->2 s2 |
		<_+>4 s4 s2 |
		s1*10 |
		<_+>1 |
		s1*15 |
		<_->4 s4 s2 |
		s1*2 |
		s2 <_->2 |
		s1*2 |
		s4 <_->4 s2 |
		s1 |
		s2 <_->4 s4 |
		s1*5 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		s\longa |
	}
}

verseSIB= \lyricmode {
Ag -- nus De -- i qui tol -- lis pec -- ca -- ta mun -- di Par -- ce no -- bis Do -- mi -- ne Ag -- nus De -- i qui tol -- lis pec -- ca -- ta mun -- di Ex -- au -- di nos Do -- mi -- ne Ag -- nus De -- i qui tol -- lis pec -- ca -- ta mun -- di mi -- se -- re -- re no -- bis qui tol -- lis pec -- ca -- ta qui tol -- lis pec -- ca -- ta mun -- di mi -- se -- re -- re no -- bis.
}
verseSIIB= \lyricmode {
Ag -- nus De -- i qui tol -- lis pec -- ca -- ta mun -- di Par -- ce no -- bis Do -- mi -- ne Ag -- nus De -- i qui tol -- lis pec -- ca -- ta mun -- di Ex -- au -- di nos Do -- mi -- ne Ag -- nus De -- i qui tol -- lis pec -- ca -- ta mun -- di mi -- se -- re -- re no -- bis qui tol -- lis pec -- ca -- ta qui tol -- lis pec -- ca -- ta mun -- di mi -- se -- re -- re no -- bis mi -- se -- re -- re no -- bis.
}
verseAB= \lyricmode {
Ag -- nus De -- i qui tol -- lis pec -- ca -- ta mun -- di Par -- ce no -- bis Do -- mi -- ne Ag -- nus De -- i qui tol -- lis pec -- ca -- ta mun -- di Ex -- au -- di nos Do -- mi -- ne Ag -- nus De -- i qui tol -- lis pec -- ca -- ta pec -- ca -- ta mun -- di qui tol -- lis pec -- ca -- ta mi -- se -- re -- re no -- bis mi -- se -- re -- re no -- bis.
}


staffSopranoIB = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySopIB" {
			\dynamicUp
			\autoBeamOff
			d1~ |
			d2 d |
			es4\melisma d d2~ |
			d c\melismaEnd |
			d r4 d |
			a a8 a b4 c16[ a b c] |
			d2 d |
			r4 c8 d es4 a,16[ b c b] |
			a4. g8 g2 |
			r d'~ |
			d d |
			es4\melisma d d2~ |
			d c\melismaEnd |
			d r4 d |
			a a8 a b4 c16[ d e c] |
			d2 d |
			r4 c16[ b c d] es4 c8 b |
			a4. a8 g2 |
			R1 |
			r4 d'2 c4 |
			d4.\melisma c8 b2\melismaEnd |
			a r4 g |
			e e8 e f2 |
			f4 b2\melisma a4\melismaEnd |
			b d2 c4 |
			c1 |
			b |
			a |
			g2 r4 c |
			a g8 a b4 b8 b |
			g4 f8 g a4 c |
			c\melisma h\melismaEnd c2 |
			R1*3 |
			d2. c4 |
			c1 b |
			a~ |
			a |
			\set Score.measureLength = #(ly:make-moment 4 1)
			g\longa |
			}

	\bar "|."
	}

}

staffSopranoIIB = \new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySopIIB" {
			\dynamicUp
			\autoBeamOff
			b1~ |
			b2 a |
			b2.\melisma a4 |
			g1\melismaEnd |
			a2 r4 a |
			fis fis8 fis g4 a16[ f g a] |
			b2 b |
			r4 a8 b c4 g |
			g fis g2 |
			r b~ |
			b a |
			b2.\melisma a4 |
			g1\melismaEnd |
			a2 r4 a |
			f fis8 fis g4 a16[ b c a] |
			b2 b |
			r4 a16[ g a b] c4 a8 g |
			g4. fis8 g2 |
			R1 |
			r2 g~ |
			g4 fis g2 |
			d4 d' b b8 b |
			c4.\melisma b8 a4\melismaEnd c |
			d2\melisma c\melismaEnd |
			b b~ |
			b4 a a2~ |
			a g |
			g\melisma fis\melismaEnd |
			g4 g e d8 e |
			f4 f8 f' d4 c8 d |
			es2 d |
			d c |
			g2. f4 |
			f2. e4 |
			e1 |
			d2 b'~ |
			b4 a a2~ |
			a g |
			e4\melisma f g2~ |
			g fis\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 1)
			g\longa |
			}

	\bar "|."
	}

}

staffAltoB = \new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyAltB" {
			\dynamicUp
			\autoBeamOff
			g1~ |
			g2 fis |
			g2.\melisma f4 |
			es1\melismaEnd |
			d2 r4 d |
			d d8 d g4 f |
			b,2 b4 d8 e |
			f2 c |
			d4. d8 g,2 |
			g'1~ |
			g2 fis |
			g2.\melisma f4 |
			es1\melismaEnd |
			d2 r4 d |
			d d8 d g4 f |
			b,2 b4 d16[ c d e] |
			f4. f8 c2 |
			d4. d8 g,2 |
			g'2. fis4 |
			g4.\melisma f8 es2\melismaEnd |
			d r4 g |
			fis fis8 fis g2 | %fis fis8 fis instead of fis f8 fis
			c,4 c f4.\melisma e8 |
			d4\melismaEnd b f'2 |
			b,1 |
			R1*2 |
			r2 r4 d |
			h a8 h c2 |
			f, r |
			R1*2 |
			r2 e'~|
			e4 d d2~ |
			d4 c cis2 |
			d1 |
			f2. e4 |
			d2 es |
			c1\melisma |
			d\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 1)
			g,\longa |
			}

	\bar "|."
	}

}

staffBassoContinuoB = \new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c' {
		g1~ |
		g2 fis |
		g2. f4 |
		es1 |
		d2. d4 |
		d2 g4 f |
		b,2 b4 d8 e |
		f2 c |
		d g, |
		g'1~ |
		g2 fis |
		g2. f4 |
		es1 |
		d |
		d2 g4 f |
		b,2. d4 |
		f2 c |
		d g, |
		g'2. fis4 |
		g4. f8 es2 |
		d g |
		fis g |
		c, f4. e8 |
		d4 b f'2 |
		b,1 |
		f' |
		g |
		d |
		g,2 c |
		f b, |
		es f |
		g c, |
		c1 |
		d |
		a |
		d2 b |
		f'1 |
		d2 es |
		c1 |
		d |
		\set Score.measureLength = #(ly:make-moment 4 1)
		g,\longa |
		\bar "|."
	}

}

staffBCB = \new FiguredBass {
	\figuremode {
		s1*27 |
		<_+>1 |
		s1*9 |
		<6>2 s2 |
		s1*2 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		s\longa |
	}
}


\score {
	<<
		\staffSopranoIA
		\context Lyrics = "lmelodySopIA" \lyricmode  { \lyricsto "melodySopIA" \verseSIA }
		
		\staffSopranoIIA
		\context Lyrics = "lmelodySopIIA" \lyricmode  { \lyricsto "melodySopIIA" \verseSIIA }
		
		\staffAltoA
		\context Lyrics = "lmelodyAltA" \lyricmode  { \lyricsto "melodyAltA" \verseAA }
		
		\staffBassoContinuoA
		\staffBCA
		
	>>
	
	\midi {
	}

	\layout  {
	}
}


\score {
	<<
		\staffSopranoIB
		\context Lyrics = "lmelodySopIB" \lyricmode  { \lyricsto "melodySopIB" \verseSIB }
		
		\staffSopranoIIB
		\context Lyrics = "lmelodySopIIB" \lyricmode  { \lyricsto "melodySopIIB" \verseSIIB }
		
		\staffAltoB
		\context Lyrics = "lmelodyAltB" \lyricmode  { \lyricsto "melodyAltB" \verseAB }
		
		\staffBassoContinuoB
		\staffBCB
		
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

