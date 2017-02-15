\version "2.19.51"

\header {
  title = "Trois Sonatines"
  subtitle = "Nº. 3"
  composer = "Matteo Carcassi"
  opus = "Op. 1 No. 3"
  style = "Classical"
  source = "Mayence, B. Schött's Sohne. Plate 2702"
  date = "c.1827"
  mutopiacomposer = "CarcassiM"
  mutopiaopus = "Op. 1 No. 3"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Trois Sonatines, No. 3"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/02/15-2170"
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

%% ANDANTE

andanteGlobal = { \time 6/8 \key a \major }

andanteTreble = \fixed c {
  \andanteGlobal
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \partial 4. {<a cis'>8\p <b d'> <bis dis'>} |
  e'8 gis'( a') fis' gis'( a') |
  e'8 fis'16 gis' a' b' \acciaccatura{a'16[ b']} cis''8[ b'16 a'( \slashedGrace{a'8} gis'16) d'] |
  e'8 e' e' e' e' e' |

  \mbreak
  e'4. <a cis'>8 <b d'> <bis dis'> |
  e'8 gis'\>( a')\! fis' gis'(\> a')\! |
  e'8 fis'16 gis' a' b' \acciaccatura{a'16[ b']} cis''8 b'16 a' \acciaccatura{a'8} gis'16 fis' |
  <cis' e'>8 a' <a cis'> <cis' e'> <b d'> b |
  <cis a>4. e'8 \slashedGrace{gis'8} fis'8. e'16 |

  \mbreak
  e'8 d'( b) e' d'( b) |
  cis'16 dis'( e') gis'( a') bis'( cis'') gis'( a') e' \slashedGrace{gis'8} fis'16. e'32 |
  e'8 d'( b) e' d'( b) |
  cis'16 dis'( e') gis'( a') bis'( cis'') b' a' gis' fis' e' |

  \mbreak
  \fixed c' {
    dis16 e fis gis a gis b a gis a fis dis |
    e16 dis e fis gis a cis' b a gis fis e |
    dis16 e fis gis a gis b a gis \acciaccatura{b8} a16 fis dis |
    e gis, b, e gis fis e_\markup{\italic "rall."} dis( d) cis( d) dis |

    \mbreak
    e8 gis(\> a)\! fis gis(\> a)\! |
    e8 fis16 gis a b \acciaccatura{a16[ b]} cis'8 b16 a \acciaccatura{a8} gis16 fis\f |
    e8 a <a, cis> <cis e> <b, d> b, |
  }
  a4 \bar "||" \key a \minor s8^\markup{\bold "Minore."} \ff a8 c' <b d'> |

  \mbreak
  <c' e'>8. <b d'>16 <c' e'>8 <d' f'>4 q8 |
  <b d'>8. <a c'>16 <b d'>8 <c' e'>4 q8 |
  <a c'>8. <gis b>16 <a c'>8 <b d'>4 q8 |
  <gis b>4. <a c'>8 <b d'> <c' e'> |
  <d' f'>4. <g b>8 <a c'> <b d'> |

  \mbreak
  <c' e'>4. <f a>8 <g b> <a c'> |
  <b d'>4. <e gis>8 <fis a> <g b> |
  <a c'>4 q8 q4 q8 |
  b8 e' d' <a c'> f'\> e'\! |
  <gis b>8 e' d' <a c'> f'\> e'\! |

  \mbreak
  <gis b>8 e' e' e' gis' fis' |
  e'8\pp e' e' e' <d' e'> <dis' e'> |
  \bar "||" \key a \major
  e'8 gis'( a') fis' gis'( a') |
  e'8 fis'16 gis' a' b' \acciaccatura{a'16[ b']} cis''8 b'16 a' \slashedGrace{a'8} gis'16 fis' |
  e'8 a' <a cis'> <cis' e'> <b d'> b |

  \mbreak
  \oneVoice <a, cis a>4. e'8 \slashedGrace{gis'} fis'8. e'16 \voiceOne |
  \fixed c' {
    e4 dis8 dis16 e fis gis a ais |
    b4 b8 b16 cis'-1 d' cis' d' cis' |
    \omit TupletBracket \omit TupletNumber
    \tuplet 4/3 {
      e'16([ d']) d'-4[( cis') b] b-4[( a) gis] \slashedGrace{gis8} b16[ a] a-4[( gis) fis] fis[( e) dis] |
    }

    \mbreak
    <cis e>8 gis16( a) gis( a) fis8 gis16( a) gis( a) |
    e8 fis16 gis a b \acciaccatura{a16[ b]} cis'8 b16 a \slashedGrace{a8} gis16 fis |
    e16 a gis fis e dis <gis, fis> e dis( d) cis b, |
  }

  \mbreak
  <cis a>4. <cis' e'>8[ \grace{fis'16_([ e'])} <bis dis'>8\pp <cis' e'>8] |
  <a cis'>4 r8 <e cis'>8[ \grace{d'16[ cis']} <dis bis>8 <e cis'>8] |
  <cis a>4. <e' cis''>8[ \grace{d''16_([ cis''])} <dis'b'>8 <e' cis''>8] |
  a'16 e' cis'' cis' e' a cis' e a e cis' e |
  <a, a>4. r4 r8 |

  \bar "|."
}

andanteBass = \fixed c {
  \andanteGlobal
  \voiceTwo
  \partial 4. {s4 s8} |
  <a, cis'>4. <a, d'> |
  <a cis'>4 r8 r4 r8 |
  r8 <gis b> <a cis'> <b d'> <d' fis'> <cis' e'> |

  <a cis'>4. r4 r8 |
  <a cis'>4. <a, d'> |
  <a, cis'>4 r8 r4 r8 |
  <e a>4. e,4 e8 |
  a,4. r4 r8 |

  \repeat unfold 2 {
    <e, gis>4. q |
    <a, a>4. r4 r8 |
  }

  <b, fis a>4 r8 r4 r8 |
  <e, gis b>4. r4 r8 |
  <b, a>4. r4 r8 |
  e,4. r4 r8 |

  <a, cis'>4. <a, d'> |
  <a, cis'>4 r8 r4 d8 |
  <fis cis'>4. e,4 e8 |
  cis4 s8 s4 r8 | % a\minor

  a,4. a, |
  a,4. a, |
  a,4. d |
  e,4. a, |
  d8 b, a, g,4. |

  c8 a, g, f,4. |
  b,8 gis, fis, e,4. |
  r8 a, b, c d dis |
  <e gis>4. e, |
  e,4. e, |

  e,4 r8 r4 r8 |
  r8 <gis b>8 <a c'> <ais cis'> b bis |
  <a, cis'>4. <a, d'> | % a \major
  <a, cis'>4. r4 r8 |
  <e cis'>4. e,4 e8 |

  s2. |
  r8 <fis a> q q4 r8 |
  r8 <gis d' e'> q q4 r8 |
  s4 r2 |

  <a, a>4. <a, d'> |
  <a, cis'>4. r4 r8 |
  <e a cis'>4. e, |

  a,4. r4 r8 |
  a,4. r4 r8 |
  cis4. r4 r8 |
  a,4. r4 r8 |
  a,4. r4 r8 |
}


%%% ANDANTE SCORE

andanteScore =
  \new Staff = "Guitar" \with {
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  } <<
    \clef "treble_8"
    \tempo "Andante grazioso."
    \context Voice = "upperVoice" \andanteTreble
    \context Voice = "lowerVoice" \andanteBass
  >>


%%% RONDO

rondoGlobal = { \time 2/4 \key a \major }

rondoTreble = \fixed c {
  \rondoGlobal
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \fixed c' {
    s4 \grace{d'8-2} cis'16.\p[ b32 cis'16. e'32] |
    a8 a \grace{b8} a16. gis32 a16. cis'32 |
    e4-0 e16 dis d b, |
    cis16 e b, e a, e cis e |
    b,4 \slashedGrace{d'8-2} cis'16. b32 cis'16. e'32 |

    \mbreak
    a8 a \slashedGrace{b8} a16. gis32 a16. cis'32 |
    e4 e16 dis d b, |
    cis16 e a, e b, e gis, e |
    <cis, a,>4 \slashedGrace{fis8} e16 dis e\mf fis |
    e16 dis( d) b, gis, e,( d,) b,, |
    cis,16 e, a, cis e a gis fis |
  }

  \mbreak
  e'16 dis'( d') b gis e( d) b, |
  cis16 e a cis' \slashedGrace{fis'8} e'16 dis' e' a'\f |
  a16 cis'' gis b' fis a' e gis' |
  dis16 fis' cis e' b, dis' a, cis' |
  gis,16[ b] cis[ <gis e'>16] a,[ <a fis'>16] b,[ <fis dis'>16] |
  <gis e'>4 b16. e'32 gis'16. b'32 |

  \mbreak
  b'16. b32 a'16. b32 b16. dis'32 fis'16. a'32 |
  a'16. b32 gis'16. b32 b16. e'32 gis'16. b'32 |
  b'16. b32 a'16. b32 b16. dis'32 fis'16. a'32 |
  a'16. b32 gis'16. b32 \slashedGrace{fis'8} e'16. dis'32 e'16. gis'32 |
  cis'16. dis'32 e'16. eis'32 fis'16. gis'32 a'16. fis'32 |

  \mbreak
  e'16. dis'32 cis'16. b32 ais16. b32 cis'16. dis'32\f |
  e'16. gis'32 cis'16. fis'32 b,16. <gis e'>32 b,16. <e dis'>32 |
  <gis e'>4 \slashedGrace{fis'8} e'16. dis'32 e'16. cis'32 |
  <ais cis' e'>8-> <b d'> \slashedGrace{fis'8} e'16. dis'32 e'16. cis'32 |
  <ais cis' e'>8-> <b d'> \slashedGrace{a'8} gis'16. fisis'32 gis'16. a'32 |

  \mbreak
  \fixed c' {
    <cis e ais>8-> <d b> \slashedGrace{a8} gis16. fisis32 gis16. a32 |
    <cis e ais>8-> <d b> \slashedGrace{cis'8} b16. ais32 b16. cis'32 |
    d'8\> <f gis d'> <e gis d'> <f gis d'>\! |
    <e gis d'>4\fermata \slashedGrace{d'8} cis'16. b32 cis'16. e'32 |
    a8 a \slashedGrace{b8} a16. gis32 a16. cis'32 |
    e4 e16. dis32 d16. b,32 |
  }

  \mbreak
  cis'16.\mf e'32 b16. e'32 a16. e'32 cis'16. e'32 |
  b4 \slashedGrace{d''8} cis''16. b'32 cis''16. e''32 |
  a'8 a' \slashedGrace{b'8} a'16. gis'32 a'16. cis''32 |
  e'4 e'16. dis'32 dis'16. b32 |
  cis'16 e' a e' b e' gis e' |
  <cis a>4

  \mbreak
  \bar "||" \key a \minor
  \fixed c' {
    dis16\f^\markup{\bold "Mineur."} e \slashedGrace{g8} f16 e |
    r16 e c' e r d b d |
    r16 c a e dis e \slashedGrace{g8} f16 e |
    r16 e d' e r e c' e |
    r16 gis b e dis e \slashedGrace{g8} f16 e |
    r16 e c' e r cis e bes |

    \mbreak
    r16 a e g f a, e d |
    r16 g, c e r g( f) d |
    r16 c g, e, r e[ \slashedGrace{g8} f16 e] |
    b16 e c e d e c e |
    b16 e'( d') b gis e-0 d b, |
    c e d e e e-0 d e |

    \mbreak
    c4 c16 e a b\f |
    r16 e c' e r e b e |
    r16 e\dim ais\! e r dis a dis |
    r16 d gis d r cis g cis |
    r16 a, d f e, <c e> f, <c dis> |

    \mbreak
    r16 a, c e r d( b,) gis, |
    r16 a, c e a(( e) c' a |
    e'16( d') b gis e-0 d( b,) gis, |
    r16 a, c e a( e) c' a |
    e'16( d') b gis e d( b,) gis, |

    \mbreak
    r16 a, cis e a( e) cis'-1 a |
    e'16( dis')_\markup{\italic "rall."} d' b g e-0 d b,^\markup{\bold "Majeure."} |
    \key a \major
    r4\fermata \slashedGrace{d'8} cis'16.\p b32 cis'16. e'32 |
    a8 a \slashedGrace{b8} a16. gis32 a16. cis'32 |
    e4 e16. dis32 d16. b,32 |

    \mbreak
    cis16\f e b, e a, e cis e |
    b,4 \slashedGrace{d'8} cis'16.\p b32 cis16. d'32 |
    a8 a \slashedGrace{b8} a16. gis32 a16. cis'32 |
    e4 e16. dis32 d16. b,32\f |
    cis16. e32 a,16. e32 b,16. e32 gis,16. e32 |
    a,4 \slashedGrace{fis8} e16 dis e fis |

    \mbreak
    e16 dis( d) b, gis, e,( d,) b,, |
    cis,16 e, a, cis e a( gis) fis |
    e16 dis( d) b, gis, e,( d,) b,, |
    cis,16 e, a, cis \slashedGrace{fis8} e16 dis e a\f |
    a,16 cis' gis, b fis, a e, gis |

    \mbreak
    d,16 fis cis, <ais, e> b,, <b, d> a,, <b, dis> |
    \slashedGrace{fis8} e16 dis\p e fis \slashedGrace{a8} gis16 fisis gis a |
    \slashedGrace{cis'8} b16 ais b bis \slashedGrace{d'8} cis'16. bis32 cis'16. e'32 |
    a8 a \slashedGrace{b8} a16. gis32 a16. cis'32 |
    e4 e16. dis32 d16. b,32 |

    \mbreak
    cis16. e32 a16. cis'32 e'8 <b, d gis> |
    <a, cis a>16. e32 cis16. a,32 e,8 <b, d gis> |
    <a, cis a>4 a,8 a |
    e,8 e cis, cis |
  }
  <a, a>4 <a cis' e' a'>4 |
  q2_\markup{\italic "Fine."}

  \bar "|."
}

rondoBass = \fixed c {
  \rondoGlobal
  \voiceTwo
  s4 r4 |
  a,4 r |
  e,4 r |
  a8 e cis a |
  e4 r |

  a,4 r |
  e,4 r |
  a8 cis d e |
  cis4 r |
  e,2 |
  cis8 r8 r4 |

  e,2 |
  cis8 r8 r4 |
  a8 gis fis e |
  dis8 cis b, a, |
  gis, cis a, b, |
  e,4 r |

  \repeat unfold 2 {
    fis4 r |
    e,4 r |
  }
  a,4 fis, |

  b,4 r8 a, |
  gis,8 a, b,8 b, |
  \repeat unfold 3 {e,4 r |}

  \repeat unfold 2 {e,4 r |}
  R2 |
  e,4 r |
  a,4 r |
  e,4 r |

  a8 e cis a |
  e4 r |
  a,4 r |
  e,4 r |
  a8 cis d e |
  cis4

  r4 | % Mineur.
  a,4 e, |
  a,4 r |
  e,4 a, |
  e,4 r |
  a,4 g |

  e4 r8 d |
  b,4 g |
  c4 c8 r |
  gis,8 a, b, a, |
  gis,8 r8 r4 |
  a,8 b, c b, |

  a,16 c e a r4 |
  a4 g |
  fis4 b, |
  e4 a, |
  d4 e8 f |

  e4 e, |
  a4 r |
  e,2 |
  a,4 r |
  e,2 |

  a,4 r |
  e,2 |
  R2 |
  a,4 r |
  e,4 r |

  a8 e cis a |
  e4 r |
  a,4 r |
  e,4 r |
  a8 cis d e |
  cis4 r |

  e,2 |
  cis8 r r4 |
  e,2 |
  cis8 r r4 |
  a8 gis fis e |

  d8 cis b, a, |
  b,4 r |
  R2 a,4 r |
  e,4 r |

  a,4 r8 e, |
  a,4 r8 e, |
  a,4 a |
  e4 cis |
  a,4 a, |
  a,2
}

rondoScore =
  \new Staff = "Guitar" \with {
    instrumentName = \markup{\bold "Rondo."}
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  } <<
    \clef "treble_8"
    \tempo "Allegretto."
    \context Voice = "upperVoice" \rondoTreble
    \context Voice = "lowerVoice" \rondoBass
  >>


%%% SCORE ASSEMBLY

\score {
  << \andanteScore >>
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
    \context Voice = "upperVoice" {\andanteTreble \rondoTreble}
    \context Voice = "lowerVoice" {\andanteBass \rondoBass}
  >>
  \midi {\tempo 4 = 84}
}
