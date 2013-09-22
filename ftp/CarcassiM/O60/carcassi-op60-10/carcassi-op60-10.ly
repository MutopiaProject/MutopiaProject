\version "2.16.1"
\header {
  title = "Etude 10"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 10"
  mutopiacomposer = "CarcassiM"
  mutopiaopus = "O 60"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Mayence, B. Schott's Söhne"
  % From Boije 94
  date = "1853"
  enteredby = "Glen Larsen"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/09/22-1870"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

global = {
  \time 3/8 \key d \major
}

rf = #(make-dynamic-script "rf")
gpos = #(define-music-function (parser location text) (string?)
	 #{ \mark\markup{\teeny\italic #text } #})

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

upperVoice = \relative c' {
  \voiceOne
  \tempo "Allegretto"
  \set restrainOpenStrings=##t
  \repeat volta 2 {
    \set minimumFret=#5
    <fis-3 a-1>8 \repeat unfold 2 { \times 2/3 { q16[ b a] } } |
    <fis a>8 <d-2 fis-3> q |
    \set minimumFret=#7
    <g-2 b-1>8 \repeat unfold 2 { \times 2/3 { q16[ cis b] } } |
    <g b>8 <g-2 e-3> q |
    \set minimumFret=#5
    <g e>8 \repeat unfold 2 { \times 2/3 { q16[ b g] } } |
    <g e>8 <e-5 cis-4> q |
    <a fis>8 \repeat unfold 2 { \times 2/3 { q16[ b a] } } |
    <a fis>8 <fis d> q |

    <gis d>8 \repeat unfold 2 { \times 2/3 { q16[ a gis] } } |
    <gis d>8 <b-4 d,-5> q |
    <a-1 cis,-2>8 \repeat unfold 2 { \times 2/3 { q16[ b a] } } |
    <a cis,>8 <cis-4 e,-3\3> <cis e,\3> |
    <b-2 d,-1>8 \repeat unfold 2 { \times 2/3 { q16[ cis b] } } |
    <b d,>8 d <gis,-2 d> |
    <a cis,>8 \repeat unfold 2 { \times 2/3 { q16[ b a] } } |

    <a cis,>4 r8 |
  }
  \repeat volta 2 {
    <g e>8 \repeat unfold 2 { \times 2/3 { q16[ a g] } } |
    <g e>8 <e cis> q |
    <a fis>8 \repeat unfold 2 { \times 2/3 { q16[ b a] } } |
    <a fis>8 <fis d> q |
    <b-1 g-2>8 \repeat unfold 2 { \times 2/3 { q16[ cis b] } } |
    <b g>8 <g e>8 q |
    <g-1 e-3>8 \repeat unfold 2 { \times 2/3 { q16[ a g] } } |

    <g e>8 <e cis> q |
    <fis d>8 \repeat unfold 2 { \times 2/3 { q16[ g fis] } } |
    <fis d>8 <a fis> q |
    <g e>8 \repeat unfold 2 { \times 2/3 { q16[ a g] } } |
    <g e>8 <b g> q |
    <e, cis>8 \repeat unfold 2 { \times 2/3 { q16[ fis e] } } |
    <e cis>8 <g e> q |
    <fis d>8 \repeat unfold 2 { \times 2/3 { q16[ g fis] } } |
    <fis d>8 <a fis> q |

    <c-1 a-3>8 \repeat unfold 2 { \times 2/3 { q16[ d c] } } |
    <c a>8 <a fis> q |
    <d-1 b-3>8 \repeat unfold 2 { \times 2/3 { q16[ e d] } } |
    <d b>8 <b g> q |
    <a fis>8 \times 2/3 { q16[ b a] } <a fis>8 |
    <cis-2 g-1>8 \times 2/3 { q16[ d cis] } <cis g>8 |
    \set minimumFret=#10
    <d-1 fis,-2>8 \repeat unfold 2 { \times 2/3 { q16[ e d] } } |
    <d fis,>4 r8
  }

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  d4.\mf |
  \repeat unfold 6 { d4. | }

  d4. | e,4.\cresc | e4. | a4.\f | a4. | d4. | d4 e,8 | a4. |

  a4 s8 |
  a4.\mf |
  \repeat unfold 6 { a4. | }

  a4. | \repeat unfold 8 { d4. | }

  d4.\rf | d4. | g4. | g4. | a,4.\mf | a4. | d4. | d4 s8 |
}


\score {
  <<
    \new Staff = "Guitar" \with {
      \override DynamicTextSpanner #'style = #'none
      \override Fingering #'staff-padding = #'()
      \override Fingering #'add-stem-support = ##t
    }
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \global
      \clef "treble_8"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "Guitar tabs"
    <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {
    \override Voice.StringNumber #'stencil = ##f
  }
  \midi {
    \tempo 4 = 90
  }
}
