\include "english.ly"

\header {
	enteredby = 	"Allen Garvin"
	maintainer = 	"Allen Garvin"
	maintainerEmail = 	"AGarvin (at) tribalddb.com"
	copyright = 	"Public Domain"
	filename = 	"bach-english-suite-1-bourree-2.ly"
	title = 	"English Suite I: Bourree II"
	opus = 	"BWV 806"
	composer =	"Johann Sebastian Bach (1685-1750)"
	style =	"Baroque"
	source =	"Bach-Gesellschaft"
	lastupdated =	"2001/Apr/24"

	mutopiainstrument = "Harpsichord, Piano, Clavichord"
	mutopiatitle ="English Suite I: Bourree II"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV 806"
 footer = "Mutopia-2008/06/17-86"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.46"

voiceone =\relative c' {
	\key a \minor
	\clef "treble"

	\override Staff.TimeSignature #'style = #'single-digit
	\time 2/2

	\repeat "volta" 2 {
		\partial 4c8[ d] 					|
		e4 f e d						|
		e a,2 gs4						|
		a f' e d						|
		e a,2 gs4						|
		a f' e d						|
		a'g8[ f]  e4 d					|
		c \prall b8[ c] d[ b c a] 				|
		b[ a gs a] b[ c d b] 				|
		c[ d e f] e[ d c d] 					|
		e[ d c b] a[ b c d] 					|
		e[ f g a] g[ f e f]  				|
		g[ f e d] c[ d e fs] 				|
		g[ a b c] b[ a g a] 					|
		b[ a g fs] e[ ds e fs!] 				|
		b,4 g' ~g8[ fs e ds] 				|
		e2.	
	}
	\repeat "volta" 2 {
		e8[ d] 						|
		cs4 b cs d						|
		e8[ g]  bf2a8[ g] 					|
		f[ e f d'] cs[ b! a g] 				|
		f[ g a g] f[ e d c] 					|
		b4b8[ a]  b4b8[ c] 					|
		d[ f]  a2g8[ f]  					|
		e[ d e c'] b[ a g f] 				|
		e[ f g f] e[ d c b] 					|
		a[ g' f e]  a4 a,					|
		gs8[ fs gs f'!]  e4 g,				|
		fs8[ e f e'] d[ c b a] 				|
		a'[ gs fs e]  b'4e,8[ d] 				|
		e4 d' c b						|
		c e,2d8[ c] 					|
		d4 c'b8[ a gs a] 					|
		b4 d,2c8[ b] 					|
		c[ a' g e] f[ e d c] 				|
		b[ f' e c] d[ c b a] 				|
		gs[ d' c a] c[ b a gs!] 				|
		a2.
	}
}

voicetwo =\relative c {
	\key a \minor
	\clef "bass"

	\override Staff.TimeSignature #'style = #'single-digit
	\time 2/2

	\repeat "volta" 2 {
		\partial 4e8[ d] 					|
		c[ b a b] c[ b a b] 					|
		c[ b a b] c[ d e d] 					|
		c[ b a b] c[ b a b] 					|
		c[ b a b] c[ d e d] 					|
		c[ b a b] c[ b a b] 					|
		c[ b a b] c[ d e f] 					|
		e[ d c b] a[ gs]  a4					|
		e2.e'8[ f] 						|
		e4 d c b						|
		c a8[ b]  c[ d e f] 					|
		g4 f e d						|
		e c8[ d]  e[ fs g a] 					|
		b4 a g fs						|
		g e c' a ~						|
		a8[ g fs e]  b'4 b,					|
		e b e,
	} \break
	\repeat "volta" 2 {
		e'8[ f] 						|
		g[ f e f] g[ f e f] 					|
		g[ f e f]  g4 cs,					|
		d bf g a						|
		d,2.d'8[ e] 					|
		f[ e d e] f[ e d e] 					|
		f[ e d e] f[ g a b] 					|
		c4 a f g						|
		c,2 ~c8[ f e d] 					|
		c[ b]  c4 ~c8[ e d c] 				|
		b[ a]  b4 ~b8[ d c b] 				|
		a[ gs]  a4 ~a8[ b c d] 				|
		e[ ds]  e4 ~e8[ d c b] 				|
		a[ gs fs gs] a[ gs fs gs] 				|
		a[ b c d] e[ fs gs a] 				|
		gs[ a b a] gs[ a b a] 				|
		gs[ fs e d] c[ b a gs] 				|
		a4 c b a						|
		gs a f d						|
		e a e' e,						|
		<< { \stemUp a2. }
		{ \new Voice { \voiceTwo \stemUp r4 e c } } >>	
	}
}

\score {
	\context GrandStaff << 
		\context Staff = "one" << \voiceone >>
		\context Staff = "two" << \voicetwo >>
	>>

	\layout{
%		 line-width = 18.0 \cm
		}

	\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 2) } }
}
