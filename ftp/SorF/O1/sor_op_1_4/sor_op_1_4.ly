\version "2.2.0"
\header {
  mutopiatitle = "Divertissements pour la guitare, n°4"
  mutopiacomposer = "Fernando Sor (1778- 1839)"
  mutopiaopus = "O 1.4"
  mutopiainstrument = "Guitar"
  date = "1820s"
  source = "Golden Music Press/GFA/Frederic Noad facsimile edition"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike license plus audio permission"
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  lastupdated = "2004/May/02"
  filename = "sor_op1_4.ly"
  dedication = "Composés et dédiés à Mrs Davenport"
  title = "Six divertissements pour la guitare"
  subtitle = "n°4"
  opus = "Opus 1 n°4"
  instrument = "Guitarre"
  meter = "Andante"
  composer = "Fernando Sor (1778-1839)"
  enteredby = "Mark Van den Borre"
  tagline =	"\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright " + \maintainer + " 2004.} \\makebox[\\textwidth][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License, with the additional permission that attribution is not} \\makebox[\\textwidth][c]{\\footnotesize required in an audio derivative of this work. To view a copy of that license visit \\texttt{http://creativecommons.org/licenses/by-sa/1.0/} } \\makebox[\\textwidth][c]{\\footnotesize or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}"
  footer = 	"Mutopia-2004/05/02-454"
}

upperVoice = \notes \relative c''' {
 \repeat volta 2 {
  \stemUp
  <g e>4 <g e> <g e>|					%1
  g4.. c16 <c e,>4|					%2
  <e, c> <e c> g8. f16					%3
  e4 \grace e16 d8. c16 c4|				%4
  <e c> <e c> <e c>|					%5
  <d c> <c' fis,> <b g>|				%6
  \stemDown \dynamicUp
  \appoggiatura b16\p a8 s s2|				%7
  \dynamicBoth
  \stemUp
  <fis c>4 <g b,> r|					%8
 }
 \repeat volta 2 {
  <g e> <f d> <e cis>|					%9
  <f d>4.. <g e>16 <a f>4|				%10
  d, <e c> <f b,>|					%11
  <e c>4.. <f d>16 <g e>4|				%12
  <c e,> e, <fis c>\trill|				%13
  g <f! d> <e c>|					%14
  \dynamicUp
  \grace e16\p d8 s8 s2|				%15
  <b f>4 <c e,> r|					%16
 }
}

middleVoice = \notes \relative c'' {
 \repeat volta 2 {
  s2.|s|s|s|s|s|s|s|
 }
 \repeat volta 2 {
  s2.|							%9
  s2.|							%10
  b8[ g] e[ g] d[ g]|					%11
  c,4 s s|						%12
  s2.|							%13
  s2.|							%14
  \stemUp
  <d' a f>8[ r16 <cis a e> <d a f>8 r16 <e a, cis,> <f a, d,>8 r16 <b, f g,>]|%15
  s2.|							%16
 }
}
lowerVoice = \notes \relative c' {
 \repeat volta 2 {
  \stemDown
  c4 c' c|						%1
  c, c' c|						%2
  c, a' <d f,>|						%3
  <c g> <b f g,> <g e c>|				%4
  c, a' g|						%5
  fis d g|						%6
  \stemDown
  <a' e c>8[ r16 <gis f d> <a e c>8 r16 <b e, gis,> <c e, a,>8 r16 <fis, c a d>]|	%7 facsimile says <fis, c a e>
  g,4\> g,\! r|
 }
 \repeat volta 2 {
  g'8[ g g g g g]|
  g[ g g g g g]|
  f4 e d|
  c8 g' g4 r|
  r c a|
  <b g> <g b,> <g c,>|
  s2.|
  c,2 r4|
 }
}
\score {
 \context Staff <<
  \time 3/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override Staff.NoteCollision #'merge-differently-headed = ##t
  \context Voice = one \upperVoice
  \context Voice = two \middleVoice
  \context Voice = three \lowerVoice
  >>
  \paper{}
  \midi{}
}
