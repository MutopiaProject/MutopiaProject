\version "2.19.34"

\header {
  title = "Les Favorites"
  subtitle = "Huit Contredanses"
  composer = "D. Aguado"
  opus = "Op. 11 No. 8"
  style = "Romantic"
  source = "S. Richault, Plate 6713.R."
  date = "1846"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Les Favorites, No. 8"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/01/15-2099"
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

mbreak = { \break }
global = {
  \time 2/4
  \key g \major
}

upperVoice = \relative c'' {
  \voiceOne
  \repeat volta 2 {
    \partial 8 { b16. <a-2>32 }
    g8 r r b16. a32 |
    g8 r r a16 b |
    c8 r r a |
    g16( a) b g d8\noBeam b'16. a32 |
    g8 r r b16. a32 |

    \mbreak
    g8 r r a16 b |
    c8 <d,-3> <cis e> <c fis> |
    <b g'>4 r |
    \set Score.repeatCommands = #'(end-repeat)
    fis'16( g gis a) <a, c~>4 |
    <a c>8\noBeam <g b>16 <fis a> <g b>8 <b d> |
    <a c>8\noBeam c'16( a) fis16 <d-3> e c |
    b16( <d-3>) c( <e-3>) d8 r |

    \mbreak
    fis16( g gis a) <a,-3 c~>4 |
    q8 <g b>16 <fis a> <g b>8 d' |
    <c e>4 <a c g'>16( fis') e fis |
    <b, g'>4. r8 |
  }
  \key c \major
  fis'16( g) a g e( <g-4>) c, e |
  g,4. g'8 |
  <fis-1>16( g) a g f( e) d c |

  \mbreak
  g4. r8 |
  fis'16( g) a g e( g) c, e |
  g,4. d'16 e |
  f8 g, b d |
  c4 r |
  \repeat volta 2 {
    \set Timing.measureLength = #(ly:make-moment 1/8)
    g16( <a-2>) |
    \set Timing.measureLength = #(ly:make-moment 2/4)
    g8 g16( a) g8 g16( a) |
    g8 <d' f>4 <c e>8 |

    \mbreak
    <b d>8 <c e> <d f> <c e> |
    <b d>8 r r g16( a) |
    g8 g16( a) g8 g16( a) |
    g8 <d' f>4 <c a>8 |
    r8 <b d>8 c8 fis |
    g4 r8 g |
    fis16( g) a g e( g) c, e |
    g,4. g'8 |

    \mbreak
    fis16( g) a g f( e) d c |
    b4. g'8 |
    fis16( g) a g e( g) c, e |
    g,4. d'16 e |
    f8 g, b d |
    <e, c'>4 r |
    \set Score.repeatCommands = #'(end-repeat)

    \key g \major
    \set Timing.measureLength = #(ly:make-moment 1/8)
    b''16. a32 |
    \set Timing.measureLength = #(ly:make-moment 2/4)
    g8 r r b16. a32 |

    \mbreak
    g8 r r a16 b |
    c8 r r a |
    g16 a b g d8\noBeam b'16. a32 |
    g8 r r b16. a32 |
    g8 r r a16 b |
    b8 d, <cis e> <c fis> |
    <b g'>4 r |
  }
  fis'16( g gis a) <a, c~>4 |
  
  \mbreak
  <a c>8 <g b>16 <fis a> <g b>8 <b d> |
  <a c>8\noBeam c'16( a) fis d e c |
  b16( d) c( e) d8 r |
  fis16( g gis a) <a, c~>4 |
  <a c>8 <g b>16 <fis a> <g b>8 d' |
  <c e>4 g'16( fis) e fis |
  <b, g'>4 r |

  \bar "|."
}

lowerVoice = \relative c' {
  \voiceTwo
  \partial 8 { s8 }
  \repeat unfold 2 { r8 <g b d> q r | }
  r8 <d c' fis> q r |
  <g b>4 r |
  r8 <g b d> q r |
  
  r8 <g b d> q r |
  d4. s8 |
  g4 r |
  << {
    \voiceTwo d2 | s2
  } \\ {
    \voiceThree\stemDown \set fingeringOrientations = #'(left) s4. <fis,-2>8( | <g-4>8) r r4
  } >> |
  d'2 |
  g4. r8 |

  d4. fis,8 |
  g8 r r4 |
  c4 d |
  g8[ d g,] r |
  s2 |
  b8\rest <c e> q b\rest |
  s2 |

  r8 <d f> q r |
  s2 |
  r8 <c e> q r |
  s4 <g f'> |
  <c e>4 r |
  \set Timing.measureLength = #(ly:make-moment 1/8)
  s8 |
  \set Timing.measureLength = #(ly:make-moment 2/4)
  s2 |
  g'8 b,4 c8 |

  g'8 g g g |
  g8 g, g r |
  s2 |
  s8 b4 c8 |
  << {\voiceTwo d2 } \\ {\voiceThree\stemDown s4 a'} >> |
  <g b>4 s |
  s2 |
  b,8\rest <c e>8 q  b\rest |

  s2 |
  r8 <d f> q r |
  s2 |
  r8 <c e> q r |
  s4 <g f'> |
  c4 r |
  \set Timing.measureLength = #(ly:make-moment 1/8)
  s8 |
  \set Timing.measureLength = #(ly:make-moment 2/4)
  r8 <g' b d> q r |

  r8 <g b d> q r |
  r8 <d c' fis> q r |
  <g b>4 r |
  r8 <g b d> q r |
  r8 <g b d> q r |
  d2 |
  g4 r |
  d4. fis,8( |

  g8) r r4 |
  d'2 |
  g4. r8 |
  d4. fis,8( |
  g8) r r4 |
  c4 <d a' c> |
  g8 g, r4 |
  
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 8"
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
