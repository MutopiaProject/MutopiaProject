\version "2.18.2"

\header {
  title = "Fuga XII"
  composer = "Johann Sebastian Bach"
  opus = "BWV 857"
  mutopiatitle = "Das Wohltemperierte Clavier I, Fuga XII"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  date = "1722"
  source = "Bach-Gesellschaft Ausgabe, Band 14, Breitkopf und Härtel, 1866, Plate B.W.XIV, pp.46-47"
  style = "Baroque"
  maintainer = "Sven Reichard"
  maintainerEmail = "sven,reichard#freenet,de"
  version = "2.18.2"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  footer = "Mutopia-2018/06/04-2225"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2018 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
 }

staffup       = { \change Staff = "up" \voiceTwo }
staffdown     = { \change Staff = "down" \voiceOne  }

\include "articulate.ly"
global = {  
 \key f \minor
 \time 4/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Soprano

soprano = \new Voice \relative c''{
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
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
  g8 f4 es!8 d es16 f g f e d |
				%29
  c4 r16 bes as g f4 r16 f g as |
  bes4. as16 g as4 r |
  r8 ges'16 f es des c bes as8 bes16 c des8 r |
%%%%%
				%32
  r8 es16 des c bes as ges f8 g16 a bes8 r |
  r c16 bes as g f es des4~des16 f bes as |
				% 34
  g4 as~as16 g as bes c4 |
  r16 as bes c des4 r16 c des es f4 |
  r16 es f g as4~as8 g16 f g4~|
				%37
  g16 c, d es f4~f8 es16 d es4~ |
  es16 as, bes c des4~des8 c16 bes c4~ |
				%39
  c8 f, bes as g4~g16 g as bes |
  c4~c16 c d es f4~f16 bes, es8~ |
  es16 es d c d es c d es c d es f es d c |
  bes2~bes16 as g f es4~|
  es16 es f es d c' bes as g8 bes es4~|
  es16 g f es d4~d8 g, c4~ |
%%%
  c16 es d c bes4~ bes8 es, as4~|
  as16 c bes as g4~g16 f as g f es d c |
%%%
				%47
  b4 g'' as g |
  fis b c f, |
  e es d2~|
%%%
				%50
  d8 c16 d es2.~|
  es8 d16 es f2.~|
  f16 d e g bes,2.~|
%%%
				%53
  bes8 as g4 f16 e f g as4 |
  r16 f g as bes4 r16 as bes c des4|
  r16 c d e f4~f8 e16 d e4|
%%%
				%56
  f4~f16 es des c des4~des16 bes c des|
  e,8 c'~c16 g as f~f f e d e4\prall|
  f1\fermata
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Alto
%
alto = \new Voice \relative c' {
  \voiceOne
  r1|
  r1|
  r1|
  \oneVoice
  r4 f as g |
				% 5
  fis b c f, |
  e es d2 |
  c8 c16 d e8 d16 e \stemDown f  \staffdown \voiceOne e, f g as4 |
  % 8
  r16 f g as bes4 r16 \staffup  as bes c \voiceOne des4 |
  r16 c d e f4 ~ f8 e16 d e4 |
  f8 f16 g as8 as16 bes c4 ~ c16 bes as g |
				% 11
  f4 r r8 as,16 bes c4 ~ |
  c8 bes16 c des8 des16 es f2 ~ |
  \voiceTwo  f8 es16 f g4 ~ g8 f4 es8 |
				%14
  d es16 f g f e d c8 r r bes |
  c4 r8 c d c16 bes c4 ~ |
  c4 r r8 f16 es d8 d16 c |
				%17
  bes8  bes16 as g4 r8 g'16 f e8 e16 d |
  c8 c16 bes as4  r8 d'16 c b8 b16 a |
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
  des c16 bes \tieUp c4 ~ c \tieDown r |
  s1 |
%%%%
				%32
  s1 | s1 |
				% 34
  r4 es, f es |
  d g as des, |
  c ces bes2 |
				%37
  as4 r16 b' c d g,4. ges8 |
  f4 ~ f16 g! as  bes es,4 ~ es16 ges f es |
				%39
  des2~des16 bes c des es4 ~ |
  es16 es f g as4 ~ as16 c bes as g8. g16 |
  f2 c8 r r4 |
				%42
  r16 c d es f es d c bes4~bes8 a16 bes |
  c4 bes~bes8 es16 f g8 g16 as |
  bes4~bes16 as g f es d c d es8 es16 f |
%%%%
  %45
  g4~g16 f es des c bes as bes c8 c16 d |
  es4~es16 d c bes as8 \staffdown \voiceOne d,16 es f8 fis|
%%%
  g8 r \staffup \voiceTwo  r4 r8 c'4 bes8 |
  a bes16 c d c b a g4 as |
  r16 g a b c4~c8 b16 a b c b d|
%%%
  g,4 r8 g c, c'16 bes a8 bes16 c |
  f,8 bes r as g d'16 c b8 c16 d |
  g,4  r8 des c g'16 f e8 f16 g |
%%%
  c,8 f4 e8 f4 r16 g f es |
  d4 r8 des ~ des c r ges'~|
  ges f r16 f g as bes2~|
%%%
  bes16 des c bes a4 r16 c bes as g f es des |
  c1 |
  c1
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tenor
tenor = \new Voice \relative c'
{
  \staffup
  \voiceTwo
				% 1
  r4  c des  c |
  b e f
  \staffdown
  \voiceOne
  bes, |
  a as g2|
  f8 f16 g as8 as16 bes c b, c d es4 |
				% 5
  r16 c d es f4 r16 es f g as4 |
  r16 g a b c4~c8 b16 a b4\prall |
  c8 g c bes as  \staffup f'4 es8 |
				% 8
  d es16 f g f e d c4  \staffdown r16  bes as g |
  f4 r16 f g as bes4. as16 g |
  as4 r \staffup r8 c16 des es4 ~ |
				% 11
  es8 des16 es f8 f16 g as4 ~ as16 ges f es |
  des4 \staffdown r4 r8 f,16 g as8 as16 bes |
  c8 g c bes as16 r r8 r16 c, d es |
				%14
  f4 r8 g as r r16 bes as g |
  f4 r16 f g as bes4. as16 g |
  as4 r s2 |
				%17
  s1 |
  s1 |
  r4 g as g |
				%20
  fis b c f, |
  e4 es d2 |
  c4 \clef treble r8 c''16 bes a8 a16 g f8 g16 a |
				%23
  
  bes8 bes, r bes'16 as g8 g16 f es8 f16 g |
  as8 as, r as'16 g f8 f16 es des8 des16 c |
\clef bass  bes8 c16 des es8 es, as bes 16 c des4 ~ |
				%26
  des8 des16 c bes8 bes16 as g8 g16 f e8 c |
  f f'16 es des4\trill c8 c,16 d e8 d16 e |
  f e f g as4 r16 f g as bes4 |
				%29
  r16 as bes c des4 r16 c d e f4 ~ |
  f8 e16 d e4 f r8 c16 des |
  es8 es16 des ges4 ~ ges8 f16 es des8 as16 bes |
%%%%
				%32
  c8 c16 des es4 ~ es8 des16 c bes8 f16 g |
  as8 as16 bes c4 ~ c8 bes16 c des4 ~ |
				% 34
  des8 es16 des c8 des16 c bes4. as16 g |
  as8 g16 as bes as g f es8 as ~ as16 g as bes |
  c4 r16 f, g as es4 r16 g f e |
				%37
  as4 r r2 |
  s1 |

  s1 |
  r2 r4 bes |
  c bes a d |
				%42
  es as, g ges |
  f2 es4 r |
  r8 bes'16 c d c bes as g4 r|
%%%%%
				%45
  r8 g16   as bes as g f es4 r |
  r8 es16 f g f es d s4 \voiceFour c4 |
%%%%
				%47
  s8 \voiceOne g'16 a b8 a16 b c b c d es4 |
  \clef treble  r16 c d es f4 ~ f16 es f g r g, as bes |
  c4 r16 c d es f d es f g as g f |
				%50
  es f es d c8 c16 bes \clef bass a8 a16 g f8 g16 a |
  bes8 f'16 es  d8 d16 c b8 b16 a g8 a16 b |
  c8 bes16 as g8 g16 f e8 e16 d c8 d16 e |
%%%
				%53
  f g as bes c4 ~ c8 bes r as ~|
  as g16 f g bes as g f8 g16 as bes f es d |
  c4 ~ c16 d e f g4 ~ g16 a, bes c |
%%%
				%56
  des c des es f4~f16 f g as bes4~|
  bes16 bes as g as4 g2 |
  a1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bass
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
  as4 ~ as16 ges f es des8 bes16 c des8 des16 es |
  f4 ~ f16 es des c bes c des c bes as g f |
				%34
  es8 bes' c as des bes es c |
  f bes,4 es16 des c8 f ~ f16 es f g |
  as g f es d4 es8 d e c |
				%37
  f8 f16 es d8 d16 c b g a b c as bes c |
  des8 des16 c bes8 bes16 as g es f g as f g a |
				%39
  bes a bes c des bes c des es8 es16 des c8 c16 bes |
  as8 as'16 g f8 f16 es d4 es8 g |
  as f bes bes, c c'16 bes as!8 bes16 as |
				%42
  g8 bes,16 c d8 c16 d es8 es16 d c8 c16 bes |
  a4 bes es r8 es16 f |
  g8 g16 as bes8 bes, c4 r8 c16 d |
%%%%%
				%45
  es8 es16 f g8 g, as4 r8 as16 bes |
  c8 c16 d es8 es, <f c'> <g b> as a |
				%47
  <g d'> r r4 r2 |
  r1 |
  r1 |

  r1 |
  r1 |
  r1 |
				%53
  r4 c des c |
  b e f bes, |
  a as g2 |
				%56
  f4~f16 f g a bes4~ bes16 des c bes |
  c1 |
  f,\fermata
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MIDI
\score {
  \articulate
  \new PianoStaff << 
    \new Staff="up" \with {midiInstrument = #"harpsichord"}
				% need to name the staves so staff change doesn't lead to warnings
    << \global \clef treble
       \soprano
       \alto
       
     >>
    \new Staff="down"\with {midiInstrument = #"harpsichord"}
    << \global \clef bass
       \tenor
       \bass
     >>
  >>
  \midi { \tempo 4=68 }

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Printed score
\score {
  \new PianoStaff << 
    \new Staff="up"
    << \global \clef treble
       \soprano
       \alto
       
     >>
    \new Staff="down"
    << \global \clef bass
       \tenor
       \bass
     >>
  >>
  \layout { }
  
}
