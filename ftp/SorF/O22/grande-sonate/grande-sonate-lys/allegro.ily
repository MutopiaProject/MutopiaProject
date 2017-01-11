\version "2.19.49"

%%%
%%% ALLEGRO, PART I
%%%

allegroTrebleI = {
  \oneVoice
  <c g c' e' g' c''>4\arpeggio\f r <g, d g b d' g'>\arpeggio r |
  <c e g c' e'>4\arpeggio r r8 a'16( g') f'( e') d'( c') |
  \voiceOne b4 b c' c' \oneVoice |
  <b, f g d'>4 q q r |
  <b f' g' d''>4\arpeggio r <g d' f' b'>\arpeggio r |

  \mbreak
  <g, d g b d' g'>4\arpeggio r r8 g'16( fis') a'( g') f'-! d'-! |
  \voiceOne
  b4 <f b> q q |
  <e c'>2 r |
  <a c'>4. d'32( c') b( c') d'8 <a c'> <g b> <f a> |
  <f a>8 <e g> q q q <e gis> <f a> <g b> |

  \mbreak
  <a c'>4. d'32( c') b( c') d'8 <a c'> <g b> <f a> |
  <f a>8 <e g> q q q c' e' g' |
  \repeat unfold 2 {<d' f'>2 <c' e'> |}
  r8 <f' a'> <e' g'> <d' f'> q <c' e'> q  <g d'> |
  <d' f'>8 <c' e'> <f' a'> <e' g'> q4 r |

  \mbreak
  \repeat unfold 2 {<d' f'>2 <c' e'> |}
  r8 <f' a'> <e' g'> <d' f'> q <c' e'> q  <g d'> |
  <e g c'>8 r r4 r2 |
  << {c''4 c''4. \tuplet 6/2 {e''8[ d'' c''} b' a']}
     \\ {\midVoice e'8 g' e' g' e'4 d'\rest} >> |
  g'8 <f' g'> q q q q q q |

  \mbreak
  << {c''4 c''4. \tuplet 6/2 {e''8[ d'' c''} b' a']}
     \\ {\midVoice e'8 g' e' g' e'4 d'\rest} >> |
  g'8 <f' g'> q q q q q q |
  << {c''4 c''4. \tuplet 6/2 {e''8[ d'' c''} b' a']}
     \\ {\midVoice e'8 g' e' g' e'4 d'\rest} >> |
  << {g'4 g'4. \tuplet 6/2 {b'8[ a' g'} fis' e']}
     \\ {\midVoice b8 d' b d' b4 a\rest} >> |
  d'4 <c' d'> q q |
  << {g'4 g'4. \tuplet 6/2 {b'8[ a' g'} fis' e']}
     \\ {\midVoice b8 d' b d' b4 a\rest} >> |

  \mbreak
  d'4 <c' d'> q q |
  d'8 g' g' g' g' g' g' g' |
  \oneVoice
  \tuplet 6/4 {
    <g bes ees' bes'>16\arpeggio\ff bes' bes'
    <g bes ees' bes'> bes' bes'
  }
  \repeat unfold 3 {
    \tuplet 6/4 {
      <g bes ees' bes'> bes' bes' <g bes ees' bes'> bes' bes'
    }
  } |

  \mbreak
  \repeat unfold 4 {
    \tuplet 6/4 {
      <aes bes d' bes'>16 bes' bes' <aes bes d' bes'>16 bes' bes'
    }
  } |
  \repeat unfold 2 {
    \tuplet 6/4 {
      <g bes ees' bes'> bes' bes' <g bes ees' bes'> bes' bes'
    }
  }
  \repeat unfold 2 {
    \tuplet 6/4 {
      <aes bes d' bes'>16 bes' bes' <aes bes d' bes'>16 bes' bes'
    }
  } |

  \mbreak
  \repeat unfold 4 {
    \tuplet 6/4 {
      <g bes ees' bes'> bes' bes' <g bes ees' bes'> bes' bes'
    }
  } |
  \repeat unfold 4 {
    \tuplet 6/4 {<ees bes cis' g'>16 g' g' <ees bes cis' g'>16 g' g'}
  } |

  \mbreak
  \voiceOne
  \repeat unfold 2 {
    <a d' fis'>8 <d' fis'> <e' g'> <fis' a'> <g' bes'>4 q |
    <fis' a'>4 q <cis' e' g'>4 q |
  }
  \oneVoice
  \once\stemUp <d' fis'>4 <d' fis' d''> <a d' fis' d''> <fis d' fis' d''> |
  <d d' fis' d''>4 r r d''8.\p cis''16 |
  e''4( d'') r d''8. cis''16 |

  \mbreak
  << {e''4( d'') r8 \acciaccatura{e''8} d''8 cis'' d''(} \\ {s1}>> |
  \voiceOne
  << {g'4) g' g' gis'}
     \\ {\midVoice b4\rest \override Beam.positions=#'(-2 . -1) b8 d' b[ d'] b d'} >> |
  << {a'4 a' a' \stemDown cis''16( d'' d'' d'')\stemUp}
     \\ {\midVoice \override Beam.positions=#'(-1 . -0.5) c'8 d' c'[ d'] c'4 s} >> |
  << {\acciaccatura{d''8} g'4 g' g' gis'}
     \\ {\midVoice \override Beam.positions=#'(-2 . -1) e4\rest b8 d' b[ d'] b d'} >> |
  <c' a'>8. <b gis'>16 <c' a'>8. <d' b'>16 <c' a'>4 r |
  << {b'4 b'4. d''16( c'') b'8[ a']}
     \\ {dis'8 f' dis' f' dis' b\rest b4\rest} >> |

  \mbreak
  << {gis'4. gis'8 a' b' c'' a'}
     \\ {\midVoice \override Beam.positions=#'(-1 . -1 ) b8 d' b d' c' e' c' e'} >> |
  << {g'4. b'8 a'[ \acciaccatura{b'} a'16 g'16] a'8 b'}
     \\ {\midVoice b8 d' b d' c' d' c' d' } >> |
  << {g'4 g' g'8 \acciaccatura{e''} d'' cis'' d''}
     \\ {\midVoice\stemUp \revert Beam.positions b8 d' b[ d'] b b\rest b4\rest} >> |
  \acciaccatura{d''8} g'4 <d' g'> q <d' gis'> |
  <c' d' a'>4 q q ais'16( b') c'' b' |

  \mbreak
  \acciaccatura{a'8} g'4 <d' g'> q <d' gis'> |
  <c' d' a'>4 q q b\rest |
  << {b'4 b'4. d''16( c'') b'8[ a']}
     \\ {\midVoice dis'8 f' dis' f' d' b\rest b4\rest } >> |
  << { gis'2 gis'4 gis'}
     \\ {\midVoice \override Beam.positions=#'(-1 . -1) b8 d' b d' b d' b d'} >> |
  << {a'4 a' g' g'}
     \\ {\midVoice \override Beam.positions=#'(-2 . -2) c'8 e' c' e' bes e' bes e'} >> |
  <a d' fis'>4 <fis' a'> <g' bes'> <g' cis''> |

  \mbreak
  <fis' d''>4 <fis' a'> <g' bes'> <g' cis''> |
  \oneVoice <d fis' d''>4 b\rest b\rest d' | \voiceOne
  b'4. b'8 g' fis' e' d' |
  d'4 <c' d'> q q |
  <b d'>4 g'8. b'16 a'8.[ g'16] fis'8. e'16 |
  d'4 <c' d'> q q |

  \mbreak
  \repeat unfold 2 {
    << {s1} \\
       {\midVoice <b d'>8. g'16 b'8 <b d'> <c' e'>8. g'16 c''8 <c' e'>} >> |
    << {s2 a'8 a'16( g') a'8 b'} \\
       {\midVoice <b d'>8. g'16 b'8 g' c' d' c' d'} >> |
  }
  <g, b g'>8. d'16 g'8. b'16 a'8. g'16 fis'8. e'16 |

  \mbreak
  << {dis'4 dis' dis' dis'}
     \\ {\midVoice s4 \stemUp fis8 a fis[ a] fis a \stemDown } >> |
  <c g e'>4 b\rest <cis bes e' g'> b\rest |
  << {g'4. b'8 a'8 a'16 g' a'8 b'} \\
     {\midVoice \override Beam.positions=#'(-1.2 . -1.2) b d' b d' c' d' c' d'} >> |
  \oneVoice <g b g'>8. g'16 c''8. b'16 a'8. g'16 fis'8. e'16 | \voiceOne
  d'4 <c' d'> q q |

  \mbreak
  \oneVoice <g b d'>8. g'16 c''8. b'16 a'8. g'16 fis'8. e'16 \voiceOne |
  d'4 <c' d'> q q |
  \tuplet 3/2 {g16\ff b g'-2}

  \tupletSpan 8 \omit TupletNumber
  \tuplet 3/2 {
    fis[ b g'] g b g' a[ b g'] b-3 b-0 g'-2 a[ b g'] g b g' fis[ b g'] |

    \mbreak
    e16 b g' dis[ b g'] e b g' fis[ b g'] g b g' fis[ b g'] e b g' d[ b g'] |
    cis16 e' g' g[ e' g'] bes e' g' g[ e' g'] cis e' g' g[ e' g'] b e' g' g[ e' g'] |

    \mbreak
    d16 d' g' g[ d' g'] b d' g' g[ d' g'] d d' g' g[ d' g'] b d' g' g[ d' g'] |
    d16 d' fis' fis[ d' fis'] a d' fis' fis[ d' fis'] d d' fis' fis[ d' fis'] a d' fis' fis[ d' fis'] |

    \mbreak
    g16 b g' fis[ b g'] g b g' a[ b g'] b b g' a[ b g'] g b g' fis[ b g'] |
    e16 b g' dis[ b g'] e b g' fis[ b g'] g b g' fis[ b g'] e b g' d[ b g'] |

    \mbreak
    cis16 e' g' g[ e' g'] bes e' g' g[ e' g'] cis e' g' g[ e' g'] bes e' g' g[ e' g'] |
    d16 d' g' g[ d' g'] b d' g' g[ d' g'] d d' g' g[ d' g'] b d' g' g[ d' g'] |

    \mbreak
    d16 d' fis' fis[ d' fis'] a d' fis' fis[ d' fis'] d d' fis' fis[ d' fis'] a d' fis' fis[ d' fis'] |
  }
  \repeat unfold 2 {<b g'>2. q4 |}
  \oneVoice <g, b g'>2 b4\rest
  \set Score.repeatCommands=#'(end-repeat) \break
}


allegroBassI = {
  s1*2 |
  r8 g f g e g e c |
  s1*2 |

  s1 |
  r8 g g, g g, g g, g |
  \repeat unfold 3 {c8 c c c c c c c |}

  c8 c c c c c c c |
  c8 c c c c4 r |
  \repeat unfold 2 {r8 g16( a) b8 g r g e c |}
  f4 r g g, |
  c4 r r8 g e c |

  \repeat unfold 2 {r8 g16( a) b8 g r g e c |}
  f4 d g g, |
  c8 c' b a g f e d |
  c4 c c c\rest |
  r8 g b g b g b g |

  c4 c c c\rest |
  r8 g b g b g b g |
  c4 c c c\rest |
  g,4 g, g, g,\rest |
  r8 d a g fis a fis d |
  g,4 g, g, g,\rest |

  r8 d a g fis a fis d |
  <g b>2 r |
  s1 |

  s1*2 |

  s1*2 |

  \repeat unfold 4 {
    \repeat unfold 2 {d8 d d d}
  }
  d4 s4*3 |
  s1*2 |

  s1 |
  s4 d d d |
  fis4 fis fis d\rest |
  s4 d d d |
  d2 d4 r |
  b,4 b, b, s |

  e2 a, |
  d4 d d d |
  g4 g g s |
  r4 <g b>8 d q[ d] <d b> d |
  fis8 d fis[ d] fis4 f\rest |

  g4\rest <g b>8 d q[ d] <d b> d |
  fis8 d fis[ d] fis4 s |
  b,4 b, b, s |
  e4 e e e |
  c4 c cis cis |
  d8 d d d d d d d |

  d8 d d d d d d d |
  s1 |
  <g b d'>2 r |
  d4\rest d8 a fis[ d] a fis |
  g4 g\rest g2\rest |
  e4\rest fis8 a fis[ d] a fis |

  \repeat unfold 2 {
    g,4 s g, s |
    g,4 s g, g, |
  }
  s1

  b,4\rest b, b, b, |
  s1 |
  d4 d d d |
  s1 |
  b,4\rest fis8 a fis[ a] fis d |

  s1 |
  d4\rest fis8 a fis a fis d |
  g8 fis g a b a g fis |

  e8-1 dis-1 e fis g fis e d |
  cis8 g bes g cis g b g |

  d8 g b g d g b g |
  d8 fis a fis d fis a fis |

  g8 fis g a b a g fis |
  e8 dis e fis g fis e d |

  cis8 g bes g cis g bes g |
  d8 g b g d g b g |

  d8 fis a fis d fis a fis |
  \repeat unfold 2 {g,8 g fis g d g b, d |}
  s4*3
}


%%%
%%% ALLEGRO, PART II
%%%

allegroTrebleII = {
  <g g'>4^\markup{\small "etouffez."} |
  \repeat unfold 2 {<g g'>4 b\rest b\rest <g g'> |}
  <g g'>4 <aes aes'> <f f'> <d d'> |
  \bar "||" \key ees \major
  \voiceOne
  ees'1 |
  << {g'2 g'4 g'4} \\
     {\midVoice \override Beam.positions=#'(-1.1 . -1.1)
      bes8 des' bes des' bes des' bes des'} >> |
  << {aes'1} \\
     {\midVoice\stemUp\override Beam.positions=#'(2.3 . 2.3)
      aes8 c' aes c' aes c' aes c'} >> |
  << {f'2 f'4 f'} \\
     {\midVoice\stemUp\revert Beam.positions
      aes8 d' aes8[ d'] aes8 d' aes8[ d'] } >> |

  \mbreak
  << {ees'1-4} \\ {\midVoice\stemUp g8 bes-3 g bes g bes g bes} >> |
  << {g'2 g'4 g'} \\ {\midVoice\stemUp\repeat unfold 4 {bes8[ des']}} >> |
  << {aes'1} \\ {\midVoice\stemUp\repeat unfold 4 {aes8 c'}} >> |
  << {f'2 f'4 f'} \\ {\midVoice\stemUp\repeat unfold 4 {aes8[ d']}} >> |
  \tuplet 3/2 {
    ees16-2\f ees' g'-2 bes[ ees' g'] a ees' g' bes[ ees' g'] g ees' g' bes[ ees' g'] f-2 ees' g' bes-2[ ees' g']
  } |

  \mbreak
  \tuplet 3/2 {
    ees16 ees' g'-2 bes[ ees' g'] a ees' g' bes[ ees' g'] aes ees' g' g[ ees' g'] f ees' g' ees[ ees' g']
  } |
  \repeat unfold 2 {<bes f' aes'>8 q4 q q q8 |}
  \repeat unfold 8 {ees32[ bes ees' g']} |

  \mbreak
  <d b f' aes'>1\arpeggio -\tweak X-offset #-4 ^\markup{"sim."} |
  <c c' ees' g'>1\arpeggio  -\tweak X-offset #-4 ^\markup{"sim."} |
  <c' eis' f'>8 q4 q q q8 |
  <b d' g'>4 r r2 |
  <f' aes'>2. -\tweak X-offset #-4 ^\markup{\italic "dol."} <ees' g'>4 |
  <d' f'>2. <c' fis'>4 |
  <b g'>2. <d' f'>4 |

  \mbreak
  <c' ees'>2 <ees' g'> |
  <b d'>4 q <d' f'> q |
  <c' ees'>4 q <ees' g'> q |
  <d' fis'>4 <ees' g'> <d' f'> <c' ees'> |
  d'8 g' g' g' aes'8( g'4) g'8 |
  fis'4 fis' fis' fis' |

  \mbreak
  d'8 g' g' g' aes'8( g'4) g'8 |
  fis'4 fis' fis' fis' |
  d'8 g' g' g' a'( g') r g' |
  \bar "||" \key c \major
  e'8 g' g' g' a'( g') r g'
  f'8 g' g' g' aes'_\markup{"sur deux cordes."} g' a' g' |
  \oneVoice bes'8 g' b' g' c'' g' cis'' g' \voiceOne |

  \mbreak
  d''8( f'') e'' d'' c''-2 b' a' g' |
  \oneVoice fis'8-1( g') b'-1 a'-4 g'-2 f'-4 e'-3 d'-1 |
  <c g c' e' g' c''>4\arpeggio r <g, d g b d' g'>\arpeggio r |
  <c e g c' e'>4\arpeggio r r8 a'16( g') f'( e') d'( c') |
  \voiceOne
  b4 b c' c' |
  \oneVoice <b, f g d'>4 q q r |
  <b f' g' d''>4\arpeggio r <g d' f' b'>\arpeggio r |

  \mbreak
  <g, d g b d' g'>4\arpeggio r r8 g'16( fis') a'( g') f'-! d'-! |
  \voiceOne
  b4 <f b> q q |
  <e c'>2 b\rest |
  <a c'>4. d'32( c') b( c') d'8 <a c'> <g b> <f a> |
  <f a>8 <e g> q q q <e gis> <f a> <g b> |
  <a c'>4. d'32( c') b( c') d'8 <a c'> <g b> <f a> |

  \mbreak
  a8 g g g g c' e' g' |
  \repeat unfold 2 {<d' f'>2 <c' e'> |}
  r8 <f' a'> <e' g'> <d' f'> q <c' e'> q <g d'> |
  <d' f'>8 <c' e'> <f' a'> <e' g'> q4 r |
  <d' f'>2 <c' e'> |

  \mbreak                       % source page 5
  <d' f'>2 <c' e'> |
  r8 <f' a'> <e' g'> <d' f'> q <c' e'> q <g d'> |
  <e g c'>8 r r4 r2 |
  << {c''4 c''4. \tuplet 6/2 {e''8[ d'' c''} b' a']} \\
     {\midVoice e'8 g' e' g' e'4 s} >> |
  g'8 <f' g'> q q q[ q q q] |

  \mbreak
  << {c''4 c''4. \tuplet 6/2 {e''8[ d'' c''} b' a']} \\
     {\midVoice e'8 g' e' g' e'4 s} >> |
  g'8 <f' g'> q q q[ q q q] |
  \oneVoice
  \tuplet 3/2 {
    <c' e' g' c''>16[\ff\arpeggio c'' c''] \repeat unfold 5 {<c' e' g' c''>16[ c'' c'']}
    <gis d' e' b'>16[\arpeggio b' b'] <gis d' e' b'>16[ b' b'] |

    \mbreak
    <a c' e' a'>16[\arpeggio a' a'] \repeat unfold 5 {<a c' e' a'>16[ a' a']}
      <e bes c' g'>16[\arpeggio g' g'] <e bes c' g'>16[ g' g'] |
    <f a c' f'>16[\arpeggio f' f'] \repeat unfold 3 {<f a c' f'>16[f' f']}
      <f g c' g'>16[\arpeggio g' g'] \repeat unfold 3 {<f g c' g'>16[ g' g']} |

    \mbreak
    <f c' d' a'>16[\arpeggio a' a'] \repeat unfold 3 {<f c' d' a'>16[ a' a']}
      <fis c' ees' a'>16\arpeggio[ a' a'] \repeat unfold 3 {<fis c' ees' a'>16[ a' a']} |
  }
  \voiceOne
  \repeat unfold 2 {<b d' g'>4 <d' f' b'> <c' e' c''> <c' ees' fis'> |}
  \oneVoice <g b d' g'>4 <g, d g b d' g'>4\arpeggio q\arpeggio r8 g' |

  \mbreak
  <c e g c' e'>4. d'8 c' b a g |
  \voiceOne
  g4 <f g> q q |
  g8 c'4 e'8 d' c' b a |
  g4 <f g> q q |
  g8. c'16 e'8 g a8. c'16 f'8 a |
  << {g8. c'16 e'8 c' d' d'16( c') d'8 e'} \\
     {\midVoice\stemUp\override Beam.positions=#'(0 . 0.25) s2 f8[ g] f[ g]} >> |

  \mbreak
  g8. c'16 e'8 g a8. c'16 f'8 a' |
  << {g8. c'16 e'8 c' d' d'16( c') d'8 e'} \\
     {\midVoice\stemUp\override Beam.positions=#'(0 . 0.25) s2 f8[ g] f[ g]} >> |
  c'8. g16 c'8. e'16 d'8. c'16 b8. a16 |
  << {gis4 gis gis gis} \\
     {\midVoice\stemUp\revert Beam.positions b,4\rest b,8[ d] b, d b,[ d]} >> |
  \oneVoice <f, c a>4 r <fis, ees a c'> r \voiceOne |
  << {c'4 c' d'8 d'16( c') d'8 e'} \\
     {\midVoice\stemUp\override Beam.positions=#'(0 . 0.25) e8[ g] e g f[ g] f g} >> |

  \mbreak
  \repeat unfold 2 {
    g8. c'16 e'8 g a8. c'16 f'8 a |
    << {g8. c'16 e'8 c' d' d'16( c') d'8 e'} \\
       {\midVoice\stemUp\override Beam.positions=#'(0 . 0.25) s2 f8[ g] f[ g]} >> |
  }
  c'8. g16 c'8. e'16 d'8. c'16 b8. a16 |
  << {gis4 gis gis gis} \\
     {\midVoice\stemUp\revert Beam.positions b,4\rest b,8[ d] b, d b,[ d]} >> |

  \mbreak
  \oneVoice <f, c a>4 r <fis, ees a c'> r \voiceOne |
  c''8\f \repeat unfold 7 {c''} |
  \oneVoice <c' d' c''>4 r8 g'\p fis'8 g' a' g' \voiceOne |
  << {g'4 b b b} \\ {\midVoice\stemUp s4 f8[ g] f g f[ g]} >> |
  c'4 r8 g fis g a g |
  << {g4_\markup{"rinf."} d' d' d'} \\ {\midVoice\stemUp s4 f8[ b] f b f[ b]} >> |

  \mbreak
  <c' e'>2 q |
  f'4\rest <cis' d' a'> <cis' e' g'> <b d' f'> |
  <c' e'> q q q |
  f'4\rest <cis' d' a'> <cis' e' g'> <f g b> |
  <e g c'>4 <c' e'> q q |
  <d' f'>4 q <c' e'> <b f'> |

  \mbreak
  <c' e'>4 f'\rest <c' e'>4. <cis' e'>8 |
  <d' f'>4. q8 <c' e'>4. <b f'>8 |
  <c' e'>4 f'\rest f'\rest <g b> |
  <e g c'>8( e' f' fis') g'4 <d' f' b'> |
  <c' e' c''>4 q q q |
  q4 b\rest <e g c' e' c''> b\rest |
  q2 b\rest |
  \bar "|."

  \mbreak
}


allegroBassII = {
  s4 | s1*3 |
  % ees \major
  ees8 -\tweak X-offset #-4 _\markup{\italic "dol."} ees ees ees ees ees ees ees |
  \repeat unfold 3 {ees4 ees ees ees |}

  ees4-1 ees ees ees |
  \repeat unfold 3 {ees4 ees ees ees |}
  ees8 bes a bes g bes f bes |

  ees8 b a bes aes g f ees |
  \repeat unfold 2 {d4 d d d |}
  s1 |

  s1*2 |
  aes,4 aes, aes, aes, |
  g,8 g g g g g g g |
  \repeat unfold 3 {g8 g g g g g g g|}

  \repeat unfold 4 {g8 g g g g g g g|}
  <g b d'>4 r r q |
  r4 <aes c' ees'> q q |

  <g b>4 r r <g b d'> |
  r4 <aes c' ees'> q q |
  <g b>4 r r <g b d'> |
  % \key c\major
  <g c'>4 r r <g cis' e'> |
  <g d'>4 r r2 |
  s1 |

  <g b>4 s4*3 |
  s1*3 |
  r8 g f g e g e c |
  s1*2 |

  s1 |
  r8 g g, g g, g g, g |
  \repeat unfold 4 {c8 c c c c c c c |}

  <c f>8 <c e> q q q4 r |
  \repeat unfold 2 {r8 g16( a) b8 g r g e c |}
  f4 r g g, |
  c4 r r8 g e c |
  r8 g16( a) b8 g r g e c |

  % page 5
  r8 g16( a) b8 g r g e c |
  f4 d g g, |
  c8 c' b a g f e d |
  c4 c c r |
  r8 g b g b g b g |

  c4 c c b\rest |
  r8 g b g b g b g |
  s1 |

  s1*2 |

  s1 |
  \repeat unfold 2 {g8 g g g g g g g |}
  s1

  s1 |
  r4 b,8-1 d-4 b,[ d] b, d |
  <c e>4 r r2 |
  r4 b,8 d b,[ d] b, d |
  <c e>4. q8 <c f>4. q8 |
  <c e>4 r c c |

  <c e>4. q8 <c f>4. q8 |
  <c e>4 c\rest c c |
  <c e>4 c\rest r2 |
  s4 e, e, e, |
  s1 |
  g,4 g, g, g, |

  \repeat unfold 2 {
    <c e>4. q8 <c f>4. q8 |
    <c e>4 c\rest c c |
  }
  <c e>4 c\rest r2 |
  s4 e, e, e, |

  s1 |
  <g c' e'>8 q q q <g d' f'> q q q |
  s1 |
  g,4\rest g, g, g, |
  <c e>4 s4*3 |
  g,4\rest g, g, g, |

  \repeat unfold 2 {
    c8 d e f g gis a g |
    f4 fis g g, |
  }
  c4 c'8[ b] a gis a[ g] |
  f8 d e f g fis g g, |

  c8\rest c e g c' gis a g |
  f8 d e f g fis g g, |
  c8( e f fis) g4 <g, f> |
  c4 c\rest c\rest g |
  c4 c c c |
  c4 s c s |
  c2 s |
}

%%%
%%% VOICE ASSEMBLY
%%%

allegroTreble = \fixed c {
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t
  \voiceOne
  \allegroTrebleI
  \allegroTrebleII
}

allegroBass = \fixed c {
  \set fingeringOrientations = #'(left)
  \override Fingering.add-stem-support = ##t
  \voiceTwo
  \allegroBassI
  \allegroBassII
}


%%%
%%% SCORE ASSEMBLY
%%%

allegroScore =
  \new Staff = "Guitar" \with {
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  } <<
    \time 4/4
    \clef "treble_8"
    \context Voice = "allegroTreble" \allegroTreble
    \context Voice = "allegroBass" \allegroBass
  >>

allegroMidi = <<
  \new Staff = "midi-guitar" \with {
    midiInstrument = #"acoustic guitar (nylon)"
  } <<
    \time 4/4
    \clef "treble_8"
    \context Voice = "allegroTreble" \allegroTreble
    \context Voice = "allegroBass" \allegroBass
  >>
>>


%%% Local Variables: ***
%%% LilyPond-master-file: "grande-sonata-opus22.ly" ***
%%% End: ***
