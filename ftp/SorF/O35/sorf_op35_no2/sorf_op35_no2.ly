\version "2.16.1"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 2"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 2"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 2"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "N. Simrock"
  % From Boije 481 & 482, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/08/18-1851"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

global = {
  \time 3/8
}

upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \global
  \repeat volta 2 {
    \partial 8 { e8 | }
    f8-1 d-4 b-0 |
    c8-1 g e |
    d8 g f-4 |
    e8-2 g e' |
    g16-4([ f-1 ) ] d8-4 b-0 |

    c8 e g, |
    a8-2 d-4 b |
    c8 b8\rest
  }
  \repeat volta 2 {
    e8 |
    d8-4 g, c-1 |
    b8 g e' |
    d8 g, c |

    b8 g c-1 |
    d8-4 g, dis'-4 |
    e8 g, e' |
    gis16-4([ f-2 ] ) e8-0 f-3 |
    g8-4 r e |
    f8 d b |

    c8 g e |
    d8 g f |
    e8 g e' |
    g16-4([ f-1 ] ) d8-4 b-0 |
    g'8-4 e c-1 |
    d8-4 a-2 b |
    c8-1 r4
  }
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 8 { c8-3 }
  \repeat volta 2 {
    d4 f8 |
    e4-2 c8-3 |
    b4.-2 |
    c4-3 c8 |
    d4-0 f8-3 |
    e4-2 e8 |
    f4-3 g8 |
    c,8 s8
  }
  \repeat volta 2 {
    c8 |
    b4-2 a8-0 |
    g4-3 c8-3 |
    b4 a8 |
    g4-3 a8 |
    b4-2 b8-2 |
    c4-3 s8 |
    <d c'>4  <d c'>8 |
    <g b>8 r8 c,8-3 |
    d4 f8 |
    e4 c8 |
    b4. |
    c4 c8 |
    d4 f8-3 |
    e4-2 e8 |
    f4 g8 |
    c, r4
  }
}


middleVoice = \relative c {
  \voiceThree
  \stemDown
  \partial 8 { s8 }
  \repeat volta 2 {
    \repeat unfold 7 { s4. }
    s4
  }
  \repeat volta 2 {
    s8
    \repeat unfold 3 { s4. }
    d8\rest g4 |
    g8\rest g4 |
    g8\rest g c |
    \repeat unfold 10 { s4. }
  }
}


\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \tempo "Andantino"
      \global
      \clef "treble_8"
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
      \context Voice = "middleVoice" \middleVoice
    >>
%{
    \new TabStaff = "Guitar tabs"
    <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
      \context TabVoice = "middleVoice" \middleVoice
    >>
%}
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner
      #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
