\version "2.18.2"

\header {
  title = "8 Petites Pièces"
  composer = "D. Aguado"
  opus = "Op. 3 No. 5"
  style = "Romantic"
  source = "Mainz: B. Schott Söhne, plate 2674"
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 003 - http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4032
  date = "1830"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "8 Petites Pièces for Guitar, No. 5"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/02/12-2053"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

mbreak = {} % { \break }
global = {
  \time 3/8
  \key a \minor
}

motif_u_a = {
  c16.) fis,32_( a16.[) dis,32]_( e16.) d32 |
  \slashedGrace {d8} c4 \slashedGrace {g'8} f16. e32 |
  e4 d16. b32 |
  d16. c32 s8 \slashedGrace {a'16[ gis]} a16. b32( |
  c16.) b32_( a16.[) g32_(] fis16.) e32 |
  e8.[( dis16)] dis16. f32 |
  b4~ b16. dis,32 |
  <e b>4
}

upperVoice = \relative c'' {
  \voiceOne
  \repeat volta 2 {
    \partial 4 { s8 \grace { a16[ gis] } \stemDown a16. b32( } \stemUp |
    \motif_u_a
  }
  \repeat volta 2 {
    \grace{e16[ dis]} \stemDown e16. e32 \stemUp |
    gis8 e8[ \grace{e32[ dis]} e16. e32] | % Source has quarter-note on first beat.
    a8 e8[ \grace{e32[ f]} e16. e32] |     % ... this line also.
    b'8 b c |
    \mbreak
    d8. d16_( b16.)[ b32]( |
    gis16.) gis32_( f16.)[ f32]_( d16.) d32 |
    <b gis>4. |
    <c a>4 <b gis d>8 |
    <a c,>4
  }
  \key a\major
  \repeat volta 2 {
    e'16. e32 |
    \mbreak
    e8 cis'8. b16 |
    b4( a16.) gis32 |
    gis8.( fis16) a16.[ fis32] |
    e8 <cis a> e16.[ e32] |
    e8 d'8.[ b16] |
    \mbreak
    e,8 cis'8. b16 |
    r8 <dis, a> q |
    <e gis,>4
  }
  \repeat volta 2 {
    <gis, e>16. q32 |
    q8 <a fis> <b gis> |
    <d b> <cis a> <ais fis>16.[ q32] |
    q8 <b gis> <cis ais> |
    \mbreak
    <e cis>8 <b gis> <b' b,>16.[ q32] |
    q8 <cis cis,> <d d,> |
    <fis fis,>8. <e e,>16 <cis cis,>16.[ <a a,>32] |
    r8 <a cis,> <gis d b> |
    a4
  }
  \key a\minor
  \repeat volta 2 {
    \grace{ a16[ gis] } \stemDown a16. b32( \stemUp |
    \mbreak
    \motif_u_a
  }
  \grace{ e16[ dis] } e16. e32 |
  gis8 e8[ \grace{ e32[ dis] } e16. e32] |
  a8 e8[ \grace{ e32[ f] } e16. e32] |
  \mbreak
  b'8 b c |
  d8. d16_( b16.)[ b32] |
  gis16. gis32_( f16.)[ f32]_( c16.) d32 |
  <b gis>4. |
  <c a>4 <b gis d>8 |
  <a c, a>4

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 4 {s8 \grace {s8} r8 } |
  r4 r8 |
  a4. |
  e4. |
  a4. |
  r4 r8 |

  b4. |
  b4. |
  <gis' e,>4 r8 |
  e,4 as8\rest |
  e4 a8\rest |
  <d' gis,>8 q <c a> |

  <b e,>4 r8 |
  r4 r8 |
  r16 e,,( fis) gis a b |
  c16. d32 e8[ e,] |
  a4 r8 |                       % key change

  \repeat unfold 4 { a4. | }
  e4 s8 |

  a4 s8 |
  b4. |
  e,4 e8 |
  e4. |
  a4 r8 |
  fis4. |

  b4 r8 |
  r4 r8 |
  r4 r8 |
  e4 e8 |
  <cis' a,>4 r8 |               % key change

  r4 r8 |
  a,4. |
  e4. |
  a4. |
  r4 r8 |

  b4. |
  b4. |
  <g' e,>4 r8 |
  e,4. |
  e4 s8 |

  <d'' gis,>8 q <c a> |
  <b e,>4 r8 |
  r4 r8 |
  r16 e,,( fis) gis a b |
  c16. d32 e8[ e,] |
  a4
}

middleVoice = \relative c' {
  \voiceThree
  \stemDown
  \partial 4 {s8 \grace {s8} s8 } |
  s4. |
  g8\rest <a e> q |
  g8\rest <gis e> q |
  g8\rest \once\stemUp <a e> g\rest |
  s4. |

  g8\rest <a f> q |
  g8\rest <a b> q |
  s4. |
  d4 g,8\rest |
  c4 g8\rest |
  s4. |

  \repeat unfold 5 { s4. | }
  \repeat unfold 2 { g8\rest <cis a> q | }
  g8\rest <d' a> q |
  s4. |
  g,8\rest <d' gis,> q |

  g,8\rest <cis a> q |
  \repeat unfold 5 { s4. | }

  \repeat unfold 5 { s4. | }

  s4. |
  f,8\rest <a e> q |
  f8\rest <gis e> q |
  f8\rest \once\stemUp <a e>8 s |
  s4. |

  g8\rest <a f> q |
  g8\rest <g a> q |
  s4. |
  d'4. |
  c4 g8\rest |
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Valse."

      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
      \context Voice = "middleVoice" \middleVoice
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
      \context TabVoice = "middleVoice" \middleVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 74
  }
}
