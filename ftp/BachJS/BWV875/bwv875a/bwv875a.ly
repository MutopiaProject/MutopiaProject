
\version "2.10.23"

\header {
  title =	"Praeludium VI"
  opus = "BWV 875"
  composer = 	 "Johann Sebastian Bach (1685–1750)"
  enteredby = 	 "Gwenaël Joret"

  % mutopia headers.
  mutopiatitle = "Das Wohltemperierte Clavier II, Praeludium VI"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 875"
  mutopiainstrument = "Harpsichord, Piano"
  source = "Bach Gesellschaft Ausgabe 1851-1899 Band 14 (1866)"  
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Gwenaël Joret" 
  maintainerEmail = "gjoret@gmail.com" 
 footer = "Mutopia-2007/05/11-974"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

staffOne = \change Staff = one
staffTwo = \change Staff = two

#(set-global-staff-size 17)

right =  {
	\time 3/4
	\key d \minor
	\clef treble

	\relative c'' { \override Score.MetronomeMark #'stencil = #'()
		d8 c16 bes a g f e d f e d |
		bes' g d g \repeat unfold 2 { bes g d g } |
		a g d g \repeat unfold 2 { a f d f } |
		g e d e g e cis e g e cis e |
		<< { f4 r } \\ { r16 d c! bes a s s s} >> r4 |
	%5
		r8 d g bes d4 |
		r8 d, f a d4 |
		r8 g, cis e cis a |
		d c!16 bes a g f e f8 a ~ |
		a16 g a b c d e f g f e d |
	%10
		e c bes! a g f e d e8 g ~ |
		g16 f g a bes c d ees f ees d c |
		d f d c bes d bes a g bes g f |
		e8 e'16 f g8[ bes] e,[ g] |
		cis,16 g' cis, b a e' a, g f cis'! f, e |  	%15
		\stemDown d8 d'16 e \stemNeutral f8[ a] d,[ c] |
		bes16 g' bes, a g bes g f ees bes' ees, d |		cis a' cis, b cis a' \repeat unfold 3 { cis, a' } |
		cis, a' cis, b cis a' \repeat unfold 3 { cis, a' } |
		d, a' d, cis d a' \repeat unfold 3 { d, a' } |
	%20
		e a e d \repeat unfold 4 { e a } |
		f32[ a b cis d16 a] \repeat unfold 2 { f a d a } |             		fis d' fis, e fis d' \repeat unfold 3 { fis, d' } |
		\stemUp g,32[ a b c d16 b] \repeat unfold 2 { g b d b } |
		gis d' gis, fis gis d' \repeat unfold 3 { gis, d' } \stemNeutral |
	%25
		<< { c4 r } \\ { r16 a g! f! e s s s} >> r4 |
		r8 a d f a4 |
		r8 a, c e a4 |
		r8 d, gis b gis e |
		a g!16 f e d c b \stemDown a c b a \stemNeutral |
	%30
		f' d a d \repeat unfold 2 { f d a d } |	
		e d a d \repeat unfold 2 { e c a c } |	
		d b a b \repeat unfold 2 { d b gis b } |
		\tieUp \stemUp c2.~ |
		c16 ees d c fis ees! d c a' ees! d c |
	%35
		bes g' f! ees d c bes a c bes a g |
		c8[ e!] b[ f'] bes,[ g'~] |
		g16 d! c bes a g' f e d bes' e, d |
		cis bes! a g d' bes a g e' bes a g \stemNeutral |
		f8[ fis] g[ a] bes[ b] |		
	%40
		c[ cis] d[ e] f[ fis] |
		g16 d bes' a g f! e d cis d e cis |
		a8[ e] \stemUp a[ cis] \stemNeutral e4~ |
		\stemDown e16 a, f a d a f a d4~ \stemNeutral |
		d16 g, e g c g e g c4~ |  
	%45
		c16 f, d f bes f d f bes g e g \tieNeutral |
		\repeat unfold 2 { cis, a' bes a } cis,8 e~ |
		e16 a bes a d, a' bes a d,8 f~ |
		f16 g a g e g a g a,8 g'~ |
		g16 bes, a g a e' d cis d g f e |
	%50 
		f bes, c d ees a, bes c d bes c d |
		ees a, bes c d bes c d c  \change Staff = two \stemUp fis,! g a |
		bes r r8 r16 a bes c \change Staff = one d bes g' d |
		bes' g f ees d r r8 r4 |
		r16 bes' a g \stemDown e' d cis b \stemNeutral a g f e | 
	%55
		f d g d a' d, bes' d, r d e cis |
		d c! \stemUp  \change Staff = two fis, \stemUp  \change Staff = one 
			c' \repeat unfold 2 { d c \change Staff = two fis, \change Staff = one c' } |
		\stemUp  \change Staff = two \repeat unfold 2 { bes d bes fis } bes d bes e, |
		f! d' \repeat unfold 5 { f, d' } |
        g, cis g e \repeat unfold 2 { g cis g e } |
	%60 
		<fis d'>2.\fermata  
	}
}


left =  {
	\clef bass
	\key d \minor
	\override Staff.NoteCollision #'merge-differently-dotted = ##t
	\relative c {
		d4\mordent d, r |
		r8 d g bes d4 |
		r8 d, f a d4 |
		r8 bes' e, g cis, a'|
		d,4 r16 g f e d f e d |
	%5
		bes' g d g \repeat unfold 2 { bes g d g } |
		a g d g \repeat unfold 2 { a f d f } |
		g e d e \repeat unfold 2 { g e cis e } |
		f d e f g a b cis d c b! a |
		b c b a g f e d e8 g |
	%10
		c, d16 e f g a bes c bes a g |   
		a bes a g f ees d c d8 f |
		bes, bes'16 c d8[ f] bes, d |    
		g,16 bes g f e g e d \stemDown cis e cis b \stemNeutral |
		a8 a'16 b cis8[ e] a, g |
	%15
		f16 d' f, e d a' d, c \stemDown bes f' bes, a \stemNeutral |
		g8 g'16 a bes8[ d] g, bes |
		a[ e'] \repeat unfold 2 { a,[ e'] } | 
		\repeat unfold 3 { g,[ e'] } |
		\repeat unfold 3 { f,[ f'] } \clef treble |
	%20
		cis[ g'] \repeat unfold 2 { cis,[ g'] } |
		\repeat unfold 3 { d[ f] } |	
		c[ a'] \repeat unfold 2 { c,[ a'] } |	
		\repeat unfold 3 { b,[ g'] } |	
		e[ b'] \repeat unfold 2 { e,[ b'] } \clef bass |	%25
		a,4 r16 d c b a c b a |
		f' d a d \repeat unfold 2 { f d a d } |			e d a d \repeat unfold 2 { e c a c } |
		d b a b \repeat unfold 2 { d b gis b } |		c8[ \stemUp a,] c[ e] \stemNeutral a c |
	%30
		d[ f] a,[ d] d, b' |
		c[ e] a,[ c] c, a' |
		b[ d] gis,[ b] e e, |
		a16 \change Staff = one \stemDown a' g! f e d 
			\change Staff = two \stemNeutral c b a c e, g |   
		fis8[ \change Staff = one \stemDown a'] c[ a] fis d |
	%35
		g[ \change Staff = two \stemNeutral g,] bes[ \change Staff = one \stemDown d] g f |
		e!16 des c bes f' des! c bes! g' des! c bes |
		a f' e d \change Staff = two \stemNeutral c bes a g bes a g f |
		e \change Staff = one \stemDown g' f e d g f e cis g' f e \change Staff = two |
		d ees d c bes c bes a g a g f |
	%40
		e bes' a g f g f e d ees d c |
		\stemUp bes8[ g] bes d g4~ |
		g16 g a,( g \stemUp a) g' \repeat unfold 3 { a, g' } \stemNeutral |
		a, f' a,( g a) f' \repeat unfold 3 { a, f' } |
		a, e' a,( g a) e' \repeat unfold 3 { a, e' } |
	%45
		a, d f d \stemUp a d f a g, e' g bes \stemNeutral |
		g8[ cis,] e g, r16 bes a g |
		f f' e f f, f' e f f, f' e d |
		cis8[ e,] g cis,! r16 cis'! b a |
		d8[ d,] f a \stemDown d4~ |
	%50
		d16 g a bes c, fis g a bes, g' a bes |
		c, fis g a bes, g' a bes a, d e! fis! |
		g, d' e fis g r r8 r4 |
		r r16 c bes a g bes e,! g |
		\stemUp cis,4 r8 a b cis! |
	%55
		\stemDown d[ e] f[ g] a a, |
		d[ a'] \repeat unfold 2 { d,[ a'] } | 
		d,[ g] \repeat unfold 2 { d[ g] } | 
		d[ a'] \repeat unfold 2 { d,[ a'] } | 
		d,[ bes'] \repeat unfold 2 { d,[ bes'] } | 
	%60
		<a d,>2._\fermata
	}
}

\paper { between-system-padding = 2\mm between-system-space = 2\mm ragged-last-bottom = ##f after-title-space = 1\mm between-title-space = 0.2\mm  print-page-number = ##t
#(if (equal? paper-width (* 8.5 in))
	(define system-count 12)) }
\score {
	 \new PianoStaff  << 
		\context Staff = "one" {
		\right
		\bar "|." }

		\context Staff = "two" {
		\left
		\bar "|." }
	>>

	\layout {}

	\midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }
}
