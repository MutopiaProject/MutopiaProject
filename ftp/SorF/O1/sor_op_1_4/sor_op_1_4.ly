\version "2.16.1"
\header {
  mutopiatitle = "Divertissements pour la guitare, n°4"
  mutopiacomposer = "SorF"
  mutopiaopus = "O 1.4"
  mutopiainstrument = "Guitar"
  mutopiasource = "Danish Royal Library early 19th Century edition"
  date = "1820s"
  source = "Golden Music Press/GFA/Frederic Noad facsimile edition"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  moreInfo = "<p>The maintainer has created MP3 and OGG Vorbis audio files from the MIDI output (which is available above). These are computer generated but will probably sound better than playing the MIDI file on your own system, depending on your setup. Download them:</p><ul><li><a href=\"../ftp/SorF/O1/sor_op_1_4/sor_op_1_4.mp3\">sor_op_1_4.mp3</a></li><li><a href=\"../ftp/SorF/O1/sor_op_1_4/sor_op_1_4.ogg\">sor_op_1_4.ogg</a></li></ul>"
  filename = "sor_op1_4.ly"
  dedication = "Composés et dédiés à Mrs Davenport"
  title = "Six divertissements pour la guitare"
  subtitle = "n°4"
  opus = "Opus 1 n°4"
  instrument = "Guitarre"
  meter = "Andante"
  composer = "Fernando Sor (1778-1839)"
  enteredby = "Mark Van den Borre"

 footer = "Mutopia-2013/03/23-454"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

upperVoice =  \relative c''' {
 \repeat volta 2 {
  \voiceOne
  <g e>4 <g e> <g e>|					%1
  g4.. c16 <c e,>4|					%2
  <e, c> <e c> g8. f16					%3
  e4 \grace e16 d8. c16 c4|				%4
  <e c> <e c> <e c>|					%5
  <d c> <c' fis,> <b g>|				%6
  \oneVoice
  \appoggiatura b16^\p <a e c>8[ r16 <gis f d> <a e c>8 r16 <b e, gis,> <c e, a,>8 r16 <fis, c a d>]|	%7 facsimile says <fis, c a e>
  \voiceOne
  <fis c>4 <g b,> r|					%8
 }
 \repeat volta 2 {
  <g e> <f d> <e cis>|					%9
  <f d>4.. <g e>16 <a f>4|				%10
  d, <e c> <f b,>|					%11
  <e c c,>4.. <f d>16 <g e>4|				%12
  <c e,> e, <fis c>\trill|				%13
  g <f! d> <e c>|					%14
  \oneVoice
  \grace e16^\p <d a f>8[ r16 <cis a e> <d a f>8 r16 <e a, cis,> <f a, d,>8 r16 <b, f g,>]|%15
  <b f>4 <c e,> r|					%16
 }
}

middleVoice =  \relative c'' {
 \voiceThree
 \repeat volta 2 {
  s2.|s|s|s|s|s|s|s|
 }
 \repeat volta 2 {
  s2.|							%9
  s2.|							%10
  b8[ g] e[ g] d[ g]|					%11
  s2.|							%12
  s2.|							%13
  s2.|							%14
  s2.|							%15
  s2.|							%16
 }
}
lowerVoice =  \relative c' {
 \repeat volta 2 {
  \voiceTwo
  c4 c' c|						%1
  c, c' c|						%2
  c, a' <d f,>|						%3
  <c g> <b f g,> <g e c>|				%4
  c, a' g|						%5
  fis d g|						%6
  s2.|							%7
  g4\> g,\! r|
 }
 \repeat volta 2 {
  g'8[ g g g g g]|
  g[ g g g g g]|
  f4 e d|
  c8 g' g4 r|
  r c a|
  <b g> <g b,> <g c,>|
  s2.|
  c,2 s4 |
 }
}
\score {
 \context Staff <<
  \time 3/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override Staff.NoteCollision #'merge-differently-headed = ##t
  \context Voice = "one" \upperVoice
  \context Voice = "two" \middleVoice
  \context Voice = "three" \lowerVoice
  >>
  \layout{}
  \midi{}
}
