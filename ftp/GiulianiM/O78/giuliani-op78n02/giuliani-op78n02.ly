\version "2.19.48"

\header {
  title = "Divertissements, No. 2"
  composer = "Mauro Giuliani"
  opus = "Op. 78 No. 2"
  style = "Classical"
  source = "Pietro Mechetti, plate 495."
  date = "ca.1817"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Divertissements, No. 2"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/10/28-2141"
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
  \key a \minor
}

upperVoice = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  <a c' e'>8.\mf[ <gis d' f'>16 e'8] e'4 e'8 |
  <a c' e'>4 a'8 g'16( f') e'_. d'_. c'_. b_. |
  r8 a c' e' d' b |
  a8.[ e16 c' b] \grace{b16} a16 gis a b c' a |

  \mbreak
  e'16.[ dis'32 e'16. f'32 e'16. d'32] c'16 e' c' a b gis |
  a16.[ c'32 e16. a32 c16. e32] a,4 e'8 |
  <a c' e'>8.[ f'16 e'8] <g b e'>4 e'8 |
  <g cis' e'>4. \grace{fis'16} e'8 dis' e' |
  <g b g'>8.[ fis'16 e'8] fis'8.[ g16 fis'8] |

  \mbreak
  e'8..[b32 g'16. fis'32] e'16.[ d'32 c'16. b32 a16. g32] |
  g16 fis eis fis a c' r b e' g' fis' dis' |
  <g b e'>8[ q q ] q4 r8 |
  <e g c' e'>4 f'32( e') d'_. c'_. b4 c'8 |

  \mbreak
  cis'8 d' d' d'4 g8 |
  <g b f'>4 g'32( f') e'_. d'_. c'4 d'8 |
  dis'8 e' e' e'16 b c' d' e' f' |
  g'4. r16 fis'16( a') g'_. f'_. e'_. |

  \mbreak
  d'4. r16 gis'( b') a'_. f'_. d'_. |
  d'8 c' c' c' d' b |
  c'8..[ g32 e'16. d'32] \grace{d'16} c'16.[ b32 c'16. g32 f'16. e'32] |
  d'16.[ cis'32 d'16. g32 g'16. f'32] e'16.[ g'32 cis'16. e'32 d'16. b32] |

  \mbreak
  c'16.[ e'32 g16. c'32 e16. g32] c4 e'8 |
  cis'4 d'8 e'[ f' g'] |
  f'8..[ ais'32 cis'16. e'32] d'4 f'8 |
  b4 c'8 d'[ e' f'] |
  e'8..[ g'32 b16. d'32] c'4 e'8 |

  \mbreak
  <b d'>4 e'8 <a c'>4 e'8 |
  <gis b>8..[ ais'32 b'16. gis'32] <g b e'>16.[ f'32 e'16. ais'32 b'16. gis'32] |
  <a c' e'>16.[ f'32 e'16. b'32 c''16. a'32] <a c' e'>16.[ f'32 e'16. c'32 b16. a32] |
  <gis b e'>8 q q q4 e'8 |

  \mbreak
  <a c' e'>8. f'16 e'8 <gis d' e'>4 e'8 |
  <a c' e'>4 a'8 g'16( fis') e'_. d'_. c'_. b_. |
  r8 a c' e' d' b |
  a8..[ e'32 c''16. b'32] a'16.[ g'32 f'16. e'32 d'16. c'32] |

  \mbreak
  c'16 b ais b d' f' r e' c' a b gis |
  a16.[ e32 c'8 b8] a16.[ e32 c'8 <b d' g'>8] |
  <a c' a'>4. a8 a a |
  a2.\fermata

  \bar "|."
}

lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  a,4. b, |
  c4. d |
  e4. e, |
  a,4. a, |

  gis,4. a,4 e,8 |
  a,4. c,4\rest r8 |
  a,4. b, |
  ais,4. r4 r8 |
  b,4. <dis a b> |

  <e g b>4 r8 e,4. |
  a,4. b,4 b,8 |
  e8 b, g, e,4 r8 |
  a,4. r8 <d f> <c e> |

  r8 <b, g> q q4 r8 |
  <g, b, d>4. r8 <e g> <b, g> |
  r8 <c g> q q4 r8 |
  r8 <e g c'> q q4 r8 |

  <f, f a>8 q q4 r |
  <g, e g>4. <g, d g> |
  <c e>4 r8 c4. |
  b4. c4 g,8 |

  c4. r4 r8 |
  r8 <g bes> <f a> <e a>8[ <d a> <cis a>8] |
  <d a>4 <g a>8 <e a>4 r8 |
  r8 <f aes> <e g> <d g>8[ <c g> <b, g>8] |
  <c g>4 <f g>8 <e g>4 r8 |

  gis,8 e,4 a,8 e,4 |
  \repeat unfold 2 {e,8 e, e, e, e, e, |}
  e,8 b, gis, e,4 r8 |

  a,4. b, |
  c4. d |
  e4. e, |
  a,4 r8 a,4. |

  d4. e4 e,8 |                 % may be d4 ?8 e4 e,8
  a,4 <d gis>8 c4 e,8 |
  a,4. <a, c e>8 q q |
  <a, c e>2.
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 2"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Andantino alla Siciliana."
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
