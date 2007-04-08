\header {
   title             = "Spanish Romance"
   composer          = "Anonymous"
   source            = "Manuscript"
   copyright         = "Creative Commons Attribution-ShareAlike 2.5"
   mutopiatitle      = "Spanish Romance"
   mutopiacomposer   = "Anonymous"
   mutopiainstrument = "Guitar"
   style             = "Romantic"
   maintainer        = "jeff covey"
   maintainerEmail   = "jeff.covey@pobox.com"
   maintainerWeb     = "http://pobox.com/~jeff.covey/"
   lastupdated       = "2006/08/01"
 footer = "Mutopia-2006/08/03-795"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

\version "2.7.40"

global =  {
   \set Staff.instrument = "Guitar"
   % lilytidy template: guitar
   \transposition c
   \set Staff.midiInstrument = "acoustic guitar (nylon)"
   % lilytidy template end
   
   \clef violin \time 3/4 \key g \major
   \repeat volta 2 { \skip 2.*16 }
   
   \key e \major
   \repeat volta 2 { \skip 2.*16 }
}

melody =  \relative c''' {
   \stemUp
   
   b4 b b                                              | % 1
   b a g                                               | % 2
   g fis e                                             | % 3
   e g b                                               | % 4
   e e e                                               | % 5
   e d c                                               | % 6
   c b a                                               | % 7
   a b c                                               | % 8
   b c b                                               | % 9
   dis c b                                             | % 10
   b a g                                               | % 11
   g fis e                                             | % 12
   fis fis fis                                         | % 13
   fis g fis                                           | % 14
   e e e                                               | % 15
   e2 r4                                               | % 16
   
   gis4 gis gis                                        | % 17
   gis fis e                                           | % 18
   e dis dis                                           | % 19
   dis cisis dis                                       | % 20
   cis' cis cis                                        | % 21
   cis dis cis                                         | % 22
   cis b b                                             | % 23
   b cis dis                                           | % 24
   e e e                                               | % 25
   e dis d                                             | % 26
   cis cis cis                                         | % 27
   cis b a                                             | % 28
   gis gis gis                                         | % 29
   gis a fis                                           | % 30
   e e e                                               | % 31
   e2 r4                                               | % 32
   
}

middlevoice =  \relative c'''  {
   \stemDown
   \set tupletSpannerDuration = #(ly:make-moment 1 4)
   
   \times 2/3 {
      
      \override Beam  #'positions = #'(-0.2 . -3)
      b8[ b, g] b'[ b, g] b'[ b, g]                    | % 1
      \override TupletNumber #'transparent = ##t
      b'[ b, g] a'[ b, g] g'[ b, g]                    | % 2
      g'[ b, g] fis'[ b, g] e'[ b g]                   | % 3
      e'[ b g] g'[ b, g] b'[ b, g]                     | % 4
      e''[ b, g] e''[ b, g] e''[ b, g]                 | % 5
      e''[ b, g] d''[ b, g] c'[ b, g]                  | % 6
      c'[ e, c] b'[ e, c] a'[ e c]                     | % 7
      a'[ e c] b'[ e, c] c'[ e, c]                     | % 8
      b'[ fis dis] c'[ fis, dis] b'[ fis dis]          | % 9
      dis'[ fis, dis] c'[ fis, dis] b'[ fis dis]       | % 10
      b'[ b, g] a'[ b, g] g'[ b, g]                    | % 11
      g'[ b, g] fis'[ b, g] e'[ b g]                   | % 12
      fis'[ b, a] fis'[ b, a] fis'[ b, a]              | % 13
      fis'[ b, a] g'[ b, a] fis'[ b, a]                | % 14
      e'[ b g] e'[ b g] e'[ b g]                       | % 15
      
   }
   
   \skip 2.*1                                          | % 16
   
   \times 2/3 {
      
      gis'8[ b, gis] gis'[ b, gis] gis'[ b, gis]       | % 17
      gis'[ b, gis] fis'[ b, gis] e'[ b gis]           | % 18
      e'[ a, fis] dis'[ a fis] dis'[ a fis]            | % 19
      dis'[ a fis] cisis'[ a fis] dis'[ a fis]         | % 20
      cis''[ fis, dis] cis'[ fis, dis] cis'[ fis, dis] | % 21
      cis'[ fis, dis] dis'[ fis, dis] cis'[ fis, dis]  | % 22
      cis'[ gis e] b'[ gis e] b'[ gis e]               | % 23
      b'[ gis e] cis'[ gis e] dis'[ gis, e]            | % 24
      e'[ gis, e] e'[ gis, e] e'[ gis, e]              | % 25
      e'[ gis, e] dis'[ gis, e] d'[ gis, e]            | % 26
      cis'[ e, cis] cis'[ e, cis] cis'[ e, cis]        | % 27
      cis'[ e, cis] b'[ e, cis] a'[ e cis]             | % 28
      gis'[ dis b] gis'[ dis b] gis'[ dis b]           | % 29
      gis'[ dis b] a'[ dis, b] fis'[ dis b]            | % 30
      e[ b gis] e'[ b gis] e'[ b gis]                  | % 31
      
   }
   
   \skip 2.*1                                          | % 32
}

bass = \relative c {
   \stemDown
   
   e2.                                                 | % 1
   e                                                   | % 2
   e                                                   | % 3
   e                                                   | % 4
   e                                                   | % 5
   e                                                   | % 6
   a                                                   | % 7
   a                                                   | % 8
   b                                                   | % 9
   b                                                   | % 10
   e,                                                  | % 11
   e                                                   | % 12
   b'                                                  | % 13
   dis                                                 | % 14
   e4 b g                                              | % 15
   e2 s4                                               | % 16
   
   e2.                                                 | % 17
   e                                                   | % 18
   a                                                   | % 19
   a                                                   | % 20
   b                                                   | % 21
   b                                                   | % 22
   e,                                                  | % 23
   e                                                   | % 24
   e                                                   | % 25
   e                                                   | % 26
   a                                                   | % 27
   a                                                   | % 28
   b                                                   | % 29
   b                                                   | % 30
   e4 b gis                                            | % 31
   e2 s4                                               | % 32
   
}

\score {
   \context Staff = "guitar" <<
      \global
      \context Voice = melodyvoice { \melody }
      \context Voice = middlevoice { \middlevoice }
      \context Voice = bassvoice { \bass }
   >>
   \layout { }
   \midi { \tempo 4 = 90 }
}

