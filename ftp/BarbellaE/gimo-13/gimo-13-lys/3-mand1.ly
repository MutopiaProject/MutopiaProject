\version "2.16.0"

IIIMandI =  \relative c'' {
  \clef "treble"
  \time 3/4
  \key g\major

  %page 8

  \repeat "volta" 2 {
  <d d, g,>2 <g b,>4 | <g b,> <fis a,> <e a,> |
  %3
  % Note: the first d8 e are d16 e in the original, but that makes the measure too short.
  <<{d8 e d4 c | c b a | b8. a32 b c4 a | b8. a32 b c4 a} \\
    {d,2. | d | d | d}>> |
  %7
  b'8 d g d c b | b8. a16 a2 | <d d,> <fis a,>4 |
  <fis a,>8 e d cis d4 | <fis a, d,>2 a4 | <a a,>8 g fis e <fis d,>4 |
  %13
  <ais, d,> b c | gis a g' | fis8 a fis d a cis | <d d,>2 <d d,>4 |
  <ais d,> b c | gis a <a' a,> | fis8 a fis d e cis | d4 d,2
  }

  %21
  \repeat "volta" 2 {
  d'4 e f | gis,2 a4 | d8 f e d c b | c a a,2 | c'4 d e | fis,2 g4 |
  %27
  c8 e d c b a | b g g,2 | d''4 b g | e4. fis8 g4 | c a fis |
  %32 page 9
  d'4. e8 fis4 | b, g e | c'4. d8 e4 | a, fis d | b'4. c8 c4 |
  %37
  <d d, g,>2 <<{g4 | g e e | d8. d16 d4 c | c b a | b8. a32 b c4 a |
    b8. a32 b c4 a} \\ {b4 | b a c | d,2. | d | d | d}>> |
  %43
  b'8 d b g a fis | <g g,>2 g,4
  }

  %45
  \repeat "volta" 2 {
  \key g\minor
  g' bes d | es2 d4 | f,2 g4 | a2 d,4 | g bes! d |
  es!2 d4 | c8 es! d c bes! a | g2 g,4 |
  }

  %53
  \repeat "volta" 2 {
  f''4 bes, g' | bes, a bes | c8 d es c d bes | c2 f,4 | f' d bes |
  %58
  g' es c | d8 f d bes c a | bes2 d4 | b8 c d es f g |
  as g f es d c | b as g f es d | es4 d8 es c4 | cis'8 d e fis g ais |
  %66
  bes a g f e d | cis bes! a g fis e |
  %68 page 10
  fis4 es8 fis d4 | g4 bes! d | es2 d4 | fis,2 g4 | a2 d,4 | g bes! d |
  %74
  es!2 d4 | c8 es! d c bes a | g2 g'4 | es!(  c) g' | d(  bes!) g' |
  %79
  c,8 es d c bes a | a4(  bes) g-| | es!(  c) g'-| | d bes! g'-|
  c,8 es d c bes a | g2. \bar "|."
  }
}

