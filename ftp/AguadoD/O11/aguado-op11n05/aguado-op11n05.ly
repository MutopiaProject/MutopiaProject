\version "2.19.34"

\header {
  title = "Les Favorites"
  subtitle = "Huit Contredanses"
  composer = "D. Aguado"
  opus = "Op. 11 No. 5"
  style = "Romantic"
  source = "S. Richault, Plate 6713.R."
  date = "1846"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Les Favorites, No. 5"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/01/15-2096"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #12
}

mbreak = {} % { \break }
global = {
  \time 2/4
  \key c \major
}

upperVoice = \relative c' {
  \voiceOne
  g8 g16( a) g8 c |
  <f, b>4 g8 r |
  d'8 d16 b g8 g |
  <e g>8. a16 g8 r |
  g8 a16 b c8 e |
  e4 d |

  \mbreak
  b8 b16 a b8 d |
  <e, c'>4 c'\rest^\markup{\italic "Fin"} |
  \repeat volta 2 {
    d8 d16 e d8 g |
    g4 fis8 r |
    <a-3>8 a16 gis a8 b |
    a4 g8 r |
    <g, b>2 |
    <g~ c>4 <g c e>8 r |

    \mbreak
    <b d>4 \grace{fis'16[ g]} fis8 e16 fis |
    <b, g'>4 r |
  }
  g8 g16( a) g8 c |
  b4 g8 r |
  d'8 d16 b g8 g |
  g8. a16 g8 r |
  g8 a16 b c8 e |
  e4 d |

  \mbreak
  b8 b16 a b8 d |
  <e, c'>4 r |
  \key f \major
  \repeat volta 2 {
    c'2~ |
    c8 d e f |
    f8 e d e |
    <e-1>4 <c-1> |
    a'8 e( <g-4>) f |
    e8 d d4 |
    c8( b) <d-4> c |

    \mbreak
    a4 r |
    \repeat volta 2 {
      r8 c[ b( c)] |
      r8 c[( b) c] |
      d8[ g, g g] |
      g8. g16 g8 r |
      g8[ c b( c)] |
      a8[ c b( c)] |
      <g b f'>2 |

      \mbreak
      <g c e>4 r |
      c2~ |
      c8 d e f |
      f8 e d e |
      f4 c8 r |
      a'8 e( g) f |
      e8 d d4 |
      c8( b) d c |
      a4 r |
    }
  }

  \mbreak
  \key c \major
  g8 g16( a) g8 c |
  b4 g8 r |
  d'8 d16 b g8 g |
  g8. a16 g8 r |
  g8 a16 b c8 e |
  e4 d |
  b8 b16 a b8 d |
  <e, c'>4 r |

  \mbreak
  d'8 d16 e d8 g |
  g4 fis8 r |
  a8 a16 gis a8 b |
  a4 g8 r |
  <g, b>2 |
  <g~ c>4 <g c e>8 r |
  <b d>4 \grace{fis'16[ g]} fis8 e16 fis |
  <b, g'>4 r_"D.C."

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(left)
  <c e>2 |
  d4. r8 |
  <b f'>2 |
  a4. r8 |
  <c e>2 |
  <f a>2 |

  <g, f'>2 |
  c4 r |
  <g' b>4. r8 |
  <a c>4. r8 |
  <d, c'>2 |
  <g b>4. r8 |
  g,8 g16 fis g8 f |
  e4 c'8 r |

  << {\voiceTwo d2 } \\ {\voiceThree\stemDown s4 <a' c>4 } >> |
  g4 g, |
  <c e>2 |
  <d f>4. r8 |
  <b f>2 |
  <c e>4. r8 |
  <c e>2 |
  <f a>2 |

  <g, f'>2 |
  c4 r |
  <f a>4 <e bes'> |
  <f a>4 r |
  <c bes'-3>2 |
  <f a>4 s |
  s2 |
  <bes, f'>2 |
  <bes e>4 <e bes'>4 |

  f4 r |
  <c e g>2 |
  <c f a>2 |
  <g f'>2 |
  <c e>4. r8 |
  <c e g>2 |
  <c f a>2 |
  r8 g[ a b] |

  c4 r |
  <f a>4 <e b'> |
  <f a>4 r |
  <c bes'>2 |
  <f a>4. r8 |
  s2 |
  <bes, f'>2 |
  <c e>4 <e bes'> |
  f4 r |

  <c e>2 |
  <d-4 f>4. r8 |
  <b f'>2 |
  <c e>4. r8 |
  <c e>2 |
  <f a>2 |
  <g, f'>2 |
  c4 r |

  <g' b>4. r8 |
  <a c>4. r8 |
  <d, c'>2 |
  <g b>4. r8 |
  g,8 g16 fis g8 f |
  e4 c'8 r |
  << {\voiceTwo d2} \\ {\voiceThree\stemDown s4 <a' c>4} >> |
  g4 g,
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 5"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"

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
    \tempo 4 = 86
  }
}
