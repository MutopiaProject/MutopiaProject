\version "2.19.49"

%%%
%%% Rondo
%%%

rondoTreble = {
  \oneVoice
  \repeat volta 2 {
    \partial 8 {d8}
    \voiceOne
    <e c'>8. <g e'>16 <f d'>8. <g e'>16
    c'16( d') e' f' fis'( g') a' g' |
    << {f'8 f' <c' e'> q} \\ {\midVoice d'8 d'16_( b) s4} >> |
    <b d'>8 <ais cis'> <b d'> g |
    <e c'>8. <g e'>16 <f d'>8. <g e'>16 |

    \mbreak
    c'16 d' e' f' fis'8 g' |
    b'8 b' \acciaccatura{b'8} a'16 g' a' b' |
    g'4 b8\rest
  }
  \repeat volta 2 {
    g'8 |
    <e' g'>8. <dis' fis'>16 <e' g'>8. <cis' a'>16 |
    <d' f'>8. <cis' e'>16 <d' f'>8. g'16 |
    <c' e'>8[ <e' g'> <d' f'> <c' e'>8] |

    \mbreak
    <ais cis'>8 <b d'>4 g8 |
    <e c'>8. <g e'>16 <f d'>8. <g e'>16 |
    c'16( d') e' f' fis'( g') a' g' |
    g'16( f') e' d' c' b d' b |
    c'4 b8\rest
  }
  g |
  <c' e'>8[ g <d' f'> g] |
  <g e' g'>4 r8 <e e'> |

  \oneVoice
  <f f'>8 <g g'> <a a'> <b b'> |
  <c' c''>4 b8\rest q8 |
  <b b'>8( <c' c''>) b\rest <a a'> |
  <gis gis'>8( <a a'>) b\rest <fis fis'> |
  <g g'>8[ <d d'> <ees ees'> <cis cis'>8] |
  \voiceOne
  d'8[ d'16 e'] d'8 <d' fis'> |
  g'8 a' b' cis'' |
  << {d''4 s8 <d' fis'>8} \\
     {\midVoice fis'8 d'16 d' d'8 c'} >> |

  \mbreak
  g'8[ a' b' cis''] |
  \repeat unfold 3 {<fis' d''>8 a'16 a' a'8 <g' cis''> |}
  <fis' d''>8[ <g' cis''> <fis' d''> <g' cis''>8] |
  \oneVoice <d fis' d''>4 b8\rest_\dol d' \voiceOne |
  << {g'4. b'8} \\ {\midVoice b8[ d' b d']} >> |
  a'16( g') fis' g' d'8 dis' |

  \mbreak
  e'8 g' fis' a' |
  a'16( g') fis' e' d'8 d' |
  g'4. b'8 |
  a'16( g') fis' g' d'8 dis' |
  e'8[ g' fis' a'] |
  g'4. g'8 |
  \repeat unfold 2 {e'16 g' e' g'} |

  \mbreak
  d'8[ g'16( b')] a'( g') fis' g' |
  \repeat unfold 2 {e'16 g' e' g'} |
  d'8[ g'16( b')] a'( g') fis' e' |
  d'8[ c'16 d'] c' d' c' d' |
  b16 d' g' b' a'( g') fis' e' |

  \mbreak
  d'8[ c'16 c'] c' d' c' d' |
  b16 d' g' b' a'( g') fis' e' |
  \oneVoice
  dis'8[ <b, fis a d'> q q] |
  <c g c' e'>4 <cis bes e' g'> |
  <d b d' g'>4 <d a c' fis'> |
  <g, g b g'>4 r8 g'16( fis') |
  a'16( g') fis'( g') f'8 d' |

  \mbreak
  c'4. b8 |
  <d f g b>8[ q q q] |
  q4 r8 g'16( fis') |
  a'16( g') fis'( g') f'8 d' |
  c'4. b8 |
  <d f g b>8[ q q q] |
  q4 r8 g'16( fis') |

  \mbreak
  b'16( a') g'( fis') a'( g') f'( e') |
  g'16( f') e'( dis') f'( e') d'( c') |
  c'16( b) a( g) aes( a bes) b |
  \voiceOne
  <e c'>8. <g e'>16 <f d'>8. <g e'>16 |
  c'16( d') e' f' fis'( g') a' g' |

  \mbreak
  f'8 f' <c' e'> q |
  <b d'>8 <a cis'> <b d'> g |
  <e c'>8. <g e'>16 <f d'>8. <g e'>16 |
  c'16( d') e' f' fis'8 g' |
  b'8 b' \acciaccatura{b'8} a'16 g' a' b' |
  \oneVoice <g b g'>4 r8
  \repeat volta 1 {
    g'8 \voiceOne |
    <e' g'>8. <dis' fis'>16 <e' g'>8. <cis' a'>16 |

    \mbreak
    <d' f'>8. <cis' e'>16 <d' f'>8. g'16 |
    <c' e'>8[ <e' g'> <d' f'> <c' e'>8] |
    <ais cis'>8 <b d'>4 g8 |
    <e c'>8. <g e'>16 <f d'>8. <g e'>16 |
    c'16( d') e' f' fis'( g') a' g' |
    g'16( f') e' d' c'( b) d' b |
    c'4 b8\rest
  }
  \repeat volta 1 {
    e'8 |
    <c' a'>4. <e' c''>8 |
    <d' b'>4. q8 |
    <c' a'>4. q8 |
    <b gis'>4. e'8 |
    <e' c''>4 <d' b'>8 <c' a'> |
    \oneVoice <e, b g'>8[ <a fis'> <g e'> <a, a c' fis'>8] |

    \mbreak
    <b, g b e'>4 <b, fis a dis'> |
    \voiceOne
    <g e'>4 r8
  }
  \repeat volta 1 {
    \once\oneVoice <gis b e'>8 |
    <a c' fis'>4. q8 |
    <b d' gis'>4. q8 |
    <c' e' a'>4. q8 |
    <d' e' b'>4. q8 |
    <e' g' cis''>4. q8 |

    \mbreak
    <f' d''>8. <e' c''>16 <d' b'>8 <c' a'> |
    <d' b'>8. <c' a'>16 <d' b'>8 <e' c''> |
    <c' a'>4.
  }
  \oneVoice bes'16(\p a') \voiceOne |
  a'8[ a' <g' a'> q] |
  a'4 b8\rest \acciaccatura{b'8} a'16 g' |
  g'8[ g' <f' g'> g'] |
  <e' g'>4 b8\rest \acciaccatura{a'8} g'16( fis') |

  \mbreak
  \repeat unfold 2 {fis'4 r8 g'16( fis') |}
  fis'8[ fis' fis' fis'] |
  <b g'>4. <e' gis'>8 |
  <f' a'>4. <cis' e'>8 |
  <d' f'>8[ <cis' e'> <d' f'> <c' fis'>8] |
  <b g'>4. <d' f'>8 |

  \mbreak
  <c' e'>8. <d' f'>16 <e' g'>8 q |
  <d' f'>8 q <c' e'> q |
  <b d'>4\p q8 q |
  <c' ees'>2\sf |
  <b d'>4\p q8 q |
  <c' ees'>2\sf |
  \oneVoice
  <g b d'>4 r8 g'16( fis') |

  \mbreak
  \repeat unfold 2 {a'8( g') b\rest g'16( fis') |}
  a'16( g') fis'( g') e'( g') f'( d') |
  \voiceOne
  <e c'>8. <g e'>16 <f d'>8. <g e'>16 |
  c'16( d') e' f' fis'( g') a' g' |

  \mbreak
  << {f'8 f' <c' e'> q} \\
     {\midVoice d'8 d'16_(b) s4 } >> |
  <b d'>8 <ais cis'> <b d'> g |
  <e c'>8. <g e'>16 <f d'>8. <g e'>16 |
  c'16( d') e' f' fis'8 g' |
  b'8 b' \acciaccatura{b'8} a'16 g' a' b' |
  \oneVoice <g b g'>4 b8\rest \bar "||" g'8 | \voiceOne

  \mbreak
  <e' g'>8. <dis' fis'>16 <e' g'>8. <cis' a'>16 |
  <d' f'>8. <cis' e'>16 <d' f'>8. g'16 |
  <c' e'>8[ <e' g'> <d' f'> <c' e'>8] |
  <ais cis'>8 <b d'>4 g8 |
  <f c'>8. <g e'>16 <f d'>8. <g e'>16 |
  c'16( d') e' f' fis'( g') a' g' |

  \mbreak
  g'16( f') e' d' c'( b) d' b |
  <e c'>4 b8\rest \bar "||" \oneVoice <c' c''>\p^\markup "Coda." |
  <c' c''>8 q q q |
  <c' c''>4 r8 <c a f'>\f |
  <c a f'>8 q q q |
  <c g e'>4 r8 <c' c''>\p |
  <c' c''>8 q q q |

  \mbreak
  <c' c''>4 r8 <c a f'>8 |
  <c a f'>8[ q q q] |
  <c g e'>4 r8^\dol <g e' c''> |
  \voiceOne
  << {c''16( b') a'( b') g'8 g'} \\ {\midVoice f'4 s} >> |
  << {c''4 r8 c''8} \\ {\midVoice e'4 s8 e'} >> |
  << {c''16( b') a'( b') g'8 g'} \\ {\midVoice f'4 s} >> |

  \mbreak
  << {c''4 r8 c''8} \\ {\midVoice e'4 s8 e'} >> |
  << {c''16( b') a'( b') g'8 g'} \\ {\midVoice f'4 s} >> |
  \oneVoice
  <g e' c''>8 c16[\f c'] d d' e[ e'] |
  f16[ f'] fis fis' g[ g'] gis gis' |
  a16 a' r8 <f c' d' a'>4 |

  \mbreak
  <g c' e' g'>4 <g c' ees' g'> |
  \voiceOne
  << {<fis c' d' a'>4 b8\rest\fermata c''} \\ {\midVoice s4 s8 e'} >> |
  \repeat unfold 2 {
    << {c''16( b') a'( b') g'8 g'} \\ {\midVoice f'4 s} >> |
    << {c''4 s8 c''} \\ {\midVoice e'4 e'8\rest e'} >> |
  }

  \mbreak
  << {c''16( b') a'( b') g'8 g'} \\ {\midVoice f'4 s} >> |
  <e' c''>8 c16[\f c'] d d' e[ e'] |
  \oneVoice
  f16[ f'] fis fis' g[ g'] gis gis' |
  a16 a' r8 <fis c' ees' a'>4 |

  \mbreak
  <g c' e' g'>4 <g, e g b> |
  \repeat unfold 2 {
    <c e g c'>8[ q q q] |
    <d f g b>8 fis'16([ g')] e'( g') f' d' |
  }
  
  \mbreak
  <c e g c'>4 <f c' d' a'> |
  <g c' e' g'>4 <g, f g b> |
  \repeat unfold 2 {
    <c e g c'>8[ q q q] |
    <d f g b>8 fis'16([ g')] e'( g') f' d' |
  }

  <c e g c'>4 <f c' d' a'> |
  <g c' e' g'>4 <g, f g b> |
  <c e c'>8 d16( e f) g( a) b |
  \voiceOne
  r8 e'[ e' e'] |

  \mbreak
  \oneVoice <a c' e'>16 a,( b, c) d( e f) gis \voiceOne |
  r8 <c' e'>8[ q q] |
  <d' f'>4. <cis' d'>8 |
  <c' e'>4 <f b d'> |
  <e c'>4 r8\pp <f' b'> |

  \mbreak
  \repeat unfold 2 {<e' c''>4 r8 <f' b'>8 |}
  <e' c''>4 r8 <d' f' b'> |
  <e' c''>8[\ff <d' f' b'> <e' c''> <d' f' b'>8] |
  c''4 b\rest |
  <c' e' c''>4 q |
  q4 b\rest

  \bar "|."
}

rondoBass = {
  \voiceTwo
  \partial 8 {s8}
  c4 c |
  <c e>4 r |
  g,4 g, |
  g4. r8 |
  c4 c |

  <c e>4 r |
  <d d'>4 q |
  <g b>4 s8 b\rest |
  g4 r |
  g4 r8 g |
  R2 |

  c8\rest g[ g,] c\rest |
  c4 c |
  <c e>4 r |
  <f a>4 g8 <g, f> |
  <c e>4 s8 s |
  c4 c |
  c4 s |

  s2*5 |
  d4 s8 c' |
  <b d'>8 <fis d'> <g d'> <a e' g'> |
  d4 s |

  <b d'>8[ <fis d'> <g d'> <a e' g'>8] |
  \repeat unfold 3 {d4 r8 a, |}
  d8[ a, d a,] |
  s2 |
  g,2 |
  <g, b>4. q8 |

  <g, c'>4 q |
  <g, b>4 r |
  g,2 |
  <g, b>4. q8 |
  <g, c'>4 q |
  <g, b>8[ g g] b\rest |
  c'8 g c' g |

  b4 r |
  c'8 g c' g |
  b4 r |
  r8 fis[ a d] |
  g4 r |

  r8 fis8[ a d] |
  g4 r |
  s2*5 |

  s2*7 |

  s2*3 |
  c4 c |
  <c e>4 r |

  g,4 g, |
  g4. r8 |
  c4 c |
  <c e>4 r |
  <d d'>4 <d c'> |
  s4 s8 s8 |
  g4 r |

  g4 r8 g |
  R2 |
  r8 g[ g,] r |
  c4 c |
  <c e>4 r |
  <f a>4 g8 <g, f> |
  <c e>4 s8 r |

  r8 gis16( a) a,4 |
  r8 dis16( e) e,4 |
  r8 gis16( a) a,4 |
  r8 dis16( e) e,4 |
  a,2 |
  s2 |

  s2 |
  r8 dis16( e) e,8 s |
  \repeat unfold 4 {r8 dis16( e) e,4 |}
  r8 gis16( a) a,4 |

  d2 |
  e4 e, |
  a,4. s8 |
  r8 <cis' e'>8[ cis' q] |
  <d' f'>4 s |
  b8\rest <b d'>8[ b q] |
  c'4 s |

  \repeat unfold 2 {r8 <a c'>8[ q] r |}
  r8 <a c'>8[\< q q8] |
  g8[ g g g\!] |
  g8[\p g g g] |
  \repeat unfold 2 {g8[ g g g] |}

  \repeat unfold 2 {g8[ g g g] |}
  \repeat unfold 2 {
    g8[ g g g] |
    gis8[ gis gis gis] |
  }
  s2 |

  s2*3 |
  c4 c |
  <c e>4 r |
  g,4 g, |
  g4. r8 |
  c4 c |
  <c e>4 r |
  <d d'>4 q |
  s2 |

  g4 r |
  g4 r8 g |
  R2 |
  r8 g[ g,] r |
  c4 c |
  <c e>4 r |

  <f a>4 g8 <g, f> |
  c4 s |
  s2*5 |

  s2*3 |
  \repeat unfold 3 {g8 g g g |}

  g8[ g g g] |
  g4 g8 g |
  s2*3 |

  s2 |
  s4. g8 |
  \repeat unfold 4 {g8[ g g g] |}

  g8[ g g g] |
  g8 s s4 |
  s2*2 |

  s2*5 |

  s2*5 |

  s2*4 |
  c'8[ <b d'> <a c'> <gis b>8] |

  s2 |
  a8 g[ f e] |
  d8[ e f fis] |
  g4 g, |
  c8 g16( a) g4 |

  \repeat unfold 2 {r8 g16([ a]) g4 |}
  r8 g16([ a) g8] g |
  c'8[ g c' g] |
  <c' e'>4 s |
  <c e g>4 q |
  q4 s
}


%%%
%%% VOICE ASSEMBLY
%%%

rondo_T = \fixed c {
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t
  \rondoTreble
}

rondo_B = \fixed c {
  \set fingeringOrientations = #'(left)
  \override Fingering.add-stem-support = ##t
  \rondoBass
}

%%%
%%% SCORE ASSEMBLY
%%%

rondoScore =
  \new Staff = "Guitar" \with {
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  } <<
    \time 2/4
    \key c \major
    \clef "treble_8"
    \tempo "Allegretto."
    \context Voice = "rondoTreble" \rondo_T
    \context Voice = "rondoBass" \rondo_B
  >>

rondoMidi = <<
  \new Staff = "midi-guitar" \with {
    midiInstrument = #"acoustic guitar (nylon)"
  } <<
    \time 2/4
    \key c \major
    \clef "treble_8"
    \context Voice = "rondoTreble" \rondo_T
    \context Voice = "rondoBass" \rondo_B
  >>
>>

%%% Local Variables: ***
%%% LilyPond-master-file: "grande-sonata-opus22.ly" ***
%%% End: ***
