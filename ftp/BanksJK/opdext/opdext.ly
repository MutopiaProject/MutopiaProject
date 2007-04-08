\header {
 mutopiatitle = "Opus Dexter in C major"
 mutopiacomposer = "BanksJK"
 mutopiainstrument = "Percussion, Bells/Glockenspiel"
 date = "2006"
 source = "Original Composition"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "James Banks"
 maintainerEmail = "foreclosers (at) gmail.com"
 lastupdated = "2006/Aug"
 footer = "Mutopia-2006/08/30-811"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.8.0"
\header {
  title = "Opus Dexter"
  composer = "James Banks"
  }

global = {
 \time 3/4
 \key c \major
 \clef treble
 }

dexHi = { e8 c e c g' c, }
dexMid = { c8 g c g e' g, }

bellsDex = \relative c' {
\set Staff.instrument = "Bells"

% Intro

\repeat unfold 4 { s2. }

\repeat unfold 2 {

g''8 e g e g e 

gis8 e gis e gis e

a8 e a e a e

gis8 e gis e gis e

}

g8 e g e g e

g8 e g e g e

g8 e g e g e

e2 r4

r2.

% 1st ostinato

\repeat unfold 8 { \dexHi }


a8 c a' c, f c 

g'8 e c e g e

a,8 c f c d c

e8 c g c e c


a8 c a' c, f c 

g'8 e c e g e

a,8 b c f e d

c2.


\repeat unfold 2 {
  \repeat unfold 4 { \dexMid } 
}


c8 g c e c g

c8 g e g e c

g8 c e c e g

c2.


\repeat unfold 8 { s2. }

a'8 a a a a a

g8 g g g g g

f8 f f f f f

e8 e e e e e


a8 a a a a a

e4 c c

c4 c d

gis4 fis gis


\repeat unfold 6 { a8 e a e c' e, }

\repeat unfold 2 { a8 e a e b' e, }

a8 e a e c' e,

\repeat unfold 7 { a8 e a e c' e, }


a8 e c e a e

g8 e c e g e 

f8 d a d f d

e8 b g b e b


a'8 e c e a e

g8 e c e g e

f8 c a f a c

e2.

\repeat unfold 3 { s2. }

\repeat unfold 22 { \dexHi }

e8 c e c e c

e8 d e c e d

e8 c e c e c

e8 d e c e c

\repeat unfold 3 { 
c8 g c g d' g,

e'8 g, e' g, e' g,
}


e'8 b e b e b 

e8 b e b e b

\dexMid

c8 g c g d' g,

\repeat unfold 3 { \dexMid }

c8 g c g d' g,

\repeat unfold 10 { \dexMid }

c8 b g b c b

\dexMid

c8 b g b c b

c8 b gis b c b

a8 c a' c, f c

g'8 e c e g e

a,8 c f c d c

e8 c g c e c


a8 c a' c, f c

g'8 e c e g e

a, b c f e d

e4 c8 b g4


a8 c a' c, f c

e4 c c

f4^\markup { \italic rit. } e d

<g,, c e c' >2.^\fermata

}

bellsSin = \relative c' {
\stemDown

<c'' f,>8 a c a <c e,> a

<b ees,> g b g <a d,> f


<c' f,>8 a c a <c e,> a

<b ees,> g b g <a d,> f


c2 c4

cis2 cis4

d2 d4

cis2 cis4


c2 c4

cis2 cis4

d2 d4

cis2 cis4


c2 c4

b2 b4

c2 c4

c2 s4

s2.

\bar "||"

c,2.

a2.

b2.

r2.


c2.

a2.

b2.

r2.


\repeat unfold 8 { s2. }

\repeat unfold 2 {
c2.

a2.

b2.

r2.
}

c2.

s2.

s2.

s2.

\bar "||"

a4 c d

e2.

f4 c d

e2.

a,4 c d 

e2. 

f4 e d

c2.

a4 c d

e2.

f4 c d

e4. d8[ c b] 

a4 c d

e8 f g2

a4 g f

e4 e e

c2.

d2.

e2. 

f2.

fis2.

g2. 

gis2.

r2 g,4

a2.


c2.

d2.

e2.

f2.

fis2.

g2.

gis2.


a2.

g2. 

f2.

e2.

a2.

g2.

f2.

\repeat unfold 2 {
c4 c8_\< c c c_\!

c4 c16_\< c c8 c c_\!
}

c4. c8_\< c c_\!

a4. a8_\< a a_\!

b4. b8_\< b b_\!

s2.


c4. c8_\< c c_\!

a4. a8_\< a a_\!

b4. b8_\< b b_\!

b4. g8_\< g g_\!


a4. a'8_\< a a_\!

f4. f8_\< f f_\!

g4. g8_\< g g_\!

e4. e8_\< e e_\!

f4. f8_\< f f_\!

d4. d8_\< d d_\!

e4. e8_\< e e_\!

c4. g'8_\< g g_\!


a,4. a'8_\< a a_\!

f4. f8_\< f f_\!

g4. g8_\< g g_\!

e4. e8_\< e e_\!

f4. f8_\< f f_\!

d4. d8_\< d d_\!

c2.

\repeat unfold 3 { s2. }

\repeat unfold 3 {
a2 b4 

c2.
}

e2.

e4. e4.

f2.

\repeat unfold 2 {
a,2 b4

c2.

e2.

f2.
}

e2.

f2.

e2.

f2.

e2.

c2.

\repeat unfold 5 { s2. }

a4 c d

e2.

f4 c d

e4. d8[ c b]

a4 c d

e2.

f4 e d

c2 b4

a4 c d

e8 f g2

a4 g f

s2.

}

\score {
 \new Staff 
    << \global << \bellsDex \\ \bellsSin >> >>
\midi { \tempo 4 = 105 }
 \layout { }
 }
