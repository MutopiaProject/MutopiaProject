\version "2.8.0"
     upper = \relative c'' {
        \clef treble
        \key f \major
        \time 4/4
     
        r2. c4\mf f2 e2 f4 a,4( bes4 c4) a2(\> g4)\! c a2\< d2 b4( a8[ g]) g'4\! f e4(\f d8[ c]) d4( c8[ b8]) c16[\> b16 c8] ~ c2\! \set Score.repeatCommands = #'((volta) end-repeat) e,8[(\p f]) g2.\< a4 bes2. c4\! a4( g8[ f]) d'4( bes8[ a]) g2. c4 d2\< e f4(\!\f e8[ d]) c4- - bes- - a2 a16[ g a g] a[ g f g] f2. 
     }
     
     lower = \relative c' {
        \clef bass
        \key f \major
        \time 4/4
     
        r1 r4 f,4 c'4 c,4 a'4 f4 g4 e4 f4 a,4 e'4 r4 f2 d g e4 f g2 g, c4 g c, r4 r4 c'- . c,2 r4 c'4- . c,2 f'2 bes,4 bes c g c, a' bes2 g a r4 bes4 c2 c, f4 c'4 f \set Score.repeatCommands = #'((volta) end-repeat)
     }
     
     \score {
        \new PianoStaff <<
           \new Staff = "upper" \upper
           \new Staff = "lower" \lower
        >>
        \layout { }
        \midi { \tempo 4=128 }
     }


\header {
 title = "Air"
 composer = "Johann Sebastian Bach (1685-1750)"
 opus = "BWV Anh. 131" 
 mutopiatitle = "Air"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV Anh. 131"
 mutopiainstrument = "Piano"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer = "Anonymous"
 maintainerWeb = "http://www.geocities.com/webhost49"
 lastupdated = "2006/May/16"
 footer = "Mutopia-2006/05/17-767"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

