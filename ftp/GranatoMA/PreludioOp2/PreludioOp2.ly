\version "2.11.13"
\header {
 title = "Preludio Op. 2"
 composer = "M. A. Granato"
 piece = "Lento con espressione"

 mutopiatitle = "Preludio Op. 2"
 mutopiacomposer = "GranatoMA"
 mutopiaopus = "Op. 2"
 mutopiainstrument = "Piano"
 date = "2006"
 source = "Original composition"
 style = "Classical"
 copyright = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer = "M. A. Granato"
 maintainerEmail = "m.gr@hotmail.com"
 lastupdated = "2007/February/8"
 footer = "Mutopia-2007/02/16-927"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

upper = \relative c'' {
 \clef treble
 \key e \major
 \time 4/4

 gis4 e4 fis4. gis8
 a4 gis4 fis4. e16 fis16
 gis4. b8 fis2
 e8 dis8 e8 gis8 dis2
 e4 e4~ e8 cis8 gis'8. e16
 dis4 dis4~ dis4. cis16 dis16
 e4 e4~ e4. cis8
 dis4 dis4~ dis4. cis16 dis16
 e4 e4~ e4. cis8
 fis4 fis4~ fis8 fis8 a8. fis16
 e4 e4~ e8 e8 fis8. e16
 dis4 dis4~ dis8 dis8 e8. bis16
 cis4 cis4~ cis4. r8
 cis4. e8 fis4. fis8
 gis4. fis8 e4. e8
 a4. a8 fis4. fis8
 gis8 e8 gis4 e4. e8
 dis4. e8 gis2~
 gis4. e8 a4. a8
 fis4. fis8 gis8 a8 b4
 e,4. e8 dis4. dis8
 bis4. bis8 cis2~
 cis2 r2
 r1
 r1
 << e1 cis1 gis1^\fermata >>
 \bar "|."
}

lower = \relative c' {
 \clef bass
 \key e \major
 \time 4/4

 e,8 b'8 gis8 b8 dis,8 b'8 fis8 b8
 fis8 cis'8 b8 cis8 dis,8 b'8 fis8 b8
 e,8 b'8 gis8 b8 dis,8 b'8 fis8 b8
 cis,8 gis'8 e8 gis8 b,8 gis'8 dis8 gis8
 cis,8 gis'8 e8 gis8 cis,8 gis'8 e8 gis8
 b,8 gis'8 dis8 gis8 b,8 gis'8 dis8 gis8
 cis,8 gis'8 e8 gis8 cis,8 gis'8 e8 gis8
 bis,8 gis'8 dis8 gis8 bis,8 gis'8 dis8 gis8
 cis,8 gis'8 e8 gis8 cis,8 gis'8 e8 gis8
 cis,8 a'8 fis8 a8 cis,8 a'8 fis8 a8
 cis,8 gis'8 e8 gis8 cis,8 gis'8 e8 gis8
 bis,8 gis'8 dis8 gis8 bis,8 gis'8 e8 gis8
 cis,8 gis'8 e8 gis8 cis,8 gis'8 e8 gis8
 cis,8 gis'8 e8 gis8 cis,8 a'8 fis8 a8
 bis,8 gis'8 dis8 gis8 cis,8 gis'8 e8 gis8
 cis,8 a'8 e8 a8 dis,8 b'8 fis8 b8
 e,8 b'8 gis8 b8 cis,8 gis'8 e8 gis8
 bis,8 gis'8 dis8 gis8 cis,8 gis'8 e8 gis8
 cis,8 gis'8 e8 gis8 cis,8 a'8 e8 a8
 dis,8 b'8 fis8 b8 e,8 b'8 gis8 b8
 cis,8 gis'8 e8 gis8 b,8 gis'8 dis8 gis8
 bis,8 gis'8 dis8 gis8  cis,8 gis'8 e8 gis8
 cis,8 gis'8 e8 gis8  cis,8 gis'8 e8 gis8
 e8 cis8 e8 cis8 gis8 cis8 gis8 e8
 gis8 e8 cis8 e8 cis8 bis4.
 << gis'1 cis,1_\fermata >>
 \bar "|."
}

\score {
 \new PianoStaff <<
  \new Staff = "upper" \upper
  \new Staff = "lower" \lower
 >>
 \layout {}
 \midi {
  \context {
   \Score
   tempoWholesPerMinute = #(ly:make-moment 60 4)
  }
 }
}
