\version "2.19.35"

\header {
  title = "12 Etudes"
  composer = "F. Sor"
  opus = "Op. 6 No. 10"
  style = "Romantic"
  source = "N. Simrock, Berlin. Plate 9106"
  date = "c.1889"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "12 Etudes, No. 10"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
  pdfcopyright = "CC-ASA 4.0"

 footer = "Mutopia-2016/09/17-2133"
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
%  system-count = #8
}

mbreak = {} % { \break }
global = {
  \time 4/4
  \key c \major
}

upperVoice = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  c16 c' b, b c c' b, b c c' e e' g g' b, b |
  c16 c' b, b c c' b, b c c' e e' c c' b, b |
  a,16 a cis cis' d d' cis cis' d d' e e' f f' e e' |

  \mbreak
  f16 f' fis fis' g g' gis gis' a a' f f' d d' b, b |
  c16 c' g, g c c' e e' g g' c c' e e' g g' |
  c'16 c'' b b' c' c'' b b' c' c'' b b' c' c'' gis gis' |
  a16 a' gis gis' a a' g g' fis fis' d d' e e' fis fis' |

  \mbreak
  g16 g' fis fis' g g' dis dis' e e' b, b c c' cis cis' |
  d8 d' d' d' s2 |
  d16 d' cis cis' d d' a a' gis gis' a a' fis fis' d d' |
  d16 d' cis cis' d d' b b' ais ais' b b' g g' d d' |

  \mbreak
  d16 d' cis cis' d d' a a' gis gis' a a' fis fis' d d' |
  d16 d' cis cis' d d' b b' ais ais' b b' g g' d d' |
  b,16 b d d' g g' fis fis' a a' g g' d d' b, b |

  \mbreak
  c16 c' e e' g g' fis fis' a a' g g' e e' cis cis' |
  d16 d' dis dis' e e' b, b' c c' cis cis' d d' fis, fis |
  g,16 g b, b d d' b, b g,4 b\rest |
  \bar "||"
  g16 g' fis fis' g g' fis fis' g g' fis fis' g g' bes bes' |

  \mbreak
  a16 a' gis gis' a a' gis gis' a a' cis cis' d d' e e' |
  f16 f' e e' f f' e e' f f' e e' f f' aes aes' |
  g16 g' fis fis' g g' fis fis' g g' b, b c c' d d' |

  \mbreak
  ees16 ees' d d' ees ees' d d' ees ees' g g' ees ees' d d' |
  c16 c' b, b c c' b, b c c' ees ees' c c' bes, bes |
  aes,8 aes aes, aes g, g fis, fis |
  g,16 g b, b d d' b, b g,4 b\rest |
  \mbreak
  f16 f' e e' f f' d d' b, b g, g g, g g, g |
  g16 g' fis fis' g g' e e' c c' g, g g, g g, g |
  f16 f' e e' f f' d d' b, b g, g g, g g, g |
  g16 g' fis fis' g g' e e' c c' g, g g, g g, g |

  \mbreak
  c16 c' b, b c c' e e' g g' a a' bes bes' cis cis' |
  d16 d' e e' f f' g g' a a' b b' c' c'' fis fis' |
  g g' gis gis' a a' e e' f f' fis fis' g g' b, b |

  \mbreak
  c16 c' e e' g g' e e' c c' e e' c c' b, b |
  a,16 a f f' d d' c c' b, b d d' g, g b, b |
  c16 c' e e' g g' e e' c c' e e' c c' b, b |

  \mbreak
  a,16 a f f' d d' c c' b, b d d' g, g b, b |
  c16 c' b, b c c' d d' e e' f f' fis fis' g g' |
  gis16 gis' a a' bes bes' b b' c' c'' e e' f f' fis fis' |
  g16 g' r8 r4 <g, d f b>\fermata b\rest |
  \bar "||"

  \mbreak
  \time 3/4 \tempo "Maestoso."
  \repeat volta 2 {
    <e g c'>4 <e a c'> <f a d'> |
    <<{b4. c'8 d'4}\\{g2.}>> |
    <g e'>4 <g c' e'> \slashedGrace{g'8} <a c' f'>4 |
    <g c' e'>4 <f b e'>8. d'16 <e a c'>4 |
    <f a d'>4 <e g c'> <d g b> |
    <e g c'>2 b4\rest |
  }
  \repeat volta 2 {
    <g e' g'>4 <g c' g'> <bes d' g'> |
    <<{<e' g'>4. <d' f'>8}\\{\voiceThree a2 <a cis' e'>4}>>

    \mbreak
    <d' f'>4 <a d' f'> <aes d' f'> |
    <<{<d' f'>4. <c' e'>8 <b d'>4}\\{\voiceThree g2 s4}>> |
    <c' e'>4 f'8 e' d'[ c'] |
    <c' e'>4. <d' f'>8 <bes e' g'>4 |
    <f' a'>8. <d' f'>16 <c' e'>4 \grace{e'8} <f b d'>4 |
    <e g c'>2 r4 |
    g'4 g' g' |

    \mbreak
    <bes g'>4. <f a f'>8 <g bes e'>4 |
    f'4 f' f' |
    <d' f'>4. e'8 d'4 |
    e'4 <c' f'>8 e' <b d'> <a c'> |
    <cis' e'>4. <d' f'>8 <e' g'>4 |
    <f d' a'>8. <a d' f'>16 <g c' e'>4 <f b d'> |
    <e g c'>2 b4\rest
  }
  \bar "|."
}

lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  c8 b, c b, c e g b, |
  c8 b, c b, c e c b, |
  a,8 cis d cis d e f e |

  f8 fis g gis a f d b, |
  c8 g, c e g c e g |
  c'8 b c' b c' b c' gis |
  a8 gis a g fis d e fis |

  g8 fis g dis e b, c cis |
  d2 d'8 d' d' d' |
  d8 cis d a gis a fis d |
  d8 cis d b ais b g d |

  d8 cis d a gis a fis d |
  d8 cis d b ais b g d |
  b,8 d g fis a g d b, |

  c8 e g fis a g e cis |
  d8 dis e b, c cis d fis, |
  g,8 b, d b, g,4 s |
  g8 fis g fis g fis g bes |

  a8 gis a gis a cis d e |
  f8 e f e f e f aes |
  g8 fis g fis g b, c d |

  ees8 d ees d ees g ees d |
  c8 b, c b, c ees c bes, |
  aes,4 aes, g, fis, |
  g,8 b, d b, g,4 s |

  \repeat unfold 2 {
    f8 e f d b, g, g, g, |
    g8 fis g e c g, g, g, |
  }

  c8 b, c e g a bes cis |
  d8 e f g a b c' fis |
  g8 gis a e f fis g b, |

  c8 e g e c e c b, |
  a,8 f d c b, d g, b, |
  c8 e g e c e c b, |

  a,8 f d c b, d g, b, |
  c8 b, c d e f fis g |
  gis8 a bes b c' e f fis |
  g4 s4*3 |

  \time 3/4                     % Maestoso
  c4 a, f, |
  <<{d4. c8 b,4}\\{b,2.}>>
  c4 c f, |
  g,4 gis, a, |
  f,4 g, g, |
  c2 s4 |
  c4 e d |
  cis4 a,2 |

  d2 c4 |
  b,4 g, g |
  <<{\voiceTwo\stemDown c4 \override NoteColumn.force-hshift=#-1 c c \revert NoteColumn.force-hshift }
    \\{\voiceThree\stemDown s8 g\noBeam  \once\override NoteColumn.force-hshift=#0.5 a g \once\override NoteColumn.force-hshift=#0.5 f[ e]}>> |
  <<{\voiceTwo\stemDown c2 c8 c}\\{\voiceThree\stemDown s8 g_(  c'8[ b]) }>> |
  <f a>8. q16 g4 g, |
  c4 c c |
  <des f bes>2. |

  <c e>4 c8 r c4 |
  <c f a>4 r r |
  <<{\voiceTwo\stemDown <c aes>4 b,8 c d4}\\{\voiceThree\stemUp s4 g2}>> |
  <<{\voiceTwo\stemDown gis,4 a,2}\\{\voiceThree\stemDown <b d'>4 a e4\rest}>> |
  <g, bes>4. <f, a>8 <e, g>4 |
  f,4 g, g, |
  c2 s4
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 10"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Moderato."
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
