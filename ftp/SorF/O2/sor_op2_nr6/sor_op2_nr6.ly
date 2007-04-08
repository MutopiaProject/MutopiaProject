% This lilypond file is writen with portability to future version in mind. Tweaks are kept down to a strict minimum.
% This file is commented. You will find some keywords near relevant source lines:
% EDIT: things I edited
% LAYOUT: layout tweaks
% TODO: unfinished things

% Enjoy! Share the beauty!
% Mark Van den Borre <mark@markvdb.be>

\version "2.6.3"

\header {
 mutopiatitle = "Six Divertissements op. 2 n�6 Siciliana"
 mutopiacomposer = "SorF"
 mutopiaopus = "O 2"
 mutopiainstrument = "Guitar"
 date = "18xx"
 source = "Simrock Berlin 19th century edition"
 style = "Romantic"
 copyright = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer = "Mark Van den Borre"
 maintainerEmail = "mark@markvdb.be"
 maintainerWeb = "http://markvdb.be"
 lastupdated = "2005/08/11"
 title = "Siciliana"
 composer = "Fernando Sor"
 
 piece = " "
 footer = "Mutopia-2005/08/14-591"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
 
 atbegindocument = "\fontfamily{min}"
}

melody =  \relative c'' {
 \stemUp
 \key e \minor
 \repeat volta 2 {
  \partial 8 b8|
  \grace {e32([ fis)]} g8. fis16 e8 e dis b|
  e4 fis8\trill g8 r b,|
  <b' g>8. <a fis>16 <g e>8 <a fis>4 <a fis>8|
  \grace {a32([ g)]}<fis dis>4 r8 r4 b,8|
  g'8. fis16 e8 d4 d8|
  <d b>4 \grace {d16} <c a>8 <b g>4 <b gis>8|%EDIT d16 c slur in Simrock source
  <c a>8. <d b>16 <e c>8 <b g>4 <a fis>8|
  \partial 8*5 g4 d8 b8[] r8
 }
 
 \repeat volta 2 {
  \partial 8 d'8|
  b'8. c16 b8 a8. b16 a8|
  a4 gis8 e4 e8|
  a4 a8 b4 b8|
  \grace {a32[ b]} c4. r4 c8|%EDIT slur in Simrock source
  c8. a16 f8 f4 e8|
  dis4. e4 b8|
  a'8. b16 a8 g4 <b g>8|
  <fis dis>4 r8 r4 b,8|
  \grace {e32([ fis)]} g8. fis16\turn e8 e dis b|%LAYOUT TODO turn should be between and below g8 fis16
  e4 fis8 g8 r b,|
  <b' g>8. <a fis>16 <g e>8 <a fis>4 <a fis>8|
  \grace {a32([ g)]}<fis dis>4 r8 r4 fis8|
  gis4 gis8 a4 g8|
  \appoggiatura {g16} fis8. e16 fis8 g4 g8|
  f8. g16 f8 e4 dis8|
  \partial 8*5 e4 <g b,>8 <e g,>4|
 }

 \set Staff.printKeyCancellation = ##f
 %TODO allign "Maggiore" to the right of the rehearsal mark, above the sharps
 %\once \override Score.RehearsalMark #'self-alignment-X = #left
 \key e \major \repeat volta 2  \mark \markup { Maggiore }{
  \partial 8 b8|
  \grace {e32\p([ fis)]} gis8. fis16 e8 \grace {e32([ fis)]} gis8. fis16 e8|
  b'4. b8. gis16 e8|
  fis8. gis16 fis8 fis dis! b|
  e4 gis8 b,4 b8|\pageBreak
  \grace {e16([ fis)]} gis8. fis16 e8 \grace {e16([ fis)]} gis8. fis16 e8|
  b'4. ~ b4 ais8|
  b4 cis8 fis,8. gis16 ais8|
  <b dis,>4 <a! fis>8 <gis e>4 <fis dis a>8|
  \grace {e32\p([ fis)]} gis8. fis16 e8 \grace {e32([ fis)]} gis8. fis16 e8|
  b'4. b8. gis16 e8|
  fis8. gis16 fis8 fis dis! b|
  e4 gis8 b,4 b8|
  \grace {e32([ fis)]} gis8. fis16 e8 \grace {e32([ fis)]} gis8. fis16 e8|
  b'4. ~ b4 ais8|
  b4 cis8 fis,8. gis16 ais8|
  b4 r8 r4 b,8|
  \grace {fis'32[( gis])} a8. gis16 fis8 \grace {fis32[( gis])} a8. gis16 fis8|
  e4. b4 b8|
  \grace {fis'32[( gis])} a8. gis16 fis8 \grace {fis32[( gis])} a8. gis16 fis8|
  e4 r8 r4 e8|
  a8. b16 a8 gis4 gis8|
  fisis!4. r4 gis8|%TODO double sharp doesn't render: lilypond bug?
  a8. b16 a8 gis4 gis8|
  g4 s8 s4 cis8|
  g4 s8 s4 cis8|
  fis,4 s8 s4 cis'8|
  <fis, dis!>4 s8 s4 c'8|
  <fis, dis>4 s8 s4 c'8|
  b8. e,16 fis8 gis8. a16 fis8|
  \partial 8*5 <e gis,>4 r8 r4|
 }

 \key e \minor
  \partial 8 b8|
  \grace {e32([ fis)]} g8. fis16 e8 e dis b|
  e4 fis8\trill g8 r b,|
  <b' g>8. <a fis>16 <g e>8 <a fis>4 <a fis>8|
  \appoggiatura {a32([ g)]}<fis dis>4 r8 r4 b,8|\pageBreak
  g'8. fis16 e8 d4 d8|
  <d b>4 \grace {d16} <c a>8 <b g>4 <b gis>8|
  <c a>8. <d b>16 <e c>8 <b g>4 <a fis>8|
  g4 d8 b8 r8 d'8|
  b'8. c16 b8 a8. b16 a8|
  a4 gis8 e4 e8|
  a4 a8 b4 b8|
  \grace {a32[ b]} c4. r4 c8|
  c8. a16 f8 f4 e8|
  dis4. e4 b8|
  a'8. b16 a8 g4 <b g>8|
  <fis dis>4 r8 r4 b,8|
  \grace {e32([ fis)]} g8. fis16 e8 e dis b|
  e4 fis8 g8 r b,|
  <b' g>8. <a fis>16 <g e>8 <a fis>4 <a fis>8|
  \grace {a32([ g)]}<fis dis>4 r8 r4 fis8|
  gis4 gis8 a4 g8|
  \grace {g16(} fis8.) e16 fis8 g4 g8|
  f8. g16 f8 e4 dis8|
  e4 \grace {fis16(}g8) e4 \grace {ais16(}b8)|
  e,4 g8 fis8.\trill g16 fis8|
  e4 \grace {fis16(}g8) e4 \grace {dis'16(}e8)|
  e,4 g8 fis8. g16 fis8|
  <e b g>4. s4 <g b, g>8|
  <e b g>4 s8 s4 <g b, g>8|
  <e b g e,>4 s8 s4.|
  s4. <e b g e,>4.\pp ^\markup { Naturel }|
  <e b g e e,>2.\bar "||"
}

middle = \new Voice \relative c'' {
 \stemUp
 \repeat volta 2 {
  \partial 8 s8|
  s2.|
  s2.|
  s2.|
  s2.|
  s4. a8. b16 c8|
  s2.|
  s2.|
  \partial 8*5 s4. s4
 }
 
 \repeat volta 2 {
  \partial 8 s8|
  s2.|
  e,4. gis4.|
  c8. e16 e8 d8. e16 d8|
  c8. e16 c8 s4.|
  s2.|
  s2.|
  s2.|
  b,4. s4.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  \partial 8*5 s4. s4
 }
 
 \repeat volta 2 {
  \partial 8 s8|
  s2.|
  s2.|
  b'4 b8 b4 s8|
  s2.|
  s2.|
  \stemDown s4 fis'8 eis4 s8|
  s4 <gis e>8  s4.|
  s2.|
  s2.|
  s2.|
  \stemUp b,4 b8 b4 s8|
  s2.|
  s2.|
  \stemDown s4 fis'8 s4.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  e4 e8 e4 e8|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  \partial 8*5 s4 <b gis>8 <gis e>4
 }

 \partial 8 s8
 s2.|
 s2.|
 s2.|
 s2.|
 s4. \stemUp a8. b16 c8|
 s2.|
 s2.|
 s2.|
 s2.|
 e,4. gis4.|
 c8. e16 c8 d8. e16 d8|
 c8. e16 c8  s4.|
 s2.|
 s2.|
 s2.|
 b,4. s4.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s4. b'4 b8|
 s2.|
 s2.|
 e,,4. e4 s8|
 e4. e4 s8|
 s2.|
 s2.|
 s2.|
}

bass = \new Voice  \relative c'' {
 \stemDown
 \repeat volta 2 {
  \partial 8 r8|
  <b g e,>4 <b g>8 <a fis>4 <a fis>8|
  <g e>4 <b dis,>8 <b e,>8 r r|
  e,,4 e'8 a,4 <c' a>8|
  b4 b8 b,4 r8|
  <b' g e,>4 <b g>8 fis4 fis8|
  g4 dis8 e4 d8|
  c8. b16 a8 d4 d8|
  \partial 8*5 g,4 b8 g8[] r8
 }
 
 \repeat volta 2 {
  \partial 8 r8|
  <d'' g,>4 <d g,>8 <d f,>4 <d f,>8|
  e, <d' b> <d b> gis, <d' b> <d b>|
  a4 a8 gis4 e,8|
  a4 a'8 a,4 r8|
  a4 <c' a>8 <c a>4 <c a>8|
  <c a>4 <c a>8 <b g>4 r8|
  <dis b fis>4 <dis b fis>8 <e b e,>4 <g, e,>8|
  b, ais' b b,4 r8|
  e,4 <b'' g>8 <a fis>4 <a fis>8|
  <g e>4 <b dis,>8 <b e,>4 r8|
  e,,4 e'8  a,4 <c' a>8|
  b4 b8 b,4 r8|
  #(set-accidental-style 'modern) <d' b e,,>4. #(set-accidental-style 'default)<cis a a,>4.|
  <c a d,>4. <b g>4 <d b g,>8|
  <c a a,>4 <c a a,>8 <b g b,>4 <a fis b,>8|
  \partial 8*5 <g e>4 e8 e,4
 }

 \repeat volta 2 {
  \partial 8 r8|
  <b'' gis e,>4 <b gis e,>8 <b gis e,>4 <b gis e,>8|
  <b gis e,>4 <b gis e,>8 <b gis e,>4 <b gis e,>8|  
  <a e,>4 <a e,>8 <a e,>4 <a e,>8|
  <gis e,>4 <b e,,>8 <gis e,>4 <gis e,>8|
  <b gis e,>4 <b gis e,>8 <b gis e,>4 <b gis e>8|
  <fis dis>4 d8 cis4 <e' cis fis,>8|
  <dis b gis>4 e,8 <dis' b fis>4 <e cis fis,>8|
  b4 b8 b4 b,8|
  <b' gis e,>4 <b gis e,>8 <b gis e,>4 <b gis e,>8|
  <b gis e,>4 <b gis e,>8 <b gis e,>4 <b gis e,>8|  
  <a e,>4 <a e,>8 <a e,>4 <a e,>8|
  <gis e,>4 <b e,,>8 <gis e,>4 <gis e,>8|
  <b gis e,>4 <b gis e,>8 <b gis e,>4 <b gis e>8|
  <fis dis>4 d8 <eis' cis,>4 <e cis fis,>8|
  <dis b gis>4 <gis e e,>8 <dis b fis>4 <e cis fis,>8|
  <dis b>4 b8 b4 b8|
  <dis! a fis b,>4 <dis a b,>8 <dis a b,>4 <dis a b,>8|
  <gis, b,>4 <gis b,>8 <gis b,>4 <gis b,>8|
  <dis'! a b,>4 <dis a b,>8 <dis a b,>4 <dis a b,>8|
  <gis, e,>4 e8 e4 e8|
  <e' cis>4 <e cis>8 <e b>4 <e b>8|
  ais,4. r4 b8|
  <e cis>4 <e cis>8 <e b>4 <e b>8|
  <e ais,>4 r8 r4 r8|
  <e ais,>4 r8 r4 r8|
  <e ais,>4 r8 r4 r8|
  a,!4 r8 r4 r8|
  a4 r8 r4 r8|
  <b gis>4 <cis a>8 <e b>4 <dis a b,>8|
  \partial 8*5 e,,4. r4
 }

  \partial 8 r8|
  <b'' g e,>4 <b g>8 <a fis>4 <a fis>8|
  <g e>4 <b dis,>8 <b e,>8 r r|
  e,,4 e'8 a,4 <c' a>8|
  b4 b8 b,4 r8|
  <b' g e,>4 <b g>8 fis4 fis8|
  g4 dis8 e4 d8|
  c8. b16 a8 d4 d8|%EDIT Added d4.
  g,4 b8 g8[] r8 r8|
  <d'' g,>4 <d g,>8 <d f,>4 <d f,>8|
  e, <d' b> <d b> gis, <d' b> <d b>|
  a4 a8 gis4 e,8|
  a4 a'8 a,4 r8|
  a4 <c' a>8 <c a>4 <c a>8|
  <c a>4 <c a>8 <b g>4 r8|
  <dis b fis>4 <dis b fis>8 <e b e,>4 <g, e,>8|
  b, ais' b b,4 r8|
  e,4 <b'' g>8 <a fis>4 <a fis>8|
  <g e>4 <b dis,>8 <b e,>4 r8|
  e,,4 e'8  a,4 <c' a>8|
  b4 b8 b,4 r8|
  #(set-accidental-style 'modern) <d' b e,,>4. #(set-accidental-style 'default)<cis a a,>4.|
  <c a d,>4. <b g>4 <d b g,>8|
  <c a a,>4 <c a a,>8 <b g b,>4 <a fis b,>8|
  <g e,>4 <b g e,>8 <b g e,>4 <b g e,>8|
  <b g e,>4 <b g e e,>8 <a dis, e,>4 <a dis, e,>8|
  <b g e e,>4 <b g e e,>8 <b g e,>4 <b g e,>8|
  <b g e,>4 <b g e e,>8 <b a dis, e,>4 <b a dis, e,>8|
  e,,8. ais16 b8 e,4 e'8_\markup { Perdendosi }|
  e,8. ais16 b8 e,4 e'8|
  s4 b'8_\markup { Armonica } e g b|
  e4 r8 s4.|
  s2.
}		

\score {
    \context Staff = "guitar" <<
      \time 6/8
      \context Voice = "upper" \melody
      \context Voice = "inbetween" \middle
      \context Voice = "lower" \bass
      >>
  \layout { }
  \midi { }
}
