\version "2.16.1"
\header {
  mutopiatitle = "Divertissements pour la guitare, n°5.3"
  mutopiacomposer = "SorF"
  mutopiaopus = "O 1.5.3"
  mutopiainstrument = "Guitar"
  mutopiasource = "Danish Royal Library early 19th Century edition"
  date = "1820s"
  source = "Golden Music Press/GFA/Frederic Noad facsimile edition"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  moreInfo = "<p>The maintainer has created MP3 and OGG Vorbis audio files from the MIDI output (which is available above). These are computer generated but will probably sound better than playing the MIDI file on your own system, depending on your setup. Download them:</p><ul><li><a href=\"../ftp/SorF/O1/sor_op_1_5_3/sor_op_1_5_3.mp3\">sor_op_1_5_3.mp3</a></li><li><a href=\"../ftp/SorF/O1/sor_op_1_5_3/sor_op_1_5_3.ogg\">sor_op_1_5_3.ogg</a></li></ul>"
  lastupdated = "2004/May/02"
  filename = "sor_op1_5_3.ly"
  dedication = "Composés et dédiés à Mrs Davenport"
  title = "Six divertissements pour la guitare"
  subtitle = "n°5.3 Minore"
  opus = "Opus 1 n°5.3"
  instrument = "Guitarre"
  meter = ""
  composer = "Fernando Sor (1778-1839)"
  enteredby = "Mark Van den Borre"

 footer = "Mutopia-2013/03/23-457"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

upperVoice =  \relative c'' {
 \key c \minor
 \voiceOne
 \repeat volta 2 {
  \partial 4 g8 c~|
  c b16 c d8 d~|						%1
  d c16. d32 es8 g~|						%2
  g f16. es32 d8 c|						%3
  b d g, c|							%4
  c bes!16. a32 bes8 g'|					%5
  as g16. f32 es8 <bes' es,>|					%6 tie from last e to non-existing note in next measure
  bes as16. g32 as8 f|						%7
  <es g,> r							%8.1
 }
 \repeat volta 2 {
  g8 a|						%8.2
  bes4 f8 g|							%9
  as4 <as c,>8 g|						%10
  f4 fis|							%11
  <g b, g>8 r g, c|						%12
  c b16. as32 g8 f'~|						%13
  f es16. d32 c8 <g' c,>~|					%14
  g8 f16. es32 \oneVoice d8 <b f>|					%15
  <c es, c> r							%16.1
 }
 \repeat volta 2 {
  \key c \major
  <e c> <g b,>|							%16.2
  \grace g16 <f a,>8[ r16 <e g,>] <d f,>8 <b g g,>|		%17
  <c e, c> r <c' e, c> <b g>|				%18
  \voiceOne <a f>[ r16 <g e>] <f d b,>8 <e c c,>|				%19
  <d b g,> r <e c c,> <g b, c,>|				%20
  <f a,>[ r16 e] \oneVoice <d f, f,>8 <b f g,>|				%21
  <c e, c> r <c' e, c> <b d, gis,>|			%22
  <a c, a>[ r16 g] <fis c d,>8 <a c, d,>|			%23
  <g b, g,> r							%24.1
 }
 \repeat volta 2 {
  <g d b g> <a fis c g>|					%24.2
  <b f! d g,>[ r16 <c e, c>] <d g, f b,>8 <e g, e c>		%25
  <f d, b g> r <e c> <b gis>|					%26
  <c a>[ r16 <gis e>] <a f>8 <f d f,>|				%27
  <d b g>4 <e c c,>8 <g bes, e,>|			%28
  \grace g16 <f a, f,>8[ r16 <e g,>] <d f, g,>8 <b f g,>|		%29
  <c e, c> r <gis' d b e,> <a c, f,>|				%30
  << <b f d> \\ {g,16[ gis]}>> <c' e, c a>16.[ <a es c fis,>32] <g e c g>8 <b, f g,>|	%31
  <c e, c> r					%32
 }
}

middleVoice =  \relative c'' {
 \key c \minor
 \voiceThree
 \repeat volta 2 {
  \partial 4 s4|s2|s|s|s|s|s|					%1-6
  s4. <as bes,>8|						%7
  s4								%8.1
 }
 \repeat volta 2 {
  \voiceTwo es'8 <es c>~|							%8.2
  \voiceThree es8 d16. c32 s8 des~|					%9
  des! c16. b32 s4|						%10
  c8 d16. es32 d8 c|						%11
  s2|s|								%12-13
  g4. bes8|						%14
  s2|s4								%15-16.1
 }
}

lowerVoice =  \relative c'' {
 \key c \minor
 \voiceTwo
 \repeat volta 2 {
  \partial 4 r8 <g es c>|
  <g f d>4 r8 <g f b,>|						%1
  <g es c>8 r r <c g es>|					%2
  <as f>4. <a es fis,>8|					%3
  <g d g,>4 r8 <es c>|						%4
  <f d>4 r8 <d' bes,>|						%5
  <bes es,>8. <as f>16 <bes g>8 <des g,>|			%6
  <c as>16 e[ f16. e32] f8 d|					%7
  es, s								%8.1
 }
 \repeat volta 2 {
  s4|								%8.2
  bes'4 <d bes>8 <des bes es,>|					%9
  as4 as|							%10
  as as|							%11
  s r8 <g es c>|						%12
  <f d>4 s8 <g b,>|						%13
  c,8. d16 es8 es|						%14
  <c' a f>4. g,8|						%15
  s4								%16.1
 }
 \repeat volta 2 {
  \key c \major
  s4|								%16.2
  s2|								%17
  s2|								%18
  s8 g' s4|							%19
  s2|								%20
  c,8 r s4|							%21
  s2|								%22
  s2|								%23
  s4								%24.1
 }
}
\score {
 \context Staff <<
  \time 2/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override Staff.NoteCollision #'merge-differently-headed = ##t
  \context Voice = "one" \upperVoice
  \context Voice = "two" \middleVoice
  \context Voice = "three" \lowerVoice
  >>
  \layout{}
  \midi{}
}
