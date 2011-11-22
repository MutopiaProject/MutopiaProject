\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 6"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 6"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"

 footer = "Mutopia-2011/11/22-1801"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
}

upperVoice = \relative c' {
  \voiceOne
  r16^\markup{"I"} a[ c f] f[ d a f] |
  r16 a[ c f] f[ d a f] |
  \repeat unfold 2 { r16 bes[ d f] f[ d bes f] | }
  \repeat unfold 2 { r16 a[ c f] f[ c a f] | }
  r16 bes[ des g] g[ des bes e,] |
  r16 bes'[ c g'] g[ c, bes e,] |
  r16 a[ c f] f[ c a f] |
  r16 bes[ d g] g[ d bes bes,] |
  r16 a'[ c f] f[ c a c,] |
  r16 bes'[ c e] e[ c bes c,] |
  r16 a'[ c f] f[ c a f] |
  r16 a[ cis g'] g[ cis, a e] |
  \repeat unfold 2 { r16 a[ d f] f[ d a d,] | }
  \repeat unfold 2 { r16 a'[ cis e] e[ cis a a,] | }
  \repeat unfold 2 { r16 a'[ cis f] f[ cis a a,] | }
  \repeat unfold 2 { r16 a'[ d f] f[ d a d,] | }
  \repeat unfold 2 { r16 a'[ d f] f[ d a g,] | }
  \repeat unfold 2 { r16 bes'[ d e] e[ d bes g,] | }
  r16 a'[ d f] f[ d a a,] |
  r16 a'[ cis e] e[ cis a a,] |
  \repeat unfold 2 { r16 a'[ d f] f[ d a f] | }
  <a d f>2
  \bar "||"
}

lowerVoice = \relative c {
  \voiceTwo
  \repeat unfold 6 { f2 | }
  \repeat unfold 2 { e2 | }
  f2 |
  bes,2 |
  c2 |
  c2 |
  f2 |
  f2 |
  \repeat unfold 2 { d2 | }
  \repeat unfold 4 { a2 | }
  \repeat unfold 2 { d2 | }
  \repeat unfold 4 { g,2 | }
  \repeat unfold 2 { a2 | }
  \repeat unfold 3 { d2 | }
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Allegro."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \key f \major
      \time 2/4
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "guitar tab"
    <<
      \clef moderntab
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 96 4)
    }
  }
}
