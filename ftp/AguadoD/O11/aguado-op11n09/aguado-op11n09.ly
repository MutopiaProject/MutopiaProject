\version "2.19.34"

\header {
  title = "Les Favorites"
  subtitle = "Huit Contredanses"
  composer = "D. Aguado"
  opus = "Op. 11 No. 9"
  style = "Romantic"
  source = "S. Richault, Plate 6713.R."
  date = "1846"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Les Favorites, No. 9"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/04/09-2108"
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
  \key d \major
}

upperVoice = \relative c'' {
  \voiceOne
  \slurDown
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \override TextSpanner.dash-fraction = #0.3
  \override TextSpanner.dash-period = #1
  gis16( a) b a e( fis) g fis |
  d8 s s4 |
  r8 cis16 b cis8 e |
  r8 < fis, d'> q r |
  gis'16( a b a) e( fis g fis) |

  \mbreak
  <cis-1>16( d e d) <ais-1>( b cis b) |
  gis8 e'16 dis e8 gis, |
  <cis, a'>4 r |
  \repeat volta 2 {
    s2 |
    s2 |
    b''8 e,16 e e8 d |
    d4 cis8 r |
    s2 |

    \mbreak
    s2 |
    r4 <d gis> |
    <cis a'>4 r |
  }
  gis'16( a) b a e( d) g e |
  d8 s s4 |
  r8 cis16 b <g cis>8 e' |
  r8 <fis, d'> q r |

  \mbreak
  gis'16( a b a) e( fis g fis) |
  cis16( d e d) ais( b cis b) |
  b4 \grace{cis16[ d]} cis8 b16 cis |
  <fis, d'>4 r |
  \bar "|."
  \key d \minor
  \override TextSpanner.font-size = #-2
  \override TextSpanner.bound-details.left.text=\markup{\upright "III "}
  \oneVoice d16(^\markup{\small "med:"} e f g)\startTextSpan a8 d |
  f4 e8 d |

  \mbreak
  \set fingeringOrientations = #'(down)
  <cis-1>16( <d-2>) <e-4> <cis-1> <a-4>[\stopTextSpan r g] r |
  f16( g) d( f) d4 |
  d16( e f) d e[ r e] r |
  bes16( c <d-4> bes) c[ r c] r |
  bes16( c) d( <dis-1> <e-1>8) e, |
  a4 r |
  \repeat volta 2 {
    a''16( gis a gis) a16 r <a, a'>8 |

    \mbreak
    <b b'>16[ r <c c'>16] r <cis cis'>8 r |
    a'16( gis a gis) a8 <c, c'> |
    \voiceOne
    <d d'>16 r <dis dis'> r <e e'>8 r |
    a,16( gis) a( gis) a8 a |
    <gis, gis'>8 <g g'> f'8 d' |
    e4 \grace{cis16[ d]} cis8 b16 cis |
    <f, d'>4 r |
  }
  \key d \major
  gis'16( a) b a e( fis) g fis |

  \mbreak
  d8 s s4 |
  r8 cis16 b cis8 e |
  r8 <fis, d'> q r |
  gis'16( a b a) e( fis g fis) |
  cis16( d e d) ais( b cis b) |
  gis8 e'16 dis e8 gis, |
  <cis, a'>4 r |

  \mbreak
  s2 |
  s2 |
  b''8 e,16 e e8 d |
  d4 cis8 r |
  s2 |
  s2 |
  r4 <d gis> |
  <cis a'>4 r |

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set stringNumberOrientations = #'(down)
  \set fingeringOrientations = #'(down)
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \override TextSpanner.font-size = #-5
  \override TextSpanner.dash-fraction = #0.3
  \override TextSpanner.dash-period = #1
  \slurUp
  s2 |
  r8 d16( <cis-3> d e) <fis-4>( d) |
  << {\voiceTwo a2 } \\ {\voiceThree\stemDown s4 g' } >> |
  <d\2>4. s8 |
  s2 |

  s2 |
  <e, d'>2 |
  a4 r |
  a16(^\markup{\small "med:"} b) <cis-3>[( <d-4>)] <e-1>( <fis-1>) <gis-3^\2>[( <a-4>)] |
  a4 gis |
  <e d'>4. gis8 |
  a4. r8 |
  \override TextSpanner.bound-details.left.text=\markup{\circle\number 2}
  a,16( b) cis( d) <e-1>( <fis-1>) <gis-3>(\startTextSpan <a-4>) |

  <gis-4>16( <fis-2>) <eis-1>(\stopTextSpan <fis-1>) <e-1>( d) cis( b) |
  e4 e, |
  a4 r |
  s2 |
  r8 d16( cis) d( e) fis( d) |
  a2 |
  d4. r8 |

  s2 |
  s2 |
  <g, g'>4 <a g'> |
  d4 r |
  s2*2 |

  s2*7 |

  s2*3 |
  s4 s8 a |
  s4 f |
  <g bes'>4 <a g'> |
  d4 r |
  s2 |

  r8 d16( cis d e) fis( d) |
  << {\voiceTwo a2} \\ {\voiceThree\stemDown s4 g'} >> |
  d4. s8 |
  s2*2 |
  <e, d'>2 |
  a4 r |

  a16( b) cis[( d)] e( fis) gis[( a)] |
  a4 gis |
  <e d'>4. gis8 |
  a4. r8 |
  a,16( b) cis( d) e( fis) gis( a) |
  gis16( fis) eis( fis) e( d) cis( b) |
  e4 e, |
  a4 r |
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 9"
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
    \tempo 4 = 74
  }
}
