\version "2.10.33"
%{ comment out the "paper" section for Mutopia
\paper {
    #(set-paper-size "letter")
    top-margin = 0.25\in
    bottom-margin = 0.25\in
    left-margin = 0.75\in
    line-width = 7.25\in
}
%}
\header {
    title = "Chromatic Fantasy and Fugue, BWV 903"
    mutopiatitle = "Chromatic Fantasy and Fugue, BWV 903 (Fugue)"
    composer = "Joh. Seb. Bach"
    mutopiacomposer = "BachJS"
    mutopiaopus = "BWV 903"
    mutopiainstrument = "Harpsichord"
    mutopiadate = "1730"
    style = "Baroque"
    source = "BachGesellschaftAusgabe 1890"
    copyright = "Public Domain"
    maintainer = "Greg Louis"
    maintainerEmail = "greg.at.bgl.discardthispart.nu"
 footer = "Mutopia-2008/12/10-1604"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%{
This file is intended to provide legible sheet music, but the primary
objective is the creation of a working .midi file.  Arpeggios and trills are
therefore written out, but to permit printing nice-looking sheet music, they
are surrounded by comments and followed by alternative versions that
conform (more or less) to those in the BachGesellschaft edition.  See the
opening comments to bwv903fan.ly for more details.
%}
%{1%} active = "no_dots" %{1-%} %{2.. active = "no_dots" ..2-%}  

#(set-global-staff-size 18)

% c'' is c~525
upper = \relative c'' {
    \override Score.RehearsalMark #'break-align-symbol = #'key-signature
    \override Score.RehearsalMark #'self-alignment-X = #left
    \clef treble
    \key d \minor
    \time 3/4
    \override Staff.TimeSignature #'style = #'default
    \once \override TextScript #'padding = #2
    \mark \markup { \hspace #0 \raise #1.5 \bold "Fuga" }

a4 bes b
c c8 b c4
e, f fis
g g8 fis g a
bes4 a g                                                           | %upper 5

f g8 f e d
e4 a, cis
d8 d16 e f8 f16 g a8 a16 b 
c2.~
c8 a16 bes c8 c16 d e8 e16 fis                                     | %upper 10

g2.~
g8 a16 g f8 f16 e d8 c16 b
%{2..
gis'32 a gis a gis a gis a gis a gis a gis a gis a
   gis a gis a \times 4/5 { gis32 a gis fis gis }
..2-%} %{1%} gis'2~\trill gis8.\trill fis32 gis %{1-%}
a2.~
a8 b16 a gis8 gis16 fis e8 e16 d                                   | %upper 15

c8 e, a a16 b c4~
c16 bes a bes c d ees d c bes c a
bes8 d, g g16 a bes8 c16 bes
a8 bes16 c d ees d c d b c d
g,4 r r                                                            | %upper 20

r16 g a bes a bes a g a fis g a
d,4 d'2
e2.
f16 a g f e f e f f32 g f g \times 2/3 { f32 g f } e32 f
g4 e2~                                                             | %upper 25

e8 f16 e d8 d16 c bes8 bes16 a
g2 r8 g
c2 r8 c
f2 r8 f
bes2.~                                                             | %upper 30

bes8 c16 bes a8 a16 g f8 f16 ees
d8 f16 ees d8 d16 c bes8 bes16 a
g8 d'16 c bes8 bes16 a g8 g16 f
e c d e f g a bes c bes d c
c bes c d %{2..
g,32 a g a g a g a g a \times 4/5 { g32 a g a g }
..2-%} %{1%} g,4..\trill %{1-%} f32 g                              | %upper 35

f2.~
f16 f e d e4 r8 r16 fis
g4~ g16 a g f e a g a
f a b cis d2~
d16 d c b c4 d~                                                    | %upper 40

d2 r8 d
c e16 d c8 c16 b a8 a32 b c16
b8 a16 b c8 c16 d e8 e16 fis
g2.~
g8 a16 g f8 f16 e d8 d16 c                                         | %upper 45

b2.~
b8 a'16 g f8 f16 e d8 d16 c
\barNumberCheck #48 d8 d16 f e8 e16 d c8 c16 b
c2 r16 d, a' c
b2 r16 c, g' bes                                                   | %upper 50

a f a c f8 r r16 g, d' f
e g, c e g8 r r16 a, e' g
%{2..
f32 g f g f g f g f g f g f g f g
   f g f g f g f g
f32 g f g f g f g f g f g f g f g
   f g f g f g f g
f g f g f g f g ..2-%}
%{1%} f2.~\trill f2.~\trill f4\trill %{1-%} f16 e d c b d a d      | %upper 55

gis, b c e d c b a gis b f b
e, gis a c fis, a b d gis, b c e
a, b c e b c d f e d c b
c e a gis a d, e f gis, b e d
c e gis a r d, f a r d, f gis                                      | %upper 60

a4 a8 gis a4
r16 d, e b' r c, e a r a, c dis
e4 e8 dis e4
e2.~
e8 cis16 d e8 e16 f g8 g16 a                                       | %upper 65

%{2..\times 4/5 { a32 bes a bes a } bes8 ..2-%} %{1%} bes4\prallup %{1-%}
bes8^( a) a^( g)
g^( f) g^( f) e^( d)
e4 r8 e a16 g a8
d,4 r16 d e f g e f g
cis,2.                                                             | %upper 70

d2.
c8. d16 e4 fis
g4~ g8 g16 fis g4~
g8 e16 f g8 g16 f e8 a16 g
f8 a16 g f8 f16 e f g a f                                          | %upper 75

d2 r16 gis, b d
\barNumberCheck #77 c a' g f e d c b a gis fis e
a2 r16 dis, fis a
g e' d c b a g fis e d cis b
%{2..
ais'32 b ais b ais b ais b ais b ais b ais b ais b
   ais b ais b \times 4/5 { ais32 b ais b ais }                    | %upper 80
..2-%} %{1%} ais'2.\trill %{1-%}
b2.
r8 e16 g fis8 fis16 e d8 d16 cis
d8 b16 cis d8 d16 e fis8 fis16 gis
a4 r8 a16 gis a8 b16 a
g4 r8 g16 fis g8 a16 g                                             | %upper 85

fis4 r8 fis16 e f8 g16 f
e2 e4
dis d2
cis4 c2
b4 c cis                                                           | %upper 90

d d8 cis d4
fis, g gis
a a8 gis a4
c b a
g a8 g fis e                                                       | %upper 95

fis16 g a b c a b c r c b a
g2 r16 a, e' g
fis2 r16 g, d' f
e c e g c8 r r16 d, a' c
b d, g b d8 r r16 e, b' d                                          | %upper 100

%{2..
c32 d c d c d c d c d c d c d c d c d c d c d c d
c d c d c d c d c d c d c d c d c d c d c d c d
..2-%} %{1%} c2.~\trill c2.~\trill %{1-%}
c16 a bes d c bes a g fis a ees a
d, fis g bes e, g a c fis, a bes d
g, bes c d a c d ees d c bes a                                     | %upper 105

\barNumberCheck #106
bes d g fis g c, d ees fis, ees' d c
bes d g8 r16 c, d ees f aes g f
ees8 g16 f ees8 ees16 d ees4
s16 g, c8 r16 g a bes c ees d c
bes8 d16 c bes8 bes16 a bes d g8                                   | %upper 110

%{2..
cis,32 d cis d cis d cis d cis d cis d cis d cis d
   cis d cis d \times 4/5 { cis32 d cis d cis }
..2-%} %{1%} cis,2.\trill %{1-%}
d2.
bes4 a g
f g8 f e d
e e16 f g a bes g r bes a g                                        | %upper 115

fis d fis g a fis a bes c a b c
gis8 b16 c d8 d16 e f8 e16 d
c4 r16 g a bes c ees d c
bes4 r16 f g a bes d c bes
a4 r16 a b cis d f e d                                             | %upper 120

cis d e f g f e f g bes a g
f4 r16 c d e f a g f
e4 r16 bes c d ees g f ees
d4 r16 a bes c d f ees d
c4 r16 g a bes c a d a                                             | %upper 125

bes8 d g g16 fis g4~
g8 c, f8 f16 e f4~
f8 bes, c d ees4~
ees8 a, b c d4~
d8 g, a bes c4~                                                    | %upper 130

c16 ees d c bes a g a bes d c bes
a d c bes a d g, cis a d a g
f g f e d f e d g a g f
\barNumberCheck #134
e g f g a bes a g fis g fis e                                      | %upper 135

ees'4 d c
bes c8 bes a g
cis4 d e~
e d2
f4 e d
cis8. s16 r4 r16 b d f                                             | %upper 140

e c' b a g f e d c b a g
c2 r16 fis, a c
bes4 r r
r2.
r8 a16 c bes8 bes16 a g8 g16 f                                     | %upper 145

g8 g16 bes a8 a16 g f8 f16 e
f4 r16 c d e f a g f
e4 r16 bes c d ees g f ees
d4 r16 d e fis g bes a g
fis g a bes c bes a bes c ees d c                                  | %upper 150

bes4 r16 f g a bes d c bes
a4 r16 a b cis d f e d
s2.
a'4 bes b
c c8 b c4                                                          | %upper 155

e, f fis
g g8 fis g a
bes4 a g
f g8 f e d
e16 r r8 s4 cis8. d16                                              | %upper 160

\barNumberCheck #161 d2.^\fermata
}

% c' is c~262
upmid = \relative c' {
    \change Staff = "Upper"
    \key d \minor

s2. s s s s                                                        | %upmid 5

s s s
d8. e16 f4 fis
g g8 fis g4                                                        | %upmid 10

b, c cis
d d8 cis d e
f4 e d
s2. s                                                              | %upmid 15

s4 c8 c16 d e8 e16 fis
g2.~
g8 g,16 a bes8 bes16 c d8 d16 e
f2.~
f8 d16 e f8 f16 g a8 a16 b                                         | %upmid 20

c2.~
c8 d16 c bes8 bes16 a g8 f16 e
%{2..
cis'32 d cis d cis d cis d cis d cis d cis d cis d cis d
   \times 4/5 { cis32 d cis d cis } b32 cis
..2-%} %{1%} cis'2~\trill cis8.\trill b32 cis %{1-%}
d2.~
d8 e16 d cis8 cis16 b a8 a16 g                                     | %upmid 25

f2.~
f8 b, c d e4~
e8 e f g a4~
a8 a bes c d4~
d8 d e f g f                                                       | %upmid 30

e4 s2
s2. s s s                                                          | %upmid 35

s2 s8 b,
c4 r16 d c bes a bes c8~
c16 c b a b4 r8 cis
d4 r16 e d c b e d e
s8 e a2~                                                           | %upmid 40

a8 b16 a gis8 gis16 fis e4~
e f fis
g g8 fis g4
b, c cis
d d8 cis d e                                                       | %upmid 45

%{2.. f32 g f8. ..2-%} %{1%} f4\prall %{1-%} f8_( e) e_( d)
d_( c) d_( c) s4
\barNumberCheck #48 s2.
r16 a' e c a r r8 r4
r16 g' d b g r r8 r4                                               | %upmid 50

r r16 a' f d s4
s4 r16 bes' g e s4
r16 d' c bes a g f e d f c f
r2.
r                                                                  | %upmid 55

r r r r
a4 bes b                                                           | %upmid 60

c4 c8 b c4
e, f fis
g g8 fis g4
g16_( a bes8) bes_( a) a_( g)
g_( f) g_( f) e_( d)                                               | %upmid 65

e4 e'2~
e4 d4. s8
d4 c2~
c4 bes2~
bes8 bes16 a g8 g16 f e8 e16 g                                     | %upmid 70

f a d, e f g f g
%{2.. \times 6/7 { g32 a g a g a g } ..2-%} %{1%} g8.\trill %{1-%} f32 g
a8 a16 bes c8 c16 bes a8 d16 c
bes8 d16 c bes8 bes16 a bes c d bes
g8. a16 b4 cis
d4~ d8 d16 cis d4                                                  | %upmid 75

r16 a b c b a g f e4~
\barNumberCheck #77 e2 r4
r16 e fis g fis e d c b4~
b2 r4
r2.                                                                | %upmid 80

r8 fis'16 a g8 g16 fis e8 e16 d
e8 r r4 fis~
fis r r
r8 fis16 gis a8 a16 b cis8 cis16 dis
e8 b e e16 dis e4~                                                 | %upmid 85

e8 a, d d16 cis d4
d g, c4~
c fis, b4~
b e, a4
a16 g fis a f a b a g fis e g                                      | %upmid 90

fis b a g fis b e, ais fis b fis e
d e d cis b d cis b e f e d
cis e d cis fis g fis e dis e dis cis
<dis fis a>4 <e g> <b fis'>
e2.~                                                               | %upmid 95

e2 dis4
s2. 
s s s                                                              | %upmid 100

r16 a' g f e d s8 s4
r2. r r r                                                          | %upmid 105

\barNumberCheck #106 r
g8. a16 bes4 b
c4 c8 b c16 aes g f
ees8. e16 f4 fis
g4 g8 fis g8. a16                                                  | %upmid 110

b4 a g
f g8 f e d
e g16 f e f g e cis d e cis
a8 d16 cis d8 d16 cis d8 s16 cis
d4 r s                                                             | %upmid 115

s2.
s
s16 bes' a g fis2
r16 a g f e2
r16 g f e d8 r r4                                                  | %upmid 120

r2.
r16 e' d c b2
r16 d c bes a2
r16 c bes a g2
r16 bes a g fis2                                                   | %upmid 125

g4 r8 bes16 a bes8 c16 bes
a4 r8 a16 g aes8 bes16 aes
g8 r r4 r8 g
fis4 r r8 f
e4 r r8 ees                                                        | %upmid 130

d4 ees e
f f8 e f4
s2.
\barNumberCheck #134 s
<fis a c>4 <g bes>4 <d a'>~                                        | %upmid 135

<d a'> g4. s8
bes4 a g
f g8 f e d
<gis b d>4 <e a c>4 <f b>4
<e a>16 a b cis d c bes a g4~                                      | %upmid 140

g16 r r8 r4 r
r16 g a bes a g f ees d4
r16 g f ees s2
%{2..
cis32 d cis d cis d cis d cis d cis d cis d cis d
   cis d cis d \times 4/5 { cis d cis d cis }
..2-%} %{1%} cis2.\trill %{1-%}
d2.~                                                               | %upmid 145

d4 cis2
r16 e d c b2
r16 d c bes a2
r16 c bes a g8 r r4
r2.                                                                | %upmid 150

r16 a' g f e2
r16 g f e d8 r r4
cis'16 d e f g f e f g bes a g~
g f e g f g a g f e d f
e a g f e a d, gis e a e d                                         | %upmid 155

c d c bes a c bes a d ees d c
b e c b e f e d cis d cis b
<cis e g>4 <a d f> <a e'>
<a d> <g d'>8 <a d> <bes cis> a
<bes d>16 b,32 cis d e f g a b cis d e f g e r8 <g, a>             | %upmid 160

\barNumberCheck #161 <fis a>2.
}

lomid = \relative c' {
    \change Staff = "Lower"
    \key d \minor

r2. r r r r                                                        | %lomid 5
r r r s s                                                          | %lomid 10

s s s
c4 d8 c b a 
b4 e, gis                                                          | %lomid 15

a8 a16 b s2
s2. s s s                                                          | %lomid 20
s s s s s                                                          | %lomid 25
s s s s s                                                          | %lomid 30

s4 r8 a bes c
d c d ees f c
d2.
c8 r c bes a g
a f~ f e16 d e8 bes'~                                              | %lomid 35

bes16 bes a g a4. s8
s2. s s s                                                          | %lomid 40
s s s s s                                                          | %lomid 45

s
s2 b8^( a)
\barNumberCheck #48 b4 e, gis
s2. s                                                              | %lomid 50

s2 b8 g
c8 r s4 cis8 a
d2 s4
s2. s                                                              | %lomid 55

s s s s s
s s s s s
s s s s s
s s s s s                                                          | %lomid 75
s \barNumberCheck #77 s
s s s                                                              | %lomid 80
s s s s s                                                          | %lomid 85
s s s s s                                                          | %lomid 90

s s s
b8 b16 a g8 g16 fis e8 e16 dis
s2.                                                                | %lomid 95

s
r16 e' b g e r16 r8 r4
r16 d' a fis d r r8 r4
r r16 e' c a fis8 d
g r r16 f' d b gis8 e                                              | %lomid 100

s4 s8 c'16 b a c g c
s2. s s s                                                          | %lomid 105

\barNumberCheck #106
s s s s s                                                          | %lomid 110

s s s s
s2 c4~                                                             | %lomid 115

c8 bes a g fis f
e gis16 a b8 b16 c d8 c16 b
s2. s s                                                            | %lomid 120
s s s s s                                                          | %lomid 125
s s s s s                                                          | %lomid 130

s s
a4 bes b
\barNumberCheck #134
c c8 b c4
d8 d16 c bes8 bes 16 a g8 g16 fis                                  | %lomid 135
s2. s s s s                                                        | %lomid 140

s
s
s4 d'16 c bes a g f e d
s2.
s2.                                                                | %lomid 145
s s s s s                                                          | %lomid 150
s s s s s                                                          | %lomid 155

s s s s
g32 a s16 s8 r4 r8 <e a>8                                          | %lomid 160
\barNumberCheck #161 a4 s2
}

% c is c~131
lower = \relative c {
    \clef bass
    \key d \minor

r2. r r r r
r r r r r
r r r r r                                                          | %lower 15

r r r
a'4 bes b
c c8 b c4                                                          | %lower 20

e, f fis
g g8 fis g a
bes4 a g
f g8 f e d
e4 a, cis                                                          | %lower 25

d d, d'
e8 g16 f e8 e16 d c8 c16 b
a8 c'16 bes a8 a16 g f8 f16 e
d8 f16 e d8 d16 c bes8 bes16 a
g8 bes'16 a g8 g16 f e8 e16 d                                      | %lower 30

c4 r8 f g a
bes a bes c d c
bes a g a bes4~
bes8 bes a g f e
f8 bes, c2                                                         | %lower 35

f4~ f16 g f e d g f g
c,4 r8 a d d,
g d' g e a a,
d4 fis gis
a4~ a16 b a g fis b a b                                            | %lower 40

e,4 r8 e gis e
a4 r a,
e' r r
r16 e f g a8 a16 g f8 f16 e
d4 r r                                                             | %lower 45

%{2..
gis32 a gis a gis a gis a gis a gis a gis a gis a gis a gis a
   \times 4/5 { gis a gis a gis }
..2-%} %{1%} gis2.\trill %{1-%}
a2~ a8 s
\barNumberCheck #48 a4 gis e
a4 r16 e'c a fis8 r
g4 r16 d' b g e8 r                                                 | %lower 50

f8 r r4 r
r2.
s2.
b16 d e g f e d c b d a d
gis, b c e d c b a g b fis b                                       | %lower 55

e, gis a c b a gis fis e gis d gis
c, e fis a d, fis gis b e, gis a c
fis, gis a c gis a b d c b a g
a8 e f d e e,
a2.~                                                               | %lower 60

a8 a16 b c8 c16 d e8 e16 fis
gis4 a2
e8 e,16 fis g8 g16 a b8 b32 cis d16
%{2..
cis4 cis'32 d cis d cis d cis d cis d cis d \times 4/5 { cis32 d cis d cis }
..2-%} %{1%} cis4 cis'2\trill %{1-%}
d2.~                                                               | %lower 65

d8 e,16 f g8 g16 a b8 b16 cis
d8 d16 c bes8 bes16 a g8 g16 f
g8 g16 bes a8 a16 g f8 f16 e
fis8 fis16 a g8 g16 f e8 e16 d
e4 r8 e a a,                                                       | %lower 70

d a' d c
    %{2.. \times 6/7 { bes32 c bes c bes c bes32 } c32 bes ..2-%}
    %{1%} bes4\trill %{1-%}
a4 r8 a d d,
g g, bes d g f
e4 r8 e a a,
d d, f a d e                                                       | %lower 75

f fis g4 gis
\barNumberCheck #77 a a8 gis a4
c,8 cis d4 dis
e e8 dis e fis
g^( fis) fis^( e) e^( d)                                           | %lower 80

d^( cis) e^( d) cis^( b)
cis b ais cis fis, ais
b4 r8 b16 cis d8 d16 e
fis4 r r
r8 e16 fis g e g a b e, b' cis                                     | %lower 85

d8 d,16 e fis d fis g a d, a' b
c d e d c e c b a c a g
fis e' dis cis b d b a gis b gis fis
e d' cis b a c a g fis a fis e
%{2..
dis32 e dis e \times 4/5 { dis32 e dis e dis }
..2-%} %{1%} dis4\trill %{1-%}  e8 dis e ais,                      | %lower 90

b4 b2
b2.
b2.~ 
<b dis gis>8 s8 s2
e8 e16 d c8 c16 b a8 a16 g                                         | %lower 95

a4~a16 fis g a b8 b,
e4 r16 b'' g e cis8 r
d4 r16 a' fis d b8 r
c4 r r
r2.                                                                | %lower 100

a'8 r r4 r
fis16 a bes d c bes a g fis a e a
d, fis g bes a g fis e d fis c fis
bes, d e g c,e fis a d, fis g bes
e, g a bes fis a bes c bes a g fis                                 | %lower 105

\barNumberCheck #106
g8 d ees c d d,
g2.
g2.
g2.
g2.~                                                               | %lower 110

g8 bes'16 a g8 g16 f e a g a
d, a' d c bes c d bes g a bes g
cis,4 r8 e a, cis
d16 e f e bes8 a g f
g8 g'16 f e8 g a a,                                                | %lower 115

d2.~
d4 r gis
a8 bes16 c d8 c bes a
g a16 bes c8 bes a g
f16 e d c b cis d e f a g f                                        | %lower 120

e d cis b a b cis d e g f e
d8 e16 f g8 f e d
c d16 e f8 ees d c
bes16 a g f e fis g a bes d c bes
a8 bes16 c d e fis g a fis e d                                     | %lower 125

g d g a bes g bes c d g, d' e
f8 f,16 g a f a bes c d, c' d
ees f g f ees g ees d c ees c bes
a c bes c d f d c b d b a
g b a b c ees c bes a c a g                                        | %lower 130

fis8 d g fis g g,
d'2.
d2.
\barNumberCheck #134 d2.
<d fis a>8 s s2                                                    | %lower 135

g8 g16 f ees8 ees16 d c8 c16 bes
a8 a'16 g f8 f16 e d8 d16 cis
d8 d16 c bes8 bes16 a g8 g16 f
e8 e'16 d c8 c16 b a8 a16 gis
a4 bes b                                                           | %lower 140

c c8 b c4
e, f fis
g g8 fis g a
bes_( a) a_( g) g_( f)
f_( e) g_( f) e_( d)                                               | %lower 145

e4 r16 e f g a g a8
d,16 d' e f g8 f e d
c8 d16 e f8 ees d c
bes16 a g f e fis g a bes d c bes
a g fis e d e fis g a c bes a                                      | %lower 150

g8 a16 bes c8 bes a g
f16 e' d cis b cis d e f a g f
e d cis b a b cis d e g f e
d4~ d16 e f e d e f gis
a,2.                                                               | %lower 155

a2.
a2.
<a' a'>8 <a a'>16 <g g'> <f f'>8 <f f'>16 <e e'> <d d'>8 <d d'>16 <cis cis'>
<d d'>8 <d d'>16 <c c'> <bes bes'>8 <bes bes'>16 <a a'> <g g'>8 <g g'>16 <f f'>
g16 r r8 r4 r8 a                                                   | %lower 160
\barNumberCheck #161 d4~ <d, d'>2_\fermata
}

\score {
    \unfoldRepeats
    <<
      \tempo 4=100
      \new Staff = "Upper" { \set Staff.midiInstrument = "honky-tonk"
      << \upper \\ \upmid >> }
      \new Staff = "Lower" << \lomid \\ \lower >>
    >>
    \midi {  }
}

\score {
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Hpsi   "
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "Upper" <<
	\new Voice = "1" { \voiceOne \upper }
	\new Voice = "2" { \voiceTwo \upmid }
      >>
      \new Staff = "Lower" <<
	\new Voice = "1" { \voiceOne \lomid }
	\new Voice = "2" { \voiceTwo \lower }
      >>
    >>
    \layout {  }
}
