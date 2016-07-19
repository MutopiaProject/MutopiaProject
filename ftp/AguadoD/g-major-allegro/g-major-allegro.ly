\version "2.19.34"

\header {
  title = "Allegro"
  composer = "D. Aguado"
  source = "Aus der Encyclopedie pittoresque 1835"
  date = "1835"
  style = "Romantic"
  mutopiatitle = "Allegro in G Major"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
  moreInfo = "Score found at http://imslp.org/wiki/Allegro_in_G_major_(Aguado,_Dionisio) on 2016-07-16 and verified by Devin Ulibarri (devin at devinulibarri.com)"

 footer = "Mutopia-2016/07/19-2090"
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

upperVoice = \relative c' {
  \voiceOne
  \partial 8 { d8 | }
  b'8-4 a16-4 g fis8 e |
  d4 <g, b>8 <b d> |
  <a c>8 q16 <gis b> <a c>8 <c e> |
  <c e>4 <b d>8 d |
  b'8 a16 g fis8 e |

  \mbreak
  d4 cis |
  d8 e16 fis g8 <g, cis> |
  <fis d'>4 r8 d' |
  b'8 a16 g fis8 e |
  d4 <g, b>8 <b d> |

  \mbreak
  <a c>8 q16 <gis b> <a c>8 <c e> |
  <c e>4 <b d>8 d |
  b'8 a16 g fis8 e |
  d4 cis |
  d8 e16 fis g8 <g, cis> |
  <fis d'>8 b\rest b4\rest |

  \mbreak
  <fis' a>8 \acciaccatura{b8} <fis a>16 <eis gis> <fis a>8 <g b> |
  <fis a>4 r |
  <fis a>8 \slashedGrace{b8} <fis a>16 <eis gis> <fis a>8 <g b> |
  <fis a>4 r |
  <a c>8 \slashedGrace{d8} <a c>16 <gis b> <a c>8 \slashedGrace{<b d>8} <c e> |
  <c e>4 <b d>8 r |

  \mbreak
  fis8 \slashedGrace{g8} fis16 e fis8[ \slashedGrace{<a, fis'>8} <c a'>8] |
  <b g'>4 r |
  \repeat unfold 2 {
    <fis' a>8 \slashedGrace{b8} <fis a>16 <eis gis> <fis a>8 <g b> |
    <fis a>4 r |
  }

  \mbreak
  <a c>8 \slashedGrace{d8} <a c>16 <gis b> <a c>8[ \slashedGrace{<b d>8} <c e>8] |
  <c e>4 <b d>8 r |
  fis8 \slashedGrace{g8} fis16 e fis8[ \slashedGrace{<a, fis'>8} <c a'>8] |
  <b g'>4 r^\markup{\italic "Fine."} |
  \bar "||" \key c \major
  
  \override TextSpanner.bound-details.left.text = \markup{\small\upright\smallCaps "IV "}
  g'8.\startTextSpan a16 g4~ |
  g8\stopTextSpan\noBeam c16 b \tuplet 3/2 { d8 c a } |

  \mbreak
  g8. a16 g8 f! |
  f4 e8 r |
  e8 e16 f e8 <b d> |
  <a c>8 <gis b> a g %{ natural not indicated in original, but G natural is within the style's syntax while G sharp is not -- Devin U %} |
  f8 a b4 |
  c4. r8 |
  g'8. a16 g4^( |

  \mbreak
  g8\noBeam) c16 b \tuplet 3/2 { d8 c a } |
  g8. a16 g8 f |
  f4 e8 r |
  e8 e16 f e8 <b d> |
  <a c>8 <gis b> a g %{ natural not indicated in original, but G natural is within the style's syntax while G sharp is not -- Devin U %} |
  f8 a b4 |
  c4. r8 |

  \bar "|."
}

lowerVoice = \relative c' {
  \voiceTwo
  \partial 8 { r8 | }
  <g b>4 r8 c,8-2 \glissando |
  b8 g4 r8 |
  d'2 |
  r8 g g r |
  <g b>4 r8 c, |

  b8 bes a8 g |
  fis4 a |
  d4 s |
  <g b>4 r8 c, |
  b8 g4 r8 |

  d'2 |
  r8 g g r |
  <g b>4 r8 c, |
  b8 bes a g |
  fis4 a |
  d8 s4. |

  d2 |
  g8\rest d'[ d,] g\rest |
  d2 |
  g8\rest \slashedGrace{cis8} d[ d,] g\rest |
  d2 |
  g4. r8 |

  << {\voiceTwo d2 } \\ {\voiceThree\stemDown c'4 s } >>  |
  g8 d g,4 |
  d'2 |
  r8 d'8[ d,] r |
  d2 |
  r8 \slashedGrace{cis'8} d[ d,] r |

  d2 |
  g4. r8 |
  << {\voiceTwo d2 } \\ {\voiceThree\stemDown c'4 s } >>  |
  g8 d g,4 |
  % c \major
  <c' e>4. <b f'>8 |
  <c e>4 r8 r |

  <c e>4. b8 |
  c4 r |
  r4 r8 gis, |
  a8 b c cis |
  << { \voiceTwo d4 g, |
       c4. r8 | }
     \\ { \voiceThree\stemUp s4 f8 g | e8 g e4 } >> |
  
  <c' e>4. <b f'>8 |
  <c e>8 r8 r4 |
  <c e>4. b8 |
  c4. r8 |
  r4 r8 gis, |
  a8 b c cis |
  <<
    { \voiceTwo d4 g, | c4. r8_\markup{\italic "D.C."} } \\
    { \voiceThree s4 f8 g | e8 g e4 } >> |
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
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
    \tempo 4 = 92
  }
}
