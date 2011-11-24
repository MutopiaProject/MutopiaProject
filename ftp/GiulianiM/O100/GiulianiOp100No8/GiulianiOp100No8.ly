\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 8"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 8"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"

 footer = "Mutopia-2011/11/24-1803"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
}

%mbreak = { \break }
mbreak = {}

upperVoice = \relative c' {
  \voiceOne
  r8 g[ bes] ees[ bes g] |
  r8^\markup{"I"} aes[ d] f[ d aes] |
  \set minimumFret = 3
  r8^\markup{"III"} bes[ ees] g[ ees bes] |
  \mbreak
  r8 g[ bes] ees[ bes g] |
  r8 bes[ d] aes'[ d, bes] |
  r8 bes[ ees] g[ ees bes] |
  \set minimumFret = 1
  r8^\markup{"I"} bes[ d] f[ d bes] |
  \mbreak
  r8 bes[ d] f[ d bes] |
  \set minimumFret = 3
  r8^\markup{"III"} bes[ ees] bes'[ ees, bes] |
  \set minimumFret = 4
  r8^\markup{"IV"} c[ ees] a[ ees c] |
  \set minimumFret = 3
  r8^\markup{"III"} b[ d] aes'![ d, b] |
  \mbreak
  \set minimumFret = 0
  r8^\markup{"I"} g[ c] g'[ c, g] |
  r8 aes[ c] f[ c aes] |
  r8 f[ aes] d[ aes f] |
  \set minimumFret = 3
  r8^\markup{"III"} g[ bes] ees[ bes g] |
  \mbreak
  s8 g[ bes] s8 g[ b] |
  r8 g[ c] ees[ c g] |
  r8 c[ ees] g[ ees c] |
  r8 g[ b] d[ b g] |
  \mbreak
  r8 b[ d] g[ d b] |
  r8 g[ c] ees[ c g] |
  \set minimumFret = 0
  r8^\markup{"I"} g[ f'] r8^\markup{"II"} g,[ ees'] |
  \set minimumFret = 3
  r8^\markup{"III"} g,[ b] d[ b g] |
  \mbreak
  r8 b[ d] g[ d b] |
  r8 b[ d] aes'[ d, b] |
  \set minimumFret = 0
  r8 g[ c] g'[ c, g] |
  r8 a[ c] fis[ c a] |
  r8 g[ d'] f[ d g,] |
  \set minimumFret = 3
  r8^\markup{"III"} g[ c] ees[ c g] |
  r8 g[ b] d[ b g] |
  \set minimumFret = 0
  r8^\markup{"I"} ees[ g] c[ g ees] |
  c2.
  \bar "||"
}

lowerVoice = \relative c {
  \voiceTwo
  e2. |
  f2. |
  \set minimumFret = 3
  g2. |
  ees2. |
  f2. |
  ees2. |
  \set minimumFret = 1
  bes2. |
  bes2. |
  g'2. |
  fis2. |
  f2. |
  ees2. |
  aes,2. |
  bes2. |
  \set minimumFret = 3
  ees2. |
  ees4. d |
  c2. |
  c2. |
  g2. |
  g2. |
  c2. |
  \set minimumFret = 0
  b4. c4. |
  \set minimumFret = 3
  g2. |
  g2. |
  f'2. |
  \set minimumFret = 0
  ees2. |
  d2. |
  b2. |
  d2.\5 |
  g,2. |
  c2. |
  c2.
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Grazioso."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \key ees \major
      \time 6/8
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
      tempoWholesPerMinute = #(ly:make-moment 110 4)
    }
  }
}
