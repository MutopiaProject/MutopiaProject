\version "2.16.1"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 3"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 3"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 3"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "N. Simrock"
  % From Boije 481-2, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/08/18-1852"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

fStem = {
  \override Fingering #'add-stem-support = ##t
}

upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(left)
  \repeat volta 2 {
    \partial 4 e8. e16 |
    e4 <d-1> <c-1> |
    c4 b <f'-1>8. f16 |
    <f-1>4 <e-0> <d-1> |
    <d-1> <c-1> e8. e16 |
    <e-0>4 <f-1> <fis-3> |
    <g-4> <f-1> <e-0> |
    <e-0>8. <d-4>16 c4 b |
    <c-1>2
  }
  \repeat volta 2 {
    e8. e16
    e4 e e |
    <g-4>4 <d-3>4 <d-4>8. d16 |

    d4 d d |
    <a-2 f'-1>2 <f'-1>8. f16 |
    <a,-2 f'>4 <b-0 f'> <a-2 f'> |
    <e'-0>4 b e8. \once\fStem <d-4>16 |
    \slashedGrace d8 <c-1>8. b16 <c-1>4 <d-4> |
    <gis,-1 e'>2 e'8. e16 |
    e4 d c |
    c4 b f'8. f16 |
    \grace {e16[ f g]} f4 e d |
    d4 c <e-0>8. e16 |
    <f-1>4 <fis-2>8. fis16 <g-4>4 |
    <gis-4>4 <a-4> <g-1>8. f16 |
    <c-1 e>8. \once\fStem <b-3 d-1>16 <a-2 c-1>4 <gis-1 b-0> |
    <a-2>2 a4\rest |
  }
}


lowerVoice = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(left)
  \stemDown
  \repeat volta 2 {
    \partial 4 c4 |
    c4 b a |
    a gis d' |
    d c b |
    b a s4 |
    s2. |
    s2. |
    s2. |
    s2
  }
  \repeat volta 2 {
    s4
    c4 c4 c8. c16 |
    c4 s2  |
    \stemDown bes4 bes4 bes8. bes16 |
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    c4 b a |
    a4 gis d' |
    d4 c b |
    b4 a <a-2 c-1>~ |
    <a c>4 c8. c16 <b g>4 |
    <d-2>4 <c-3 f,-1>4 <e-3>8. <d-3>16 |
    s2.*2
  }
}

middleVoice = \relative c {
  \voiceThree
  \set fingeringOrientations = #'(left right)
  \stemDown
  \tieDown
  \repeat volta 2 {
    \partial 4 f,4\rest |
    a2. |
    f2 f4\rest |
    f2. |
    a2 f4\rest |
    < a' c >2 < aes c >4 |
    < f a >2 < a c >4 |
    < f a >4 < e g >4 < d g, > |
    < c e >2
  }
  \repeat volta 2 {
    s4
    c2 c4 |
    <g-2>4 f4\rest f4\rest |
    bes2 bes4 |

    <f-1>2 <f'-3 a-2>4 |
    d2 d4 |
    <e-1 gis-1>2 <gis e,>4 |
    <a-2 a,>2 <a f,-1>4 |
    e,4 <e'-2> e\rest |
    a,2. |
    e2 e4\rest |
    e2. |
    a2. |
    s4 d s |
    <e-1>8. e16 s4 <d-0> |
    <e-2>4 e,\rest e |
    a2 s4 |
  }
}

\score {
  <<
    \new Staff = "guitar" \with {
      \override Fingering #'staff-padding = #'()
      \override Fingering #'add-stem-support = ##t
    }
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \tempo "Larghetto"
      \clef "treble_8"
      \time 3/4
      \mergeDifferentlyHeadedOn
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
      \context Voice = "middleVoice" \middleVoice
    >>
%{
    \new TabStaff = "guitar tab"
    <<
      \clef moderntab
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
      \context TabVoice = "middleVoice" \middleVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 100
  }
}
