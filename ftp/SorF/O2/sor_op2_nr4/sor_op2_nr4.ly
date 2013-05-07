\header {
 title =       "Menuetto"
 composer =    "Fernando Sor (1778-1839)"
 opus =        "Op.2 No. 4"
 mutopiatitle = "Menuetto"
 mutopiacomposer = "SorF"
 mutopiaopus = "Op. 2 No. 4"
 mutopiainstrument = "Guitar"
 source = "Simrock, Berlin"
 style = "Classical"
 maintainer = "Mark Van den Borre"
 maintainerEmail = "mark@markvdb.be"
 maintainerWeb = "http://markvdb.be"
 lastupdated = "2005/08/13"
 copyright = "Creative Commons Attribution-ShareAlike 2.5"
 
 footer = "Mutopia-2005/08/14-243"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
 
 atbegindocument = "\fontfamily{min}"
}

\version "2.6.3"

melody =  \relative c'' {
 \stemUp
 \repeat volta 2{
 c4 c c|
 c cis d|
 f f f|
 f2 <e c>4|
 <g e> e a|
 <d, b>2 <e c>4|
 g8.[ ( fis16)] <f! b,>4 <e c>|
 <e c> <d b> r|
 }

 \repeat volta 2{
 <d bes>4 <cis a> <e a,>|
 d4. e8 f4|
 <c aes> <b g> <d g,>|
 <c g>4. <d g,>8 <e g,>4|
 <g e> <g e> <g es>|
 <fis d>2 <g d>4|
 a e fis|
 <fis c> <g b,> \times 2/3 {  g8 f d }|
 c4 c c|
 c cis d|
 d d d|
 d dis( e)|
 e e e|
 e f fis|
 g8.[ c16] e,4 d8.[ e16]|
 <d f,>4 <c e,> r|
 }
}

middle =  \relative c' {
 \stemUp
 \repeat volta 2{
 s2.|
 s2.|
 s2.|
 d'4.. b16 s4|
 s2.|
 s2.|
 a4 s s|
 s2.|
 }

 \repeat volta 2{
 s2.|
 a2 a4|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 }
}

bass =  \relative c' {
 \stemDown
 \repeat volta 2 {
 <c e>4 <f d> <g e>|
 <a f>2.|
 <b g>4 <c a> <d b>|
 c g c,|
 r c' f,|
 g f e|
 d g c,|
 g2 s4|
 }

 \repeat volta 2 {
 g'2 g4|
 f4. e8 d4|
 f2 f4|
 e4. d8 c4|
 c' c c|
 c2 b4|
 <e c> <c c,> <c a d,>|
 g2 r4|
 <e c> <f d> <g e>|
 <a f>2.|
 <fis d>4 <g e> <a fis>|
 <b g>2.|
 <gis e>4 <a fis> <b gis>|
 <c a>2 <c aes>4|
 <e g,> c <b f g,>|
 c,2 s4|
 }
}

        
\score {
 \context Staff = "guitar" << 
  \time 3/4
  \context Voice = "upper" \melody
  \context Voice = "mid" \middle
  \context Voice = "lower" \bass
 >>
 \layout { }
 \midi { \tempo 4=76 }
}
