\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 1"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"

 footer = "Mutopia-2011/11/19-1796"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
}

upperVoice = \relative c' {
  \voiceOne
%  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
%  \mark "Cadence. Maestoso."
  r8 g16[ c] e[ c g c,] r8 g'16[ d'] f[ d b b,] |
  r8 g'16[ c] e[ c g c,] r8 g'16[ b] f'[ b, g d] |
  r8 g16[ c] e[ c g e] r8 a16[ d] f[ d a f] |
  r8 g16[ c] e[ c g g,] r8 g'16[ b] f'[ b, g g,] |
  r8 g'16[ c] e[ c g c,] r8 gis'16[ d'] e[ d gis, b,] |
  r8 a'16[ c] e[ c a a,] r8 gis'16[ d'] e[ d gis, b,] |
  r8 a'16[ c] e[ c a c,] r8 a'16[ c] e[ c a a,] |
  r8 a'16[ d] f[ d a d, ] r8 a'16[ d] f[ d a f] |
  r8 a16[ c] e[ c a e] r8 gis16[ d'] e[ d gis, e,] |
  <a' c>2 r2 |
  \bar "||"
  
}

lowerVoice = \relative c {
  \voiceTwo
  c4^\markup{ "I"} r b r |
  c4 r d r |
  e4 r f r |
  g,4 r g r |
  c4 r b r |
  a4 r b r |
  c4 r a r |
  d4 r f r |
  e4 r e, r |
  a2 r2 |
}

\score {
  <<
    \new Staff = "Guitarre"
    <<
      \set Staff.instrumentName = \markup {\column {"Cadence." "Maestoso."}}
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
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
