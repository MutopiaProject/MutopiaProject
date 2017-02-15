\version "2.19.51"

\header {
  title = "Trois Sonatines"
  subtitle = "Nº. 2"
  composer = "Matteo Carcassi"
  opus = "Op. 1 No. 2"
  style = "Classical"
  source = "Mayence, B. Schött's Sohne. Plate 2702"
  date = "c.1827"
  mutopiacomposer = "CarcassiM"
  mutopiaopus = "Op. 1 No. 2"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Trois Sonatines, No. 2"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/02/15-2169"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  line-width = 18.0\cm
  top-margin = 4\mm
  top-markup-spacing.basic-distance = #6
  markup-system-spacing.basic-distance = #10
  top-system-spacing.basic-distance = #12
  last-bottom-spacing.padding = #2
}

mbreak = {} % {\break}

midVoice = {
  \voiceThree\stemDown
  \set fingeringOrientations = #'(left)
}


larghettoGlobal = {\time 6/8 \key d \major}

larghettoTreble = \fixed c {
  \larghettoGlobal
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \partial 4. {fis'8[ \slashedGrace{a'} g' e']} |
  d'8\p a fis' d' a fis' |
  dis'16 e' g'( fis' e') g' b'-4( a') gis' g'-2( fis') e' |
  d'8 a fis' d' a fis' |
  dis'16 e' d'( cis') d' b a gis b a g e |

  \mbreak
  d'8 a fis' dis' a\> fis' |
  e'16\! dis' fis'( e') g'( fis') a'( g') fis' g' b e' |
  d'8 a fis' e'16 a'( gis') g'( fis') e' |
  d'16 a gis a b a <cis' g'> a q a q a |

  \mbreak
  <d' fis'>16\p a gis a b a\f <cis' g'> a q a q a |
  <d' fis'>16 a gis a cis' a' <d' gis'> e' dis' e' gis' b' |
  <cis' a'>16 e' dis' e' a' cis'' <gis' b'> e' dis' e' b' d'' |
  <e' g' cis''>16 e''_\markup{\italic "dim."} d'' cis'' b'-4 a' gis' a' b' a' g' e' |

  \mbreak
  d'8\p a fis' d' a fis' |
  <g dis'>16 e' g'( fis' e') g' b'( a') gis' g'( fis') e' |
  d'8 a fis' d' a fis' |
  dis'16 e' d'( cis') d' b a gis b a g fis |
  d'8 a fis' d' a\> fis'\! |

  \mbreak
  e'16 dis' fis'( e') g'( fis') a'( g') fis' g' b e' |
  d'8 a fis' e'16 a' gis' g' fis' e' |
  \bar "||" \key d \minor
  d'4.\f <cis' g'>16 a q a q a |
  <d' f'>4. <cis' g'>16 a q a q a |

  \mbreak
  <d' f'>4. <bes c' e'>16 g' f' e' d' c' |
  f'4. <bes c' e'>16 g' f' e' d' c' |
  f'4. fis16 d'\> <c' a'> d' q d'\! |
  <d' bes'>4. gis16 e'\> <d' b'> e' q e'\! |

  \mbreak
  \fixed c' {<a cis'>16 e'( d') cis' b a g b a g fis e |
              <d fis> a( g) fis e d } cis'( b) a( g) fis e |
  \bar "||" \key d \major
  d'8\p a fis' d' a fis' |
  dis'16 e' g'( fis') e' g' b' a'( gis') g' fis' e' |

  \mbreak
  d'8 a fis' d' a fis' |
  dis'16 e' d' cis' b a gis a g fis g d |
  d'8 a fis' dis' a\> fis'\! |
  e'16 dis' fis'( e') g'( fis') a'( g') fis' g' b e' |
  d'8 a fis' e'16 a'( gis') g' fis' e' |

  \mbreak
  d'4. <cis' g'>16 a q a q a |
  <d' fis'>4. a,16 gis <e cis'> gis q gis |
  d'16 a fis a fis' a d' a fis a fis' a |
  <d d'>4. b4\rest b8\rest

  \bar "|."
}

larghettoBass = \fixed c {
  \larghettoGlobal
  \voiceTwo
  \partial 4. {r4 r8} |
  <d fis>4. q |
  <a, g>4. q |
  <d fis>4. q |
  a,4. r4 r8 |

  <d fis>4. <b, fis> |
  <e, g>4. c4\rest c8\rest |
  a,4. a, |
  d4. a, |

  d4. a, |
  d4. e, |
  a,4. e, |
  a,4. c4\rest c8\rest |

  \repeat unfold 2 {
    <d fis>4. q |
    a,4 r8 r4 r8 |
  }
  <d fis>4. <b, fis> |

  <e, g>4 r8 r4 r8 |
  a,4. a, |
  d16 a( g) f e d a,4. |
  d16 a( g) f e d a,4. |

  d16 as( g) f e d c4. |
  <f a c'>16 c' bes a g f c4. |
  <f a c'>16 c' bes a g f b,4\rest b,8\rest |
  g16 d' c' bes a g b,4\rest b,8\rest |

  a,4. a, |
  a,4. a, |
  <d fis>4. q |
  <a, g>4 r8 r4 r8 |

  <d fis>4. q |
  a,4. r4 r8 |
  <d fis>4. <b, fis> |
  <e, g>4 r8 r4 r8 |
  a,4. a, |

  d16 a gis a fis d a,4. |
  d16 a gis a fis d a,4. |
  d4. d |
  d4. s
}


%%% LARGHETTO SCORE

larghettoScore =
  \new Staff = "Guitar" \with {
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
    instrumentName = \markup{\bold "Nº. 2"}
  } <<
    \clef "treble_8"
    \larghettoGlobal
    \tempo "Larghetto."
    \context Voice = "upperVoice" \larghettoTreble
    \context Voice = "lowerVoice" \larghettoBass
  >>


%%% RONDO SCORE

rondoGlobal = { \key d \major \time 6/8 }

rondoTreble = \fixed c {
  \rondoGlobal
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \partial 4. {fis'8\p( g') e'-.} |
  d'8 cis' d' e'[ \acciaccatura{a'8} g' e'] |
  d'8( cis') b a b cis' |
  d'8 a fis' e' a g' |
  fis' gis'( a') e' \acciaccatura{a'8} g' e'\f |
  d'8 cis' d' e' \slashedGrace{fis'8} g' e' |

  \mbreak
  d'8( cis') b a b cis' |
  d'8 e' fis' a'( g') e' |
  <d d'>4 b8\rest eis'8( fis'\mf) e' |
  d'8 fis' fis' cis' fis' fis' |
  d'8 fis' fis' cis' fis' fis'\ff |
  d'8 fis' e' d' cis' b |
  <ais cis' fis'>4. eis'8\f( fis') e' |

  \mbreak
  d'8 fis' b dis'( e') d' |
  cis'8 e' a' b d' fis' |
  a8 cis' e' r d' b |
  a4. e'8\p[ \slashedGrace{gis'} fis' e'] |
  r8 e' r r e' r |
  r8 e' r e'[ \slashedGrace{gis'} fis' e'] |
  r8 e' r r e' r |

  \mbreak
  r8 e' r a[ \slashedGrace{cis'} b a] |
  <a cis'>4 <b d'>8 <cis' e'>4 <d' fis'>8 |
  <e' g'>4. a8[ \slashedGrace{cis'} b a] |
  <a cis'>4 <b d'>8 <cis' e'>4 <d' fis'>8 |
  <e' g'>4. fis'8[ \acciaccatura{a'} g' e'] |
  d'8 cis' d' e'[ \slashedGrace{fis'} g' e'] |
  d'8( cis') b a b cis' |

  \mbreak
  d'8 a fis' e' a g' |
  fis'8 gis'( a') cis'8[ \acciaccatura{a'} gis' e'] |
  d'8 cis' d' e'[ \slashedGrace{fis'} g' e'] |
  d'8( cis') b a b cis' |
  d'8 e' fis' a'( g') e' |
  d'4. \bar "||" \key d \minor gis'8\f( a') g' |

  \mbreak
  r8 f' d' r cis' e' |
  r8 d' f' gis'( a') g' |
  r8 f' d' r cis' e' |
  r8 d' f' b'( c'') bes' |
  r8 a' g' r f' e' |
  r8 d' fis' bes d' g' |
  a8 c' f' bes c' g' |

  \mbreak
  r8 c' a' b'( c'') bes' |
  r8 a' g' r f' e' |
  r8 d' <c' fis'> bes d' g' |
  a8 c' f' bes c' e' |
  <a c' f'>4 r8 gis'( a') g' |
  r8 f' d' r  cis' e' |
  r8 d' f' gis'( a') g' |

  \mbreak
  r8 f' d' r cis' e' |
  r8 d' f' dis'( e'\f) d' |
  cis'8 b a dis'( e') d' |
  cis'8 b a gis'( a') g'\f |
  r8 <gis f'> q q e' d' |
  <a cis'>8 a' a' a'( g') e' |

  \mbreak
  \bar "||" \key d \major
  d'8 cis' d' e'[ \acciaccatura{a'} g' e'] |
  d'8( cis') b a b cis' |
  d'8 a fis' e' a g' |
  fis'8 gis'( a') e'[ \acciaccatura{a'} g' e'] |
  d'8 cis' d' e'[ \slashedGrace{a'} g' e'] |
  d'8( cis') b a b cis' |

  \mbreak
  d'8 e' fis' a' d' e' |
  d'4. d'8 cis' c' |
  b8\p d' d' c' d' d' |
  b8 d'-. g' e' dis' d'\fz |
  cis'8 e'\p e' d' e' e' |
  cis'8 e' a' a' gis' g' |
  fis'8\cresc a' a' e'\! a' a' |

  \mbreak
  d'8 g' g' cis' fis' fis' |
  b8 e' e' a d' d'\f |
  <g cis'>8 b a e' d' cis' |
  g'8 fis' e' a'( g') e' |
  d'8 cis' d' e'[ \slashedGrace{fis'} g' e'] |
  d'8 cis' b a b cis' |
  d'8 a fis' e' a g' |

  \mbreak
  fis'8[ gis'16-1( a') b'( a')] e'8[ \acciaccatura{a'-4} g' e'] |
  d'8 cis' d' e'[ \slashedGrace{fis'} g' e'] |
  d'8( cis') b a b cis'\f |
  d'8 e' fis' a'( g') e' |
  d'4. <cis' e' a'> |
  <fis' cis''>4. a' |
  <d a d' fis'>2.

  \bar "|."
}

rondoBass = \fixed c {
  \rondoGlobal
  \voiceTwo
  \partial 4. {s4.} |
  fis4. g |
  a,4 c8\rest c4\rest c8\rest |
  fis4 d8 cis4 a,8 |
  d4. a,4 r8 |
  fis4. g |

  a,4 r8 r4 r8 |
  fis4 d8 a,4 a,8 |
  d4 s8 r4 fis8 |
  d'4. ais |
  d'4. ais |
  b8 fis e d cis b, |
  fis,4. r4 ais,8 |

  b,4 d8 r4 e,8 |
  a,4. e |
  fis4. e, |
  a,4. r4 r8 |
  <cis' e'>4 <a cis'>8 <b d'>4 <e b>8 |
  <a cis'>4 <cis a>8 r4 r8 |
  <cis' e'>4 <a cis'>8 <b d'>4 <e b>8 |

  <a cis'>4 <cis a>8 r4 r8 |
  \repeat unfold 2 {
    r8 a, r r a, r |
    r8 a, a, r4 r8 |
  }
  fis4. g |
  a,4 r8 r4 r8 |

  fis4 d8 cis4 a,8 |
  d4. a, |
  d4. g |
  a,4 r8 r4 r8 |
  fis4 d8 a,4 a,8 |
  d4. r4 a,8 |

  d4 f8 a4 g8 |
  f4 d8 r4 a,8 |
  d4 f8 a4 g8 |
  f4 d8 r4 g'8 |
  f'4 e'8 d'4 c'8 |
  bes4 a8 g4. |
  c4. f |

  f4. r4 g8 |
  f4 e8 d4 c8 |
  bes,4 a,8 g,4. |
  c4. c |
  f4 r8 r4 a,8 |
  d4 f8 a4 g8 |
  f4 d8 r4 a,8 |

  d4 f8 a4 g8 |
  f4 d8 r4 e,8 |
  a,4. r4 e,8 |
  a,4. r4 a,8 |
  bes,4. bes, |
  a,4 r8 r4 r8 |

  fis4. g |
  a,4 r8 r4 r8 |
  e4 d8 cis4 a,8 |
  d4. a,4 r8 |
  fis4. g
  a,4 r8 r4 r8 |

  fis4 d8 a,4 a,8 |
  d4. r4 d8 |
  g4. fis |
  g4. r4 e8 |
  a4. gis |
  a4. r4 cis'8 |
  d'4. cis' |

  b4. a |
  g4. fis |
  e4. <cis a> |
  <a, a cis'>4 r8 r4 r8 |
  fis4. g |
  a,4 r8 r4 r8 |
  fis4 d8 cis4 a,8 |

  d4. a, |
  fis4. g |
  a,4. r4 r8 |
  fis4 d8 a,4 a,8 |
  d4. <a, a> |
  <d d'>4. <a, a> |
  s2.
}

rondoScore =
  \new Staff = "Guitar" \with {
    instrumentName = \markup{\bold "Rondo."}
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  } <<
    \clef "treble_8"
    \rondoGlobal
    \tempo "Allegretto."
    \context Voice = "upperVoice" \rondoTreble
    \context Voice = "lowerVoice" \rondoBass
  >>


%%% SCORE ASSEMBLY

\score {
  << \larghettoScore >>
  \layout {}
}

\score {
  << \rondoScore >>
  \layout {}
}

%%% MIDI ASSEMBLY

\score {
  \new Staff = "midi-guitar" \with {
    midiInstrument = #"acoustic guitar (nylon)"
  } <<
    \clef "treble_8"
    \context Voice = "upperVoice" {\larghettoTreble \rondoTreble}
    \context Voice = "lowerVoice" {\larghettoBass \rondoBass}
  >>
  \midi {\tempo 4 = 80}
}
