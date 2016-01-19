\version "2.19.32"

% Giuliani Opus 15 Sonate Brilliant
% Adagio

upperVoice = \relative c' {
  \voiceOne\slurDown\tieDown
  b4 a16 d c a |
  g4 r8 d |
  b8 d g a |
  b8 d16( c) a8 r |
  <g b>8\arpeggio d' <g, cis> e' |
  <e, d'>4.\arpeggio dis'8 |

  \mbreak
  <g, b e>32\arpeggio ais'( b) fis( a g) b,_. e_. <fis, d'>8 <e cis'> |
  <g e'>4 <fis d'>8 r |
  b'4 a16 d c a |
  <b, d g>4\arpeggio r8 d |
  b8 d <d g> <g b> |
  q4 <fis a>8 r |
  <g b>4 <fis a>8 <f b> |

  \mbreak
  <e g c>8 <g d'> <g e'>^\fermata
  % use a tuplet to deal with the cadenza here
  \override NoteHead.font-size = #-2 \override Accidental.font-size = #-2
  \omit TupletNumber \tuplet 5/2 {
    dis'32[( e)_\apiacere fis e d c b c e, a ]
  } |
  \revert Accidental.font-size \revert NoteHead.font-size
  r16 <b, g'> q q <d b'> <c a'> <b g'> <a fis'>\sf |
  \override TextSpanner.bound-details.left.text=\markup{\upright "VII "}
  g'8\startTextSpan r r16 d e fis |
  g16 a b c cis d b g |
  g8 fis r16 gis a fis |

  \mbreak
  d16 gis a fis d d' fis, a |
  g8 r r16 cis d ais |
  b16 fis g b a g fis e |
  e8\sf d r16 d\p d d |
  ees16 d e d f d fis d \stopTextSpan |

  \mbreak
  <b d g>16^\loco <g' b> q q \slashedGrace{c8} <g b>16 <fis a> <e g> <d fis> |
  <cis e>4 r16 <cis a'> <d gis> <e g> |
  <d fis>4 r16 a' g fis |
  fis16( e) e e r b d e |
  <a, cis>8 <g b> <fis a> <e g> |

  \mbreak
  <d' fis>8 q q q |
  \tupletSpan 8 \omit TupletNumber \omit TupletBracket
  \tuplet 3/2 { r16 <e g>16[ q] <dis fis>16[( <e g>) q] r q[ q] <e a>16[( g) <e g>_.] } |
  <d fis>8 q q q |
  \tuplet 3/2 { r16 <e g>16[ q] <dis fis>16[( <e g>) q_.] <e a>16[( g) <e g>_.] <e a>16[( g) <e g>_.] } |

  \mbreak
  <d fis>8. <cis e>16 <d fis> <e g> <fis a> <g b> |
  <a c>16. <g b>32 <fis a>16. <e g>32 <d fis>16. <c e>32 <b d>16. <a c>32 |
  <g b>16 <g' b>16 q q r <b d> <a cis> <g b> |
  \tuplet 3/2 { r16 <fis b>( a) r <e a>( g) r <d g>( fis) r <cis fis>( e) } |

  \mbreak
  r32 b_\> d e gis e b' g\! d' cis\> b a gis fis e d\! |
  cis8 r g'32 fis e d cis b a g |

  \mbreak
  \tuplet 3/2 { fis16[ a d] <g, b>16[ g' e] } <fis, d'>8 <e cis'> |
  <fis d'>4 r8 r |
  r8 a'[ fis] r |
  r8 a8[ g] r |
  r8 g[ g g] |

  \mbreak
  <a, d fis>4 r8 <d d'>16. q32 |
  <e cis'>8 q r <fis c'>16. q32 |
  <g bes>8 q r <fis a>16. q32 |
  <g b>8 <g, cis> q q |
  d'8 <c e> <b d> <a c> |
  b4 a16 d c a |

  \mbreak
  g4 r8 d |
  b8 d g <fis a> |
  <g b>8 d'16 c <fis, a>8 r |
  <d g b>8\arpeggio d' <e, g cis>8\arpeggio e' |
  <fis, d'>4.\arpeggio dis'8\arpeggio |
  <g, b e>32 ais'( b) fis( a g) b, e <fis, d'>8 <e cis'> |
  <g e'>4 d'8^\dolce r |

  \mbreak
  <g b>4 <d a'>16 d' c a |
  <b, d g>4\arpeggio r8 d |
  b8 d <d g> <g b> |
  q4 <fis a>8 r |
  <g b>4 <fis a>8 <f b> |
  <e g c>8 <g d'> <g e'>^\fermata
  % use a tuplet to deal with the cadenza here
  \override NoteHead.font-size = #-2 \override Accidental.font-size = #-2
  \omit TupletNumber \tuplet 5/2 {
    dis'32[( e)_\apiacere fis e d c b c e, a ]
  } |
  \revert Accidental.font-size \revert NoteHead.font-size

  \mbreak
  r16 <b, g'> q q <d b'> <c a'> <b g'> <a fis'>\sf |
  \override TextSpanner.bound-details.left.text=\markup{\upright "VII "}
  g'8\startTextSpan r r16 d e fis |
  g16 a b c cis d b g |
  g8 fis r16 gis a fis |
  d16 gis a fis d d' fis, a |

  \mbreak
  g8 r r16 cis d ais |
  b16 fis g b a g fis e |
  e8\sf d r16 d\p d d |
  ees16 d e d f d fis d |
  g16 d ees d e d fis d |

  \mbreak
  g16 d ees d e d fis d \stopTextSpan |
  g4^\loco <a, c>8 q |
  <g b>4^\fermata <g b e>8 q |
  <b d>8 r <a c fis>4 |
  r4 r16 cis d b |
  c8 d16 e a,8 a |

  \mbreak
  d8 r r16 fis g b, |
  c8 d16 e a,8 d |
  g,4. a16. b32 |
  g4. a16. b32 |
  g8 r <g b d>4 |
  <b, d g>4 r^\fermata |
  \bar "|."
}


lowerVoice = \relative c' {
  \voiceTwo\slurUp\tieUp
  \set Staff.connectArpeggios = ##t
  g4\p d |
  b4 r8 a |
  g8 fis b <d fis> |
  <d g>4 <d fis>8 r |
  <g, d'>4\arpeggio <a e'> |
  b4.\arpeggio <a fis' c'>8\sf |

  g8\arpeggio r a a |
  cis8\f a d16_\dolce <a' c> <g b> <d a'> |
  <g g'>4 <d d'> |
  g4\arpeggio r8 a\p |
  g8 a b d |
  d,8\pf d' d, r |
  g8\p g\< g g |

  c8[ \sf b\p c]_\fermata r |
  d,4\pf d |
  \repeat unfold 16 { <b d>16 } |
  \repeat unfold 8 { <c d>16 } |

  \repeat unfold 8 { <c d>16 } |
  \repeat unfold 16 { <b d>16 } |
  \repeat unfold 16 { <c d>16 } |

  g8\sf r g' r |
  r16 a,( cis) e^! a,8_\dolce r |
  r16 d16( fis) a^! d d,\< e fis\! |
  <g b>4 gis,-\tweak X-offset #-3.5 \f |
  a8 cis d a |

  \tupletSpan 8 \omit TupletNumber \omit TupletBracket
  \tuplet 3/2 { d16[\sf a' g] fis[\sf g e] d[\sf e fis] d[\sf cis b] } |
  a4\f -\tweak X-offset #3 _\dolce a\f -\tweak X-offset #3 _\dolce |
  \tuplet 3/2 { d16[\sf a' g] fis[\sf g e] d[\sf e fis] d[\sf cis b] } |
  a4\f -\tweak X-offset #3 _\dolce a |

  d16\p d\< d d d d d d\! |
  d8\f d d d |
  g,8\sf r_\dolce g'4 |
  d8 g a a, |
  gis4\f e |
  r32\f gis\> a cis e a cis e e d cis b a g fis e\! |

  d8[_\dolce g,] a a |
  << {
    \voiceTwo d16\p d_\sempre d d d d d d
  } \\ {
    \voiceThree\stemDown s4 s8 \once\override Beam.positions = #'(-1.5 . -1.5) d'16.[ d32]
  } >> |
  << {
    \voiceTwo d,16\sf d d d d d d d
  } \\ {
    \voiceThree\stemDown \override Beam.positions = #'(-1.5 . -1.5)
    <c' ees>8 q b\rest q16.[ q32] \revert Beam.positions
  } >> |
  << {
    \voiceTwo d,16\sf d d d d d d d
  } \\ {
    \voiceThree\stemDown \override Beam.positions = #'(-2 . -2)
    <bes' d>8 q b\rest q16.[ q32]
  } >> |
  << {
    \voiceTwo d,16\sf d d d d d d d
  } \\ {
    \voiceThree\stemDown \override Beam.positions = #'(-1.5 . -1.5)
    <bes' cis>8 q q q
  } >> |

  d,16\sf d d d d\p d d d |
  \repeat unfold 3 { d16 d d d d d d d } |
  <d fis>8_\dolce fis, g d' |
  g4\p d |

  b4 r8 a |
  g8 a b d |
  d4 d8 r |
  g,4\arpeggio a\arpeggio |
  b4.\arpeggio <a fis' c'>8\arpeggio\sf |
  g8 r a a |
  cis8\sf a <d fis>16 <a' c> <g b> <d a'> |

  g4 d |
  g4\arpeggio r8 a\p |
  g8 a b d |
  d,8\pf d' d, r |
  g8\p g\< g g |

  c8[ \sf b\p c]_\fermata r |
  d,4 d |
  <b d>16\sf q q q q q q q |
  <b d>16 q q q q q q q |
  <c d>16\sf q q q q q q q |
  <c d>16 q q q q q q q |

  <b d>16\sfp q q q q q q q |
  <b d>16 q q q q q q q |
  <c d>16 q q\p q q q q q |
  <c d>16_\cresc q q q q q q q |
  <b d>16 q q q q\!_\poco q q q |

  <b d>16_\apoco q q q <c d> q q q |
  <b d>4\f d8\p dis |
  e4_\fermata cis8 cis |
  d8\p r d4\f |
  g,16\p g'_\sempre fis g f g f g |
  e16 g e g c, d c d |

  b16 g' fis g f g f g |
  e16 g e g c, d c d |
  b16 d b d b d b d |
  b16 d b d b d b d |
  b8 r g4\f |
  g4\p r_\fermata
}
