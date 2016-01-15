\version "2.19.34"

\header {
  title = "Les Favorites"
  subtitle = "Huit Contredanses"
  composer = "D. Aguado"
  opus = "Op. 11 No. 7"
  style = "Romantic"
  source = "S. Richault, Plate 6713.R."
  date = "1846"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Les Favorites, No. 7"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/01/15-2098"
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
  \key g \major
}

upperVoice = \relative c'' {
  \voiceOne
  \repeat volta 2 {
    b8 a16 b c8 <c, fis> |
    <b g'-1>4 <d-3>8 <g-4> |
    fis8[ \slashedGrace{g8} d16 e16] fis8 a |
    <a-3>16( g) b( g) d4 |
    b'8 a16 b c8 <c, fis> |

    \mbreak
    g'4 \grace{g16[ a]} b4 |
    cis,16( d) e fis g8 cis, |
    <fis, d'>4 r |
  }
  \repeat volta 2 {
    <fis' a>8 q16 <eis gis> <fis a>8 <g b> |
    <b d>4 <ais cis> |
    <a! c!>8 q16 <gis b> <a c>8 <g b> |
    <g b-1>8( <bes-1>) <fis a> r |

    \mbreak
    \grace{a16[ b]} \tuplet 3/2 { c8 b a } \once\omit TupletNumber \tuplet 3/2 { <g-4> <fis-3> <e-1> } |
    <d-2>4 <cis-2>8 c |
    b8 <g e'>4 <c fis>8 |
    <b g'>4 r |
  }
  \key c \major
  \repeat volta 2 {
    \slurDown
    <c e g>4 \acciaccatura{g'8} c8 r |
    c,4 \acciaccatura{<c-1>8} e r |
    d8[ g,16 g] g8[ g] |

    \mbreak
    g8 a16 b c d e f |
    <e g>4 \acciaccatura{g8} c r |
    <a, d>4 \acciaccatura{<d-4>8} a' r |
    g8 g,16 g g8 g |
    <e c'>4 r |
    \repeat volta 2 {
      <b' d>8 r \acciaccatura{d8} g4 |
      <c, e>8 r \acciaccatura{e8} g4 |
      <d fis>8 fis16( g) e8 e16( fis) |

      \mbreak
      <b, d>4 r |
      <g b d>8 r \acciaccatura{d8} g'4 |
      <c, e>8 r \acciaccatura{e8} g4 |
      <fis-3>16( g) a b c8 fis, |
      g4 r |
      <e g>4 \acciaccatura{f8} c r |
      c4 \acciaccatura{c8} e8 r |
      d8 g,16 g g8 g |

      g8 a16 b c d e f |
      <e g>4 \acciaccatura{f8} c' r |
      <a, d>4 \acciaccatura{d8} a' r |
      g8 g,16 g g8 g |
      <e c'>4 r |
    }
  }
  b''8 a16 b c8 <c, f> |
  <b g'>4 d8 g |

  \mbreak
  f8 \acciaccatura{g8} f16 e f8 a |
  a16( g) b g d4 |
  b'8 a16 b c8 <c, f> |
  g'4 \grace{g16[ a]} b4 |
  cis,16( d) e f g8 cis, |
  <f, d'>4 r |
  <f' a>8 q16 <eis gis> <f a>8 <g b> |

  \mbreak
  <b d>4 <ais cis> |
  <a! c!>8 <a c>16 <gis b> <a c>8 <g b> |
  <g b>8 bes <f a> r |
  \grace{a16[ b]} \tuplet 3/2 { c8 b a} \tuplet 3/2 { g f e} |
  d4 cis8 c |
  b8 <g e'>4 <c f>8 |
  <b g'>4 r |

  \bar "|."
}

lowerVoice = \relative c' {
  \voiceTwo
  <g b>4 d |
  g4 r |
  << {\voiceTwo d2} \\ {\voiceThree\stemDown c'4 <a c>8 a\rest } >> |
  <g b>4 r |
  <g b>4 d |

  <g b>4 r |
  <a, g'>2 |
  d4 r |
  d2~ |
  d2 |
  d2~ |
  d4. r8 |

  s2 |
  r8 d[ e fis] |
  g8 e a, d |
  g4 g, |
  s2 |
  <e' g>4 s |
  <g, f'>2 |

  <c e>4 r |
  c'4 r |
  f,4 r |
  <g, g'>2 |
  c4 r |
  g'8 r r4 |
  g8 r r4 |
  g4 <g c> |

  g8 g, r4 |
  s2 |
  g'8 s s4 |
  << {\voiceTwo d2 } \\ {\voiceThree\stemDown c'4 c8\rest c } >> |
  <g b>4 s |
  c4 s |
  <c, e>4 s |
  <g f'>2 |

  <c e>4 r |
  c'4 r |
  f,4 r |
  <g, f'>2 |
  c4 r |
  <g' b>4 d |
  g4 r |

  << {\voiceTwo d2 } \\ {\voiceThree\stemDown c'4 <a c>8 a\rest } >> |
  <g b>4 r |
  <g b>4 d |
  <g b>4 r |
  <a, g'>2 |
  d4 s |
  d2~ |

  d2 |
  << {\voiceTwo d2~ | d4. r8} \\ {\voiceThree\stemDown s2 | d'4 s} >> |
  s2 |
  r8 d,[ e f] |
  g8( e) c d |
  g4 g, |
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 7"
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
    \tempo 4 = 82
  }
}
