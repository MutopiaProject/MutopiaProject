\version "2.19.32"

% Giuliani Opus 15 Sonate Brilliant
% Finale
%mbreak = {\break}

uMotifA = {
  \repeat unfold 3 { r16 e[ g c] bes8\arpeggio | }
  c8\arpeggio r g |
  r16 g c g d' g, |
  r16 g e' g, f' g, |
}
lMotifA = {
  \repeat unfold 3 { c4 <c f a>8\arpeggio\sf | }
  <c e g>8\arpeggio r r |
  e4\f b8 |
  c4 d8 |
}

upperVoice = \relative c' {
  \voiceOne\slurDown\tieDown
  \partial 8 {g8} |
  \uMotifA |
  r16 g g' g, e' g,
  d'8 r g, |
  \uMotifA |
  r16 g g' g, b g
  c4 r8 |
  R4. |
  r16 g d' g, b g |
  r16 g c g e' g, |
  r16 g cis g d' g, |
  R4. |
  \mbreak

  \barNumberCheck #22
  r16 g d' g, b g |
  r16 g c g e' g, |
  \override TextSpanner.bound-details.left.text=\markup{\upright "VII "}
  g'4\startTextSpan r8 |
  d8 e fis |
  g8 a b |
  d8 cis c |
  b8 a g |
  \mbreak

  d8 e fis |
  g8 a b |
  d8 c a |
  g4 a8 |
  g4 a8 |
  g8\stopTextSpan r \slashedGrace{a,8} g16 fis |
  g16 a b c d e |

  \mbreak
  <d f>8 q r |
  R4. |
  g,8 g r |
  <d' f> q r |
  g,8 g r |
  r8 r \slashedGrace{a8} g16_\dolce fis |
  g16( a) b_. c_. d( c) |
  b16_. a_. b_. c( d) e_. |

  \mbreak
  f16( e) d( c) b_. a_. |
  g16_. fis_. g_. gis( a) g_. |
  f16( e) d_. c_. b_. d_. |
  \repeat unfold 3 { r16 e[ g c] bes8\arpeggio | }
  c8 r g |

  \mbreak
  r16 g c g d' g, |
  r16 g e' g, f' g, |
  r16 g g' g, e' g, |
  d'8 r g, |
  \repeat unfold 2 { r16 e[ g c] bes8\arpeggio | }

  \mbreak
  r16 e,[ g c] bes8\arpeggio |
  c8 r g |
  r16 g c g d' g, |
  r16 g e' g, f' g, |
  r16 g g' g, b g |
  c4 r8 |
  \bar "||"

  \break
  \mark "Minore"
  <a c e a>8 e' c |
  a8 f'16( e) d_. c |
  <a b>8 q q |
  <gis b>4 r8 |
  <d gis b e>8 b' gis |
  e8 g'16( f) e_. d_. |
  c16 e c a b gis |
  a4 r8 |

  \mbreak
  r16 e' dis e d e |
  c16 e b e g, e' |
  r16 gis, b e b gis |
  r16 a c e c a |
  r16 e' dis e d e |
  c16 e b e a, e' |

  \mbreak
  r16 f, a dis a f |
  \repeat unfold 2 { r16 gis[ b e] <a, dis>8 | }
  <gis b e>4 r8 |
  <a c e a>8 e' c |
  a8 f'16( e) d_. c_. |

  \mbreak
  <a b>8 q q |
  <gis b>4 r8 |
  <b, d gis b e>8 b' gis |
  e8 g'16( f) e d |
  c16 e c a b gis |
  a8 a r |
  \bar "||"
  r8 g' e |
  f4 fis8 |

  \mbreak
  g4 e8 |
  f4 r8 |
  r8 e cis |
  d4 r8 |
  r8 d b |
  c4 r8 |
  g'8 f e |

  \mbreak
  r16 a, e' a, d a |
  r16 d, <a' c> d, <a' c> d, |
  b'4 r8 |
  \repeat unfold 2 {
    f'8 e d |
    c4 b8 |
  }

  \mbreak
  e8 d c |
  r16 a d a f' d |
  r16 c e c g, <b' d> |
  \repeat unfold 3 { r16 e,[ g c] bes8\arpeggio | }
  <e, g c>8 r g |

  \mbreak
  r16 g c g d' g, |
  r16 g e' g, f' g, |
  r16 g g' g, e' g, |
  d'8 r a |
  \repeat unfold 3 { r16 a[ d f] <c e>8\arpeggio | }
  <a d f>4 r8 |

  \mbreak
  r16 b f' b, f' b, |
  r16 b-\tweak X-offset #1 _\markup{\italic "stargandosi"} f' b, f' b, |
  r16 c e_\poco c e c |
  r16 f, a d_\markup{\italic "a"} a f |
  r16 e g_\poco c g e |
  r16 d g b g d |
  \bar "||"

  \break
  \tempo "Grazioso"
  \time 2/4
  R2 |
  \slashedGrace{d'8} c16. b32 c16. d32 e8 e |
  cis4 d8 r |
  d16. cis32 d16. e32 f8 f |
  dis4 e8 r |
  \slashedGrace{d8} c16. b32 c16. d32 e8 e |

  \mbreak
  r16 fis c a r g b g' |
  a, e' c a b d c a |
  r16 g d b g4 |
  <e'' gis e'>8 e16. e32 e8 gis16. e32 |
  a16. e32 b'16. e,32 c'8 r |
  <d, fis d'>8 d16. d32 d8 fis16. d32 |
  g16. d32 a'16. d,32 b'8 r |

  \mbreak
  f8 f g16^\dolce f e f |
  f8 e r16 d d d |
  d8 cis r16 dis, a' c |
  c16 b ais b gis ais c e |
  r16 <g, d'> r <a c> r <g b> r <fis a> |
  %\override TextSpanner.bound-details.left.text=\markup{\upright "VII "}
  g4 a'16\startTextSpan b c cis |

  \mbreak
  d8. b16 a16 c a fis |
  g8 d a'16 b c cis |
  d16 b g8 a16 fis d8 |
  g16 gis a8 g16 gis a8 |
  g16 gis a fis g gis a fis |

  \mbreak
  g8\stopTextSpan r16 fis,\p g a b c |
  d8 r16 ais b c d e |
  <d fis>8 r r4 |
  R2 |
  R2 |
  \slashedGrace{d8} c16. b32 c16. d32 e8 e |

  \mbreak
  cis4 d8 r |
  d16. cis32 d16. e32 f8 f |
  dis4 e8 r |
  \slashedGrace{d8} c16. b32 c16. d32 e8 e |
  r16 fis c a r g b g' |
  a,16 e' c\p a g d' c a |

  \mbreak
  r16 g d b g4 |
  r4 r16 cis' d b |
  c4 r16 c d e |
  g16 fis f d f e d c |
  b16 g fis g gis a^\markup{\italic "rallentando"} ais b |
  \override TextSpanner.bound-details.left.text=\poco
  \slashedGrace{d8} c16. b32 c16. d32 e8\startTextSpan cis |

  \mbreak
  d16 a e' a, g'( f) a, d |
  r16 e, g\p c r d, g b\stopTextSpan |
  \bar "||" \time 3/8
  \repeat unfold 3 { r16 e,[ g c] bes8\arpeggio | }
  <e, g c>8 r g |
  r16 g c g d' g, |

  \mbreak
  r16 g e' g, f' g, |
  r16 g g' g, e' g, |
  d'8 r g, |
  \repeat unfold 3 { r16 e[ g c] bes8\arpeggio | }
  <e, g c>8 r g |

  r16g c g d' g, |
  r16 g e' g, f' g, |
  r16 g g' g, b g |
  c4 r8 |
  R4. |
  r16 g d' g, b g |
  r16 g c g e' g, |
  r16 g cis g d' g, |

  \mbreak
  R4. |
  r16 g d' g, b g |
  r16 g c g e' g, |
  \override TextSpanner.bound-details.left.text=\markup{\upright "VII "}
  g'4\startTextSpan r8 |
  g8 e fis |
  g8 a b |
  d8 cis c |
  b8 a g |

  \mbreak
  d8 e fis |
  g8 a b |
  d8 c a |
  g4 a8 |
  g4 a8 |
  g8\stopTextSpan r8 \slashedGrace{a,8} g16 fis |
  g16 a b c d e |
  <d f>8 q r |

  \mbreak
  R4. |
  g,8 g r |
  <d' f> q r |
  g,8 g r |
  r8 r \slashedGrace{a8} g16 fis |
  g16( a) b_. c_. d( c) |
  b16_. a_. b_. c( d) e_. |
  f16( e) d( c) b_. a_. |
  g16_. fis_. g_. gis( a g) |

  f16( e) d_. c_. b_. d_. |
  \repeat unfold 3 { r16 e[ g c] bes8\arpeggio | }
  c8 r g |
  r16 g c g d' g, |
  r16 g e' g, f' g, |
  r16 g g' g, e' g, |
  d'8 r g, |

  \mbreak
  \repeat unfold 3 { r16 e[ g c] bes8\arpeggio | }
  c8 r g |
  r16 g c g d' g, |
  r16 g e' g, f' g, |
  r16 g g' g, e' g, |
  c4 r8 |

  \mbreak
  g'8 fis f |
  e8 d c |
  c16 g b g d' g, |
  c16 g c g e' g, |
  g'8 fis f |
  e8 d c |
  c16 g b g d' g, |
  c8 r r |

  \mbreak
  c16 g b g d' g, |
  c8 r r |
  <g d'>8\p q q |
  <c e>4. |
  <g d'>8 q q |
  <e c'>4. |
  R4. |
  R4. |
  R4. |
  r8 r <g d'>8 |

  \mbreak
  <c e>4 r8 |
  r8 r <g d'> |
  <c e>4 r8 |
  R4. |
  <b d g>4. |
  <e g c>4. |
  <g, b g'>8 q q |
  <e g c e>4. |
  <e' g c>4. |
  <c, e g c>4.^\fermata |
  \bar "|."
}


lowerVoice = \relative c {
  \voiceTwo\slurUp\tieUp
  \set Staff.connectArpeggios = ##t
  \partial 8 {r8\p} |
  \lMotifA |
  e4 c8 |
  b8 r r |
  \lMotifA |
  e4 f8 |
  e8 c r |
  g16\p g' fis g fis g |
  f4. |
  e4. |
  b4. |
  g16 g' fis g fis g |

  \barNumberCheck #22
  f4. |
  e4 c8 |
  b16 d b d b d |
  c16 d c d c d |
  b16 d b d b d |
  a16 d a d a d |
  g16 d g d g d |

  c16 d c d c d |
  b16 d b d b d |
  a16 d a d c d |
  b16 d b d c\sf d |
  b16 d b d c\sf d |
  b8 r r\p |
  R4. |

  g'8[ g] g,16 fis( |
  g16 a)( b) c^. d( e) |
  <b f'>8 q r |
  aes' aes r |
  <b, f'> q r |
  \repeat unfold 3 { R4. | }

  R4. |
  s4. | s4. |
  \repeat unfold 3 { c4\p <c f a>8\arpeggio\sf | }
  <c e g>8 r r |

  e4\f b8 |
  c4 d8 |
  e4 c8 |
  b8 r r |
  \repeat unfold 3 { c4\p <c f a>8\arpeggio\sf | }

  <c e g>8 r r |
  e4\f b8 |
  c4 d8 |
  e4 f8 |
  e8 c r |

  % MINORE
  a8\f d c |
  a8 r r |
  d8\p d dis |
  e4 r8 |
  <e, b'>8\f b' gis |
  e8 r r |
  a4\pf e8 |
  a8 a r |

  e4\f gis8 |
  a8 b c |
  d4. |
  c4. |
  e,4 gis8 |
  a8 b c |

  a4. |
  \repeat unfold 2 { e4 f'8\sf | }
  e,4 r8 |
  a8\sf e' c |
  a8 r r |

  d8\p d dis |
  e4 r8 |
  e,8\sf b' gis |
  e8 r r |
  a4\f e8 |
  a4 r8 |
  bes'16_\dolce c bes c bes c |
  a16 c a c a c |

  bes16 c bes c bes c |
  a16 c a c a c |
  g16 a g a g a |
  f16 a f a f a |
  f16 g f g f g |
  e16 g e g e\< g |
  c,16 g' d g e g\! |

  f4. |
  fis,4.\f |
  g16 g' fis g fis g |
  \repeat unfold 2 {
    b,16 g' c, g' d g |
    e16 g fis g b\sf g |
  }

  c,16 g' d g e g |
  f4.\f |
  g4 g,8 |
  \repeat unfold 3 { c4\p <c f a>8\arpeggio\sf | }
  c8 r r |

  e4\f b8 |
  c4 d8 |
  e4 c8 |
  b8 r r |
  \repeat unfold 3 { d4\p <d bes'>8\arpeggio\sf | }
  d4 r8 |

  g,4.\pf |
  gis4. |
  a4. |
  f4. |
  g4. |
  g4. |

  % Grazioso
  c16_\mvoce g' d g c, g' e g |
  c,16 g' e g c, g' e g |
  \repeat unfold 2 { b,16 g' f g b, g' f g | }
  \repeat unfold 2 { c,16 g' e g c, g' e g | }

  d4\pf e |
  c4 d8\p d |
  g,4 g |
  e8\sf <e gis' b> q d'' |
  c8 gis' a8 r |
  d,,8\sf <d fis a> q c' |
  b8\p fis' g r |

  b,,16 g' d g b, g' d g |
  c,16 g' e g b, gis' e g |
  a,16 a' e a fis,4 |
  <g e'>4 c |
  b8 c d d |
  <b d>16 q q q <c d>_\dolce q q q |

  \repeat unfold 3 { <b d>16 q q q <c d> q q q | }
  <b d>16 q <c d> q <b d> q <c d> q |
  <b d>16 q <c d> q <b d>_\cresc q\! <c d> q |

  <b d>8\f r r4 |
  r8. fis'16 g a b c |
  r16\p fis,, g a b c d e |
  f16 fis g gis b a f d |
  c16_\mvoce g' e g c, g' e g |
  c,16 g' e g c, g' e g |

  b,16 g' f g b, g' f g |
  b,16 g' f g b, g' d g |
  c,16 g' e g c, g' e g |
  c,16 g' e g c, g' e g |
  d4\pf e |
  c4 d8 d |

  g,4 g |
  f'16_\dolce g f g f g f g |
  e16 g e g e g e g |
  d16 g d g c, g' c, g' |
  g,4 r |
  c16 g' e g c, g' e g |

  f8\sf cis\f d f, |
  g4 g |
  \repeat unfold 3 { c4 <c f a>8\arpeggio\sf | }
  c8 r r |
  e4\f b8 |

  c4 d8 |
  e4 c8 |
  b8 r r |
  \repeat unfold 3 { c4 <c f a>8\arpeggio\sf | }
  c8 r r |

  e4\f b8 |
  c4 d8 |
  e4 f8 |
  e8 c r |
  g16 g' fis g fis g |
  f4. |
  e4. |
  b4. |

  g16 g' fis g fis g |
  f4. |
  e4 c8 |
  b16 d b d b d |
  c16 d c d c d |
  b16 d b d b d |
  a16 d a d a d |
  g16 d g d g d |

  c16 d c d c d |
  b16 d b d b d |
  a16 d a d c d |
  b16 d b d\sf c d |
  b16 d b d\sf c d |
  b8 r r\p |
  R4. |
  g'8[ g] g,16 fis( |

  g16) a b( c) d( e) |
  <b f'>8 q r |
  aes'8 aes r |
  <b, f'>8 q r |
  R4._\dolce |
  \repeat unfold 3 { R4. | }
  s4. |

  s4. |
  \repeat unfold 3 { c4\p <c f a>8\arpeggio\sf | }
  <c e g>8 r r |
  e4\f b8 |
  c4 d8 |
  e4 c8 |
  b8 r r |

  \repeat unfold 3 { c4\p <c f a>8\arpeggio\sf | }
  <c e g>8 r r |
  e4\f b8 |
  c4 d8 |
  e4 f8 |
  e8 c r |

  g16\f g' a, g' b, g' |
  c,16 g' d g e g |
  f4. |
  e4. |
  g,16 g' a, g' b, g' |
  c,16 g' d g e g |
  e4. |
  e8 r r |

  f4. |
  e8 r r |
  R4. |
  R4. |
  R4. |
  s4. |
  <g, d'>8\p q q |
  <c e>4. |
  <g d'>8 q q |
  <e c'>4 r8 |

  r8 r <g d'> |
  <e c'>4 r8 |
  r8 r <g d'> |
  <e c'>4 r8 |
  g'4.\f |
  c4. |
  g,8 g g |
  c4. |
  c'4. |
  e,,4.-\tweak X-offset #-4 \ff_ \fermata -\tweak X-offset #3 _"Fine."
}
