\version "2.11.13"
\header {
 title = "Noturno Op. 4 No. 1"
 composer = "M. A. Granato"
 piece = "Andante ma non troppo"

 mutopiatitle = "Noturno Op. 4 No. 1"
 mutopiacomposer = "GranatoMA"
 mutopiaopus = "Op. 4"
 mutopiainstrument = "Piano"
 date = "2007"
 source = "Original composition"
 style = "Classical"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "M. A. Granato"
 maintainerEmail = "m.gr@hotmail.com"
 lastupdated = "2007/Abril/04"
 footer = "Mutopia-2007/04/07-950"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

upper = \relative c'' {
 \clef treble
 \key a \major
 \time 12/8

 e,2 gis8 fis8 e8 dis4~ dis8 bis4~
 bis4 bis8 e8 dis8 a'8~ a4 fis8~ fis8 a8 gis8
 fis8 gis4~ gis8 e4 gis8 fis8 e8 fis4.
 dis4 fis8 e8 dis8 cis8~ cis4 cis8-. r4.

 e'2 gis8 fis8 e8 dis4~ dis8 bis4~
 bis4 bis8 e8 dis8 a'8~ a4 fis8~ fis8 a8 gis8
 fis8 gis4~ gis8 e4 gis8 fis8 e8 fis4.
 dis4 fis8 e8 dis8 cis8~ cis4 cis8-. cis8 e8 cis8

 \bar "||"

 e4. gis4. cis,4.~ cis4 r8
 e4. gis4. cis,4.~ cis4 r8
 a'4. g4. gis4.~ gis4 r8
 a4. g4. gis4.~ gis4 gis8
 fis4. dis4 fis8 e4. cis4.
 fis4. dis4 fis8 e4.~ e4 r8
 fis4. a4 cis8 gis4. e4.
 fis4. dis4 fis8 e4. cis4.
 fis4. a4 cis8 gis4. e4.
 fis4. bis,4 dis8 cis4.~ cis4 r8
 fis4. e4. cis4. b8 cis8 d8
 fis4. e4 fis16 gis16 a8 gis8 fis8 e4 e8
 fis4 \appoggiatura e8 fis8 cis4 cis8 b4 b8 fis'4 gis8
 e4 e8 fis4 \appoggiatura e8 fis8 cis4 cis8 b4 e8
 a,4 \appoggiatura cis8 a8 gis4 gis8 fis4 \appoggiatura a8 fis8 e4 e8
 gis8[ dis8 bis8] e8[ cis8 gis8] gis'8[ dis8 bis8] e8[ cis8 gis8]

 \clef bass

 dis'8[ bis8 gis8] cis8[ gis8 cis,8] gis'8[ dis8 bis8] e8[ cis8 gis'8]
 bis8[ gis8 dis'8] e8[ cis8 gis'8] <cis, gis'>2.
 <cis, gis'>1^\fermata r2

 \bar "|."
}

lower = \relative c {
 \clef bass
 \key a \major
 \time 12/8

 cis8[ e8 gis8] cis,8[ e8 gis8] cis,8[ bis8 dis8] gis8[ bis,8 dis8]
 gis8[ bis,8 e8] gis8[ bis8 cis,8] fis8[ a8 cis,8] fis8[ a8 cis,8]
 fis8[ cis8 e8] gis8[ cis,8 e8] gis8[ cis,8 e8] bis8[ dis8 gis8]
 bis,8[ dis8 gis8] bis,8[ dis8 cis8] e8[ gis8 <cis, e gis>8-.] cis'8[ e8 cis8-.]
 
 \clef treble
 cis8[ e8 gis8] cis,8[ e8 gis8] cis,8[ bis8 dis8] gis8[ bis,8 dis8]
 gis8[ bis,8 e8] gis8[ bis8 cis,8] fis8[ a8 cis,8] fis8[ a8 cis,8]
 fis8[ cis8 e8] gis8[ cis,8 e8] gis8[ cis,8 e8] bis8[ dis8 gis8]
 bis,8[ dis8 gis8] bis,8[ dis8 cis8] e8[ gis8 <cis, e gis>8-.] r4.

 \bar "||"

 cis8[ e8 gis8] cis,8[ e8 gis8] cis,8[ e8 gis8] cis,8[ e8 gis8]
 cis,8[ e8 gis8] cis,8[ e8 gis8] cis,8[ e8 gis8] cis,8[ e8 gis8]
 cis,8[ e8 a8] cis,8[ e8 g8] cis,8[ e8 gis8] cis,8[ e8 gis8]
 cis,8[ e8 a8] cis,8[ e8 g8] cis,8[ e8 gis8] cis,8[ e8 gis8]
 bis,8[ dis8 gis8] bis,8[ dis8 gis8] cis,8[ e8 gis8] cis,8[ e8 gis8]
 bis,8[ dis8 gis8] bis,8[ dis8 gis8] cis,8[ e8 gis8] cis,8[ e8 gis8]
 cis,8[ fis8 a8] cis,8[ fis8 a8] cis,8[ e8 gis8] cis,8[ e8 gis8]
 bis,8[ dis8 gis8] bis,8[ dis8 gis8] cis,8[ e8 gis8] cis,8[ e8 gis8]
 cis,8[ fis8 a8] cis,8[ fis8 a8] cis,8[ e8 gis8] cis,8[ e8 gis8]
 bis,8[ dis8 gis8] bis,8[ dis8 gis8] cis,8[ e8 gis8] cis,8[ e8 gis8]
 a,8[ d8 fis8] gis,8[ b8 e8] a,8[ cis8 e8] gis,8[ b8 d8]
 a8[ d8 fis8] gis,8[ b8 e8] a,8[ d8 fis8] gis,8[ b8 e8]
 a,8[ d8 fis8] a,8[ cis8 e8] gis,8[ b8 e8]

 \clef bass

 fis,8[ a8 cis8]
 e,8[ gis8 cis8] d,8[ fis8 a8] a,8[ cis8 e8] gis,8[ b8 e8]
 fis,8[ a8 cis8] e,8[ gis8 cis8] d,8[ fis8 a8] cis,8[ e8 gis8]
 bis,8[ dis8 gis8] cis,8[ e8 gis8] bis,8[ dis8 gis8] cis,8[ e8 gis8]
 bis,8[ dis8 gis8] cis,8[ e8 gis8] bis,8[ dis8 gis8] cis,8[ e8 gis8]
 bis,8[ dis8 gis8] cis,8[ e8 gis8] <cis, gis'>2.
 <cis gis'>1_\fermata r2

 \bar "|."
}

\score {
 \new PianoStaff <<
  \new Staff = "upper" \upper
  \new Staff = "lower" \lower
 >>
 \layout {}
} 

\score {
 \new PianoStaff <<
  \new Staff = "upper" \upper
  \new Staff = "lower" \lower
 >>
 \midi {
  \context {
   \Score
   tempoWholesPerMinute = #(ly:make-moment 125 8)
  }
 }
}
