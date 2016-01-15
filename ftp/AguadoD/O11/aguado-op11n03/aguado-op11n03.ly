\version "2.19.34"

\header {
  title = "Les Favorites"
  subtitle = "Huit Contredanses"
  composer = "D. Aguado"
  opus = "Op. 11 No. 3"
  style = "Romantic"
  source = "S. Richault, Plate 6713.R."
  date = "1846"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Les Favorites, No. 3"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/01/15-2094"
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

mbreak = { } % { \break }
global = {
  \time 2/4
  \key d \major
}

upperVoice = \relative c {
  \voiceOne
  fis8 fis16 e fis8 g |
  <fis a>16[ r <dis gis>16] r <fis a>8 r |
  fis8 fis16 e <d fis>16 r <g b> r |
  <fis a>8( <dis gis>8) <d g>8 r |
  e'8. d16 cis b a g |

  \mbreak
  <d fis>8 d16( fis) a d fis a |
  <cis, g'>8 <e'-4>16 dis e8 <g, cis-3> |
  <fis d'>16[ r q ] r q8 r |
  \repeat volta 2 {
    <a,-2>8 <a-2>16( <gis-1>) a <cis-1> e a |
    fis8 r r4 |
    gis,8 gis16( fis) gis( <a-3>) b e |

    \mbreak
    cis8 r r4 |
    <a-1>16( b) cis d e( <fis-1>) g a |
    eis16( fis) <cis-1>( d) <ais-2> b( <d-3>) <fis-1>~ |
    fis8 e4 gis,8 |
    <d b'>4 <cis a'>8 r^\markup{\italic "Fin."} |
  }
  fis8 fis16 fis <d fis>8 <e g> |

  \mbreak
  <fis a>16[ r <eis gis>16] r <fis a>8 r |
  fis8 fis16 e fis8 <g b> |
  <fis a>8( <eis gis>8) <e g> r |
  e'8. d16 cis b a g |
  \oneVoice <d fis>8\noBeam d16( fis) a d fis a |
  \voiceOne <cis, g'>8 <e'-4>16 dis e8 <g, cis> |

  \mbreak
  <fis d'>4 r |
  \repeat volta 2 {
    \key g \major % e\minor
    <g-1>8 g16 b <d,-1>8 d |
    <b d>16[ r <ais cis>16] r <b d>8 r |
    r4 fis'8 e16 fis |
    <b, g'>4 r |
    g'8 g16 b <d,-1>8 d |
    <b d>16[ r <ais cis>16] r <b d>8 r |

    \mbreak
    <g c e>4 <a c g'>16( fis') e fis |
    <b, g'>4. r8 |
  }
  c'16( a) fis <d-2> d,8[ \slashedGrace{cis8} d8] |
  d''16( b) <g-2> <d-1> d,8[ \slashedGrace{cis8} d8] |
  \grace{c''16[ d]} <a c>8 <gis b> \grace{c16[ d]} <a c>8 <g b> |
  \grace{a16[ b]} <fis a>8 <eis gis> <fis a>4 |

  \mbreak
  c'16( a) fis d d,8[ \slashedGrace{cis8} d8] |
  d''16( b) g d d,8[ \slashedGrace{cis8} d8] |
  cis'16( d) e fis a( g) b, cis |
  <fis, d'>4 r |
  g'8 g16 b d,8 d |
  <b d>16[ r <ais cis>16] r <b d>8 r |

  \mbreak
  r4 \grace{fis'16[ g]} fis8 e16 fis |
  <b, g'>4 r |
  g'8 g16 b d,8 d |
  <b d>16[ r <ais cis>16] r <b d>8 r |
  <g e'>4 g'16 fis e fis |
  <b, g'>4. r8
             
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  d4 d8 e |
  s2 |
  d4 s |
  s2 |
  <a g'>4. r8 |

  s2 |
  a2 |
  d4. r8 |
  a2 |
  r8 <d fis>8 q r |
  e,2 |

  r8 <a cis> q r |
  a2 |
  s2 |
  e'4 e, |
  r8 e a r |
  d4 s |

  s2 |
  d4 s |
  s2 |
  <a g'>4. r8 |
  s2 a2 |

  d4 r |
  <g b>4 r |
  s2 |
  <d a' c>2 |
  g8 d <b_1> d |
  <g b>4 r |
  s2 |

  cis,4 d |
  g8 d g, r |
  s2 |
  s2 |
  d'2~ |
  d2 |

  s2*2 |
  <a g'>2 |
  d4 r |
  <g b>4 r |
  s2 |

  <d a' c>2 |
  g8 d b d |
  <g b>4 r |
  s2 |
  << {\voiceTwo c,4 d } \\ {\voiceThree s4 <a' c>4 } >> |
  g8 d g, r_"D.C."
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 3"
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
