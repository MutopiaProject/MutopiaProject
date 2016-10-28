\version "2.19.48"

\header {
  title = "Divertissements, No. 4"
  composer = "Mauro Giuliani"
  opus = "Op. 78 No. 4"
  style = "Classical"
  source = "Pietro Mechetti, plate 495"
  date = "ca.1817"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Divertissements, No. 4"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/10/28-2143"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  top-margin = #8
  bottom-margin = #12
%  system-count = #8
}

mbreak = {} % { \break }
global = {
  \time 6/8
  \key d \major
}

upperVoice = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \partial 4. {fis'8.[ g'16 fis'8]} |
  e'4 b8 \grace{d'16} cis'8.[ b16 cis'8] |
  d'4. <fis d'>8 <a e'> <d' fis'> |
  <e' g'>4 q8 <d' fis'>8.[ g'16 a'8] |
  <cis' e'>4. \grace{g'16} fis'8.[ e'16 fis'8] |

  \mbreak
  g'4 b'8 b8.[ cis'16 dis'8] |
  e'4. <ais cis'>8 g' <a cis' g'>8 |
  <b d' fis'>8[ a' g'16 e'16] <fis d'>8 <a fis'> <g cis' e'>8 |
  <<{\voiceOne d'4 r8 d'8 e' fis'}\\
    {\voiceThree\stemDown s4 s8 d' cis' c'}>> |
  a'8 g' fis' e' g' cis' |

  \mbreak
  d'4. <d' fis'>8 q q |
  <cis' e'>8[ a' <d' fis'>16 <b d'>16] <a cis'>8[ e' <b d'>16 <gis b>16] |
  r16 e a e cis' a e' cis' a' gis' \grace{g'} fis' e' |
  <d' e'>16[ q8 q q q q q16] |

  \mbreak
  <cis' e'>16 e a e  cis' a e' cis' a' gis' \grace{gis'} fis' e' |
  <d' e'>16[ q8 q q q q q16] |
  <a cis'>4. r16 \grace{b} a gis a d' cis' |
  <gis b>4. r16 \grace{cis'} b ais b e' d' |

  \mbreak
  <e g cis'>4. r16 \grace{d'} cis' bis cis' fis' e' |
  d'4. <fis d'>8 <e e'> <dis fis'> |
  <e a cis' g'>4. fis'8[ eis'16 fis' g' fis'16] |
  eis'4 b8 d'16 cis' b a b cis' |
  d'4. d'8 e' fis' |

  \mbreak
  <e' g'>4 q8 <d' fis'>4 q8 |
  <cis' e'>4. fis'8[ g'16( fis') e' fis'16] |
  g'4 b'8 b8[ ais16 b cis' dis'16] |
  e'4. r16 ais cis' g' g' g' |

  \mbreak
  r16 b d' fis' g' e' fis a d' fis' e' cis' |
  d'4. <a c' fis'>8.[ e'16 fis'8] |
  <g b g'>4 e'8 \grace{d'16} cis'8.[ b16 c'8] |
  d'4. <a c'  fis'>8[ g'16( fis') e' fis'16] |

  \mbreak
  g'8.[ fis'16 e' d'16] d' cis' b a b cis' |
  d'4. a8 a a |
  fis4. e8 e e |
  d4. <a cis' a'>8 q q |
  <a d' fis'>4. r8 <e' g' cis'> q |
  <d' fis' d''>4. r4 r8

  \bar "|."
}

lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  \partial 4. {<d a>4.\p} |
  <d gis>4. <d g> |
  <d fis>4. r4 r8 |
  r8 a,8[ cis] d4. |
  a,4. <d a c'> |

  <g bis>4. <fis a> |
  <e g>4. e4 e8 |
  d4 <g, g b>8 a,4 a,8 |
  <d fis>8 d d \shiftOnn d d d \shiftOn |
  <d g b>8 d d <d g> d d |

  <d fis>4. d8 fis gis |
  a4 d8 e4 e,8 |
  a,4. a, |
  e,8 b, a, gis, fis, e, |

  a,4. a, |
  e,8 b, a, gis, fis, e, |
  a,8 a, a, a, a, a, |
  <a, d>8 a, a, a, a, a, |

  \repeat unfold 2 {<a, d>8 a, a, a, a, a, |}
  a,4. <d a> |
  <d gis>4. <d g> |
  <d fis>4. fis16 a cis a d a |

  a,16 gis, a, b, cis a, d cis d e fis gis |
  a4. <d a cis> |
  <g b>4. <fis a> |
  <e g>4. e |

  d4 <g, g b>8 a,4 <a, g>8 |
  <d fis>8 d d d d d |
  d8 d d <d g> d d |
  <d fis>8 d d d d d |

  <d g b>8\p d d <d g> d d |
  <d fis>4. fis8 fis fis |
  d4. a,8 a, a, |
  fis,4.\mf a,8 a, a, |
  d4. a,8\f a, a, |
  d4.\ff r4 r8
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 4"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Andantino."
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    % tabs are not completely developed
    \new TabStaff = "Guitar tabs" \with {
      restrainOpenStrings = ##t
    } <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 90
  }
}
