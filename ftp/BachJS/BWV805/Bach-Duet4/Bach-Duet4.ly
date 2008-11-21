% Created on Wed Nov 19 13:03:24 PST 2008
\version "2.11.63"

\header {
	title = "Duetto IV"
	subtitle = "BWV 805"
	composer = "J.S. Bach"
	mutopiatitle = "Duetto IV"
	mutopiacomposer = "BachJS"
	mutopiainstrument = "Harpsichord"
	mutopiaopus = "BWV 805"
	style = "Baroque"
	source = "Bach-Gesellschaft Edition / Ernst Naumann 1890"
	copyright = "Public Domain"
	maintainer = "H. Gillis"
	maintainerEmail = "canoeguy2005 - yahoo.ca"
	

 footer = "Mutopia-2008/11/21-1598"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "english.ly"


staffHarpsichord = \new PianoStaff {
	\set PianoStaff.midiInstrument = #"harpsichord"
	
		\time 2/2
					\override Score.MetronomeMark #'stencil = ##f
			\tempo 2 = 60 
			<<
		\context Staff = "RH" {  % Right hand 
			\clef treble
			\key a \minor
			\relative c' {

				
R1*8					%line1

r2 e'2 f a, 				%line 2
c8 b a2 b8 cs
d e f2
e8 ds
e b e fs e b e g

fs b, fs' g fs b, fs' a		%line3
g b, g'a g b, g' b
fs b, fs' g fs b, fs' a 
g fs e2 d4
cs bf' (a\prall) g
bf, g' (f\prall) e

g, e' (d\prall) cs		%line4
d8 g, f e d4 c'
b af' (e\prall) f
af, f' (e\prall) d
f, d' (c\prall) b
c8 f, e d c4 bf'

a8 g' f e f d a4 ~			%line 5
a8 g a b g c e4
f,8 e' d c d b f4 ~
f8 e f g e g c4
d,8 c' b a b gs d4~
d8 c d e c f e d

e4 a,2 gs4				%line6
a2 a'
c e, 
f8 e d2 e8 fs
g a bf2 a8 gs
a e a b a e a c

b e, b' c b e, b' d  		%line7
c e, c' d c e, c' e
b e, b' c b e, b' d
c b a2 gs4
a8 c b d c b c a
e4 fs g fs8 e

fs4 gs a2 ~			%line8
a4 g8 fs g4 e ~
e fs8 cs d2\prall
e4 b' e2 ~
e d\prall

e4. d16 e f8 e d c 		%line9
b c d4. c8 b a
gs a b4. a8 b fs 
gs e gs a b c d b 
c b a b c d ef c
a b c4. b8 a g

fs8 g a4. g8 fs e		%line10
fs d fs g a b c a
b a g a b c d b 
c4 e a, c
fs, g8 a b4 g
a c fs, a

d, e8 fs g4 e			%line11
fs a ds, fs
b, cs8 ds e2 ~
e4 d8 cs d2 ~
d4 e8 fs g2 ~
g4 f8 e f2 ~

f4 g8 a bf2 ~			%line12
b4 a8 gs a2 ~
a gs\prall
a e'
f a,
c8 b a2 b8 cs

d e f2 e8 ds			%line13
e b e fs e b e g
fs b, fs' g fs b, fs' a
g b, g' a g b, g' b
fs b, fs' g fs b, fs' a
g b, e fs g a bf g

e f g4. f8 e d			%line14
cs d e4. d8 c b
cs a cs d e f g e 
f e d cs d4 c
b af' (g\prall) f
af, f' (e\prall) d

f, d' (c\prall) b 			%line15
c8 g c d c fs, a c 
b ds, b' c b e, b' d
cs a cs ds e g, c e
d fs, d' ef d g, d' f
e c e fs g bf, ef g

f a, f' g f bf, d f		%line16
e gs, e' f e a, e' g
f g f e d c b a
gs e fs gs a gs a b
c2 e,
f8 e d cs d e fs gs

a  e a2 gs4			%line17
a b c b8 a
b4 cs d2 ~
d4 c8 b c4 a ~
a gs8 fs gs2\prall
a4 e' a2 ~

a gs\prall				%line18
a8 g f4 ~ f8 e d cs 
d c bf4 ~ bf8 a gs fs 
gs4 e e' f
c2 b\downmordent
a1\fermata
\bar "|."
			}
		}
		\context Staff = "LH" {  % Left hand 			
			\clef bass
			\key a \minor
			\relative c' {
				
r2 a 				%line1
c e,
f8 e d2 e8 fs
g a bf2 a8 gs
a e a b a e a c
b e, b' c b e, b' d
c e, c' d c e, c' e


b e, b' c b e, b' d 		%line 2
c b a2  gs4
a8 c b d c b c a
e4 fs g fs8 e
fs4 gs a2~
a4 g8 fs g4 e~

e4 ds8 cs ds2\prall
e4 b' e2 ~  e  			%line3
d\prall
e4 e,8 fs g a bf g
e f g4. f8 e d 
cs d e4. d8 c b

cs a cs d e f g e		%line4
f e d e f g af f	
d e f4. e8 d c 
b c d4. c8 b a 
b g b c d e f d
e d c d e f g e

f4 a d, f				%line5
b, c8 b e4 c
d g b, d
g, a8 b c4 a
b d gs, b
e, fs8 gs a4 b

c2 e,					%line6
f8e d4 ~ d8 e fs gs
a e a2 gs4
a b c b8 a
b4 cs d2 ~
d4 c8 b c4 a~

a gs8 fs gs2\prall		%line7
a4 e' a2 ~
a gs\prall
a e
f a,
c8 b a2 b8 cs

d e f2 e8 ds			%line8
e b e fs e b e g 
fs b, fs' g fs b, fs' a
g b, g' a g b, g' b
fs b, fs' g fs b, fs' a

g fs e2 fs4 			%line9
gs f' (e\prall) d
f, d' (c\prall) b
d, b' (a\prall) gs
a8 d, c b a4 g'
fs ef' (d\prall) c

ef, c' (b\prall) a		%line10
c, a' (g\prall) fs
g8 c, b a g4 f'
e8 d' c b c a e4 ~
e8 d e fs d g b4
c,8 b' a g a fs c4 ~

c8 b c d b d g4			%line11
a,8 g' fs e fs ds a4 ~
a8 g a b g b e g 
fs as, fs' g fs b, fs' a
gs e gs as b d, g b
a cs, a' bf a d, a' c

b g b cs d g, bf d  		%line12
c e, c' d c f, a c 
b d, b' c b e, b' d 
c a c e c a b gs
a c b d c b c a
e4 fs g fs8 e

fs4 gs a2 ~			%line13
a4 g8 gs g4 e ~
e ds8 cs ds2\prall
e4 b' \clef treble e2 ~
e ds\prall
e r4 d

cs bf' (a\prall) g		%line14
bf, g' (f\prall) e
g, e' (d\prall) cs
d8a d e f g af f
d e f4. e8 d c
b c d4. c8 b a

b g b c d e f d  			%line15
e4  \clef bass e, a2 ~
a4 g8 fs g2 ~
g4 a8 b c2 ~
c4 bf8 a bf2 ~
bf4 c8 d ef2~

e4 d8 cs d2 ~			%line16
d cs\prall
d4 e f d 
e d c b 
a8 e a2 gs4\prall
a2 b

c e, 					%line17
f8 e d2 e8 fs
g a bf2 a8 gs
a e a b a e a c
b e, b' c b e, b' d
c e, c' d c e, c' e

b e, b' c b e, b' d		%line18
c a b cs d e f g
f e d cs d4 d, ~
d c8 b c4 d e d e e, 
a1\fermata
\bar "|."
			}
		}
	>>
}



\score {
	<<
		\staffHarpsichord
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
	system-count = #20
}

