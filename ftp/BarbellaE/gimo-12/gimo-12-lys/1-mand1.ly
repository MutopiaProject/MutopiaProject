\version "2.16.0"

% Notes:
% - The last rest in the last measure is a quarter in the manuscript, not an eighth as
%   you could expect
% - The slurs between 32th in measures 65 and 70 are not present in the manuscript, and
%   the slur in measure 69 goes from the g to the es. I have assumed that all 32ths 
%   should be slurred in the same way.
Theme =  \relative c'' {
  <<{e8 |
  e f f g |
  g4 e8 g |
  f e f d |
  s4 s8 e8 |
  e f f g |
  g4 e8 g |
  f e f d} \\

  {c8 |
  c d d e |
  e4 c8 e |
  d c d b |
  c16 b c d c8 c |
  c d d e |
  e4 c8 e |
  d c d b}>>
}

IMandI =  \relative c'' {
  \clef "treble"
  \key c\major
  \time 2/4

  \repeat "volta" 2 {
  \partial 8
  %page 2
  \Theme
  %8
  <c e, g,>4 r4 |
  }
  \repeat "volta" 2 {
  g'4 g |
  g g |
  g g |
  %12  
  g g |
  g2 | g | g |
  %16
  g4 r8
  }
  \repeat "volta" 2 {
  \Theme | <<e4 \\ c>>  r4 |
  }
  \repeat "volta" 2 {
  %25
  g' es | d g, |
  c8 d es fis |
  % page 3
  %28
  g4 g, | g' es | d g, |
  c8 d es fis | g2 |
  }
  \repeat "volta" 2 {
  %33
  g,16 g, g' g, f' g, f' g, |
  es' g, es' g, c g c g |
  g'16 g, g' g, f' g, f' g, |
  %36
  es' g, es' g, c g c g |
  g'16 g, g' g, f' g, f' g, |
  es' g, es' g, c g c g |
  es' g, es' g, c4 |
  %40
  <<as''2 \\ b,!>> |
  <<g'4 \\ c,>> as'16 f es d |
  es32(  d) c8. d4 |
  c2 |
  %44
  <<as'2 \\ b,!>> |
  <<g'4 \\ c,>> as'16 f es d |
  es32(  d) c8. d4 |
  c4 r8 
  }
  \repeat "volta" 2 {
  \Theme
  <c e,>4 r8
  }
  \repeat "volta" 2 {
  % page 4
  g'8 |
  %56
  c, es g c |
  b8. as16 g8 as |
  g f es d |
  es d16 es c8 g'8 |
  %60
  c, es g c |
  b8. as16 g8 f |
  es d16 c es8 fis |
  g4 r4 |
  }
  \repeat "volta" 2 {
  %64
  c,4 bes' |
  as32(  g) f8. r4 |
  c4 bes' |
  as32(  g) f8. r4 |
  %68
  bes,4 as' |
  g32(  f) es8. r4 |
  bes4 as' |
  g32(  f) es8. r8 g8 |
  %72
  g es r g |
  g d r g |
  c, d es fis |
  g4. g8 |
  %76
  g es r g |
  g d r g |
  c, d es fis |
  g2 |
  }

  %80
  \repeat "volta" 2 {
  <<as2 \\ b,!>> |
  <<g'4 \\ c,>> as'16 f es d |
  es32(  d) c8. d4 |
  %84
  c2 | 
  <<as'2 \\ b,!>> |
  <<g'4 \\ c,>> as'16 f es d |
  es32(  d) c8. d4 |
  %84
  c4 r8 <<{e8 |
  e f f g |
  g4 e8 g |
  f e f d |
  s4 s8 e8 |
  e f f g |
  g4 e8 g |
  f e f d} \\

  {c8 |
  c d d e |
  e4 c8 e |
  d c d b |
  c16 b c d c8 c |
  c d d e |
  e4 c8 e |
  d c d g,}>>

  %page 5
  %96
  c4 g'16 e g e |
  f8 d f16 d f d |
  e8 c e16 c' e, c' |
  d, c' d, c' d, b' d, b' |
  %100
  c4 g,16 e g e |
  f8 d f16 d f d |
  e8 c e16 c' e, c' |
  d, c' d, c' d, b' d, b' |
  %104
  c c e c g'8 g, |
  c16 c e c g'8 g, |
  <<{c c c c} \\ e,2 g,>> |
  <c' e, g,>4 r4^\fermata \bar "|."
  }
}
