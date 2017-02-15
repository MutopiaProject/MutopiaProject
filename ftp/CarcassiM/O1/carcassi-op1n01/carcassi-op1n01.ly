\version "2.19.51"

\header {
  title = "Trois Sonatines"
  subtitle = "Nº. 1"
  composer = "Matteo Carcassi"
  opus = "Op. 1 No. 1"
  style = "Classical"
  source = "Mayence, B. Schött's Sohne. Plate 2702"
  date = "c.1827"
  mutopiacomposer = "CarcassiM"
  mutopiaopus = "Op. 1 No. 1"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Trois Sonatines, No. 1"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/02/15-2165"
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

%%% LARGHETTO

larghettoGlobal = { \time 6/8 \key c \major }

larghettoTreble = \fixed c {
  \larghettoGlobal
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \partial 4 {\tuplet 3/2 {s16 g16 a b c' d'}} |
  e'8\p c' g e' c' g |
  g'8.\sf f'16 d' e' c' b c' d' e' f' |
  g'8 a' e' f' a16 b cis' d' |

  \mbreak
  e'8 g' f' d'16 g a b c' d' |
  e'8\p c' g e' c' g |
  g'8.\sf f'16 d' e' c' e' d' c' b a |
  g8 c' e' g'16( fis') f' e' f' d' |

  \mbreak
  b16\3( c'\3) fis( g\4) dis( e) c16 g fis g \slashedGrace{b8} a16 g |
  <g d'>8\f <g f'> <g e'> <g d'>16 g' fis' g' a' g' |
  <g e'>8\f <g g'> <g f'> <g e'>4. |
  gis,16\mf b e' b e' b c' e' dis' e' c' a |

  \mbreak
  gis,16 b e' b e' b c' e' dis' e' c' a |
  dis16 c' fis' c' fis' c' g'4. |
  fis16 d' <c'\3 a'> d' <c'\3 a'> d' g b' ais' b' fis a' |

  \mbreak
  e16 g' fis' g' d <gis f'> c e' dis' e' b, <gis d'> |
  a,16 c' b a gis a b c' cis' d' dis' e' |
  d16 g b d'\3 g'\2 b'-1 d d''( cis'') c'' a' fis'\2 |

  \mbreak
  \repeat unfold 2 {g'16\2 b'\sf d''( cis'') c'' a'\2} |
  g'16\p gis'( a') e'( f') d' c'( b) a g fis g |
  e'8 c' g e' c' g |
  g'8. f'16 d' e' c' b c' d' e' f' |

  \mbreak
  g'8 a' e' f' a16 b cis' d' |
  e'8 g' f' d'16 g a b c' d' |
  e'8 c' g e' c' g |
  g'8.\sf f'16 d' e' c' e' d' c' b a |
  g8 c' e' g'16( fis') f' e' f' d' |

  \mbreak
  c'16 g fis g a g g' g f' g d' g |
  c'16\pp g fis g a g g' g f' g d' g |
  c'16 g fis g e' g c' g fis g e' g |
  c'4. b4\rest b8\rest |

  \bar "|."
}

larghettoBass = \fixed c {
  \larghettoGlobal
  \voiceTwo
  \partial 4 {s4} |
  c4. c |
  b,8 g,4 c8.\noBeam g16 c' d' |
  e'8 cis'4\3_> d'8 f4 |

  g4. g8 c\rest c\rest |
  c4. c |
  b,8 g,4 c r8 |
  g,4. g4 g,8 |

  c4 r8 c4 r8 |
  b,8 d c b,4 r8 |
  c8 e d c16 g, fis, g, a,\6 g, |
  gis,4. a,4 r8 |

  g,4. a,4 r8 |
  dis4. <e b>16 b ais b g e |
  fis4.-2 g4 fis8 |

  e4 d8 c4 b,8 |
  a,4 b,8\rest b,4\rest b,8\rest |
  d4. d |

  g8 d4 g8 d4 |
  g4 b,8\rest b,4\rest b,8\rest |
  c4. c |
  b,8 g,4-> c8. g16 c' d' |

  e'8 cis'4-> d'8 f4 |
  g4. g8 c\rest c\rest |
  c4. c |
  b,8 g,4 c4. |
  g,4. g4 g,8 |

  c4. g,4 b,8 |
  c4. g,4 b,8 |
  c4 g,8 c4 g,8 |
  c4. s4 s8 |
}

%%% LARGHETTO SCORE

larghettoScore =
  \new Staff = "Guitar" \with {
    instrumentName = \markup{\bold "Nº 1"}
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
    \override StringNumber #'stencil = ##f
  } <<
    \clef "treble_8"
    \tempo "Larghetto."
    \context Voice = "upperVoice" \larghettoTreble
    \context Voice = "lowerVoice" \larghettoBass
  >>


%%% RONDO

rondoGlobal = { \time 2/4 \key c \major }
rondoTreble = \fixed c {
  \rondoGlobal
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \partial 4 {\oneVoice g'16\f( f') d'-. e'-.} |
  \voiceOne
  c'8[ c' c' cis'] |
  d'4 r16 f' e' d' |
  c'8 c' c' c' |
  c'16( b) a g g'( f') d'-. e'-. |

  \mbreak
  c'8 c' c' cis' |
  d'4 e'16 fis' g' a' |
  r16 b' g' b-0 r d'( c') a |
  r16 fis( g) ais( b) cis'( d') e'( |
  \oneVoice
  f'16) fis'( g') gis'( a') e'( f') d' |
  c'16( b) a-. g-. g'( f') d'-. e'-. |
  \voiceOne

  \mbreak
  c'8[ c' c' cis'] |
  d'4 r16 f' e' d' |
  c'8 c' d' d' |
  c'16( b) a g g'( f') d' e' |
  c'8[ c' c' cis'] |
  d'4 r16 f' e' d' |

  \mbreak
  c'16 c' r cis' d' f' r b |
  c'4 \bar "||" \oneVoice e''16\ff( d'') c''-. b'-. \voiceOne |
  a'8 a' c''16( b') a'-. g'-. |
  fis'8 fis' b'16( a') g'-. fis'-. |
  e'8[ e' fis' dis'] |
  e'4 b'16( a') g'-. fis'-. |

  \mbreak
  e'8 e' g'16( fis') e' d' |
  cis'8 cis' b'16( a') gis' g' |
  fis'16 cis' d' dis' e' g' cis' e' |
  <d d'>4 d''16\p( c'') a'-. b'-. |
  g'8 gis' a' fis' |
  g'8 b' d''16( c'') a'-. b'-. |

  \mbreak
  g'8 gis' a' fis' |
  g'8 b' d''16( c'') b'-. a'-. |
  gis'16 f' e' dis' e' f' e' d' |
  c'16 e' a'-1 b' c'' b' a' g' |
  fis'16 ees' d' cis' d' e' d' c' |
  b16\noBeam d'8\noBeam g'\noBeam b'16 a' g' |

  \mbreak
  g'16 fis' e' d' cis' d' c' d' |
  b16\noBeam d'8\noBeam g'\noBeam b'16 a' g' |
  g'16 fis' e' d' cis' d' c' d' |
  b16 d' f' e' d' f' b'-1 a' |
  \oneVoice
  g'16 b' d'' c'' b' d''-1 f'' e'' |
  d''16 c''-4 b' a' g'-2 fis' g' gis'( |

  \mbreak
  a'16) e'-0( f') d' c'( b) a-. g-. |
  fis16 g fis g g'( f') d'-. e'-. |
  \voiceOne
  c'8[ c' c' cis'] |
  d'4 r16 f' e' d' |
  c'8 c' d' d' |
  c'16( b) a g g'( f') d'-. e'-. |

  \mbreak
  c'8[ c' c' cis'] |
  d'4 e'16 fis' g' a' |
  r16 b' g' b-0 r d' c' a |
  r16 fis( g) ais( b) cis'( d') e'( |
  f') fis'( g') gis'( a') e'( f') d'-. |
  \oneVoice c'16( b) a-. g-. g'( f') d' e' \voiceOne |

  \mbreak
  c'8[ c' c' cis'] |
  d'4 r16 f' e' d' |
  c'8 c' d' d' |
  c'16( b) a g g'( f') d'-. e'-. |
  c'8[ c' c' cis'] |
  d'4 r16 f' e' d' |

  \mbreak
  c'16 c' r cis'\noBeam d' f' r b |
  <c c'>4 \bar "||" \key c \minor \oneVoice g'16( f') ees'-. d'-. \voiceOne |
  c'8\f[ b c' d'] |
  ees'8 c' g'16( f') ees'-. d'-. |
  c'8[ b c' d'] |
  ees'8 c' g'16( f') ees'-. d'-. |

  \mbreak
  c'8 c' aes'16( g') f'-. ees'-. |
  d'8 d' bes'16( aes') f'-. g'-. |
  ees'8[ e' f' d'] |
  ees'8 g' bes'16( aes') f'-. g'-. |
  ees'8[ e' f' d'] |
  ees'8 g' bes'16( aes') g'-. f'-. |

  \mbreak
  e'8\f e' e' e' |
  f'8 aes' r16 g' f' ees' |
  d'8 d' d' d' |
  ees'8 g' r16 aes' g' f' |
  ees'8 c' b d' |
  ees'8 c' r16 aes' g' f' |

  \mbreak
  ees'8\f c' b d' |
  c'8 ees' r16 aes' g' f' |
  ees'8 g' fis' g' |
  \bar "||" \key c \major
  g'8[ a'-1 b'-1 c''] |
  d''16 c'' b' a' g'-2 fis' g' fis' |
  \oneVoice
  \slashedGrace{a'8} g'16 fis' \slashedGrace{a'8} g'16 fis' g'-3( f') d'-. e'-. |
  \voiceOne

  \mbreak
  c'8\p[ cis' d' b] |
  c'8 e' g'16( f') d'-. e'-. |
  c'8[ cis' d' b] |
  c'8 e' g'16( f') e'-. d'-. |
  cis'16\mf bes a gis a bes a g |
  f16 a d' e' f' e' d' c' |

  \mbreak
  b16 aes g fis g aes g fis |
  \repeat unfold 2 {
    e16\noBeam\p g8\noBeam c'\noBeam e'16 d' c' |
    c'16( b) a g fis g f g |
  }
  e16\noBeam g8\noBeam c'\noBeam e'16 a' g' |

  \mbreak
  fis'16\noBeam\ff a'-1 c'' b' a' c'' e''-4 d''-2 |
  c''16 b' d'' c'' b' a'-1 g' fis' |
  g'16 fis' g' gis'( a') e'-0( f') d' |
  \oneVoice
  c'16( b) e' d' c'( b) a g |
  fis16 g a ais b c' cis' d' |
  \voiceOne
  dis'16 e' f' fis' g' f' dis' e' |

  \mbreak
  c'8\mf[ c' c' cis'] |
  d'4 r16 f' e' d' |
  c'8 c' d' d' |
  c'16( b) a g g'( f') d' e' |
  c'8[ c' c' cis'] |
  d'4 e'16 fis' g' a' |

  \mbreak
  r16 b' g' b-0 r d'( c') a |
  r16 fis\p( g) ais( b) cis'( d') e'( |
  \oneVoice
  f'16) fis'( g') gis'( a') e'( f') d'-. |
  c'16( b) a-. g-. g'( f') d'-. e'-.\mf |
  \voiceOne
  c'8[ c' c' cis'] |
  d'4 r16 f' e' d' |

  \mbreak
  c'8 c' d' d' |
  c'16( b) a-. g-. g'( f') d'-. e'-. |
  c'8[ c' c' cis'] |
  d'4 r16 f' e' d'\ff |
  <a c'>16 c' r cis' d' f' r <f g b> |
  <e g c'>4 <e' g' c''-1> |
  c'2

  \bar "|."
}

rondoBass = \fixed c {
  \rondoGlobal
  \voiceTwo

  \partial 4 {s4} |
  c16 g e g c g e g |
  b,16 g d g g,4 |
  a,16 a e a f, d a, d |
  g,4 r |

  c16 g e g c g e g |
  b,16 g d g c4 |
  d4 d |
  g,4 r |
  s2*2 |

  c16 g e g c g e g |
  b,16 g d g g,4 |
  a,16 a e a f, d a, d |
  g,4 r |
  c16 g e g c g e g |
  b,16 g d g g,4 |

  <a, a>8 g f g, |
  a4 s |
  a16 e' c' e' r4 |
  dis16 b a b r4 |
  e16 g c g a, a b, a |
  <e, g b>4 r |

  e,16 b g b r4 |
  a,16 g e g r4 |
  d4 g8 a |
  d4 r |
  b,16 d b, d c d c d |
  b,16 d b, d r4 |

  b,16 d b, d c d c d |
  b,16 d b, d r4 |
  e,4 r |
  a,4 r |
  d4 r |
  g8 d g d |

  <a c'>8 d a d |
  g8 d g d |
  <a c'>8 d a d |
  g4 r |
  s2*2 |

  s2*2 |
  c16 g e g c g e g |
  b,16 g d g g,4 |
  a,16 a e a f, d a, d |
  g,4 r |

  c16 g e g c g e g |
  b,16 g d g c4 |
  d4 d |
  g,4 r |
  s2*2 |

  c16 g e g c g d g |
  b,16 g d g g,4 |
  a,16 a e a f, d a, d |
  g,4 r |
  c16 g d g c g e g |
  b,16 g d g g,4 |

  <a, a>8 g f g, |
  c4 s |
  \repeat unfold 2 {
    ees16 g f g ees g b, g |
    c16 g ees g r4 |
  }

  c16 g ees g r4 |
  bes,16 aes f aes r4 |
  \repeat unfold 2 {
    g16 bes g bes aes bes aes bes |
    g16 bes g bes r4 |
  }

  \repeat unfold 2 {c16 bes g bes} |
  f,16 aes f aes f,8 r |
  \repeat unfold 2 {bes,16 aes f aes} |
  ees16 bes g bes b,8 r |
  c16 g ees g g, g f g |
  ees16 g c g b,8 r |

  aes16 g  ees g g, g f g |
  ees16 g c g b,8 r |
  c16 g c g aes c' aes c' |
  g16 b g fis' g f' g e' |
  <g f'>8 r r4 |
  s2 |

  \repeat unfold 2 {
    e16 g e g f g f g |
    e16 g e g r4 |
  }
  a,4 r |
  d4 r |

  g,4 r |
  \repeat unfold 2 {
    c8 g, c g, |
    d4 r8 g,8 |
  }
  c8 g, c g, |

  <d a c'>4 r |
  r4 r8 d |
  g4 r |
  s2*2 |
  r4 r |

  c16 g e g c g e g |
  b,16 g d g c4 |
  c16 g e g f, e a, d |
  g,4 r |
  c16 g e g c g e g |
  b,16 g d g c4 |

  d4 d |
  g,4 r |
  s2*2 |
  c16 g e g c g e g |
  b,16 g d g g,4 |

  a,16 a e a f, a d a |
  g,4 r |
  c16 g e g c g e g |
  b,16 g d g g,4 |
  a,8 g f g, |
  c4 c'-3 |
  <c e g>2
}


%%% RONDO SCORE

rondoScore =
  \new Staff = "Guitar" \with {
    instrumentName = \markup{\bold "Rondo."}
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
    \override StringNumber #'stencil = ##f
  } <<
    \clef "treble_8"
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
  \new Staff = "Guitar" \with {
    \override StringNumber #'stencil = ##f
  } <<
    \clef "treble_8"
    \context Voice = "upperVoice" { \larghettoTreble \rondoTreble }
    \context Voice = "lowerVoice" { \larghettoBass \rondoBass }
  >>
  \midi {\tempo 4 = 80}
}
