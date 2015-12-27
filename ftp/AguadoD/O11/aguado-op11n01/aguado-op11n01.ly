\version "2.19.34"

\header {
  title = "Les Favorites"
  subtitle = "Huit Contredanses"
  composer = "D. Aguado"
  opus = "Op. 11 No. 1"
  style = "Romantic"
  source = "S. Richault, Plate 6713.R."
  date = "1846"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Les Favorites"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/12/27-2091"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2015 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
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

upperVoice = \relative c {
  \repeat volta 2 {
    d16( fis) a d fis8 a |
    \voiceOne
    g8 e16 cis a4 |
    g8 a16 b a8 g |
    \once\override Beam.positions = #'(3 . 4)
    fis16[ d'\rest a] d\rest d8 r |
    \oneVoice d,16( fis) a d fis8 a |

    \mbreak
    \voiceOne
    <d, gis>8 r d'8 r |
    <b-4>8 e,16 e e8 <d gis>8 |
    <cis a'>4 r |
  }
  \repeat volta 2 {
    <a cis-1>16( b) cis <d-4> <a cis>8 <b d>8 |
    <cis e>16[ d\rest <b dis>16] d\rest <cis e>8 d\rest |
    cis16 b <a cis> <b d> <cis e>8 <d fis> |
    <e g>16 f\rest <dis fis> f\rest <e g>8 r |

    \mbreak
    g32( b16) f32\rest e( <g-2>16) f32\rest cis( <e-4>16) f32\rest  g,32( b16) d32\rest |
    g,4 fis8 r |
    b8 e \slashedGrace{d8} cis b16 cis |
    <fis, d'>4 r
  }
  \key e\minor % g\major
  <d'-2>16( <cis-1> <d-1>) e d[ d\rest d16] d\rest |
  <b d>4. r8 |
  <c d>4. r8 |

  \mbreak
  <b d>4. r8 |
  <d-2>16( <cis-1>) <d-1> e d[ d\rest d] d\rest |
  d8 g b d |
  d16( c) <a-4> <fis-1> <d-2>8 <c fis> |
  <b g'>4. r8 |
  b'4 <a-4>16( g) fis e |
  dis4 <fis, a dis> |
  e'8 fis16 g fis8( e) |

  \mbreak
  d8( b) b r |
  b'8. <a-2>16 <g-2>16( fis e) <d-2> |
  <cis-2>4 <b cis> |
  <fis d'>8 r s8 <g cis> |
  <fis d'>4 r |
  d'16( cis d) e d[ d\rest d] d\rest |
  <b d>4. r8 |
  <c d>4. r8 |

  \mbreak
  <b d>4. r8 |
  d16( cis d) e d[ d\rest d] d\rest |
  d8 g b d |
  d16( c) a fis d8 <c fis> |
  <b g'>4. r8 | \bar "|."
  \key d \major \oneVoice d,16( fis) a d fis8 a |
  \voiceOne g8 e16 cis a4 |

  \mbreak
  g8. a32 b a8 g |
  \once\override Beam.positions = #'(3 . 4)
  fis16[ r a] r d8 r |
  \oneVoice d,16( fis) a d fis8 a |
  \voiceOne <d, gis>8 r d' r |
  b8 e,16 e e8 <d gis> |
  <cis a'>4 r |
  cis16( b) cis d <a cis>8 <b d> |
  <cis e>16[ r <b dis>16] r <cis e>8 r |

  \mbreak
  << { \voiceOne cis16 b <a cis>( <b d>) <cis e>8 <d fis> } \\ {\voiceThree \once\stemDown a8 s4. } >> |
  <e' g>16[ r <dis fis>16] r <e g>8 r |
  g32( b16) r32 e,32( g16) r32 cis,32( e16) r32 g,32( b16) r32 |
  g4 fis8 r |
  b8 e \slashedGrace{d} cis8[ b16 cis16] |
  <fis, d'>4 r
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  s2 |
  <a g'>4 r |
  a4 cis |
  \once\override Beam.positions = #'(-6 . -6)
  d16[ d\rest fis] s16 a8 f\rest |
  s2 |

  e8 r e, r |
  <e' d'>4. e8 |
  a,4 r |
  s2 |
  a2~ |
  a2 |
  a2~ |

  a2 |
  cis4 d8 r |
  <g, g'>4 q |
  d'4 r |
  s2 |
  g8 d g r |
  fis8 d fis r |

  g8 d g r |
  s2 |
  <g b>4 r |
  d4. d8 |
  g8 d g,8 r |
  s2 |
  r4 b8 b |
  << {\voiceTwo e,2 } \\ {\voiceThree g'2 } >> |

  << {\voiceTwo b,4. r8 } \\ {\voiceThree fis'4. s8 } >> |
  s2 |
  a,8\rest a[ e' a,] |
  d8 d16( fis) a8\noBeam a, |
  d4 r |
  s2 |
  g8 d g r |
  fis8 d fis r |

  g8 d g r |
  s2 |
  <g b>4 r |
  d4. d8 |
  g8 d g, r |
  s2 |
  <a g'>4 r |

  a4 cis |
  \once\override Beam.positions = #'(-6 . -5)
  d16[ r fis] r a8 r |
  s2 |
  e8 r e, r |
  <e' d'>4. e8 |
  a,4 r |
  a'4 s |
  a,2~ |

  a2 |
  a4. r8 |
  s2 |
  cis4 d8 r |
  <g, g'>4 <a g'> |
  d4 r |
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 1"
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
