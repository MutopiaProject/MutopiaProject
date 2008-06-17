
\include "english.ly"

\header {
	enteredby = 	"Allen Garvin"
	maintainer = 	"Allen Garvin"
	maintainerEmail = 	"AGarvin (at) tribalddb.com"
	copyright = 	"Public Domain"
	filename = 	"bach-english-suite-2-bourree-1.ly"
	title = 	"English Suite II: Bourree I"
	opus = 	"BWV 807"
	composer =	"Johann Sebastian Bach (1685-1750)"
	style =	"Baroque"
	source =	"Bach-Gesellschaft"
	lastupdated =	"2001/Apr/24"

	mutopiainstrument = "Harpsichord, Piano, Clavichord"
	mutopiatitle =      "English Suite II: Bourree I"
	mutopiacomposer =   "BachJS"
	mutopiaopus =       "BWV 807"
 footer = "Mutopia-2008/06/17-82"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.46"

voiceone =  \relative c''' {
	\key a \minor
	\clef "treble"

	\override Staff.TimeSignature   #'style = #'single-digit
	\time 2/2

	\partial 4 a4 					|
	\repeat "volta" 2 {
		e\prall  d8[ e] f4  e8[ d]				| 
		e4 a, a a'						| 
		e\prall  d8[ e] f4  e8[ d] 				| 
		e4  d8[ c] d4  c8[ d]					|
		e4  d8[ c] d4  c8[ b]					|
		c4  b8[ c] d4  c8[ d] 				|
		e[ d c e]  d[ c b c]					|
		d[ c b c]  a[ c b d]					|
		c[ b a e']  c[ b a e']				| 
		c[ b a d]  c[ b a d]					| 
		b[ a g d']  b[ a g d']				|
		b[ a g c]  b[ a g c]					|
		a[ g fs c']  a[ g fs c']				|
		a[ g fs b]  a[ g fs b]				|
		g4\prall  fs8[ g] a4  g8[ fs]				|
		g[ fs e fs]  g[ a b fs] 				|
		g[ a fs g]  a[ g fs a]				|
		g[ e g b]  g[ b e b]					|
		e[ g e g]  a[ g fs e]				|
		fs[ e ds b']  fs[ e ds b'] 				|
		g[ fs e b']  g[ fs e b']				|
		ds,[ cs b b']  ds,[ cs b ds]				|
		e4 fs b, ds						| 
	}
	\alternative { { e2. a4 | } { e2. \bar "|" } } \break
	\repeat "volta" 2 {
		b4							|
		b\prall  a8[ b] c4  b8[ c]                            |
		d4  c8[ b]  a[ gs] f'4                                |
		e  d8[ c] d4  c8[ b]                                  |
		d[ c b c]  a[ b c d]                                 |
		e[ f d e]  f[ g e f]                                 |
		g[ a g f]  e[ d cs bf']                              |
		a[ g f a]  g[ f e f]                                 |
		g[ f e f]  d[ f e g]                                 |
		f[ e d a']  f[ e d c]                                |
		bf[ a g d']  bf[ a g f']                             |
		e[ d c g']  e[ d c bf]                               |
		a[ g f c']  a[ g f a]                                |
		bf[ c d f]  e[ f g b,]                               |
		cs[ d e g]  f[ g a cs,]                              |
		d4.\turn e8 e4.\prall d8                            |
		d2.  d8[ e]                                          |
		f4  d8[ e] f4  e8[ d]                                 |
		e4  d8[ c] d4  c8[ d]                                 |
		e4  d8[ c] d4  c8[ b]                                 |
		c4  b8[ c] d4  c8[ b]                                 |
		c4  b8[ a] b4  a8[ b]                                 |
		c4  b8[ a] b4  a8[ gs]                                |
		a4  f'8[ e]  d[ c b a]				|
		gs[ a b gs] e4 b'					|
		c8[ d e a,]  cs[ d e a,]				|
		d[ e f a,]  ds[ e fs a,]				|
		e'[ fs g b,]  e[ fs gs b,]				|
		f'[ g a c,]  fs[ g a c,]				|
		g'[ a b d,]  gs[ a b e,]				|
		a[ b c gs]  a[ e f d]				|
		e4. f8 b,4. a8					|
		a2.							
	}
}

voicetwo =  \relative c' {
	\key a \minor
	\clef "bass"

	\override Staff.TimeSignature   #'style = #'single-digit
	\time 2/2

	\partial 4  a8[ b] 					|
	\repeat "volta" 2 {
		c[ a c a]  d[ a d a]
		c[ a d a]  c[ a b a]
		c[ a c a]  d[ a d a]
		c[ a c a]  b[ a b a]
		gs[ b fs b]  gs[ b e, gs]
		a[ e a e]  b'[ e, b' e,]
		c'[ e, a e]  b'[ e, gs e]
		a4 e c e
		a, c e g
		fs a d, fs
		g, b d fs
		e g c, e 
		fs, a c e
		ds fs b, ds
		e8[ b e b]  ds[ b ds b]
		e4 b e, ds'
		e8[ b e b]  ds[ b ds b]
		e4 b e g
		e g b e
		ds b ds b
		e b e, g
		a g a fs
		g a b b,
	}
	\alternative { {  e'8[ f! e d]  c[ b]  a[ b] | } { e,4 b e, } }

	\repeat "volta" 2 {
		e'8[ fs]						|
		gs[ e gs e]  a[ e a e]				|
		b'[ e, b' e,]  c'[ e, d' e,]				|
		c'[ e, a e]  b'[ e, gs e]				|
		a4 e  a,8[ e' a b]					|
		cs[ a cs a]  d[ a d a]				|
		e'[ a, e' a,]  f'[ a, g' a,]				|
		f'[ a, d a]  e'[ a, cs a]				|
		d4 a f a						|
		d, d, e f						|
		g g' a bf						|
		c c,, d e						|
		f c' f d						|
		g f g e						|
		a g a f						|
		bf g a a,						|
		d8[ e f e]  d[ c b a]				|
		g[ a b c]  d[ e f g]					|
		c,[ c' b a]  g[ f e d]				|
		c[ c' b a]  gs[ b a gs]				|
		a[ e gs a]  b[ e, fs gs]				|
		a[ a' gs fs]  e[ d c b]				|
		a[ g! f! e]  d[ c d e]				|
		f4 e f d						|
		e2 ~  e8[ d c b]					|
		a4 a'2 g4						|
		f d b' a						|
		g e e'2 ~						|
		e4  d8[ c]  d[ b c a]					|
		b4 f'! e d						|
		c8[ b a b]  c[ a d b]				|
		c[ gs a d,] e4 e,					|
		<< { \voiceOne { r4 e' a } }
			{ \new Voice { << \voiceTwo a,2. >> } }
		>>	
	}
}

\score {
	\new GrandStaff << 
		\new Staff = "one" << \voiceone >>
		\new Staff = "two" << \voicetwo >>
	>>
	\layout{
	%	line-width = 18.0 \cm
	}
	\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 2) } }
}
