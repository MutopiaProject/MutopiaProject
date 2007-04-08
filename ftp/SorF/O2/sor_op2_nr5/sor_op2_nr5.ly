\version "2.6.3"

\header {
 title = "Valse"
 composer = "Fernando Sor"
 copyright = "Creative Commons BY-SA 2.5"
 mutopiatitle = "Six Divertissements op. 2 n�5 Valse"
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
 lastupdated = "2005/08/12"
 
 piece = " "
 footer = "Mutopia-2005/08/14-590"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
 
 atbegindocument = "\fontfamily{min}"
}

melody =  \relative c'' {
 \stemUp
 \repeat volta 2 {
 g'16.^\markup {Moderato}[( e32]) c'8 c|		%1
 g16.[( e32]) c8 c|					%2
 d16.[( b32]) g8 b|					%3
 \appoggiatura {d16} c16 b c d e f|			%4
 g16.[ e32] c'8 c|					%5
 g16.[ e32] c8 c|					%6
 g16.[ d'32(] <f d>8) <e c>|				%7
 <d b>4 r8|						%8
 }

 \repeat volta 2 {
 d16.[ g,32] g'8 g|					%9
 g16.[ e32] c8 cis|					%10
 d16.[ g,32] g'8 g|					%11
 g16.[ e32] c8 g'|					%12
 c16 b a g f e|						%13
 f e d c b a|						%14
 \override Staff.NoteCollision #'merge-differently-dotted = ##t
 g16.[ c32] e8 <d f,>|					%15
 <c e, c> r r|						%16
 }

 \repeat volta 2 {
 <g' e>4.^\markup {\italic "dol."}|			%17
 <e c>4.|						%18
 <f d>8 \grace {g16} <f d>16 <e cis> <f d>8|		%19
 <d b>4.|						%20
 <e c>4.|						%21
 <f d>4.|						%22
 <d b>8 \grace {e16} <d b>16 <cis ais>16 <d b>8|	%23
 <e c!>4 r8|						%24
 }

 \repeat volta 2 {
 d4 g8|							%25
 d4 g8|							%26
 fis8 \grace {g16} fis16 e fis8|			%27
 g16( b) a g fis e|					%28
 d4 g8|							%29
 d4 g8|							%30
 fis \grace {g16} fis16 e fis8|				%31
 g4 r8|							%32
 }

 g16.[( e32]) c'8 c|					%33
 g16.[( e32]) c8 c|					%34
 d16.[( b32]) g8 b|					%35
 \grace {d16} c16 b c d e f|				%36
 g16.[ e32] c'8 c|					%37
 g16.[ e32] c8 c|					%38
 g16.[ d'32]( <f d>8) <e c>|				%39
 <d b>4 r8|						%40

 d16.[ g,32] g'8 g|					%41
 g16.[ e32] c8 cis|					%42
 d16.[ b32] g'8 g|					%43
 g16.[ e32] c8 g'|					%44
 c16 b a g f e|						%45
 f e d c b a|						%46
 g16.[ c32] e8 <d f,>|					%47
 <c e, c> r r \bar "||"					%48
}

bass = \new Voice  \relative c'' {
 \stemDown
 r8 <e c>8 <e c>|					%1
 r <e, c> <e c>|					%2
 r <f g,> <f g,>|					%3
 <e c>4 r8|						%4
 r8 <e' c> <e c>|					%5
 r <e, c> <e c>|					%6
 r b c|							%7
 g g' g|						%8

 <f b,>4.|						%9
 << {\stemDown c4.} \\ {\stemUp c8 \stemDown <e g>[ <e g>]} >>|			%10
 <f b,>4.|						%11
 <e c>4 r8|						%12
 <e' c> r r|						%13
 <a, f>4 r8|						%14
 g4 g,8|						%15
 s4.|							%16

 r8 c' c,|						%17
 r g' c,|						%18
 r g' g|						%19
 r g f|							%20
 r e a|							%21
 r f d|							%22
 r g g|							%23
 r g c,|						%24

 g'16 b d, b' d, b'|					%25
 g16 b d, b' d, b'|					%26
 a[ c] d,8 <c' a>|					%27
 <b g>4 r8|						%28
 g16 b d, b' d, b'|					%29
 g16 b d, b' d, b'|					%30
 a[ c] d,8 <c' a>|					%31
 g16 b d, g g,8|					%32

 r8 <e'' c>8 <e c>|					%33
 r <e, c> <e c>|					%34
 r <f g,> <f g,>|					%35
 <e c>4 r8|						%36
 r8 <e' c> <e c>|					%37
 r <e, c> <e c>|					%38
 r b c|							%39
 g g' g|						%40

 <f b,>4.|						%41
 <<{c4.} \\ {c8 <e g> <e g>}>>|				%42
 <f b,>4.|						%43
 <e c>4 r8|						%44
 <e' c> r r|						%45
 <a, f>4 r8|						%46
 g4 g,8|						%47
 s4.|							%48
 
}		

\score {
    \context Staff = "guitar" <<
      \time 3/8
      \context Voice = "upper" \melody
      \context Voice = "lower" \bass
      >>
  \layout { }
  \midi { }
}
