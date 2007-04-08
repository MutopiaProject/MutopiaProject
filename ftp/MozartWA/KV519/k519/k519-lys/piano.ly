% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

upper = \relative c' {

  \repeat volta 2 {
    r8 |
    r16 <as c>( f' c) r <g bes>( e' bes) |
    r <as c>( f' c) r <as c>( f' c) |
    r <as c>( f' c) r <a c>( f' c) |
    r <bes des>( f' des) r <as! c>( f' c) |
    r <f, bes>( f' bes,) r <as c>( f' c) |
    r <g d'>( f' d) r <g, des'>( e' des) |
    r <c f> r <c f> r <c e> r <c f> |
    << { <f as>8( <e g>) } \\ c4 >> r8 c' |
    b[( c des]) <c, g' bes!> |

% 10
    <c f as> <c e g> r c' |
    b[( c des]) <c, g' bes!> |
    <c f as> <c e g> r16 e[( g c]) |
    des[( f, as des]) <g, des' e>4-\fermata |
    r16 <c f>-[-( <bes es!> <as des>-]-) << { des[( c bes as]) } \\ 
					    { g8 c, } >> |
    des16[( g des bes]) << { f'8 e } \\ { as,16 c g bes } >>
    f( as des f) ges,( a es' ges) |
    <bes, f'>8 r r4 |
    r8 r16 <bes' des> r <as c> r <bes, e> |
    <as f'>4 r16 as''[( g f]) |

% 20
    des'8( c) ~ c16[ des32( c] bes16[ as]) |
    as( g as bes) f8-. <bes, e>-. |
    <g bes c e>4( ~ <as c f>8)
  }

  \break

  r8 |
  r16 <as, c>( f' c) r <g bes>( e' bes) |
  r <as c>( f' c) r <as c>( f' c) |
  r <as c>( f' c) r <a c>( f' c) |
  r <bes des>( f' des) r <as! c>( f' c) |
  r <f, bes>( f' bes,) r <as c>( f' c) |
  r <g d'>( f' d) r <g, des'>( e' des) |
  r <c f> r <c f> r <c e> r <c f> |

% 30
  << { <f as>8( <e g>) } \\ c4 >> r8 c' |
  b[( c des]) <c, g' bes!> |
  <c f as> <c e g> r c' |
  b[( c des]) <c, g' bes!> |
  <c f as> <c e g> r16 e[( g c]) |
  des[( f, as des]) <g, des' e>4-\fermata |
  r16 <c f>-[-( <bes es!> <as des>-]-) << { des[( c bes as]) } \\ 
					  { g8 c, } >> |
  des16[( g des bes]) << { f'8 e } \\ { as,16 c g bes } >>
  f( as des f) ges,( a es' ges) |
  <bes, f'>8 r r4 |

% 40
  r8 r16 <bes' des> r <as c> r <bes, e> |
  f'8[( ges es! c]) |
  f16( des as as' f des as as') |
  ges( es as, as' ges es as, as') |
  f( des as as' f des as as') |
  es( c a a' es c a a') |
  <des, bes'>8 r r4 |
  <bes des g>2 |
  r8 <c es as!>-.-[ <c f as>-.-] r |
  <bes f' as>2 |

% 50
  g'16 es'[( g f] es[ d c bes)] |
  as( g f es d es f d) |
  es es'[( g f] es d c bes) |
  as( g f es d c bes as) |
  g8 r <a' es' ges>4-\fermata |
  r16 << { a[ bes c] des( es) es( f) } { ges,[ f a] bes c c des } >> |
  << { f es des c c bes as g } { des' c bes as! es des c bes } >> |
  \clef bass c as es es' c as es es' |
  des bes es, es' des bes es, es' |
  c as es es' c as es es' |

% 60
  c a f es' c a f es' |
  <f, bes des>8 r r4 \clef violin |
  << { ces'' es8 ces | a bes } \\ { ges2 | f4 } >> r |
  << des'2 \\ { <f, as>2 } >> |
  << { c'8 b4. } \\ { <c, f>8 d4. } \\ { s8 f[ g as] } >> |
  r16 <c, g'>( bes'! g) r <e g>( bes' g) |
  r <as, f'>( as' f) r <c f>( as' f) |
  <bes, des ges>2 |
  <as c f>8-[ <g e'>-] r4 |

% 70
  <f' g bes>2 |
  r8 <e g bes>-[ <e g bes> <e g bes>-] |
  <g bes f'>2 |
  <g bes e> |
  <bes e g>4 <e g bes> |
  <g,, bes e> r8-\fermata r |
  r16 <as c>( f' c) r <g bes>( e' bes) |
  r <as c>( f' c) r <as c>( f' c) |
  r <as c>( f' c) r <a c>( f' c) |
  r <bes des>( f' des) r <as! c>( f' c) |

% 80
  r <f, bes>( f' bes,) r <as c>( f' c) |
  r <g d'>( f' d) r <g, des'>( e' des) |
  r <c f> r <c f> r <c e> r <c f> |
  << { <f as>8( <e g>) } \\ c4 >> r8 c' |
  b[( c des]) <c, g' bes!> |
  <c f as> <c e g> r c' |
  b[( c des]) <c, g' bes!> |
  <c f as> <c e g> r16 e[( g c]) |
  des[( f, as des]) ~ des[( g, bes des)] |
  <bes des e>4 r |

% 90
  r16 <c f>16-(-[ <bes es!> <as des>-)-] << { des16( c bes as) } \\ { g8 c, } >> |
  des16( g des bes) << { f'8 e } \\ { as,16 c g bes } >> |
  f16( as des f) a,( c es ges) |
  f( des bes f) a( c es ges) |
  <f, bes f'>8 r r4 |
  r16 <c'' f>16-(-[ <bes es!> <as des>-)-] << { des16( c bes as) } \\ { g8 c, } >> |
  des16( g des bes) << { f'8 e } \\ { as,16 c g bes } >> |
  r <as c>( f' c) r <des f>( as' f) |
  r <des f>( g f) r <bes, e>( g' e) |
  r <as, f'>( as' f) r <c f>( as' f) |

% 100
  r <des f>( g f) r <bes, e>( g' e) |
  r <as, f'>( as' f) r <g, des'>( f' des) |
  r <as c>( f' c) r <g bes>( e' bes) |
  r8 <as f'> r <c as'> |
  <as f'>4 r

  \bar "|."
}

lower = \relative f, {
  \repeat volta 2 {
    r8 |
    \repeat unfold 8 { <f f'> r } |
    <des des'>4 <c c'> |
    <b b'> <bes bes'> |
    <as as'>8 as''[-. g-. f-.] |
    <c, c'>4 r \clef violin |
    <f'' as>( <e g>8)\noBeam \clef bass <e,, e'> |

% 10
    <f f'> <c c'> r4 \clef violin |
    <f'' as>( <e g>8)\noBeam \clef bass <e,, e'> |
    <f f'> <c c'> <c' c'>4 ~ |
    <c c'> <bes bes'>-\fermata |
    r16 as'([ g f]) e8[ f] |
    bes,4 c |
    <des, des'> <c c'> |
    <des des'>8 r r4 |
    r8 bes'[ c c] |
    f16( as c as f as c as) |

% 20
    e( g bes g f as c as) \clef violin |
    bes( des g des) <c as'>8-. <c g'>-. \clef bass|
    <f, f'>4 ~ <f f'>8
  }

  r8 |
  \repeat unfold 8 { <f, f'> r } |
  <des des'>4 <c c'> |
  <b b'> <bes bes'> |
  <as as'>8 as''[-. g-. f-.] |

% 30
  <c, c'>4 r \clef violin |
  <f'' as>( <e g>8)\noBeam \clef bass <e,, e'> |
  <f f'> <c c'> r4 \clef violin |
  <f'' as>( <e g>8)\noBeam \clef bass <e,, e'> |
  <f f'> <c c'> <c' c'>4 ~ |
  <c c'> <bes bes'>-\fermata |
  r16 as'([ g f]) e8[ f] |
  bes,4 c |
  <des, des'> <c c'> |
  <des des'>8 r r4 |

% 40
  r8 bes'[ c c] |
  f[( ges es! c)] |
  << { f2 | es | f | f } \\
     { des8[ as des as] | c[ as c as] | des[ as des as] | c[ f, c' f,] } >> |
  <bes f'> r r4 |
  <es, es'>2 |
  r8 <as as'>-.-[ <f f'>]-.-] r |
  <des des'>4. <d d'>8 |

% 50
  <es es'> bes'[( g' bes,] |
  f'[ bes,] f'[ bes,]) |
  es[( bes] g'[ bes,] |
  f'[ bes,] f'[ bes,]) |
  <es, es'> r <c c'>4-\fermata |

  r16 es''[( des c] bes8 as16 g) |
  as8 r es r |
  << { c2 | bes | c | es } \\
     { as,8[ es as es] | g[ es g es] | as[ es as es] | c'[ f, c' f,] } >> |

% 61
  <bes des>8 r r4 |
  es'2 ~ |
  es8 des r4 |
  des,2 |
  <as as'>4 <g g'>8 <f f'> |
  <e e'> r <c c'> r |
  <des des'> r <as as'> r |
  <bes bes'>2 |
  <c c'>4 r |

% 70
  des''2 |
  r8 c[ c c] |
  des2 |
  r8 <des, des'>-[ <bes bes'> <g g'>-] |
  <e e'>4 <des des'> |
  <c c'> r8-\fermata r |
  \repeat unfold 8 { <f f'> r } |

% 80
  <des des'>4 <c c'> |
  <b b'> <bes bes'> |
  <as as'>8 as''[-. g-. f-.] |
  <c, c'>4 r \clef violin |
  <f'' as>( <e g>8)\noBeam \clef bass <e,, e'> |
  <f f'> <c c'> r4 \clef violin |
  <f'' as>( <e g>8)\noBeam \clef bass <e,, e'> |
  <f f'> <c c'> <c' c'>4 ~ |
  <c c'> <bes bes'> |
  <g g'> r |

% 90
  r16 as'[( g f)] e8( f) |
  bes,4 c |
  \repeat unfold 2 { <des, des'> <c c'> } |
  <des des'>8 r r4 |
  r16 as''[( g f]) e8( f) |
  bes,4 c |
  << { f8 r des r | bes r c r | des r as r | bes r c r | 
       des r bes r | c r c r | f, r f r | f4 }
     { f8 r des r | bes r c r | des r as r | bes r c r | 
       des r bes r | c r c r | f, r f r | f4 } >> r

  \bar "|."
}

dynamics = {
  s8
  s2-\p |
  s2*10 |
  s4 s4-\f |
  s2 |
  s16 s8.-\p s4 |
  s2 |
  s2-\f |
  s2 |
  s8 s4.-\p |
  s2*4

  s2*11 |
  s4 s4-\f |
  s2 |
  s16 s8.-\p s4 |
  s2 |
  s2-\f |
  s2 |
  s8 s4.-\p |
  s2*13 |
  s4 s4-\f |
  s16 s8.-\p s4 |
  s2*17 |
  s2-\f |
  s2*2

  s2-\p |
  s2*10 |
  s4 s4-\f |
  s2*2 |
  s16 s8.-\p s4 |
  s2 |
  s2-\f |
  s2*2 |
  s16 s8.-\p s4 |
  s2 |
  s2-\p |
  s2*7
}
