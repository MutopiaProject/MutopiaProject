\version "2.12.2"

\header {
	title = "Duo Seraphim"
	subtitle = "Tribus vocibus"
	composer = "Claudio Monteverdi (1567-1643)"
	mutopiatitle = "Duo Seraphim"
	mutopiacomposer = "MonteverdiC"
	mutopiainstrument = "Voices (TTT), Basso Continuo"
	date = "1610"
	source = "Sanctissimae Virgini Missa senis vocibus ac Vesperae pluribus decantandae, cum nonnullis sacris concentibus, ad Sacella sive Principum Cubicula accommodata. Opera a Claudio Monteverde nuper effecta ac Beatiss. Paulo V. Pont. Max. consecrata. - Venetiis, apud Ricciardum Amadinum. 1610. - in 4°. Cantus, Tenor, Altus, Bassus, Quintus, Sextus, Septimus, et Bassus Generalis"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"
 footer = "Mutopia-2010/02/01-1738"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verseTI= \lyricmode {
Du -- o Se -- ra -- phim cla -- ma -- bant cla -- ma -- bant cla -- ma -- bant al -- ter ad al -- te -- rum San -- ctus san -- ctus Do -- mi -- nus De -- us Sa -- ba -- oth Ple -- na est om -- nis ter -- ra Ple -- na est om -- nis ter -- ra om -- nis ter -- ra glo -- ri -- a e -- ius
Tres sunt qui tes -- ti -- mo -- ni -- um dant in cœ -- lo Pa -- ter Ver -- bum, "&" Spi -- ri -- tus san -- ctus "&" hi tres u -- num sunt "&" hi tres u -- num sunt San -- ctus san -- ctus Do -- mi -- nus De -- us sa -- ba -- oth. Ple -- na est Ple -- na est om -- nis ter -- ra glo -- ri -- a glo -- ri -- a glo -- ri -- a e -- ius glo -- ri -- a glo -- ri -- a e -- ius.
}
verseTII= \lyricmode {
Du -- o Se -- ra -- phim cla -- ma -- bant cla -- ma -- bant  al -- ter ad al -- te -- rum San -- ctus san -- ctus Do -- mi -- nus De -- us sa -- ba -- oth Ple -- na est om -- nis ter -- ra Ple -- na est om -- nis ter -- ra om -- nis ter -- ra glo -- ri -- a e -- ius
Tres sunt qui tes -- ti -- mo -- ni -- um dant dant in cœ -- lo Ver -- bum, "&" spi -- ri -- tus san -- ctus "&" hi tres u -- num sunt "&" hi tres u -- num sunt san -- ctus San -- ctus Do -- mi -- nus De -- us sa -- ba -- oth Ple -- na est Ple -- na est om -- nis ter -- ra glo -- ri -- a glo -- ri -- a e -- ius glo -- ri -- a glo -- ri -- a e -- ius.
}
verseTIII= \lyricmode {
Tres sunt qui tes -- ti -- mo -- ni -- um dant in cœ -- lo "&" Spi -- ri -- tus san -- ctus "&" hi tres u -- num sunt "&" hi tres u -- num sunt san -- ctus san -- ctus Do -- mi -- nus De -- us sa -- ba -- oth Ple -- na est Ple -- na est om -- nis ter -- ra glo -- ri -- a e -- ius glo -- ri -- a e -- ius.
}


staffTenoreI = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Tenor"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTenI" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			g1 a |
			b2. c4 c2 r4 a |
			b4.\melisma c8 d1\melismaEnd c2 |
			r1 r2 r4 a |
			b4.\melisma c8 d1\melismaEnd c4 c |
			f1 e |
			d2. d4 c1 |
			b4.\melisma c8 d2~ d16[ c b32 c d b] c16[ b a32 b c a] b2~ |
			b8[ c16 d] c8[ d16 es] d1 es32[ d c b] a[ a a a a a a a] a16.\melismaEnd g32 |
			a1 a16.[\melisma b32 a16. b32] a16.[ b32 a16. b32] a16[ a a a] a[ a a a] |
			\set Score.measureLength = #(ly:make-moment 4 4)
			a8[ g16 f] g[ e f d] e[ e e e] e[ e e e]\melismaEnd |
			d2 r |
			R1 |
			d'16.[\melisma es32 d16. es32] d32[ d d d d d d d] d8[ c16 b] c[ a b g] | %es32 instead of e32
			a[ a a a] a[ a g a] b8[ a16 g] a[ fis g e] | %fis instead of f
			fis[ fis fis fis] fis[ fis e fis] g2\melismaEnd |
			a g4. g8 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			fis2 b a d8.[\melisma e16] f4~ | %fis instead of f
			f es16[ d es c] d2. c16[ b a c] b8.[ a16] g[ a b c] |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d[ b c a] b[ g a f] g[ a b c] d32[ e f d] es[ c d b] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			c4.\melismaEnd c8 b2 d,16[\melisma e f g] a[ b c a]\melismaEnd b8.[\melisma a16] b16[ a g f]\melismaEnd |
			g4 g8 g a8.[\melisma g16] a[ g f e]\melismaEnd f2 d'16[\melisma c b c] d[ e f d]\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 4)
			es8.[\melisma d16] es[ d c b]\melismaEnd c8.[\melisma b16] a8.[ g16] |
			a4\melismaEnd f8. f16 f16[\melisma e d e] f[ g a f]\melismaEnd |
			g4 g8. g16 g16[\melisma f e f] g[ a b g]\melismaEnd |
			a2 f16[\melisma e d e] f[ g a f] |
			g[ f e f] g[ a b g] a[ g f g] a[ b c a] |
			b[ a g a] b[ c d b] c[ b c a] b[ a a32 a a g] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a4 b2\melismaEnd a8. g16 g2.\melisma fis4\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 4)
			g1\fermata |
			\set Score.measureLength = #(ly:make-moment 4 4)
			b1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			b r2 r4 a4~ |
			a e8 e g4. g8 g4 b2 g4 |
			b1 a |
			d,16[\melisma e f e] f[ g f g] a32[ g a b a b c a] h[ a h cis d cis d h] cis4 d4. cis16[ cis] cis[ cis h cis]\melismaEnd | %h instead of b
			\set Score.measureLength = #(ly:make-moment 4 4)
			d4. d,16[\melisma e] f32[ e f g f g] a16~ a4~ |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a4. g16[ f] e2\melismaEnd d f' |
			\set Score.measureLength = #(ly:make-moment 4 1)
			f2. e8 d e1 d a2. a4 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a1 g2. g4 |
			g1 b2. b4 |
			b1 a2. a4 |
			a1 a16.[\melisma b32 a16. b32 a16. b32 a16. b32] a16[ a a a] a[ a a a] |
			a8[ g16 f] g[ e f d] e[ e e e] e[ e e e]\melismaEnd d1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			R\breve |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d'16.[\melisma es32 d16. es32] d32[ d d d d d d d] d8[ c16 b] c[ a b g] | %es instead of e
			a[ a a a] a[ a g a] b8[ a16 g] a[ fis g e] | %fis instead of f
			fis[ fis fis fis] fis[ fis e fis] g2\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d2 g4. g8 fis2 b | %fis instead of f
			\set Score.measureLength = #(ly:make-moment 4 4)
			a d4.\melisma e8 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			f1 f,\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 4)
			f |
			b2 d,16[\melisma e f g] a[ b c a]\melismaEnd |
			b8.[\melisma a16] b[ a g f]\melismaEnd g2 |
			f16[\melisma g a b] c[ d es c]\melismaEnd d8.[\melisma c16] d[ c b a]\melismaEnd |
			b8.[\melisma a16] g8.[ f16] g4\melismaEnd c8. d16 |
			c16[\melisma b a b] c[ d es c]\melismaEnd d2 |
			r2 a16[\melisma g f g] a[ b c a] |
			b4\melismaEnd b8 b g16[\melisma f e f] g[ a b g] |
			a4\melismaEnd a8 a f16[\melisma e d e] f[ g a f] |
			g4\melismaEnd g8 g d2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			g1 h16[\melisma a g a] h[ c d h] c4\melismaEnd c8 c | %h[ c d h] instead of b[ cis d b]
			\set Score.measureLength = #(ly:make-moment 10 2)
			g4 g8 g c2 g\longa |
			}

	\bar "|."
	}

}

staffTenoreII = \new Staff  {
	\set Staff.instrumentName="Quintus"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTenII" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			g1. fis2 |
			g2. a4 a1 |
			r1 r2 r4 a |
			b4.\melisma c8 d1\melismaEnd c2 |
			r2 r4 b es1~ |
			es2 d1 c2~ |
			c2 b1 a2 |
			g~\melisma g4. a8 b2~ b16[ a g32 a b g] a16[ g f32 g a f] |
			g2~ g8[ a16 b] a8[ b16 c] b2 c32[ b a g] fis32[ fis fis fis fis fis fis fis] fis16.\melismaEnd e32 |
			fis1 r1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1 |
			a16.[\melisma b32 a16. b32] a16.[ b32 a16. b32] a16[ a a a] a[ a a a] |
			a8[ g16 f] g[ e f d] e[ e e e] e[ e e e]\melismaEnd |
			d2 r |
			d'16.[\melisma es32 d16. es32] d32[ d d d d d d d] d8[ c16 b] c[ a b g] | %es32 instead of e32
			a[ a a a] a[ a g a] b8[ a16 g] a[ fis g e] | %fis instead of f
			fis[ fis fis fis] fis[ fis e fis] g2\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a g4. g8 fis2 b | %fis instead of f
			a d8.[\melisma e16] f2 es16[ d es c] d8.[ c16] b[ c d e] |
			\set Score.measureLength = #(ly:make-moment 4 4)
			f[ d es c] d[ b c a] b[ a g a] b32[ c d b] c[ a b g] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a8 b4\melismaEnd a8 b2 r2 g16[\melisma a b c] d[ e f d]\melismaEnd |
			es8.[\melisma d16] es[ d c b]\melismaEnd c4 c8 c d8.[\melisma c16] d[ c b a]\melismaEnd b2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			g16[\melisma f es f] g[ a b g]\melismaEnd a8.[\melisma g16] a[ g f e]\melismaEnd | %second melisma 2 notes later
			f8.[\melisma e16] d8.[ c16] d4\melismaEnd b'8. b16 | %melisma 2 notes later
			b16[\melisma a g a] b[ c d b]\melismaEnd c4 c8. c16 |
			c[\melisma b a b] c[ d es c]\melismaEnd d2 |
			b16[\melisma a g a] b[ c d b] c[ b a b] c[ d es c] |
			d[ c b c] d[ e f d] es[ d es c] d[ c c32 c c b] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			c4 d2\melismaEnd c8. b16 b2\melisma a\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 4)
			g1\fermata |
			g1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			g2 r4 g2 d8 d f4. f8 |
			e2 d2. g2 b4 |
			d1 d |
			R\breve |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d,16[\melisma e f e] f[ g f g] a32[ g a b a b c a] h[ a h cis d cis d h] | %h[ a h cis] instead of b[ a b cis]
			\set Score.measureLength = #(ly:make-moment 4 2)
			cis4 d4. cis16[ cis] cis[ cis h cis]\melismaEnd d4. d,16[\melisma e] f32[ e f g f g] a16\melismaEnd a4~ | %as in the BC part
			\set Score.measureLength = #(ly:make-moment 4 1)
			a g8 f a1. a1 f2. f4 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			f1 g2. g4 |
			g1 g2. g4 |
			g1 a2. a4 |
			a1 r1 |
			r1 a16.[\melisma b32 a16. b32 a16. b32 a16. b32] a16[ a a a] a[ a a a] |
			\set Score.measureLength = #(ly:make-moment 4 4)
			a8[ g16 f] g[ e f d] e[ e e e] e[ e e e]\melismaEnd |
			d1 r1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1 |
			d'16.[\melisma es32 d16. es32] d[ d d d d d d d] d8[ c16 b] c[ a b g] | %es instead of e
			a16[ a a a] a[ a g a] b8[ a16 g] a[ fis g e] | %fis instead of f
			\set Score.measureLength = #(ly:make-moment 4 2)
			fis[ fis fis fis] fis[ fis e fis] g2\melismaEnd a g4. g8 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			fis2 b | %fis instead of f
			\set Score.measureLength = #(ly:make-moment 4 2)
			a d8.[\melisma e16] f2 es16[ d es c] d2~ |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d8[ c16 b] c[ a b g] a8 b4\melismaEnd a8 |
			b2 r |
			g16[\melisma a b c] d[ e f d]\melismaEnd es8.[\melisma d16] es[ d c b]\melismaEnd |
			c2 f,16[\melisma e d e] f[ g a f]\melismaEnd |
			g8.[\melisma f16] g[ f e d]\melismaEnd e8.[\melisma d16 c8. b16] |
			c4\melismaEnd f8. g16 f[\melisma e d e] f[ g a f]\melismaEnd |
			g2 r |
			d'16[\melisma c b c] d[ e f d] e4\melismaEnd e8 e | % e4\melismaEnd e8 e8 instead of e4 e8 e\melismaEnd
			c16[\melisma b a b] c[ d es c] d2~\melismaEnd |
			d4 c8 b a2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			g1 d'16[\melisma c h c] d[ e f d] es4\melismaEnd es8 es | %h instead of b
			\set Score.measureLength = #(ly:make-moment 10 2)
			h4 h8 h c2 h\longa |
			}

	\bar "|."
	}

}

staffTenoreIII = \new Staff  {
	\set Staff.instrumentName="Altus"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTenIII" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			R\breve*10 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1*7 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			R\breve*2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			R\breve*2
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1*6 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			R\breve |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1 |
			d1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d r4 d2 a8 a |
			c4. c8 b2. d2 b4 |
			g1 fis |
			R\breve |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r1 d16[\melisma e f e] f[ g f g] a32[ g a b a b c a] h[ a h cis d cis d h] | %h[ a h cis instead of b[ a b cis
			\set Score.measureLength = #(ly:make-moment 4 1)
			cis4\melismaEnd d2  cis8 h cis4\melisma d2 cis4\melismaEnd d1 c2. c4 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			c1 g2. g4 |
			g1 d'2. d4 |
			d1 a2. a4 |
			a1 r1 |
			R\breve |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a16.[\melisma b32 a16. b32] a16.[ b32 a16. b32] a16[ a a a] a[ a a a] a8[ g16 f] g[ e f d] e[ e e e] e[ e e e]\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d2 r |
			R1 |
			d'16.[\melisma es32 d16. es32] d32[ d d d d d d d] d8[ c16 b] c[ a b g] | %es instead of e
			\set Score.measureLength = #(ly:make-moment 4 2)
			a[ a a a] a[ a g a] b8[ a16 g] a[ fis g e] fis[ fis fis fis] fis[ fis e fis] g2\melismaEnd | %always fis instead of f
			\set Score.measureLength = #(ly:make-moment 4 4)
			a g4. g8 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			f2 b a d8.[\melisma e16] f4~ |
			\set Score.measureLength = #(ly:make-moment 4 4)
			f8 es16[ d] es[ c d b] c4.\melismaEnd c8 |
			b2 r |
			r c,16[\melisma d es f] g[ a b g]\melismaEnd |
			a8.[\melisma g16] a[ g f e]\melismaEnd f2 |
			b16[\melisma a g a] b[ c d b]\melismaEnd c8.[\melisma b16] c[ b a g]\melismaEnd |
			a8.[\melisma g16] f8.[ e16] f4\melismaEnd b8. c16 |
			b16[\melisma a g a] b[ c d b]\melismaEnd c2 |
			r e,16[\melisma d c d] e[ f g e] |
			a[ g f g] a[ b c a] b2~\melismaEnd |
			b4 a8. g16 g4.\melisma fis8\melismaEnd |
			g1 r2 c16[\melisma b a b] c[ d es c] |
			\set Score.measureLength = #(ly:make-moment 10 2)
			d4\melismaEnd d8 d es2 d\longa 
			}

	\bar "|."
	}

}

staffBassoContinuo = \new Staff  {
	\set Staff.instrumentName=\markup{\column{"Bassus" \line {"generalis"}}}
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c {
		\set Score.measureLength = #(ly:make-moment 4 2)
		g1 d' |
		g f |
		b, f' |
		b f |
		b, c |
		d a |
		b f |
		g~ g |
		g~ g |
		d'~ d |
		\set Score.measureLength = #(ly:make-moment 4 4)
		a |
		d2 d |
		a1 |
		d2 g, |
		d' g, |
		d' g, |
		d' g |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d g, d' b | %d' instead of f'
		f' b, f' b~ |
		\set Score.measureLength = #(ly:make-moment 4 4)
		b g |
		\set Score.measureLength = #(ly:make-moment 4 2)
		f b, d g, |
		c f, b g |
		\set Score.measureLength = #(ly:make-moment 4 4)
		c f,~ |
		f b |
		\parenthesize g \parenthesize c | %these two bars are missing in the BC part and were constructed by analogy with the other harmony
		\parenthesize f, \parenthesize b | %these two bars are missing in the BC part and were constructed by analogy with the other harmony
		g f |
		b4 g c b |
		\set Score.measureLength = #(ly:make-moment 4 2)
		f2 g2 d'1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		g,\fermata |
		g~ |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g g2 d' |
		a4 c g2 g1~ |
		g d'~ |
		d a |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d |
		\set Score.measureLength = #(ly:make-moment 4 2)
		a d |
		\set Score.measureLength = #(ly:make-moment 8 2)
		a\breve d1 f,~ |
		\set Score.measureLength = #(ly:make-moment 4 2)
		f c'~ |
		c g |
		g d'~ |
		d d |
		a d |
		\set Score.measureLength = #(ly:make-moment 4 4)
		a |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d a | %d instead of g
		\set Score.measureLength = #(ly:make-moment 4 4)
		d2 g, |
		d' g, |
		d' g, |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d' g, d' g |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d g, |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d' b f' b, |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f'1 |
		b,2 d |
		g, c |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f, b |
		g c |
		f, b |
		g f |
		b c |
		f, b |
		g d' |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g,1 g'2 c, |
		\set Score.measureLength = #(ly:make-moment 10 2)
		g' c, g'\longa |
		\bar "|."
	}

}


\score {
	<<
		\staffTenoreI
		\context Lyrics = "lmelodyTenI" \lyricmode  { \lyricsto "melodyTenI" \verseTI }
		
		\staffTenoreII
		\context Lyrics = "lmelodyTenII" \lyricmode  { \lyricsto "melodyTenII" \verseTII }
		
		\staffTenoreIII
		\context Lyrics = "lmelodyTenIII" \lyricmode  { \lyricsto "melodyTenIII" \verseTIII }
		
		\staffBassoContinuo
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

