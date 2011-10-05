\include "english.ly"

\header {
	enteredby = 	"Allen Garvin"
	maintainer = 	"Allen Garvin"
	maintainerEmail = 	"AGarvin (at) tribalddb.com"
	copyright = 	"Public Domain"
	filename = 	"bach-english-suite-1-bourree-1.ly"
	title = 	"English Suite I: Bourree I"
	opus = 	"BWV 806"
	composer =	"Johann Sebastian Bach (1685-1750)"
	style =	"Baroque"
	source =	"Bach-Gesellschaft"
	lastupdated =	"2001/Apr/24"

	mutopiainstrument = "Harpsichord, Piano, Clavichord"
	mutopiatitle =      "English Suite I: Bourree I"
	mutopiacomposer =   "BachJS"
	mutopiaopus =       "BWV 806"

 footer = "Mutopia-2011/06/15-85"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.14.0"

voiceone =  \relative c' {
	\key a \major
	\clef "treble"

	\override Staff.TimeSignature   #'style = #'single-digit
	\time 2/2

	\partial 4 e4					|
	a8[(  gs) b(  a)]  cs[(  b) a(  gs)]			|

	\repeat "volta" 2 {
		a4 e  cs8[ e a b]					|
		cs[(  b) d(  cs)]  e[(  d) cs(  b)]			|
		d[( cs b  cs)]  a[ b cs d]				|
		e4 
		\grace g8 fs4 g4.\mordent a8				|
		fs4 
		\grace a8 gs4 a4.\mordent b8				|
		gs[(  a) gs(  a)] a4.\prall  gs16[ a]			|
		b2 r4 e,,						|
		a8[(  gs) b(  a)]  cs[(  b) a(  gs)]			|
		a4 e  cs8[ e a b]					|
		cs[(  b) d(  cs)]  e[(  d) cs(  b)]			|
		d[( cs b  cs)]  a[(  gs) b(  a)]			|
		cs[(  b) a(  gs)]  fs[(  e) gs(  fs)]			|
		a[( gs fs  e)]  ds[(  cs) e(  ds!)]			|
		fs[ b,] b'4 gs\prall  fs8[ e]			|
	}
	\alternative {
		{ e2. e4 |  a8[(  gs) b(  a)]  cs[(  b) a(  gs)] }
		{ e2. }
	}
	\repeat "volta" 2 {
		e4							|
		b'8[(  a) cs(  b)]  d[(  cs)] e4			|
		cs\prall  b8[ cs]  a[ b cs d]				|
		e[(  d) fs(  e)]  g[(  fs)] a4				|
		fs\prall^\markup{\tiny \natural}  e8[ fs] d4 fs		|
		fs8[( d cs  b)]  d[(  cs) e(  d)]			|
		e[( cs b  as)]  cs[(  b) d(  cs)]			|
		e[(  d) cs(  b)]  d[(  cs) b(  as)]			|
		b2. b4						|
		fs'8[(  e) gs(  fs)]  a[(  gs)] b4			|
		gs\prall  fs8[ gs] e4 e,				|
		b'8[(  a) cs(  b)]  d[(  cs)] e4			|
		cs\prall  b8[(  cs)]  a[(  b) cs(  d)]			|
		e[( cs b  a)]  e'[(  d) fs(  e)]			|
		g[( cs, b  a)]  d[(  cs) e(  d)]			|
		fs[( cs b  a)]  e'[(  d) fs(  e)]			|
		g[( cs, b  a)]  d[(  cs) e(  d)]			|
		fs[( d cs  b)]  fs'[(  e) gs!(  fs)]			|
		a[( ds, cs  b)]  e[(  ds!) fs(  e)]			|
		gs[( ds cs  b)]  fs'[(  e) gs(  fs)]			|
		a[( ds, cs  b)]  e[(  ds!) fs(  e)]			|
		gs[( fs e  fs)]  gs[(  fs) a(  gs)]			|
		b[( a gs  fs)]  a[(  gs) fs(  e)]			|
		a4. b8 gs4.\prall a8				|
		a2. e4						|
		e8[( cs b  a)]  cs[(  b) d(  cs)]			|
		d[( b a  gs)]  b[(  a) cs(  b)]				|
		d[( cs b  a)]  cs[( b a  gs)]				|
		a[ e( fs gs])  a[ b cs d]				|
		e[( cs b  a)]  cs[(  b) d(  cs)]			|
		d[( b a  gs)]  b[(  a) cs(  b)]				|
		d[( cs b  a)]  cs[( b a  gs)]				|
		a2.\mordent
	}
}

voicetwo =  \relative c {
	\key a \major
	\clef "bass"

	\override Staff.TimeSignature   #'style = #'single-digit
	\time 2/2

	\partial 4 r4
	
	R1
	\repeat "volta" 2 {
		r2 r4 e						|
		a8[(  gs) b(  a)]  cs[(  b) a(  gs)]			|
		a4 e  cs8[ e a b]					|
		cs[(  b) d(  cs)]  e[(  d) cs(  a)]			|
		d[(  cs) e(  d)]  fs[(  e) ds(  b)]			|
		e[(  fs) e(  d!)]  cs[(  b) cs(  a)]			|
		e'[(  ds)  fs( e)]  gs[(  fs) e(  d)]			|
		cs[(  b) d(  cs)]  e[(  d) cs(  b)]			|
		cs[( d cs  b)] a4 e					|
		a8[(  gs) b(  a)]  cs[(  b) a(  gs)]			|
		a4 e cs e						|
		a, e'  a8[(  gs) b(  a)]				|
		cs[( b a  gs)]  fs[(  e) gs(  fs)]			|
		a[(  gs) fs(  e)] b'4 b,				|
	}
	\alternative {
		{  e8[( ds) fs( e])  gs[( fs e d]) | cs4\prall  b8[ cs] a4 r }
		{ <<
			{ \voiceOne e'2. \stemNeutral }
			{ \new Voice { \voiceTwo r4 b e, } } >> } }
	\oneVoice \repeat "volta" 2 {
		r4 							|
		r2 r4 e'						|
		a8[(  gs) b(  a)]  cs[(  b)] e4				|
		cs\prall  b8[ cs] a4 a,				|
		d8[(  cs) e(  d)]  fs[(  d)] d'4 			|
		g,,2 r4 cs'						|
		fs,,2 r4 b'						|
		g d e fs						|
		b,8[(  as) cs(  b)]  d[(  cs)] e4			|
		ds2\prall r4 b					|
		e8[(  ds) fs(  e)]  gs[(  fs)] a4			|
		gs2\prall r4 e					|
		a8[(  gs) b(  a)]  cs[(  b)] e4				|
		cs\prall d cs b					|
		a-.(  a)-. a-.(  a)-.					|
		a-.(  a)-. a-.(  a)-.					|
		a(  g) fs(  e)					|
		d(  e) d(  cs)					|
		b-.(  b)-. b-.(  b)-.					|
		b-.(  b)-. b-.(  b)-.					|
		b(  a) gs(  fs)					|
		e-.(  e)-. e-.(  e)-.					|
		d-.( d-.  d)-. d'					|
		cs d\mordent e e,					|
		a8[ e' fs gs]  a[ b] cs4				|
		fs,,2 r4 b'						|
		e,,2 r4 a'						|
		fs cs d e						|
		a,8[ gs a b]  cs[ d e cs]				|
		fs2 r4 b,						|
		e2 r4 a,						|
		fs cs d e						|
		<<
			{ \voiceOne r e a }
			{ \new Voice  { \voiceTwo \stemUp a,2. } }
		>>
	}
}

\score {
	\new GrandStaff << 
		\new Staff = "one" << \voiceone >>
		\new Staff = "two" << \voicetwo >>
	>>
	\layout{
%		line-width = 18.0 \cm
	}
	\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 2) } }
}
