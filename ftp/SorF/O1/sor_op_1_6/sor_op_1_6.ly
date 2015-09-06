\version "2.16.1"
\header {
  mutopiatitle = "Divertissements pour la guitare, n°6"
  mutopiacomposer = "SorF"
  mutopiaopus = "O 1.6"
  mutopiainstrument = "Guitar"
  mutopiasource = "Danish Royal Library early 19th Century edition"
  date = "1820s"
  source = "Golden Music Press/GFA/Frederic Noad facsimile edition"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  moreInfo = "<p>The maintainer has created MP3 and OGG Vorbis audio files from the MIDI output (which is available above). These are computer generated but will probably sound better than playing the MIDI file on your own system, depending on your setup. Download them:</p><ul><li><a href=\"../ftp/SorF/O1/sor_op_1_6/sor_op_1_6.mp3\">sor_op_1_6.mp3</a></li><li><a href=\"../ftp/SorF/O1/sor_op_1_6/sor_op_1_6.ogg\">sor_op_1_6.ogg</a></li></ul>"
  filename = "sor_op1_6.ly"
  dedication = "Composés et dédiés à Mrs Davenport"
  title = "Six divertissements pour la guitare"
  subtitle = "n°6 Marcia"
  opus = "Opus 1 n°6"
  instrument = "Guitarre"
  meter = ""
  composer = "Fernando Sor (1778-1839)"
  enteredby = "Mark Van den Borre"

 footer = "Mutopia-2013/03/23-458"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

% Tweaked to have everything on one page
#(set-global-staff-size 18.5)

upperVoice =  \relative c'' {
 \key f \major
 \repeat volta 2 {
  <f f,>2\f^\markup {La 6 \super e corde en Fa} <a a,>|					%1 source says "F" instead of "f", move left
  <c c,> r4 <a a,>8. <f f,>16|							%2
  <e e,>4 <g g,> <c, c,> <e bes c,>|						%3
  <f a, f,>8 f,16 f f8 f f f f f|						%4
  \voiceOne
  c'8.[ f16 f,8. f'16] d8.[ f16 f,8. f'16]|					%5
  \oneVoice
  <c a f,>8 f,16 f f8 f f f f f|						%6
  \voiceOne
  c'8.[ f16 f,8. f'16] d8.[ f16 f,8. f'16]|					%7
  <c a>8 f,16 f \oneVoice f8 f16 a c8 f a c\f|					%8
  <b f d g,>4 <b f d g,>8. b16 <b f d g,>4 <b f d g,>|				%9
  <c e, c>4 r8. b16 \grace b16( a8.[) g16 \grace g( f8.) e16]|			%10
  d4 <f d f,> <e c g> <d b g>|							%11
  <e c c,>8 \times 2/3 {g,16[ g' g]} g,8 <g' g,> <g g,>4 <b f d g,>|		%12
  <c e, c>8 \times 2/3 {g,16[ g' g]} g,8 <g' g,> <g g,>4 <b f d g,>|		%13
  <c e, c>4 <c, e, c> <c e, c>  r|					%14
 }
 \repeat volta 2 {
  \voiceOne
  d2 es4.. es16|								%15
  s2. fis8. fis16|								%16
  g4 g8. g16 a4 a8. a16|							%17
  bes4 a <g bes,>r|								%18
  c,2 des4.. des16|								%19
  s2. e8. e16|									%20
  f4 f8. f16 g4 g8. g16|							%21
  a4 g f8 c d e|								%22
  f4 f8. f16 f4 f|								%23
  \oneVoice
  des,16 as'' as, f' des as' as, f' des as' as, f' des as' as, f'|		%24
  des,4 <b'' f d>8. f16 <b f d>8.[ as16 <b g d>8. f16]|		%25
  <c' e, c>4 \voiceOne c,8. c16 s4 \oneVoice r|				%26
  <f, a,>2\p <a f>4 <g c,>|						%27
  \voiceOne f8 c'16 c c8 c c c c c|							%28
  c8 c16 c c8 c c c c c|							%29
  c c b c cis d es e|								%30
  f4 f8. f16 g4.^\> e8\!|							%31
  f4 f8. f16 g4.^\> e8\!|							%32
  <f a, f,>4 <f c a f>\f <g e bes f> <a es c f,>|				%33
  \oneVoice <bes d, bes> <c f, es a,> <d f, d bes> r|				%34
  <e bes g c,>\ff <e bes g c,>8. e16 <e bes g c,>4 <e bes g c,>|		%35
  <<<f a, f>2 \\ f,,,>> <c''' a f>4 r8. a16|							%36
  <g d bes>4 <g d bes,> <e g, c,>8. <f a,>16 <g bes, c,>8. <e g,>16|	%37
  \voiceOne <f a, f,>8 c16 c c8 c c4 <bes' e,>|						%38
  <a f>8 c,16 c c8 c c4 g'8.( e16)|						%39
  \oneVoice <f a, f,>4 <f a, f> <f a, f,> r|						%40
 }
}

middleVoice =  \relative c' {
 \key f \major
 \voiceTwo
 \repeat volta 2 {
  s1|
  s|
  s|
  s|
  <c' a>2 <d bes>|
  s1|
  <c a>2 <d bes>|
  s1 s s s s s s
 }
 \voiceFour
 \repeat volta 2 {
  s1|
  d4 d8 d d d c d|								%16
  bes8\p d bes d c[ d] c[ d]|							%17
  bes8[ d] c[ d] s2|								%18
  s1 s s s s s s s s s s s|
  a8[ c] a[ c] bes[ c] bes[ c] 				%31
  a8[ c] a[ c] bes[ c] bes[ c]							%32
  s1 s s s s s s s
 }
}

lowerVoice =  \relative c {
 \key f \major
 \voiceFour
 \repeat volta 2 {
 s1|										%1
 s|										%2
 s|										%3
 s|										%4
 f4 f' f, f'|								%5
 s1|										%6
 f,4 f' f, f'|									%7
 f,4 s2.|									%8
 s1|										%9
 s|										%10
 s|										%11
 s|										%12
 s|										%13
 s|										%14
 }
 \voiceTwo
 \repeat volta 2 {
  d'2 es|									%15
  d4 s2.|									%16
  s2. fis4|									%17
  g4 d g r|									%18
  c,2\f des|									%19
  <c' c,>8 c16 c c8 c c c bes c|						%20
  a\p c a c e, c' e, c'|							%21
  f, c' bes c a4 r|								%22
  s4 f f f|									%23
  s1\f|										%24
  s1|										%25
  s4 c <c c'> s|									%26
  s1|										%27
  <f a,>2 s2|									%28
  <g c,>2 <bes g>4 <a f>|							%29
  <g e c>4 r r2|								%30
  f,4 f' e c|									%31
  f,4 f' e c|									%32
  s1|										%33
  s|										%34
  s|										%35
  s1|									%36 original f points up (last line of page)
  s1|										%37
  s4 r r c|									%38
  f r r <bes c,>|								%39
  s1|										%40
 }
}

\score {
 \context Staff <<
  \time 4/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override Staff.NoteCollision #'merge-differently-headed = ##t
  \context Voice = "one" \upperVoice
  \context Voice = "two" \middleVoice
  \context Voice = "three" \lowerVoice
  >>
  \layout{}
  \midi{}
}
