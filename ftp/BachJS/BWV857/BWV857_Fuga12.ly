\version "2.18.2"

\header {
  title = "Fuga XII"
  composer = "Johann Sebastian Bach"
  opus = "BWV 857"
  mutopiatitle = "Das Wohltemperierte Clavier I, Fuga XII"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiaopus = "BWV 857"
  date = "1722"
  source = "Bach-Gesellschaft Ausgabe, Band 14, Breitkopf und Haertel, 1866"
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Sven Reichard"
  version = "2.18.2"
}

\include "articulate.ly"
global = {  
 \key f \minor
 \time 4/4
}

%\parallelMusic #'( soprano alto tenor bass ) {
  %1
soprano = \new Voice \relative c''{
  \voiceOne
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 |
  s1 | s1 | s1 |
  s1 | s1 |
  r4 c des c |
				% 14
  b e f bes, |
  a as g2 ~ |
  g8 f16 g as2. ~ |
				%17
  as8 g16 as bes2.~ |
  bes16 g as c f2.~ |
  f8 es d g ~ g16 b, c d es4 |
				%20
  r16 c d es f4 r16 es f g as!4 |
  r16 g a b c4 ~ c8 b16 a b4 |
  c8 g c4 ~ c8 c 16 bes a8 a16 g |
				%23
  f8 g16 a bes4 r8 bes16 as g8 g16 f |
  es8 f16 g as4 r8 as16 g f8 f16 es |
  des4. es16 des c8 c16 bes as4 ~ |
				%26
  as8 bes16 c des4 ~ des16 c des bes g'4 ~ |
  g16 c, des c f4 ~ f8 e16 f g4 ~ |
  g8 f4 es8 d es16 f g f e d |
				%29
  c4 r16 bes as g f4 r16 f g as |
  bes4. as16 g as4 r |
  r8 ges'16 f es des c bes as8 bes16 c des8 r |
  }
alto = \new Voice \relative c' {
  \voiceOne
  r1|
  r1|
  r1|
  r4 f as g |
				% 5
  fis b c f, |
  e es d2 |
  c8 c16 d e8 d16 e f \change Staff = "down"  e, f g as4 |
  % 8
  r16 f g as bes4 r16 as bes c des4 |
  r16 c d e f4 ~ f8 e16 d e4 |
  f8 f16 g as8 as16 bes c4 ~ c16 bes as g |
				% 11
  f4 r r8 as,16 bes c4 ~ |
  c8 bes16 c des8 des16 es f2 ~ |
  \voiceTwo
  f8 es16 f g4 ~ g8 f4 es8 |
				%14
  d es16 f g f e d c8 r r bes |
  c4 r8 c d c16 bes c4 ~ |
  c r r2 |
				%17
  s1 |
  s2 r8 d'16 c b8 b16 a |
  g8 g16 a b8 a16 b c4 ~ c8 bes |
				%20
  a8 b16 c d c b a g4 r16 f es d |
  c4 r16 c' d es f4. es16 d |
  es8 c16 d es2. ~ |
				%23
  es8 bes16 c des2.~ |
  des8 as16 bes c2. ~ |
  c8 bes16 as g2 ~ g8 f16 e |
				%26
  f4. g16 as bes4 ~ bes16 as bes g |
  as4~ as16 g as f c'8 g c bes |
  as bes c16 c, d es f4 r8 g |
				%29
  as4 r16 bes8. c4 r8 c |
  des c16 bes c4 ~ c r |
  s1 |
  
  
}

tenor = \new Voice \relative c'
{
				% 1
  \voiceTwo r4  c des  c |
  b e f   \change Staff = "down" \voiceOne bes, |
  a as g2|
  f8 f16 g as8 as16 bes c b, c d es4 |
				% 5
  r16 c d es f4 r16 es f g as4 |
  r16 g a b c4~c8 b16 a b4\prall |
  c8 g c bes as \change Staff = "up" f'4 es8 |
				% 8
  d es16 f g f e d c4 r16 bes as g |
  f4 r16 f g as bes4. as16 g |
  as4 r r8 c16 des es4 ~ |
				% 11
  es8 des16 es f8 f16 g as4 ~ as16 ges f es |
  des4 r4 r8 f,16 g as8 as16 bes |
  c8 g c bes as16 r r8 r16 c, d es |
				%14
  f4 r8 g as r r16 bes as g |
  f4 r16 f g as bes4. as16 g |
  as4 r r8 f'16 es d8 d16 c |
				%17
  bes8 \change Staff = "down" bes16 as g4 r8 g'16 f e8 e16 d |
  c8 c16 bes as4 s2 |
  r4 g as g |
				%20
  fis b c f, |
  e4 es d2 |
  c4 r8 c''16 bes a8 a16 g f8 g16 a |
				%23
  
  bes8 bes, r bes'16 as g8 g16 f es8 f16 g |
  as8 as, r as'16 g f8 f16 es des8 des16 c |
  bes8 c16 des es8 es, as bes 16 c des4 ~ |
				%26
  des8 des16 c bes8 bes16 as g8 g16 f e8 c |
  f f'16 es des4\trill c8 c,16 d e8 d16 e |
  f e f g as4 r16 f g as bes4 |
				%29
  r16 as bes c des4 r16 c d e f4 ~ |
  f8 e16 d e4 f r8 c16 des |
  es8 es16 des ges4 ~ ges8 f16 es des8 as16 bes |
  
  
}

bass = \new Voice \relative c {
  \voiceTwo
  r1|
  r1|
  r1|
  r1|
				% 5
  
  r1|
  r1|
  r4 c des c |
				% 8
  b e f bes, |
  a as g2 |
  f4 r8 f'16 g as8 as16 bes c8 c, |
				% 11
  des4 r8 des16 es f8 f16 g as8 as, |
  bes4 r8 bes16 c des8 des16 es f8 f, |
  c'8 c16 d e8 d16 e f e, f g as4 |
				%14
  r16 f g as bes4 r16 as bes c des4 |
  r16 c d e f4 ~ f8 e16 d e4 |
  f r8 f16 es d8 d16 c bes8 c16 d |
				%17
  es4 r8 g16 f e8 e16 d c8 d16 e |
  f4 r8 d16 c b8 b16 a g8 a16 b |
  c4 r r2 |
				%20
  r1 | r1 | r1 |
				%23
  r1 | r1 | r1 |
				%26
  r1 |
  r2 r4 c |
  des!  c b e |
				% 29
  f bes, a as |
  g2 f8 f'16 g as8 as16 bes |
  c4 ~ c16 bes as ges f8 des16 es f8 f16 g |
%%%%%%
  				%32
  
}


\score {
  \articulate
    \new Staff \with {midiInstrument = #"harpsichord"}
    << \global \clef treble
       \relative c'' \soprano
       \relative c' \alto
       \relative c' \tenor
       \relative c \bass
  >>
  
  \midi { \tempo 4=68 }

}
\score {
  \new PianoStaff << 
    \new Staff="up"
    << \global \clef treble
       \relative c'' \soprano
       \relative c' \alto
       \relative c' \tenor
     >>
    \new Staff="down"
    << \global \clef bass
       \relative c \bass
     >>
  >>
  \layout { }
  

}