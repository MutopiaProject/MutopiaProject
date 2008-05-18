% This file prints Bach BWV 827, movement 1. Prelude

\version "2.10.33"

\header
{
  title    	    = "Keyboard partita in A minor"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV 827"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "Piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  sourceurltwo      = "http://world.std.com/~swmcd/steven/music/bach/Bach-AnnaMagdalena1725.pdf"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"
 footer = "Mutopia-2008/05/18-1080"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Acknowledgments
%
% Wolfgang Suppan <wsu@chello.at>

\include "english.ly"

upper = \relative c'
{
  \clef treble 
  \key a \minor
  \time 3/8

  r16 a' b gs a c      | % 1
  d,16 b' e, d c b     | % 2
  c8 e a ~             | % 3
  a8 gs b ~            | % 4
  b16 a gs a b c       | % 5
  d16 f b, f' e d      | % 6
  c8 b16 a f'8 ~       | % 7

  f8 e16 d g8          | % 8
  e16 c d b c e        | % 9
  a16 b, c a b d       | % 10
  g16 a, b gs a c      | % 11
  f8 d g,              | % 12
  e'8 c f,             | % 13
  d'16 e, f d e gs     | % 14
  c8 b a               | % 15

  gs16 a b f e d       | % 16
  c16 e f d e a        | % 17
  b16e, f d e b'       | % 18
  c16 e, f d e c'      | % 19
  b16 a gs b e,8       | % 20
  r16 e' f d e c       | % 21
  b16 e f d e b        | % 22
  a e' f d e a,        | % 23

  gs16 b e, c' d b     | % 24
  c16 e a, gs a c      | % 25
  fs,16 a d, b' c a    | % 26
  b16 d g, fs g b      | % 27
  e,16 g c, a' b g     | % 28
  a16 c fs, e fs a     | % 29
  ds,16 fs b, g' a fs! | % 30
  g8 b e ~             | % 31

  e8 ds fs ~           | % 32
  fs16 e fs ds e g     | % 33
  a,16 fs' b, a g fs   | % 34
  g8 fs16 e c'8 ~      | % 35
  c8 b16 a d8          | % 36
  b16 c d e fs g       | % 37
  a16 c fs, c' b a     | % 38
  g8 b e,              | % 39

  c8 a' d,             | % 40
  b8 g' c,             | % 41
  a16 fs b e, fs a     | % 42
  d16 e, fs ds e g     | % 43
  c16 ds, e cs ds! fs  | % 44
  b16 e, a b, c a      | % 45
  b16 ds fs a g fs     | % 46
  g16 b c a b e        | % 47

  fs16 b, c a b fs'    | % 48
  g16 b, c a b g'      | % 49
  fs16 e ds fs b,8 ~   | % 50
  b8 e16 fs g8         | % 51
  a,8 g16 fs g a       | % 52
  b16 g a fs g e'      | % 53
  fs,4. \prall ~       | % 54
  fs16 b e ds e g      | % 55

  c,16 e a, fs' g e    | % 56
  fs16 a d, cs d fs    | % 57
  b,16 d g, e' fs ds   | % 58
  e16 g c, b c e       | % 59
  a,16 c fs, ds' e cs  | % 60
  ds16 fs b, g' a fs   | % 61
  g4. ~                | % 62
  g16 e fs ds e c'     | % 63

  b16 e, fs ds e b'    | % 64
  a8 fs8. e32 fs       | % 65
  e4. ~                | % 66
  e16 b cs e g d       | % 67
  e16 g bf g a f       | % 68
  g16 e cs bf a g'     | % 69
  f4. ~                | % 70
  f16 a, b d f c       | % 71

  d16 f af f g e       | % 72
  f16 d b af g f'      | % 73
  e4. ~                | % 74
  e16 a b gs a c       | % 75
  d,16 gs a fs gs b    | % 76
  c,16 a' f! d b d     | % 77
  gs,8. fs16 e8        | % 78
  r16 e' f d e c       | % 79

  b16 e f d e b        | % 80
  a e' f d e a,        | % 81
  gs16 b e, c' d b     | % 82
  c16 e a, f' g e      | % 83
  f16 a d, c d f       | % 84
  b, d g, e' f d       | % 85
  e16 g c, b c e       | % 86
  a,16 c f, d' e c     | % 87

  d16 f b, a b d       | % 88
  gs,16 b e, c' d b    | % 89
  c16 e a, gs a c      | % 90
  d16 f a, gs a d      | % 91
  e16 g a, gs a e'     | % 92
  f4. ~                | % 93
  f16 a, b gs a f'     | % 94
  e a, b gs a e'       | % 95

  d8 b8. a32 b         | % 96
  a16 e f d e a        | % 97
  b16 e, f d e b'      | % 98
  c16 e, f d e c'      | % 99
  b16 a gs fs e d      | % 100
  c8 a' gs             | % 101
  d8 a' gs             | % 102
  e8 a c ~             | % 103

  c16 a b gs a c       | % 104
  f4. ~                | % 105
  f16 d e cs d f       | % 106
  b4. ~                | % 107
  b16 c, d b c e       | % 108
  a16 b, c a b d       | % 109
  g16 a, b gs a c      | % 110

  f8 d g,!             | % 111
  e' c f,              | % 112
  d'16 e, f d e gs     | % 113
  c16 ds, e cs ds fs   | % 114
  a16 fs ds c! b a'    | % 115
  gs16 b d! f! e8 ~    | % 116
  e16 a, c b a gs      | % 117
  a4. \fermata         | % 118
}

lower =
{
  \clef bass
  \key a \minor
  \time 3/8

  a8 a, a ~ 	       	 | % 1
  a gs e    	       	 | % 2
  r16 a b gs a c'      	 | % 3
  d16 b e d c b,       	 | % 4
  c8 e a ~             	 | % 5
  a8 gs b ~            	 | % 6
  b16 a gs a b c'      	 | % 7

  d'16 f' b f' e' d'   	 | % 8
  c'8 e' a             	 | % 9
  f'8 d' g             	 | % 10
  e'8 c' f             	 | % 11
  d'16 b c' a b d'     	 | % 12
  g'16 a b g a c'      	 | % 13
  f'16 gs a fs gs b    	 | % 14
  e'16 a d' e f d      	 | % 15

  e8 gs e              	 | % 16
  a a, a               	 | % 17
  r16 gs a fs gs e     	 | % 18 the rest is missing in the source
  a8 a, c              	 | % 19
  e16 f e d c b,       	 | % 20
  a,8 a a,             	 | % 21
  g,8 g g,             	 | % 22
  f,8 f f,             	 | % 23

  e,8 gs, e,           	 | % 24
  a,8 b, c             	 | % 25
  d8 fs d              	 | % 26
  g8 a b               	 | % 27
  c'8 e c              	 | % 28
  fs8 g a              	 | % 29
  b8 ds b,             	 | % 30
  e16 e' fs' ds' e' g' 	 | % 31

  a16 fs' b a g fs     	 | % 32
  g8 b, e ~            	 | % 33
  e8 ds fs ~           	 | % 34
  fs16 e ds e fs g     	 | % 35
  a16 c' fs c' b a     	 | % 36
  g8 fs16 e c'8 ~      	 | % 37
  c'8 b16 a d'8        	 | % 38
  b16 g a fs g b       	 | % 39

  e'16 fs g e fs a     	 | % 40
  d'16 e fs d e g      	 | % 41
  c'8 a d              	 | % 42
  b8 g c               	 | % 43
  a16 b, c a, b, ds    	 | % 44
  g8 fs e              	 | % 45
  ds8 b, ds            	 | % 46
  e8 e, e ~            	 | % 47

  e16 ds e cs ds b,    	 | % 48
  e8 e, e              	 | % 49
  b,16 c b, a, g, fs,  	 | % 50
  g,16 b, c a, b, g,   	 | % 51
  fs,16 b, c a, b, fs,	 | % 52
  e,16 b, c a, b, e,     | % 53
  ds,16 fs, b, g, a, fs, | % 54
  g,8 fs, e,             | % 55

  a,8 c a,               | % 56
  d8 e fs                | % 57
  g8 b g                 | % 58
  c'8 e c                | % 59
  fs8 a fs               | % 60
  b8 ds b,               | % 61
  e16 e' fs' ds' e' g'   | % 62
  a8 c' fs               | % 63

  g8 b e                 | % 64
  c'8 a b                | % 65
  e16 fs g a bf d        | % 66
  cs8 e cs               | % 67
  a,4 r8                 | % 68
  e,8 a, cs              | % 69
  d16 e f g af c!        | % 70
  b,8 d b,               | % 71

  g,4 r8                 | % 72
  d,8 g, b,              | % 73
  c16 d e b, c a,        | % 74
  f,8 f r                | % 75
  b,8 b r                | % 76
  a8 d f                 | % 77
  e16 f e d c b,         | % 78
  a,8 a a,               | % 79

  g,8 g g,               | % 80
  f,8 f f,               | % 81
  e,8 gs, e,             | % 82
  a,8 c a,               | % 83
  d8 e f                 | % 84
  g8 b, g,               | % 85
  c8 d e                 | % 86
  f8 a f                 | % 87

  b,8 d b,               | % 88
  e8 gs e                | % 89
  a8 c' a                | % 90
  f8 e d                 | % 91
  cs8 b, cs              | % 92
  d16 f a e f a          | % 93
  d'8 f' b               | % 94
  c'8 e' a               | % 95

  f8 d e                 | % 96
  a8 a, a ~              | % 97
  a16 gs a fs gs e       | % 98
  a8 a, a                | % 99
  e16 f e d c b,         | % 100
  a,16 e f d e a,        | % 101
  b,16 e f d e b,        | % 102
  c16 e f d e c          | % 103

  d4. ~                  | % 104
  d16 b, c a, b, d       | % 105
  gs4. ~                 | % 106
  gs16 e f d e gs        | % 107
  c'8 e' a               | % 108
  f'8 d' g               | % 109
  e'8 c' f               | % 110

  d'16 b c' a b d'       | % 111
  g'16 a b gs a c'       | % 112
  f'16 gs a fs gs b      | % 113
  e'16 fs gs e fs a      | % 114
  ds8 fs ds              | % 115
  e16 d! b, gs, b, d     | % 116
  c8 d e                 | % 117
  a,4. \fermata          | % 118
}

\score 
{
  \new PianoStaff 
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  
  \layout { }
  \header { piece = "1. Prelude" }
  \midi   { }
}
