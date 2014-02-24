\version "2.18.0"

\header {
  title = "Praeambulum A. 5. Vocum"
  opus = " "
  composer = "Matthias Weckmann (1621-1674)"
  mutopiatitle = "Praeambulum A. 5. Vocum"
  mutopiacomposer = "WeckmannM"
  mutopiaopus = ""
  mutopiainstrument = "Organ"
  date = "1742"
  source = "Baerenreiter"
  style = "Baroque"
  license = "Public Domain"
  maintainer = "Tim Knigge"
  maintainerEmail = "tim@asset-control.com"
  lastupdated = "2003/March/14"

 footer = "Mutopia-2014/02/24-304"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

global =  {
  \key c \major
  \time 4/4
  \skip 1*70
  \time 3/2
  \skip 1.*32
  \time 4/4
  \skip 1*14
  \bar "|." |
}

upOne = \relative c'' {
  \voiceOne
%{
  \stemUp
  \tieUp
  \slurUp
  \shiftOff
%}

  s1 |
  s |
  s8 g fis8. g16 d8  c16[ d]  e16[ d c b] |
   a[ b c a]  d[ c b a] s2 |
  s1 |							   %5
  s |
  s |
  s |
  r2 r4 r8 d' |
  cis8. d16  b8[ g'] fis8. g16 d8  c16[ d] |		   %10
  e8  d16[ e] c8  b16[ c] d8  c16[ d]  a[ b c d] |
   e[ d c b]  a[ b c b]  d[ c b a]  g[ a b c] |
  d8. e16 f8 r8 r2 |
  s1 |
  s |							   %15
  g,8  f16[ g]  d[ e f g]  a[ b c d]  e[ f] g8 |
  fis8. g16 d8  c16[ d ] e8  d16[ e] c8  b16[ c] |
   d[ c b a]  g[ a b g]  a[ b c d]  e[ f] g8 |
  fis4 g r2 |
  r8 d, cis8. d16  a[ b c d] e8  d16[ e] |		   %20
   b[ c d e]  f[ g] a8 a4 a |
  r2 r8 a[ gis8. a16]|
   e[ fis g a] b8  a16[ b] g8  f16[ g] a8  g16[ a] |
   d,[ e f g]  a[ b] c8 b4 c |
  r1 |							   %25
  r8 d[ cis8. d16]  a[ b c d] e8  d16[ e] |
   b[ c d e] f8  e16[ d]  c[ d e c]  d[ c b a] |
   g8[ g'] fis8. g16  d8[ g] fis8. fis16 |
  g8 r r4 r8 f[ e8. e16] |
  d8 r8 r4 r8 e[ e8. d16] |				   %30
  cis8 r8 r4 r8 f[ e8. e16] |
   e8[ e] d8. d16  cis8[ b] cis8. cis16 |
   d8[ d] d8. c16 b8  a16[ b]  c[ d e f] |
  g2 g4. fis8 |
  g1 |							   %35
  g,2 b4 c |
  d4. d8 c4 d~ |
  d b a b |
  c4. b8 a  b16[ c]  b8[ a] |
  b4. a8 g4 c~ |					   %40
  c b2 a4~ |
  a g2 g4 |
  f  f16[ g a f] g4 a |
  d, e2  d16[ e f d] |
  g4. g8 f8. g16 f8. e16 |				   %45
  d4 g  g16[ a f g] e4 |
  f2 r |
  r1 |
  r4 g b c |
  d4. d8 c4 d~ |					   %50
   d8[ c b d]  c[ b b a] |
  a2 g4 a |
  g2 r |
  r4 g a  b16[ c d b] |
  c4 a b c |						   %55
  d4. d8 c4 d |
  b d e f |
  g4. g8 f4  g16[ f e d] |
  c2 b4 a |
  a2 r |						   %60
  r1 |
  r |
  r |
  r4 c d  e16[ d f e] |
  f4. f8 e4  a16[ g f e] |				   %65
  d2 c4 b |
  a2 g4 a |
  g2. a4 |
  fis g2 fis4 |
  g1 |							   %70
  g2 b c |
  d2. d4 c d |
  b2. b4 a g |
  fis2 g a |
  b1.|							   %75
  s |
  g1 fis2 |
  g2. g4 f g |
  cis,2 d e |
  fis1. |						   %80
  s1. |
  s |
  s |
  s |
  s |							   %85
  s |
  s |
  s |
  d'2 e f |
  g2. g4 f g |						   %90
  e2. e4 d e |
  c2. c4 b c |
  a2  e'8[ d c b] a4 d |
  d1 r2 |
  s1. |							   %95
  s |
  s |
  s |
  s |
  s |							   %100
  d2 e fis |
  g g2. fis4 |
  g2 r16  d[ e f]  g8[ f] |
  e4 d c r |
  r r16  g[ b c ]  d8[ c] b4 |				   %105
  a b  a16[ b c d] b4 |
  r16  d[ e f]  g8[ f] e4 r16  g,[ a b] |
   c8[ b] a4 r16  a[ b c]  d8[ c] |
  b4 r16  d[ e f] g4~  g16[ f e d] |
   e[ d c b]  c[ g a b]  g[ f e d]  e[ g a b] |		   %110
   c[ d e f]  g[ d g f]  e[ d c b]  c[ a d b] |
  e4 r16  g,[ a b]  c[ d e f]  g[ f e d] |
   g[ f e d]  g[ f e d]  c[ b a b]  c[ b c a] |
   b[ d e f]  g[ g, a b]  c[ g a b]  c[ d e fis] |
   g[ f e d]  c[ b c a]  b32[ c d e fis g a g]  g[ fis g fis g fis e fis] |	%115
  g1 |
}

upTwo = \relative c''' {
  \voiceTwo
%{
  \stemDown
  \tieDown
  \slurDown
  \shiftOn
%}
  g4 fis8. g16 d8  c16[ d] e8  d16[ e] |
  c8  b16[ c] d8  c16[ d]  a[ b c a]  d[ c b a] |
  g8 s s4 s2 |  s1 |
  s |		 					   %5
  r8 \stemUp g8 fis8. g16  d8[ c16 d]  e[ d c b] |
   a[ b c a]  d[ c b a]  g[ a b c] a8.  b32[ c] |
  d8  c16[ d]  a8[ b] c  b16[ c]  g[ a b g] |
   a[ b c  d]  e[ f] g8 \stemDown fis8. g16  d8[ g] |
   e[ a]  g16[ a b c]  d8[ d,] b'  a16[ b] |		   %10
  g8  f16[ g] a8  g16[ a]  d,8[ e] f  e16[ f] |
  c8  d16[ e]  f[ g a g] fis8  g16[ fis]  e[ fis] g8 |
   a[ b] a  f16[ g] a8  e16[ f] g8  f16[ g] |
  e8  d16[ e] f8  e16[ f]  c8[ d] e  d16[ e]|
   b[ c d b]  c[ b a g]  f[ g a b]  c[ d e f] |		   %15
  s1 |
  s |  s |
  d'4 d r2 |
  s1 |							   %20
  s |
  s |
  s |
  r2 g,4 g |
  r2 r8 g[ fis8. g16] |					   %25
   d[ e f g]  a8[ e] f  e16[ d]  c[ d e f] |
  g8  f16[ g]  d[ e f g]  a[ g f e] d8  e16[ fis] |
  g4 r r8 d'[ d8. c16] |
  b8 r r4 r8 d[ cis8. cis16] |
  d8 r r4 r8 c[ c8. b16] |				   %30
   a8[ c] b8. c16  g8[ c] b8. b16 |
   c8[ c] gis8. gis16  a8[ gis] a8. g16 |
   fis8[ g] fis8. fis16 g4 r |
  r16  f'[ e d] c8  b16[ c] d4. c8 |
  b1 |							   %35
  r |
  r4 d, e f |
  g4. g8 f4 g~ |
  g e f fis |
  g2 d4 e |						   %40
  f g e f |
  d2 c4 b |
  c d2 \change Staff = bass \stemUp c4~ |
  c b a b~ |
   b8[ g] c4 d \change Staff = treble \stemDown c~ |	   %45
  c  b8[ c] d4  c8[ b] |
  s4 d4 e f |
  g4. g8 f4.  g16[ f] |
  e2 g |
  a4 b a2 |						   %50
  b4. b8  a[ g] g4~ |
  g fis  g8[ f f e] |
  e4  d8[ e] f4  e8[ d] |
  e4. d8 c4 d |
  e f2 e4 |						   %55
  f2 g4 a |
  b2 a |
  g4  c8[ b] a4 g |
  a2 g4 e |
  d2 r |						   %60
  s1 |
  r4 \stemUp g a b |
  \stemDown c4. c8 b4  a16[ b c b]  |
  a4. a8 g2 |
  a g4 a |						   %65
  b2 a4 g~ |
  g f  e8[ d c f~] |
   f[ f] e4 d e |
  d2 e4 d |
  d1 |							   %70
  s1. |
  d2 e f |
  g2. g4 fis e |
  d2 e fis |
  g2. g4 fis e |					   %75
  fis2 g a  |
  d, e fis |
  b, c d |
  a b cis |
  d1. |							   %80
  s |
  d2 e f |
  g2. g4 f g |
  e2 f g |
  a1. |							   %85
  \stemUp g2 a b |
  c2. c4 b c |
  a2 g fis |
  \stemDown g1. |
  g2 a b  |						   %90
  c2. c4 b c |
  a2 a,4 a' g a |
  fis2 g a |
  b1 r2 |
  a1 r2 |						   %95
  s1. |
  s |
  d,2 e fis |
  g2. g4 fis e |
  fis2 g a |						   %100
  b1 c2 |
  g a1 |
  b2 r4 r16  g[ a b] |
  c4 b r2 |
  r r16  d,[ e f] g4~ |
   g8[ fis] g4 d2 |
  r4 r16  g[ a b] c4 r |
  r16  c,[ d e] fis4 r r16  d[ e fis] |
  g4 r r16  g[ b g~] g4 |
  r8 d e4 r8 d c4 |
  r8 e  d[ d]  e[ g e g] |
  <g c>4 r4 r2 |
  r1 |
  r1 |
  d4 e d c |
  <b' d>1 |
}

downOne = \relative c' {
  \voiceOne
%{
  \stemUp
  \tieUp
  \slurUp
  \shiftOff
%}
  s1 |
  s |
  s |
  s2 g8  fis16[ g] d8  c16[ d] |
   e[ d c b]  a[ b c a]  b[ a c b]  d[ c b a] |		   %5
   g[ a b g]  d'8[ d,] r2 | |
  r2 r8 g' fis8. g16 |
   d8[ e] f  e16[ f]  c8[ d] e8  d16[ e] |
   c[ d e f]  g[ a b c]  d8[ d,]  b'[ g] |
  a4 r r2|						   %10
  r1 |
  r2 r4 r8 \stemDown g8 |
  fis8. g16  d8[ d'] cis8. d16] g,8  a16[ g] |
  c8  b16[ c]  f,8[ g] a  g16[ a]  e8[ f] |
  g  f16[ g]  a[ g f e]  d[ e f d]  e[ b c d] |		   %15
   e[ f g a]  b[ g a b]  c[ d e f] \change Staff = treble  g[ a b c] |
   d8[ d,~]  d16[ e f d]  g[ e f g]  a[ g f e] |
   d8[ g16 f]  e[ d c b ] \change Staff = bass \stemUp  a[ g f e]  d[ c] b8 |
  d4 d r8 g[ fis8. g16] |
   d[ e f g]  a8[ e]  f[ e16 d]  c[ d e f] |		   %20
   g[ a b c] \change Staff = treble \stemDown  d[ e] f8 e4 fis |
  \change Staff = bass \stemUp r8 d[ cis8. d16]  a[ b c d]  e8[ b] |
  c  b16[ a]  g[ g' f g]  e[ d c b]  a[ b c a] |
   b[ c d e]  f[ g8.] s2 |
  s1 |							   %25
  s |
  s |
  r2 r8 \change Staff = treble \stemDown \shiftOn b[ a8. a16] |
   g8[ g] fis8. g16  d8[ f] a8. a16 |
  a8 r8 r4 r8 e8[ e8. e16] |				   %30
  e8 s8 s4 s8 a[ g8. f16] |
   e8[ e] e8. e16  e8[ e] e8. e16 |
   d8[ d] d8. d16 d4 s |
  \change Staff = bass \stemUp \shiftOff r g a2 |
  g1 |					   %35
  r |
  r |
  r |
  r |
  r4 g, b c |						   %40
  d4. d8 c4 d |
  b4. b8 a4 g |
  a2 r |
  r1 |
  r |							   %45
  r |
  a4 b c a~ |
  a g c d |
  c2 d4 e |
  fis g2 fis4 |						   %50
  g2 r |
  s1 |
  r4 \stemDown g, a b |
  \stemUp c4. b8 a4 f |
  g d' b a~ |						   %55
  a d e f |
  g4. g8 f2 |
  e4 c d e |
  \change Staff = treble \stemDown \shiftOn f e d  c8[ b] |
  a4 b c f~ |						   %60
  f e d4.  e16[ d]  |
  c4. b8 \change Staff = bass \stemUp \shiftOff a4  g8[ f]  |
  g4 c d e |
  f4. f8 e2 |
  r4 d e f |						   %65
  g4. f8 e4 d |
  d4. c8 b4 a |
  b c d c~ |
  c b c a |
  b1 |							   %70
  s1. |
  s |
  g2 b c |
  d2. d4 c d |
  b2. b4 a g |						   %75
  d'2 c4 b a2 |
  b1 c2 |
  g1 a2 |
  a1. |
  a2 b c |						   %80
  d2. d4 c d |
  b2. b4 a b |
  g2 a b |
  \change Staff = treble \stemDown \shiftOn c d e |
  f2. f4 e f |						   %85
  d2 e f |
  g1 f2 |
  f \change Staff = bass \stemUp \shiftOff d1 |
  d1. |
  s |							   %90
  s |
  s |
  \change Staff = treble \stemDown \shiftOn d2 e fis |
  g2. g4 fis e |
  fis2. fis4 e fis |					   %95
  g2. g4 f g |
  e d c b a2 |
  b1 c2 |
  d1 r2 |
  d e fis |						   %100
  g1 c,2 |
  d1. |
  d2 r |
  r16  c[ e f]  g8[ f] e4 d8  g32[ f e d] |
  e4 \change Staff = bass \stemUp \shiftOff r r r16  g,[ b c] |   %105
  d2 a4 b |
  r2 g'4 r |
  r d r2 |
  d4 r r8 d e4 |
  r8 d c4 r8 b c4 |					   %110
  r8 c  b[ d]  c[ d c d] |
  <c e>4 r r2  |
  r1 |
  r |
  \tieDown g~ |						   %115
  g |
}

downTwo = \relative c {
  \voiceThree
%{
  \stemDown
  \tieDown
  \slurDown
  \shiftOn
%}

  s1 |
  s |
  s |
  s |
  s |							   %5
  s |
  s |
  s |
  s |
  s |							   %10
  s |
  s |
  s |
  s |
  s |							   %15
  s |
  s |
  s |
  \stemUp a'4 b r2 |
  s1 |							   %20
  s4 r8 d cis4 d |
  s1 |
  s |
  r4 r8 \stemDown e \stemUp d4 e |
  r8 c[ b8. c16]  g[ a b c]  d8[ d,] |			   %25
  s1 |
  s |
  r2 r8 d'[ d8. d16] |
  d8 r r4 r8 d[ e8. e16] |
   fis8[ d] cis8.[ d16]  a8[ a] gis8. gis16|		   %30
  a8 r r4 r8 a[ d8. d16] |
   c8[ c] b8. b16  a8[ b] a8. a16 |
   a8[ b] a8. a16 g4 r |
  r d' d2 |
  d1 |					   %35
  r |
  r |
  r |
  r |
  r |							   %40
  d,\rest |
  d\rest |
  r4 \stemDown d e f |
  g4. g8 f4 g |
  e2 f |						   %45
  g2. g4 |
  f2 g4  f8[ e] |
  d4 e2 d4 |
  g2 g |
  d'1 |							   %50
  r4 \stemUp g, b c |
  d4. c8 b4  a8[ b] |
  c4 b c r |
  s1 |
  s |							   %55
  s |
  s |
  s |
  r2 r4 e, |
  f g a4. a8 |						   %60
  g4. g8 f4 g~ |
  g e \stemDown f  e8[ d] |
  c2 r |
  r1 |
  r |							   %65
  r4 g' a  b8[ c] |
  d4 d, e f |
  g2. a4 |
  a b a2 |
  g1 |							   %70
  s1. |
  s |
  s |
  s |
  s |							   %75
  d2 e fis |
  g1 c,2 |
  d1 d2 |
  e1. |
  d1. |							   %80
  d2 e f |
  g2. g4 f g |
  e2 f g |
  a2. a4 g a |
  \stemUp f2. d'4 c d |					   %85
  b2 c d |
  e1 d2 |
  c b a |
  b1. |
  s |							   %90
  s |
  s |
  s |
  g2 b c |
  d d,4 d' c d |					   %95
  b2 g4 a b g |
  c b a g fis2 |
  g1 a2 |
  b1 r2 |
  a1. |							   %100
  g1 a2 |
  b a1 |
  g2 r |
  r4 r16  g[ a b] c4 b |
  c r r2 |						   %105
  r16  d,[ fis d] g4~  g8[ fis] g4 |
  r2 e'4 r |
  r a, r2 |
  g4 r r8 g g4 |
  r8 g g4 r8 g g4 |					   %110
  \stemDown r4 r8 g  g[ g g g] |
  g4 e8\rest \stemUp r16 g  a[ b c d]  e[ f g f] |
   e[ d g f]  e[ d g f]  e[ d c d]  e[ d e fis] |
   g[ f e d]  c[ b c d]  e[ f e d]  c[ b c a] |
  b4 c b a |						   %115
  <b d>1 |
}

bass = \relative c {
  \voiceTwo
%{
  \stemDown
  \tieDown
  \slurDown
%}

  s1 |
  s |
  s |
  s |
  s |							   %5
  s |
  s |
  s |
  s |
  s |							   %10
  s |
  s |
  s |
  s |
  s |							   %15
  s |
  s |
  r2 r4 r8 g |
  d'4 g, r2 |
  s1 |							   %20
  s4 r8 d' a'4 d, |
  s1 |
  s |
  r4 r8 c' g4 c, |
  s1 |							   %25
  s |
  s |
  r2 r8 g[ d'8. d16] |
  g,8 r r4 r8 d'[ a'8. a16] |
  d,8 r r4 r8 a[ e'8. e16] |				   %30
  a,8 r r4 r8 f'[ g8. g16] |
   c,8[ a] e'8. e16  a,8[ e'] a,8. a16 |
   d8[ g,] d'8. d16 g,4 r |
  r g d' d, |
  g1  |							   %35
  r |
  r |
  r |
  r |
  r |							   %40
  r |
  r |
  r |
  r |
  r |							   %45
  g2 b4 c |
  d4. d8 c4 d |
  b c a b |
  c2 g |
  r1 |							   %50
  r |
  r4 d' e f |
  g4. g8 \shiftOn f4 g~ \shiftOff |
  g e f d |
  c  f, g a |						   %55
  d2 r |
  r1 |
  r1 |
  r4 a b c |
  d4. d8 c4 d |						   %60
  b c2 b4 |
  c2 r |
  r1 |
  r |
  r |							   %65
  r |
  r |
  g4. a8 b4 c |
  d4. d8 c4 d |
  g,1 |							   %70
  s1. |
  s |
  s |
  s |
  g2 b c |						   %75
  d2. d4 c d |
  b1 a2 |
  g1 d'2 |
  a1. |
  d, |							   %80
  s |
  s |
  s |
  s |
  d'2 e f |						   %85
  g2. g4 f g |
  e2 c d4 e |
  f2 g d |
  g,1. |
  s |							   %90
  s |
  s |
  s |
  s |
  s |							   %95
  s |
  s |
  s |
  g2 b c |
  d1 c2 |						   %100
  b1 a2 |
  g d' d, |
  g2 r |
  r r16  c[ e c]  g'8[ g,] |
  c4 r r2 |						   %105
  r4 r16  g[ b g]  d'8[ d,] g4 |
  r2 c4 r |
  r d r2 |
  g,4 r r8 g8 c4 |
  r8 g' g4 r8 g c,4 |					   %110
  r8 c  g'[ b,]  c[ g' c, b] |
  c1~ |
  c |
  g1~ |
  g~ |							   %115
  g |
}

\score {
  \new PianoStaff <<
    \new Staff = "treble" \with {
      midiInstrument = "church organ"
    } <<
      \clef treble
      \global
      \new Voice = "treble1" \upOne
      \new Voice = "Treble2" \upTwo
    >>
    \new Staff = "bass" <<
      \clef bass
      \global
      \new Voice = "Bass1" \downOne
      \new Voice = "Bass2" \downTwo
      \new Voice = "Bass3" \bass
    >>
  >>
  \midi {
    \tempo 4 = 100
  }


  \layout { }
}
