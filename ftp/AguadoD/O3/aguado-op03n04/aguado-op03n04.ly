\version "2.18.2"

\header {
  title = "8 Petites Pièces"
  composer = "D. Aguado"
  opus = "Op. 3 No. 4"
  style = "Romantic"
  source = "Mainz: B. Schott Söhne, plate 2674"
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 003 - http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4032
  date = "1830"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "8 Petites Pièces for Guitar, No. 4"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/02/12-2043"
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

mbreak = { \break }
global = {
  \key e \minor
  \time 3/8
}

umotifa = {
  b8. c32[( b)] a( g) fis g |
  e4 \slashedGrace{g8} fis16. e32 |
  e8.(\noBeam dis16) cis16.[ dis32] |
  fis8(\noBeam e16) b16[ e16. g32] |
  b8.[ c32( b)] a g fis e |
  c'8. \noBeam c32[ b] a g fis e |
  dis4 e8 |
}

umotifb = {
  r16 b16 \repeat unfold 2 { \grace{d8} c16. b32 } |
  r16 b e( g) fis e |
  dis16 dis32( e) fis16[ fis32( g)] a16 a32( ais) |
  b16.[ g32] e8 b |
  \mbreak
  r16 b \tuplet 3/2 { d[_( c) b] } \tuplet 3/2 { d_( c) b } |
  r16 b e( g) fis e |
  dis16( e) fis g a dis, |
}

upperVoice = \relative c' {
  \voiceOne
  \repeat volta 2 {
    \partial 8. { b16 e16. g32 } |
    \umotifa
  }
  \alternative {
    { <dis fis,>8 r4 | }
    { <dis fis,>4 b8 | }
  }
  \mbreak
  \repeat volta 2 {
    \umotifb
    <e g,>4
  }
  \repeat volta 2 {
    d8 |
    \mbreak
    b'4 a16. g32 |
    g16. fis32 fis8[ fis16( c')] | % source has last 2 notes as 32nds
    c4 b16[ a] |
    b16.( g32) d8[ d] |
    b'4 a16.[ g32] |
    \mbreak
    fis8( e16)[ fis32 g] a( b) c a |
    g4 b16.[( a32)] |
    \set Timing.measureLength = #(ly:make-moment 1/4)
    <g b,>4
  }
  \set Timing.measureLength = #(ly:make-moment 3/16)
  b,16 e16. g32
  \set Timing.measureLength = #(ly:make-moment 3/8)
  \umotifa
  <dis fis,>4 b8 |
  \bar "||"
  \umotifb
  <e g,>4 s8
  \bar "|."
}

lowerVoice = \relative c, {
  \voiceTwo
  \partial 8. { r8 s16 } |
  e4. |
  e4. |
  s4. |
  e4. |
  e4. |
  dis'8 r8 r |
  b4 ais8 |
  b4 r8 |
  b4 r8 |

  <a' dis,>4. |
  <g e>4. |
  b,4 b8\rest  |
  e,4. |
  <a' dis,>4. |
  <g e>4. |
  b,4 r8  |
  e,4                           % end of volta
  r8 |                          % beginning of next

  g4. |
  a4. |
  d4. |
  g,4. |
  g4. |

  c8. b16\rest b8\rest |
  d4 d8 |
  \set Timing.measureLength = #(ly:make-moment 1/4)
  g4 |
  \set Timing.measureLength = #(ly:make-moment 3/16)
  r8 s16 |
  e,4. |
  e4. |
  b'4. |
  e,4. |
  e4. |
  dis'8 c\rest c\rest |
  b4 ais8 |

  b4 r8 |
  \repeat unfold 2 {
    <a' d,>4. |
    <g e>4. |
    b,4. |
    e,4 s8
  }
}

middleVoice = \relative c' {
  \voiceThree
  \stemDown
  \partial 8. { s8. } |
  b8\rest <b g> q |
  b8\rest <g e> q |
  b,8 <a' fis>8[ q] |
  b8\rest <g e> r |

  b8\rest <b g> b8\rest |
  b8\rest <c a> b8\rest |
  b16.\rest e,32 a8[ g] |
  s4. |
  s4. |

  s4. |
  s4. |
  a8 a\rest a\rest |
  s4. |

  s4. |
  s4. |
  \stemUp a8 a\rest fis \stemDown |
  s4. |

  b8\rest <b g> q |
  c8\rest <c a> q16 c\rest |
  b8\rest <c a> q |
  b8\rest <b g>4 |
  b8\rest <b g>8[ q] |

  \once\stemUp g8. b16\rest b8\rest |
  b8[ d] c |
  \set Timing.measureLength = #(ly:make-moment 1/4)
  s4
  \set Timing.measureLength = #(ly:make-moment 3/16)
  s8.
  \set Timing.measureLength = #(ly:make-moment 3/8)
  b8\rest <b g> q |
  b8\rest <g e> q |

  b8\rest <a fis> q |
  g8\rest <g e> g8\rest |
  g8\rest <b g> g8\rest |
  b8\rest \once\stemUp <c a> b8\rest |
  g16.\rest fis32 a8[ g] |

  \repeat unfold 3 { s4. | }
  a8 a\rest a\rest |

  \once\stemUp g4. |
  s4. |
  s4. |
  fis8 g\rest g\rest |
  s4 s8
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
    \tempo 4 = 90
  }
}
