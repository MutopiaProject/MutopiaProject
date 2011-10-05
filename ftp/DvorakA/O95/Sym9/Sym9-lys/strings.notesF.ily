\version "2.14.0"

violinImF = \relative c' {
  \key e \minor
  b4.(\ff c8) r2 | b4.(\ff\db c8) r2 | b4->( c8) r8 b4(->\ub c8) r8 |
  b'( c16) r16 b8( cs16) r16 b8(\< ds16) r16 b8( e16) r16 |
  b8( fs'16) r16 b,8( g'16) r16 b,8( a'16) r16 b,8( as'16) r16 |
  b4(\ffz c8) r8 b4( c8) r8 | b4( cs8) r8 b4( ds8) r |
  r4 ef4-.\db\f ef-. ef-. |
  ds1\startTrillSpan\< e4\stopTrillSpan\ff r r2 | <e, c'>4 r r2 |
  <e, b' g'>4 r4 <d b' b' >4\db r4 |
  <e b' g'>4 r r2 | <g e' b'>4 r r2 | <fs e' c'>4 r r2 |
  <b b'>4 r4 <ds ds'>4\ub r4 |
  e'8:16\ff b:16 g:16 fs:16 e:16 b:16 e:16 g:16 |
  <b, b'>4 r r b16( e g b) |
  <e, c'>4 r r2 |
  <g, e' b'>4 r4 <g d' b'>4 r4 |
  <g e' b'>4 e'16( g b e) b4 r4 |
  <g, e' b'>4 r r b16 e g b |
  <e, c'>4 r r2 |
  <b b'>4 r4 <ds ds'>4 r4 |
  e'8:16 b:16 g:16 fs:16 e:16 b:16 e:16 g:16 |
  b2-> c4(-. d)-. | c4.->( b8)-. b2 | b2-> a4\fz g8 a |
  \acciaccatura fs,8 <ds' b'>2. b'4 |
  b2-> c4(-. d)-. |
  c4.(-> b8)-. b2 |
  b a4\fz g8 a |
  \acciaccatura fs,8 <ds' b'>2.
  \tag#'score \ottava #1 b'4 |
  \barNumberCheck#OnemF
  e2\ff fs4(-. g)-. |
  fs4.(-> e8)-. e2 |
  e2-> d4 b8 d |
  e2. e4 |
  e2 fs4(-. g)-. |
  a4.( g16 a) b2-> |
  g16(\fz fs e4.) fs4(-. ds)-. |
  g16( fs e4.) fs4(-. ds)-. |
  g16( fs e8) fs-. ds-. g16( fs e8) fs-. ds-. |
  g16( fs e8) fs-. ds-. fs-. ds-. fs,-. ds-. |
  \tag#'score \ottava#0
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \times2/3{ e8\ff fs g d b d e fs g d b d } |
  \times2/3{ e8\< fs g } d'8.(\fz c16)-. b8.( g16)-. fs8.( e16)-. |
  \times2/3{ d8 fs e d fs e d fs a d a fs }
  \times2/3{ e8 fs g d b d e fs g d b d }
  \times2/3{ e8\< fs g } d'8.(\fz c16)-. b8.( a16)-. g8.( fs16)-. |
  \times2/3{ e8 fs g fs b b, e fs g } e8 r |
  \repeat unfold 4 { r4 b,8->\db\ff r r2 }
  \times2/3{ e'8\ff fs g d b d e fs g d b d } |
  \times2/3{ e8\< fs g } d'8.(\fz c16)-. b8.( g16)-. fs8.( e16)-. |
  \times2/3{ d8 fs e d fs e d d' b a g fs }
  \times2/3{ e8 fs g d b d e fs g d b d }
  \times2/3{ e8(\< fs g) } e'8.(\fz c16)-. b8.( a16)-. g8.( e16)-. |
  \times2/3{ fs8(\< b d) } fs8.(\fz e16)-. d8.( c16)-. b8.( fs16)-. |
  \times2/3{ g8(\< bf e } g8.)\fz e16-.
  \times2/3{ e,8(\< g bf } e8.)\fz cs16-. |
  \times2/3{ cs,8(\< e g } bf8.)\fz g16-.
  \times2/3{ g,8(\< bf cs } e8.)\fz cs16-. |
  \times2/3{ g8(\mp bf cs } e8.)-> g16-.
  \times2/3{ g,8( bf cs } e8.)->\> cs16-. |
  \times2/3{ g8(\p bf cs } e8.)-> g16-.
  \times2/3{ g,8(\> bf cs } e8.)-> cs16-. |
  e8.\( cs16 e8. cs16 e8.\ub cs16 e8.\pp cs16\) |
  e1~e2\ppp r2 R1\partPageBreak
  c1:32\pp d:32 d:32\< d:32\> e2.:32 d4:32 |
  d1:32\pp d:32 d:32 d:32 c4:32 a:32 bf2:32 |
  a1:32 a:32 a:32 a2:32 g4:32 bf:32 |
  a1:32 a2:32 a4. a8(\( | c2.)\< b4\) |
  b( g') fs( e) |
  e2.( d4) |
  d(\mf b') a( g) |
  d'( b) a( g) |
  fs'(\f\< e) d( c) |
  b2( d) |
  b2( a) |
  \barNumberCheck#FourmF
  \acciaccatura d,,8 <g' b,>4.(\ff b8) a4.( g8) |
  a4.( c8) b4.( a8) |
  \acciaccatura as8 b8[-.\fz b]-. b[-.\fz b]-.
  b[-.\fz b]-. \acciaccatura as8 b[-.\fz b]-. |
  <b d, d,>8 r <a c, d,>8\db r \acciaccatura d,, <g' b,>2 |
  \acciaccatura d,8 <g' b,>4.(\ff b8) a4.( g8) |
  a4.( c8) b4.( a8) |
  \acciaccatura as8 b8[\fz b]-. b[-.\fz b]-.
  b[-.\fz b]-. \acciaccatura as8 b[\fz b]-. |
  <b d, d,>8 r <a c, d,>8\db r <g b, d,>4.\db r8 |
  \tag#'score \ottava#1
  g'4.(\ff fs8) g4.( b,8) |
  a4(-> c)-> b(-> a)-> |
  g'4.( fs8) g4.( b,8) |
  a4( c) b( a) |
  \tag#'score \ottava#0
  \acciaccatura as8 b8\fz b-. b-.\fz b-.
  b-.\fz b-. \acciaccatura as8 b\fz b-. |
  <b d, d,>8 r <a c, d,>8\db r \acciaccatura d,, <g' b,>2 |
  <<
    {s8\f s8-\markup\italic"marcato"}
    \repeat unfold 4 { d8-> g-. fs-> ds-. b16-> b' g-. fs-. e8 b }
  >>
  R1*4
  <<
    {s1\mp s\> s\p s2 s2\> }
    \repeat unfold 4 { d8-. g-. fs-. ds-. b16 b' g fs e8 b } |
  >>
  b16\pp g' e d b8 a g16 d' b a g8 e |
  d16( b' g\> e d b' g e d b' g e d b' a g) |
  d8(\ppp b' a g d' c b g') |
  e( d b' a g b d e) |
  \barNumberCheck#FivemF
  <<
    s1*0\ppp \override PercentRepeatCounter #'direction = #DOWN
    \repeat unfold 6 g1:32
    \tag#'part \repeat percent 6 s1
  >>
  g8 r r4 g,16(\pp\ub b g b fs a) r8 |
  e16( g e g e g) r8 d16( fs d fs c e) r8 |
  b16( d b d b d) r8 a16( c a c g b) r8 |
  \repeat tremolo 4 { g16(\< b } \repeat tremolo 4 { g16 b) }
  \repeat tremolo 4 { ef,16(\fz\> a } \repeat tremolo 4 { ef16 a) }
  \repeat tremolo 4 { ef16( a } \repeat tremolo 4 { ef16 a) }
  \repeat tremolo 4 { b16(\p\> fs } \repeat tremolo 4 { b16 fs) }
  \repeat tremolo 4 { b16( fs } \repeat tremolo 4 { a16 fs) }
  b16(\pp g b g d' b g' d g b g b fs a) r8 |
  e16( g e g e g) r8 d16( fs d fs c e) r8 |
  b16( d b d b d) r8 a16( c a c g b) r8 |
  \repeat tremolo 4 { g16(\< b } \repeat tremolo 4 { g16 b) }
  \repeat tremolo 4 { c,16(\f\> a' } \repeat tremolo 4 { c,16 a') }
  \repeat tremolo 4 { c,16( a' } \repeat tremolo 4 { c,16 a') }
  \repeat tremolo 4 { a16(\p b } \repeat tremolo 4 { a16 b) }
  \repeat tremolo 4 { a16(\> b } \repeat tremolo 4 { a16 b) }
  \barNumberCheck#SixmF
  e,8\! r r4 r2 |
  \times2/3{ e'8\pp fs g-\markup\italic"leggiero" d b d e fs g } d8 r R1
  \times2/3{ e8 fs g d b d e fs g } d8 r R1
  \times2/3{ e8 f g d c d e f g } d8 r R1
  \times2/3{
    e8\pp\< f g d c d e f g d c d |
    e8\f\< f g bf, c df g, a bf e, f g |
    bf,8\! c df
  } r4 r2 R1*3
  r2 r4 \times2/3{ c''8\pp c c } f,4-. f-. r2 R1*4
  r2 r4 \times2/3{ cs'8\pp cs cs } fs,!4-. fs-. r2 R1*3\partPageBreak
  \barNumberCheck#SevenmF
  \cueWhile "flute1mF" "flute" #UP R1*3
  \cueWhile "clarinet1mF" "clarinet" #UP R1
  r2 b,4:16\pp c:16 | d:16\< e:16 fs:16 g:16 |
  g:16 a:16 b:16 c:16 d:16 e:16 fs:16 g:16 |
  bf1:32\ff bf:32 |
  r2 g,,4:16\pp af:16 | bf:16\< c:16 d:16 ef:16 |
  f:16 fs:16 g:16 af:16 bf:16 c:16 d:16 ef:16 |
  bf'1:32\ff bf:32 |
  r4 as,,16(\pp b) b8-. as'16( b) b8-. r4 |
  r4 as,16( b) b8-. as'16( b) b8-. r4 |
  \repeat unfold 4 { r4 ds,16(\< e) e8-. ds'16( e) e8-. r4\! }
  \barNumberCheck#EightmF
  R1
  a,4\f-> b8(-.-\markup\italic"marcato" c)-. b8.( a16)-. a4 R1
  a4\f-> b8(-. c)-. b8.( a16)-. a4 |
  as4\f-> b8(-. cs)-. b8.( as16)-. as4 |
  b4\f-> cs8(-. d)-. cs8.( b16)-. b4 |
  <<
    {s2 s2\< }
    \repeat unfold 4 { d8[ a16\rest cs] cs4 }
  >>
  <d d,>2:16\ff <d d,>:16 <d d,>:16 <d d,>:16
  <d d,>2:16 bf'2:16\fz
  bf8:16 a:16 g:16 f!:16 ef:16 d:16 c:16 bf:16 |
  d2:16 bf'2:16\fz
  bf8:16 a:16 g:16 f!:16 ef:16 d:16 c:16 bf:16 |
  bf8:16 a:16 g:16 f!:16 ef:16 d:16 c:16 bf:16 |
  d'8:16 c:16 bf:16 a:16 g:16 f:16 ef:16 d:16 |
  f'8:16 ef:16 d:16 c:16 bf:16 a:16 g:16 f:16 |
  fs'8:16\< e:16 d:16 cs:16 b:16 as:16 g:16 fs:16 |
  \ottava #1 b'1:32\fff b:32
  b4-. b-. r b-. | r b-. r8 b-. b4-. |
  r b-. r b-. | r8 b-. b-. r r4 b8-. r |
  \barNumberCheck#NinemF
  \ottava #0
  R1*4
  b,,1\pp ~b | e2( d4 b8 d) |
  e2( b4\> g8 b) |
  c2( g4 e8 g) |
  af2( ef4\ppp c8 ef) |
  f2( c4 a8 c) |
  cs1\< |
  cs |
  \key e\major
  cs2.(\mf b4) |
  fs'(\< ds b a) |
  a4.(\> gs8 b2~b2.) r4\! R1*11
  r4 a'4(\p\ub fs'4. fs8)-. |
  a2.\< gs4 |
  gs( e') ds( cs) |
  cs2. c4 |
  b( gs') fs( e) |
  b'(\f gs) fs( e) |
  ds(\> cs) b( a) |
  gs2 b2\prall |
  b1\prall ~
  \barNumberCheck#TenmF
  b4\! r4 r2
  R1*3
  \cueWhile "flute1mF" "winds" #UP R1*3
  r2 \times2/3 { \once\override TupletBracket #'staff-padding = #2.0
    r8 e,,8(\pp\ub gs b e gs) |
    gs8( b e, gs e b gs e gs b e gs) |
    c,8( a' fs ds c fs c a ds a fs c') |
  }
  gs16( b e gs b e, gs b, gs e b' gs e' b gs' e) |
  c( fs a fs c a fs' ds c a ds c a fs c' a) |
  \repeat tremolo 4 { as16(\< cs } \repeat tremolo 4 { as16 cs) }
  \repeat tremolo 4 { a16(\> c } \repeat tremolo 4 { a16 c) }
  \repeat tremolo 4 { as16(\< cs } \repeat tremolo 4 { as16 cs) }
  \repeat tremolo 4 { a16(\> c } \repeat tremolo 4 { a16 c) }
  <e gs,>4:16\ppp <e gs>8 r <fs b,>4:16 <e gs,>8 r |
  <gs e>4:16 <b gs>8 r <a fs>4:16 <gs e>8 r |
  <e' gs,>4:16 <b fs>8 r <gs e>4:16 <fs b,>8 r |
  <e gs,>4:16 <b fs>8 r <gs e>4:16 <fs b,>8 r |
  <e gs,>8 r r4 r2 \partPageBreak
  R1*3
  \barNumberCheck#ElevenmF
  \ottava #1
  e''1:32\ff e:32 g:32 g:32 b:32\fff
  \key e\minor
  b1:32
  \times2/3{
    e,8\ff fs g d b d e fs g d b d |
    e8 fs g d b d e fs g d b d |
    e8 fs g d b d e fs g d b d |
    e8 fs g d b d e fs g d b d |
    e8 fs g d b d e fs g d b d |
    e8 fs g d b d e fs g d b d |
    e8 fs g e fs g e fs g e fs g |
    e8 fs g e fs g e fs g e fs g |
  }
  c1:16\fff c:16
  c4:16 bf:16 af:16 g:16 f:16 ef:16 df:16 c:16 |
  b4 cs8 ds8 fs8. e16 e4 |
  fs4 g8 a c8. b16 b4 |
  d:16 cs:16 c:16 b:16 d:16 cs:16 c:16 b:16
  bf:16 a:16 gs:16 g:16 fs:16 f:16 e:16 ds:16
  \barNumberCheck#TwelvemF
  \ottava #0
  e8:16\ff g,,:16 b:16 e:16 g:16 b:16 e:16 g:16 |
  f,,:16 bf:16 d:16 f:16 bf:16 d:16 f:16 bf:16 |
  e,,,:16 g:16 b:16 e:16 g:16 b:16 e:16 g:16 |
  es,,:16 gs:16 cs:16 es:16 gs:16 cs:16 es:16 gs:16 |
  e,,:16 a:16 c:16 e:16 a:16 c:16 e:16 a:16 |
  f,,:16 a:16 c:16 f:16 a:16 c:16 f:16 a:16 |
  b1:16\fff b:16
  b4:16 g:16 e:16\> b:16 g:16 e:16 b:16 g:16 |
  e4:16\p b:16 b':16 g:16 e:16\> b:16 b':16 g:16 |
  e4:16 b:16 b':16 g:16 e:16 b:16 b':16 g:16 |
  R1*3\!
  r2 r4 \times2/3{ b'8\ppp b b} | e,8 e r4 r2 R1*3
  \cueWhile "horn1mF" "horn" #DOWN R1*4
  e,8:16\p g:16 b:16 e,:16 g:16\< b:16 e,:16 g:16 |
  b8:16 e:16 g,:16 b:16 e:16 g:16 b:16 e:16 |
  e2\ff fs4(-. g)-. |
  fs4.(-> e8)-. e2 |
  \appoggiatura <d, d,>8 <d d'>1-> |
  <c c'>2-> <d d'>-> |
  <e e'>1:32\fff
  <e e'>1:32
  \ottava #1
  e'1:32 c'1:32 e,:32 c':32 |
  \repeat unfold 6 \times2/3{ e,4.:8 c':8\fz }
  \repeat unfold 8 { b4 \times2/3{ b4.:8 } } | b4 r r2 |
  \ottava #0
  <e, e,>4 r <e e,>\db r |
  <e e,>\db r r2 <e e,>4\db r r2 <e e,>4 r r2\fermata |
}

violinIImF = \relative c' {
  \key e \minor
  b4.(\ff c8) r2 | b4.(\ff\db c8) r2 |  b4(-> c8) r8 b4(->\ub c8) r8 |
  b'-> c16 c b8-> cs16 cs b8->\< ds16 ds b8-> e16 e |
  b8-> fs'16 fs b,8-> g'16 g b,8-> a'16 a b,8-> as'16 as |
  fs4(\ffz g8) r8 fs4( g8) r8 | fs4( g8) r8 fs4( as8) r |
  r4 <bf, g'>-.\f <bf g'>-. <bf g'>-. | <a fs'>1:16\< |
  <e b' g'>4\ff r4 r2 | <e c' e>4 r4 r2 |
  <g b e>4 r <b, d b'> r | <g' b e> r r2 |
  <e b' g'>4 r4 r2 | <e c' e>4 r4 r2 | <e b' e>4 r <b' a'>\ub r |
  g'8:16\ff b:16 g:16 fs:16 e:16 b:16 e:16 g:16 |
  <e, b' g'>4 r r b'16( e g b) | <a, fs'>4 r4 r2 |
  <g e' g>4 r <d b' g'> r | <e b' g'>4 e16( g b e) b4 r4 |
  <e, b' g'>4 r r b'16( e g b) | <a, fs'>4 r4 r2 |
  <e b' e>4 r <b' a'> r |
  g'8:16 b:16 g:16 fs:16 e:16 b:16 e:16 g:16 |
  fs2-> g4(-. a)-. | g4.(-> fs8)-. fs2 | ds4-> e-. fs-. e-. | <ds fs>2. fs4 |
  fs2-> g4(-. a)-. | g4.(-. fs8)-. fs2 | ds4-> e-. fs-. e-. | <ds fs>2. b4 |
  \barNumberCheck#OnemF
  b,8:16\ff\< e:16 g:16 b:16\! b:16 g:16 e:16 b:16 |
  c:16\< e:16 fs:16 c':16\! c:16 fs,:16 e:16 c:16 |
  b:16\< e:16 g:16 b:16\! b,:16 d:16 g:16 b:16 |
  b,:16 e:16 g:16 b:16 b:16 g:16 e:16 b:16 |
  b:16 e:16 g:16 b:16 b:16 g:16 e:16 b:16 |
  e:16 a:16 c:16 e:16 e,:16 g:16 b:16 e:16 |
  c:16 e:16 c:16 e:16 c:16 e:16 fs,:16 b:16 |
  c:16 e:16 c:16 e:16 c:16 e:16 fs,:16 b:16 |
  e:16\fz c:16 c:16 b:16 e:16\fz c:16 c:16 b:16 |
  e:16\fz c:16 c:16 b:16 c:16 b:16 c:16 b:16 |
  \barNumberCheck#TwomF
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \times2/3{ e8\ff fs g d b d e fs g d b d } |
  \times2/3{ e8\< fs g } d'8.(\fz c16)-. b8.( g16)-. fs8.( e16)-. |
  \times2/3{ d8 fs e d fs e d fs a d a fs }
  \times2/3{ e8 fs g d b d e fs g d b d }
  \times2/3{ e8\< fs g } d'8.(\fz c16)-. b8.( a16)-. g8.( fs16)-. |
  \times2/3{ e8 fs g fs b b, e fs g } e8 r |
  % 50
  fs,8:16 ds:16 g:16 e:16 fs:16 d:16 e:16 c:16 |
  d:16 b:16 c:16 a:16 b:16 g:16 a:16 ds:16 |
  fs:16 ds:16 g:16 e:16 fs:16 d:16 e:16 c:16 |
  d:16 b:16 c:16 a:16 b:16 g:16 a:16 fs':16 |
  <b, g'>8 r \times2/3{ d'\ff b d e fs g d b d } |
  \times2/3{ e8\< fs g } d'8.(\fz c16)-. b8.( g16)-. fs8.( e16)-. |
  \times2/3{ d8 fs e d fs e d d' b a g fs }
  \times2/3{ e8 fs g d b d e fs g d b d }
  \times2/3{ e,8(\< fs g) } e'8.(\fz c16)-. b8.( a16)-. g8.( e16)-. |
  \times2/3{ fs8(\< b d) } fs8.(\fz e16)-. d8.( c16)-. b8.( fs16)-. |
  \times2/3{ g8(\< bf e } g8.)\fz e16-.
  \times2/3{ e,8(\< g bf } e8.)\fz cs16-. |
  \times2/3{ cs,8(\< e g } bf8.)\fz g16-. r4 <g bf>->\fz |
  r4 <cs, e>\mf^\pizz r <cs e>\> | r4 <cs e>\p\> r <cs e> |
  R1*2\! \partPageBreak
  cs'1\ppp^\arco ~ cs
  \barNumberCheck#ThreemF
  a1:32 c!:32 b:32\< b:32\> c:32\pp c:32 b:32 b:32 gs:32
  a4:32 f:32 g2:32 f1:32 | f4:32 e:32 g:32 f:32 f1:32 |
  f2:32 e4:32 g:32 f1:32 f2:32 <f a>:32 |
  \repeat tremolo 4 { a16( fs } \repeat tremolo 4 { a16 fs)\< }
  \repeat tremolo 4 { b16( g } \repeat tremolo 4 { b16 g) }
  \repeat tremolo 4 { c16( a } \repeat tremolo 4 { c16 a) }
  \repeat tremolo 4 { d16(\mf b } \repeat tremolo 4 { d16 b) }
  \repeat tremolo 4 { b16( g } \repeat tremolo 4 { b16\ub g) }
  \repeat tremolo 4 { g16(\f e) } gs16(\< f gs f a e a e) |
  \repeat tremolo 4 { g16( d) } \repeat tremolo 4 { b'16( g) }
  \repeat tremolo 4 { fs16( d) } \repeat tremolo 4 { fs16( d) }
  \barNumberCheck#FourmF
  <b g'>2:16\ff <b g'>:16 <c fs>:16 <c fs>:16
  <b g'>2.:16 e4:16 <c fs>2:16 <b g'>:16 |
  <b g'>2:16 <b g'>:16 <c fs>:16 <c fs>:16
  <b g'>2.:16 e4:16 <c fs>2:16 <b g'>:16 |
  g16(\ff g' d' b') b( d, g, g,) g( g' d' b') b( d, g, g,) |
  g( g' ef' c') c( ef, g, g,) g( g' ef' c') c( ef, g, g,) |
  g( g' d'  b') b(  d, g, g,) g( g' d'  b') b(  d, g, g,) |
  g( g' ef' c') c( ef, g, g,) g( g' ef' c') c( ef, g, g,) |
  \times2/3{ g8( g' d') ef8( g, g,) g8( g' e') cs8( e, g,) }
  g16(\ff d' c' fs) fs( c d, g,) g( d' b' g') g( b, d, g,) |
  <<
    { s8\f s8-\markup\italic"marcato" s4 s2 }
    \repeat unfold 4 { <d'' d,>8-> b-. ds-> b-. e-> b-. b-. r }
  >> R1*4
  <<
    { s1\mp s\> s1\p s1\> }
    \repeat unfold 4 { d,4:16 ds:16 e2:16 }
  >>
  e1\pp <g b,>1\> ~ <g b,>\ppp ~ <g b,>8 r8 r4 r2 |
  \barNumberCheck#FivemF
  <<
    s1*0\ppp \override PercentRepeatCounter #'direction = #DOWN
    \repeat unfold 6 g'1:32
    \tag#'part \repeat percent 6 s1
  >> \revert PercentRepeatCounter #'direction
  g8 r r4 b,16(\pp\ub g b g fs a) r8 |
  % 129
  g16( e g e g e) r8 fs16( d fs d e c) r8 |
  % 130
  d16( b d b d b) r8 c16( a c a b g) r8 |
  % 131
  \repeat tremolo 4 { b16(\< g } \repeat tremolo 4 { b16 g) }
  \repeat tremolo 4 { a16(\fz\> c } \repeat tremolo 4 { a16 c) }
  \repeat tremolo 4 { a16( c } \repeat tremolo 4 { a16 c) }
  \repeat tremolo 4 { a16(\p\> b } \repeat tremolo 4 { a16 b) }
  \repeat tremolo 4 { c16( d } \repeat tremolo 4 { c16 d) }
  b16(\pp d b d b d g a b g b g a fs) r8 |
  g16( e g e g e) r8 fs16( d fs d e c) r8 |
  d16( b d b d b) r8 c16( a c a b g) r8 |
  \repeat tremolo 4 { b16(\< g } \repeat tremolo 4 { b16 g) }
  \repeat tremolo 4 { a16(\f\> c } \repeat tremolo 4 { a16 c) }
  \repeat tremolo 4 { a16( c } \repeat tremolo 4 { c16 c) }
  \repeat tremolo 4 { b16(\p a } \repeat tremolo 4 { b16 a) }
  \repeat tremolo 4 { b16(\> a } \repeat tremolo 4 { b16 a) }
  \barNumberCheck#SixmF
  e'1:16\fpp R1 e1:16\fpp R1 e1:16\fpp\> R1\! e1:16\fpp\> R1\!
  df8\f r r4 r2 R1*15
  \barNumberCheck#SevenmF \partPageBreak
  \cueWhile "flute1mF" "flute" #UP R1*3
  \cueWhile "clarinet1mF" "clarinet" #UP R1
  r2 b4:16\pp c:16 | d:16\< e:16 fs:16 g:16 |
  g:16 a:16 b:16 c:16 d:16 e:16 fs:16 g:16 |
  bf1:32\ff bf:32 |
  r2 g,,4:16\pp af:16 | bf:16\< c:16 d:16 ef:16 |
  f:16 fs:16 g:16 af:16 bf:16 c:16 d:16 ef:16 |
  <bf bf'>1:32\ff <bf bf'>:32 |
  r4 as,16(\pp b) b8-. as'16( b) b8-. r4 |
  r4 as,16( b) b8-. as'16( b) b8-. r4 |
  \repeat unfold 4 { r4 ds,16(\< e) e8-. ds'16( e) e8-. r4\! }
  \barNumberCheck#EightmF
  s1*0\ff \repeat unfold 4 <a,, fs'>1:16
  <as fs'>2:16\ff <cs fs>:16 <b fs'> <fs' b>:16 |
  <<
    {s2 s2\< }
    \repeat unfold 4 { d'8[ r16 cs] cs4 }
  >>
  <bf g'>2:16\ff <bf g'>:16 <bf g'>:16 <bf g'>:16
  <bf g'>2:16 bf'2:16\fz
  bf8:16 a:16 g:16 f!:16 ef:16 d:16 c:16 bf:16 |
  d2:16 bf'2:16\fz
  bf8:16 a:16 g:16 f!:16 ef:16 d:16 c:16 bf:16 |
  bf'8:16 a:16 g:16 f!:16 ef:16 d:16 c:16 bf:16 |
  d'8:16 c:16 bf:16 a:16 g:16 f:16 ef:16 d:16 |
  f'8:16 ef:16 d:16 c:16 bf:16 a:16 g:16 f:16 |
  fs'8:16\< e:16 d:16 cs:16 b:16 as:16 g:16 fs:16 |
  b1:32\fff b:32
  <b b,>4-. <b b,>-.\ub r <b b,>-.\db | r <b b,>-. r8 <b b,>-. <b b,>4-. |
  r <b b,>-. r <b b,>-. | r8 <b b,>-. <b b,>-. r r4 <b b,>8-.\db r |
  \barNumberCheck#NinemF
  R1*2 \cueWhile "violamF" "viola" #DOWN R1*2
  g,1\pp ~ g1 g( e)\>  c( af)\ppp c af\< bf |
  \key e\major
  a1:16\pp a2.:16 b4:16 b2:16 gs:16 gs1:16 |
  a1:16 a2.:16 b4:16 b2:16 gs:16 gs1:16 |
  gs1:16 a4:16 d:16 cs2:16 d1:16 d4:16\< fs:16 fs:16 d:16 |
  d2:16 <d b>:16\! d:16\> cs:16 d1:16\! d1:16 |
  \repeat tremolo 4 {fs16( ds } \repeat tremolo 4 {bs ds) }
  \repeat tremolo 4 {gs(\< e } \repeat tremolo 4 {cs e) }
  \repeat tremolo 4 {a( fs } \repeat tremolo 4 {ds fs) }
  \repeat tremolo 4 {b( gs } \repeat tremolo 4 {e gs) }
  \repeat tremolo 4 {e'(\f b) } \repeat tremolo 4 {gs( e') }
  \repeat tremolo 4 {e( a,) } e'(\> cs e cs e c e c)
  \repeat tremolo 4 {b( gs } \repeat tremolo 4 {b gs) }
  \repeat tremolo 4 {b(\p\> a } \repeat tremolo 4 {b a }
  \barNumberCheck#TenmF
  b4)\! r r2 R1*3
  \cueWhile "flute1mF" "flute" #UP R1*4
  << {e,1(\pp_\div c) e( c) } \\ {gs1( a) gs( a) } >>
  \repeat tremolo 4 {cs16(\< as } \repeat tremolo 4 {cs as) }
  \repeat tremolo 4 {c(\> a } \repeat tremolo 4 {c a) }
  \repeat tremolo 4 {cs(\< as } \repeat tremolo 4 {cs as) }
  \repeat tremolo 4 {c(\> a } \repeat tremolo 4 {c a) }
  e'8\ppp r <e'gs>4:16 <b fs'>8 r <gs e'>4:16 |
  <e' gs>8 r <gs b>4:16 <fs a>8 r <e gs>4:16 |
  <gs e'>8 r <fs b>4:16 <e gs>8 r <b fs'>4:16 |
  <gs e'>8 r <fs b>4:16 <e gs>8 r <b fs'>4:16\! |
  <gs e'>8 r r4 r2 R1*3 \partPageBreak
  \barNumberCheck#ElevenmF
  <e'' g>1:32\ff <e g>:32 <cs as'>:32 <cs as'>:32 <b b'>:32 |
  \key e\minor
  <b b'>1:32
  \times2/3{
    e8\ff fs g d b d e fs g d b d |
    e8 fs g d b d e fs g d b d |
    e8 fs g d b d e fs g d b d |
    e8 fs g d b d e fs g d b d |
    e8 fs g d b d e fs g d b d |
    e8 fs g d b d e fs g d b d |
    e8 fs g e fs g e fs g e fs g |
    e8 fs g e fs g e fs g e fs g |
  }
  c1:16\fff c:16
  c4:16 bf:16 af:16 g:16 f:16 ef:16 df:16 c:16 |
  b4 cs8 ds8 fs8. e16 e4 |
  fs4 g8 a c8. b16 b4 |
  d:16 cs:16 c:16 b:16 d:16 cs:16 c:16 b:16
  bf:16 a:16 gs:16 g:16 fs:16 f:16 e:16 ds:16
  \barNumberCheck#TwelvemF
  \ottava #0
  e8:16\ff g,,:16 b:16 e:16 g:16 b:16 e:16 g:16 |
  f,:16 bf,:16 d:16 f:16 bf:16 d:16 f:16 bf:16 |
  e,,:16 g,:16 b:16 e:16 g:16 b:16 e:16 g:16 |
  es,:16 gs,:16 cs:16 es:16 gs:16 cs:16 es:16 gs:16 |
  e,:16 a,:16 c:16 e:16 a:16 c:16 e:16 a:16 |
  f,:16 a,:16 c:16 f:16 a:16 c:16 f:16 a:16 |
  <g b,>1:16\fff <g b,>:16
  b4:16 g:16 g2:16\> e4:16 b:16 g:16 e:16 |
  b:16\p g:16 g':16 e:16 | b:16\> g:16 g':16 e:16 |
  b:16 g:16 g':16 e:16 | b:16 g:16 g':16 e:16 |
  R1*4\!
  r2 r4 \times2/3{ b'8\ppp b b} | e,8 e r4 r2 R1*2
  \cueWhile "horn1mF" "horn" #DOWN R1*4
  e8:16\p g:16 b:16 e,:16 g:16\< b:16 e,:16 g:16 |
  b8:16 e:16 g,:16 b:16 e:16 g:16 b:16 e:16 |
  e,2\ff fs4(-. g)-. |
  fs4.(-> e8)-. e2 |
  \appoggiatura d,8 <a' fs'>1-> |
  <a fs'>2-> <a fs'>-> |
  <b gs'>1:32\fff <b gs'>1:32
  <b gs'>1:32 <d c'>1:32
  <b gs'>1:32 <d c'>1:32
  <<
    s1*0^\div
    { \repeat unfold 6 { \times2/3 gs4.:8 \times2/3 c:8\fz } b4 } \\
    { \repeat unfold 6 { \times2/3 b,4.:8 \times2/3 d:8 } gs4 }
  >> \times2/3 <gs b>4.:8
  \repeat unfold 7 { <gs b>4 \times2/3{ <gs b>4.:8 } } |
  <gs b, e,>4 r r2 | <gs b, e,>4 r <gs b, e,>\db r |
  <gs b, e,>4\db r r2 <gs b, e,>4\db r r2 | <gs b, e,>4 r r2\fermata|
  \partPageBreak
}

violamF = \relative c' {
  \clef alto
  \key e \minor
  \tag#'score \clef treble
  b4.(\ff c8) r2 | b4.(\ff\db c8) r2 |  b4(-> c8) r8 b4(->\ub c8) r8 |
  b16 b c8-> b16 b cs8-> b16\< b ds8-> b16 b e8-> |
  b16 b fs'8-> b,16 b g'8-> b,16 b a'8-> b,16 b as'8-> |
  ds4(\ffz e8) r8 ds4( e8) r8 | ds4( e8) r8 ds4( g8) r |
  r4 <bf, ef,>-.\f <bf ef,>-. <bf ef,>-. | <a fs>1:16\< |
  \tag#'score \clef alto
  <g b, e,>4\ff r4 r2 | <a fs a,>4 r4 r2 |
  <b e, g,>4 r <b e, g,> r | <b e, g,> r r2 |
  <g b, e,>4 r4 r2 | <a fs a,>4 r4 r2 | <b e, g,>4 r <a b,>\ub r |
  <g b,>2:16\ff <g b,>8 r r4 |
  <g b, e,>4 r r b,16( e g b) | <c e, a,>4 r4 r2 |
  <b e, g,>4 r <b d, g,> r | <b e, g,>4 e,,16( g b e) b4 r4 |
  <g' b, e,>4 r r b,16( e g b) | <c e, a,>4 r4 r2 |
  <b e, g,>4 r <b fs b,> r |
  <g b,>2:16 <g b,>8 r r4 |
  \tag#'score \clef treble
  ds'2-> e4(-. fs)-. | e4.(-> ds8)-. ds2 | b2-> fs4 g8 e | b'2. ds4 |
  ds2-> e4(-. fs)-. | e4.(-> ds8)-. ds2 | b2-> fs4 g8 e | b'2. r4 |
  \tag#'score \clef alto
  \barNumberCheck#OnemF
  g,8:16\ff\< b:16 e:16 g:16\! g:16 e:16 b:16 g:16 |
  a:16\< c:16 e:16 fs:16\! fs:16 e:16 c:16 a:16 |
  g:16\< b:16 e:16 g:16\! g,:16 b:16 e:16 g:16 |
  g,:16 b:16 e:16 g:16 g:16 e:16 b:16 g:16 |
  g:16 b:16 e:16 g:16 g:16 e:16 b:16 g:16 |
  e:16 a:16 c:16 e:16 e,:16 g:16 b:16 e:16 |
  c:16 e:16 c:16 e:16 c:16 e:16 fs,:16 b:16 |
  c:16 e:16 c:16 e:16 c:16 e:16 fs,:16 b:16 |
  e:16\fz c:16 c:16 b:16 e:16\fz c:16 c:16 b:16 |
  e:16\fz c:16 c:16 b:16 c:16 b:16 c:16 b:16 |
  \barNumberCheck#TwomF
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  <g b>8\ff r <g b> r <g b> r <g b> r |
  <e g>4:16 <fs a>:16 <g b>:16 <a cs>:16 <fs a>:16 <fs a>:16 <fs a>8 r r4 |
  <g b>8 r <g b> r <g b> r <g b> r |
  <e g>4:16 <fs a>:16 <g b>:16 <a c!>:16 <b e>:16 <b ds>:16 <b e>8 r r4 |
  ds8:16 fs:16 e:16 g:16 d:16 fs:16 c:16 e:16 |
  b:16 d:16 a:16 c:16 g:16 b:16 fs:16 b:16 |
  ds8:16 fs:16 e:16 g:16 d:16 fs:16 c:16 e:16 |
  b:16 d:16 a:16 c:16 g:16 b:16 fs:16 ds':16 |
  e8 r <g, b> r <g b> r <g b> r |
  <e g>4:16 <fs a>:16 <g b>:16 <a cs>:16 <fs a>:16 <fs a>:16 <fs a>8 r r4 |
  <g b>8 r <g b> r <g b> r <g b> r |
  <g b>2:16\fz <g b>:16 <fs b>:16\fz <fs b>:16 |
  <e bf'>8 r <bf' e>4\f r <cs, g'>\f | r <cs e>->\f r <cs e>->\f
  r4 g'\mf^\pizz r g\> | r4 g\p\> r g |
  R1*2\!
  bf'1\ppp^\arco ~ bf
  \barNumberCheck#ThreemF
  fs1:32 <fs a>:32 g:32\< g:32\> <fs a>:32\pp <fs a>:32 g:32 g:32 d:32
  c2:32 <c e>:32 c1:32 | c:32 c:32 c2:32 c4:32 <c e>4:32 |
  c1:32 c1:32 |
  \repeat tremolo 4 { fs16( ds } \repeat tremolo 4 {fs16 ds)\< }
  \repeat tremolo 4 { g16( e } \repeat tremolo 4 { g16 e) }
  \repeat tremolo 4 { a16(fs } \repeat tremolo 4 { a16 fs)}
  \repeat tremolo 4 { b16(\mf g } \repeat tremolo 4 { b16 g) }
  \repeat tremolo 4 { d16( g } \repeat tremolo 4 {ds16\ub g) }
  \repeat tremolo 4 { e16(\f c) } b16(\< gs b gs a c a c) |
  \repeat tremolo 4 { d16( g) } \repeat tremolo 4 { g16( b) }
  \repeat tremolo 4 { c,16( d) } \repeat tremolo 4 { c16( d) }
  \barNumberCheck#FourmF
  <b d>2:16\ff <b d>:16 <c ef>:16 <c ef>:16 e4:16  ds:16 e:16 cs:16 |
  << s1*0-\div {d2:16 d2:16 } \\  {c2:16 b2:16 } >>
  <b d>2:16 <b d>:16 <c ef>:16 <c ef>:16 e4:16  ds:16 e:16 cs:16 |
  <c d>2:16 <b d>:16
  \times 2/3 {
    b8(\ff g' d') d( g, b,) b( g' d') d(g, b,) |
    c( g' ef') ef(g, c,) c( g' ef') ef( g, c,) |
    b( g' d') d( g, b,) b( g' d') d( g, b,) |
    g( g' ef') ef( g, g,) g( g' ef') ef( g, c,) |
    g( d' b') b( ds, g,) g( e' b') b8( e, g,) |
    g( fs' d') d( fs, g,) g( d' b') b8( d, g,) |
  } \partPageBreak
  <<
    { s8\f s8-\markup\italic"marcato" s4 s2 }
    \repeat unfold 4 { g'8[-> d'] b[-> b,] b16 fs e' b b8 r }
  >> R1*2
  d,8\mf r d r d2 | d8 r d r d2 |
  b'2:16\mp b:16 b:16\> b:16 b:16\p b:16 b:16\> b:16 b1\pp |
  d,1\> ~ d\ppp ~ d8 r8 r4 r2 |
  \barNumberCheck#FivemF
  r2 b''4\pp^\pizz a | g r e d | b r r2
  R1*3
  s1*0^\arco g'16(\pp b g b g b g b g8) r a16( fs a fs |
  g e) r8 g16( e g e fs d) r8 e16( c e c |
  d b) r8 d16( b d b c a) r8 b16( g b g) |
  \repeat tremolo 4 { g16(\< b } \repeat tremolo 4 { g16 b) }
  \repeat tremolo 4 { fs16(\f\> ef } \repeat tremolo 4 { fs16 ef) }
  \repeat tremolo 4 { fs16( ef } \repeat tremolo 4 { fs16 ef) }
  \repeat tremolo 4 {fs16(\p\> d } \repeat tremolo 4 {fs16 d) }
  \repeat tremolo 4 {fs16( d } \repeat tremolo 4 {fs16 d) }
  g16(\pp d g d g d b' g d'8) r a'16( fs a fs |
  g e) r8 g16( e g e fs d) r8 e16( c e c |
  d b) r8 d16( b d b c a) r8 b16( g b g) |
  \repeat tremolo 4 { g16(\< b } \repeat tremolo 4 { g16 b) }
  \repeat tremolo 4 {fs16(\f\> a } \repeat tremolo 4 {fs16 a) }
  \repeat tremolo 4 {fs16( a } \repeat tremolo 4 {fs16 a) }
  \repeat tremolo 4 {fs16(\p ds} \repeat tremolo 4 {fs16 ds) }
  \repeat tremolo 4 {fs16(\> ds} \repeat tremolo 4 {fs16 ds) }
  e1:16\fpp R1 e1:16\fpp R1 e1:16\fpp\> R1\! e1:16\fpp\> R1\!
  g8\f r r4 r2 |
  \times2/3 { bf8\f\< c df g, a bf e, f g c, d e }
  f!4\ff g8-. a-. g-.[ r16 f-. f8-. a-.] | g-.\> f-. g-. a-. f-. a-. g-. f-. |
  f!4\p g8-. a-. g-. r16 f-. f8-. a-. | g-. f-. g-. a-. f-. a-. g-. f-. |
  a-. g-. f-.\> a-. g-. f-. a-. g-. | f-. a-. g-. f-. a-. g-. f-. a-. |
  fs4\pp-> gs8-. a-. gs-. r16 fs-. fs8-. as-. |
  gs-. fs-. gs-. as-. fs-. as-. gs-. fs-. |
  fs4\pp-> gs8-. as-. gs-. r16 fs-. fs8-. as-. |
  gs-. fs-. gs-. as-. fs-. as-. gs-. fs-. |
  as-. gs-. fs-. as-. gs-. fs-. as-. gs-. |
  fs-. as-. gs-. fs-. as-. gs-. fs-. as-. |
  g4\pp-> a8-. b-. a-. r16 g-. g8-. b-. |
  a-. g-. a-. b-. g-. b-. a-. g-. |
  g4\pp-> a8-. b-. a-. r16 g-. g8-. b-. |
  a-. g-. a-. b-. g-. b-. a-. g-. |
  b-. a-. g-.  b-. a-. g-.  b-. a-. |
  g-.  b-. a-. g-.  b-. a-. g-.  b-. |
  a-. g-.  b-. a-. g-.  b-. a-. g-. |
  b-.\< a-. g-.  b-. a-. g-.  b-. a-. |
  g-.  b-. a-. g-.  b-. a-. g-.  b-. |
  a-. g-.  b-. a-. g-.  b-. a-. g-. |
  <g ef'>1:32\ff <g ef'>:32
  g8-.\pp  bf-. af-. g-.  bf-. af-. g-.  bf-. |
  af-.\< g-.  bf-. af-. g-.  bf-. af-. g-. |
  bf-. af-. g-.  bf-. af-. g-.  bf-. af-. |
  g-.  bf-. af-. g-.  bf-. af-. g-.  bf-. |
  <bf ef>1:32\ff <bf ef>:32
  fs2:16\pp g4:16 a:16 g2:16 fs:16 | g2:16 a4:16\< b:16 a2:16 g:16 |
  a:16 b4:16 c:16 b2:16 a:16 |
  \barNumberCheck#EightmF
  s1*0\ff \repeat unfold 4 <c ef>1:16
  e2:16\ff <cs e>:16 <b d>:16 <d fs>:16 |
  <bf g>1:16\< <bf g>:16 <bf d>:16\ff
  <bf d>1:16 <bf d>2:16 <d f!>:16\fz |
  <bf d>1:16 <bf d>2:16 <d f!>:16\fz |
  <bf d>1:16 <bf d>1:16 <f bf>:16 <f bf>:16 |
  <e gs>2:16 <e cs'>2:16 <g e'>1:32\fff <g e'>:32|
  <g e'>4-. <g e'>-.\ub r <g e'>-.\db | r <g e'>-. r8 <g e'>-. <g e'>4-. |
  r <g e'>-. r <g e'>-. | r8 <g e'>-.\noBeam <g e'>-. r r4 <g e'>8-.\db r |
  \barNumberCheck#NinemF \partPageBreak
  R1*2 g16\mf\> g g g g8 r b16 b b b b8 r | g16\p g g g g8 r r2 R1*2
  b'2(\pp d,) b1\> g1( ef)\ppp f! f\< e! |
  \key e\major
  ds1:16\pp ds:16 e:16 e:16 ds:16 ds:16 |
  e1:16 e:16 e:16 fs2:16 <e g>:16 <fs a>1:16 |
  <fs a>4:16 d'4:16\< d:16 b:16 a2:16 g2:16\! |
  <fs a>2:16\> << {a4:16 a:16} \\ {e:16 g:16} >> |
  <fs a>1:16\! <fs a>:16 |
  \repeat tremolo 4 {bs,16( ds } \repeat tremolo 4 {fs ds) }
  \repeat tremolo 4 {e(\< gs} \repeat tremolo 4 {e gs) }
  \repeat tremolo 4 {ds( fs } \repeat tremolo 4 {a fs) }
  \repeat tremolo 4 {gs( b } \repeat tremolo 4 {gs b) }
  \repeat tremolo 4 {gs(\f b) } \repeat tremolo 4 {e( bs) }
  \repeat tremolo 4 {cs( e) } cs(\> e cs e c e c e)
  \repeat tremolo 4 {b( e } \repeat tremolo 4 {b e) }
  \repeat tremolo 4 {b(\p\> ds } \repeat tremolo 4 {b ds) }
  \barNumberCheck#TenmF
  b1\p ~ b |
  r8\mf\< a16( c,) c8-. c16(ds) ds(e) e(gs) gs(a) a(c) |
  e8-.\> e16(cs) cs(b) b(gs) gs(e) r8 r4 |
  b'1\p ~ b |
  r8\mf\< a16( c,) c8-. c16(ds) ds(e) e(gs) gs(a) a(c) |
  e8-.\> e16(cs) cs(b) b(gs) gs(e) r8\! r4 |
  <<
    s1\pp
    {b'1(ds) b(ds)} \\ {e,(fs) e(fs)}
  >>
  r2 e8(\pp\<\ub as cs e) | a!(\> fs ds c a! fs)\! r4 |
  r2 e8(\pp\ub as cs e) | a!( fs ds c a!) r r4
  R1*5 R1*3
  \barNumberCheck#ElevenmF
  <cs e>1:32\ff <cs e>:32 <cs e>:32 <cs e>:32 <e, g>:32 |
  \key e\minor
  <e g>1:32
  \override PercentRepeatCounter #'direction = #DOWN
  <<
    \times2/3{
      g'8\ff fs e b d b g' fs e b d b |
      g' fs e b d b g' fs e b d b |
      g' fs e b d b g' fs e b d b |
      g' fs e b d b g' fs e b d b |
      g' fs e b d b g' fs e b d b |
      g' fs e b d b g' fs e b d b |
      e fs g e fs g e fs g e fs g |
      e fs g e fs g e fs g e fs g |
    }
    { \tag#'part \repeat percent 6 s1 }
  >>
  <g, c>1:16\fff <g c>:16
  <af df>:16 <af df>2.:16 <af d>4:16 |
  <a ds>2:16 <b e>:16 <c e>:16 <<ds:16-\div \\ a:16>> |
  <b f'>4:16 <cs e>:16 <e g>2:16 | <b f'>4:16 <cs e>:16 <e g>2:16 |
  <e g>4:16 fs:16 <b, e>:16 <b d>:16 |
  <a d>4:16 <a c>:16 <g b>:16 <fs b>:16 |
  \barNumberCheck#TwelvemF
  <g b>2:16\ff g8:16 b:16 e:16 g:16 |
  <bf, d>2:16 bf8:16 d:16 f:16 bf:16 |
  <g, b>2:16  g8:16 b:16 e:16 g:16 |
  <es, cs'>2:16  gs8:16 cs:16 es:16 gs:16 |
  <e, c'>2:16  a8:16 c:16 e:16 a:16 |
  <a, c>2:16 a8:16 c:16 f:16 a:16  |
  <b, g'>1:16\fff <b g'>:16
  g''4:16 e:16 b:16\> e:16 | b4:16 g:16 e:16 b:16 |
  g:16\p e:16 e':16 b:16 | g:16\> e:16 e':16 b:16 |
  g:16 e:16 e':16 b:16 | g:16 e:16 e':16 b:16 |
  R1*5\!
  r2 r4 \times2/3{ b8\ppp b b} | e,8-. e-. r4 r2 R1*1
  \cueWhile "horn1mF" "horn" #UP R1*4
  e8:16\p g:16 b:16 e,:16 g:16\< b:16 e,:16 g:16 |
  b8:16 e:16 g,:16 b:16 e:16 g:16 b:16 e:16 |
  e,2\ff fs4(-. g)-. |
  fs4.(-> e8)-. e2 |
  <a, fs' a>1-> |
  <c fs a>2-> <c fs a>-> |
  <b gs'>1:32\fff <b gs'>1:32
  e,4.:16 gs16\< gs b b e4.:16\! gs1:32
  e,4.:16 gs16\< gs b b e4.:16\! gs1:32
  \repeat unfold 6 { e4:16 f:16\fz }
  e,4:16 gs:16 b:16 cs:16 e:16 gs:16 b:16 cs:16 |
  e:16 cs:16 b:16 gs:16 e:16 cs:16 b:16 gs:16 |
  e4 r r2 | <e b' gs'>4 r <e b' gs'>\db r |
  <e b' gs'>4 r r2 | <e b' gs'>4 r r2 |
  <e b' gs'>4 r4 r2\fermata
}

cellomF = \relative c {
  \clef bass
  \key e \minor
  b4.(\ff c8) r2 | b4.( c8) r2 | b4(-> c8) r8 b4(-> c8) r8 |
  b8[ r16 c]( b8[) r16 cs]( b8[)\< r16 ds]( b8[) r16 e]( |
  b8[) r16 fs']( b,8[) r16 g']( b,8[) r16 a']( b,8[) r16 as'] |
  b4(\ffz\db g8) r8 b4(\ub fs8) r8 |
  b4( e,8) r8 b'4( ds,8) r8 | r4 ef4-.\f\ub df-. df-. |
  c8->\< b! c-> b c-> b c'-> b
  e,4\ff r4 r2 | <e a,>4 r4 r2 | e4 r4 b r4 | e r4 r2 |
  e4 r4 r2 | a,4 r4 r2 | g4 r4 fs r4 | e8\ff e' e e e r r4 |
  e4 r r b16(\ub e g b) | a4 r4 r2 | e4 r4 g r4 |
  e e16( g b e) b4 r4 | e, r r b16( e g b) | a4 r4 r2 |
  g4 r8 g, fs4 r8 fs' | e8 e e e e8 r r4 |
  b'4-.\ff a-. g-. fs-. |
  g2-> a4-. b-. | b-. c-. d\fz e8 c | b4-> a8 fs b4 b, |
  b'-> a-> g-> fs-> |
  g2-> a4. b8 | b4 c d\fz e8 c | b4-> a8 fs b4 b, |
  \barNumberCheck#OnemF
  e2\ff r2 | a, r2 | e'4 r8 e g4 r8 g | e2 r4 g8 e | e2 r4 e |
  c2\fz g\fz | a2-> a4-. b-. | a2-> a4-. b-. |
  a4-> a8-. b-. a4-> a8-. b-. | a4-> a8-. b-. a-. b-. a-. b-. |
  \barNumberCheck#TwomF
  e-.\ff r8 b-. r8 e-. r8 b-. r8 | e,-. r8 fs-. r8 g-. r8 a-. r8 |
  d, r8 d'8. d16 d4 r4 |
  e8-. r8 b-. r8 e-. r8 b-. r8 | e,-. r8 fs-. r8 g-. r8 a-. r8 |
  b r8 b r8 e r8 \times2/3{ e8 g a } |
  b8\fz r8 b, r8 r2 | b'8\fz r8 b, r8 r2 |
  b'8\fz r8 b, r8 r2 | b'8\fz r8 b, r8 r2 |
  e8\f r8 b r8 e r8 b r8 | e, r8 fs r8 g r8 a r8 |
  d r8 d8. d16 d4 r4 |
  e8 r8 b r8 e r8 b r8 | e1\fz | d\fz |
  cs8 r8 cs4--\f r4 bf--\f | r4 g--\f r4 g--\f R1*3
  r8 g(\pp bf cs e g \times2/3{ bf cs e) } |
  g1\ppp ~g~
  \barNumberCheck#ThreemF
  fs4 r4 r2 R1
  r2 r4 \times2/3{ d,8(\db\mf\< g b} | d8.) b16(\! d8.) a16( d8 g,) r4 R1*2
  r2 r4 \times2/3{ d8(\db\mf\< g b} | d8.) b16(\! d8.) a16( d8 g,) r4 R1*2
  r4 \times2/3{ c,8(\mf\< f a} c8.) a16(\! c8.) g16( | c8. f,16) r4 r2 R1*2
  r4 \times2/3{ c8(\mf\< f a} c8.) a16-.\! c8.-> g16-. | c8.-> f,16-. r4 r2 |
  r4 \times2/3{ ds,8(\p\< fs g} a8.) fs16\! a8. fs16 |
  r4 \times2/3{ e8\< g b} e4\! r |
  r4 \times2/3{ fs,8(\mf\< a b} c8.) a16\! c8. a16 |
  r4 \times2/3{ g8\f\ub b d} g4 r |
  \times 2/3{ b,8\<\db d g } b4-> ds(\fz b8) r | c4-.\f c,-.\< r c-.\! |
  r4 \times2/3{ d8\f\< g b } d8. b16 d8. d,16 |
  r4 \times2/3{ d8 fs a } d8. b16 d8. d,16 |
  \barNumberCheck#FourmF
  \grace s8 % synchronize Vln I
  g4\ff g, r4 g | g'8-> g g,4 r4 g |
  g'-. g,-. g'-. g,-. | g'-. g,-. g'-. g,-. |
  g' g, r4 g | g'8-> g g,4 r4 g |
  g'-. g,-. g'-. g,-. | g'-. g,-. g'-. g,-. |
  g'4.->\ff g,8->~g4. g'8->~g8 g,4.-> g'-> g,8->~g4 g'4.-> g,8->~g4 |
  g'4. g,8~g4 g' |
  g,-- g'-- g,-- g'-- | g,-- g'-- g,-- g'-- |
  b8\f r8-\markup\italic"marcato" a r8 g2 | b8 r8 a r8 g2 |
  b8 r8 a r8 g2 |  b8 r8 a r8 g2-> R1*2 \partPageBreak
  <<
    { fs'8^\pizz^\div\mf d, e' d, d' d, d' d, fs'\> d, e' d, d' d, d' r\! }
    \\ { d8 d, c' d, b' d, b' d, d' d, c' d, b' d, b' r }
  >>
  b-.\mp^"arco" b-. a-. a-. g-. g-. g-. a-. |
  b16-.\> b-. b8-. a-. a-. g-. g16-. g-. g8-. a-. |
  b16\p b b8 a a g g g a | b16\> b b8 a a g g16 g g8 a |
  g1\pp |
  g,1\>~g1\ppp~g8 r8 r4 r2
  \barNumberCheck#FivemF %\partPageBreak
  R1*2
  r2 b'4^\pizz\pp a | g r4 e d | b r r2 R1
  b'16(^\arco\pp g b g b g b g b8) r8 fs16( a fs a |
  e g) r8 e16( g e g d fs r8) c16( e c e |
  b d) r8 b16( d b d a c r8) g16( b g b) |
  \repeat tremolo 4 {b(\< g} \repeat tremolo 4 {b g)}
  \repeat tremolo 4 {c(\fz a\>} \repeat tremolo 4 {c a)}
  \repeat tremolo 4 {c( g} \repeat tremolo 4 {c g)}
  \repeat tremolo 4 {d'(\p g,\>} \repeat tremolo 4 {d' g,)}
  \repeat tremolo 4 {d'( g,} \repeat tremolo 4 {d' g,)}
  \repeat tremolo 4 {d'(\pp g,} g'8) r fs16( a fs a |
  e g) r8 e16( g e g d fs) r8 c16( e c e |
  b d) r8 b16( d b d a c) r8 g16( b g b) |
  \repeat tremolo 4 {b(\< g} \repeat tremolo 4 {b g)}
  \repeat tremolo 4 {a(\f\> fs} \repeat tremolo 4 {a fs)}
  \repeat tremolo 4 {a( fs} \repeat tremolo 4 {a fs)}
  \repeat tremolo 4 {a(\p fs} \repeat tremolo 4 {a fs)}
  \repeat tremolo 4 {a(\> fs} \repeat tremolo 4 {a fs)}
  \barNumberCheck#SixmF
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  g4\pp a8-. b-. a8. g16 g8 r8 R1 g4 a8-. b-. a8. g16 g8 r8 R1
  bf4  c8-. d-. c8. bf16 bf8 r8 R1 bf4 c8-. d-. c8. bf16 bf8 r8 R1
  bf'8\f r r4 r2
  \times2/3{bf8\f c df g,\< a bf e, f g c, d e\! } |
  f8 r f,2.\fp\>~ | f1\!~ f1~ f1~ f2 r4 \times2/3{ cs'8\> cs cs} |
  f,4-. f-. r2\! | fs1\pp~ fs~ fs~ fs~ fs2 r4 \times2/3{ d'8\pp d d} |
  fs,4-. fs-. r2 |
  g1\pp~ g~
  \barNumberCheck#SevenmF
  g1~ g~ g~ g
  g4-. g-. r4 g | r4 g\< r4 g | r4 g r4 g | r4 g r4 g |
  g1:16\ff g:16 %\partPageBreak
  g4\pp g r4 g | r4 g\< r4 g | r4 g r4 g | r4 g r4 g |
  gf1:16\ff gf:16
  fs2\pp g4-| a-| | g4. fs8 fs2 |
  g a4\< b | a4. g8 g2 |
  a b4 c | b4. a8 a2 |
  \barNumberCheck#EightmF
  c4.\ff\< ds8-. fs-. a4.->\fz | c2->\fz r2 |
  c,4.->\fz\< ds8-. fs-. a4.->\fz | c2->\fz r2 |
  cs,8-.\ff e-. cs'-. r8 r2 | d,8-.\ff fs-. d'-. r8 r2 |
  e,8 e' r4 e,8\< e' r4 | e8 e r4 e,8 e' r4 |
  d,1:16\ff d:16 d2:16 d'2:16\fz |
  d,1:16 d2:16 d'2:16\fz |
  d,1:16 d:16 d:16 d:16
  cs2:16\< fs,2:16 b1:32\fff b:32 |
  b4-. b-. r4 b-. | r4 b-. r8 b-. b4 |
  r4 b-. r4 b-. | r8 b-. b-. r4. b8-. r
  \barNumberCheck#NinemF
  R1*4
  g'16\pp g g g g8 r8 b16 b b b b8 r8 | g16 g g g g8 r8 r2 |
  e'2(\pp b) g1(\> e) c(\ppp a)  f\< fs %\partPageBreak
  \key e\major
  b1\pp~b b~b2.\< b'4\mf |
  cs2.(\< b4) | fs'( ds)\! b( a) | a4.(\> gs8 b2) ~b2.\! b4 |
  d2. d4 | d( a) g4.( e8) | fs1~ fs4 a4(\< a' g) |
  fs2 d2(\!~ d4\> a4( g4. e8)\! | fs1~fs4 r r2 |\partPageBreak
  r4 \times2/3{ bs,8(\mf\db ds e } fs8. ds16 fs8. ds16) |
  r4 \times2/3{ cs8-|\<\ub e-| gs-| } cs-|\fz r8 r4 |
  r4 \times2/3{ ds,8(\mf\db fs gs} a8.\< fs16 a8. fs16)\! |
  r4 \times2/3{ e8-|\<\ub gs-| b-| } e-|\fz r8 r4 |
  \times2/3{ gs,8-|\f b-| e-| } gs-| r8 bs,4( gs8) r |
  a4-. a,-. fs2\> |
  r4\! \times2/3{ b8(\mf e gs} b8.\> gs16 b8. gs16)|
  r4\! \times2/3{ b,8(\mp\ub ds fs} b8.\> a16 b8 b,) |
  \barNumberCheck#TenmF %\partPageBreak
  r8\! e,:16\p b':16 e:16 gs:16 b:16 gs:16 e:16 |
  r8 e,:16 b':16 e:16 gs:16 b:16 gs:16 e:16 |
  e,:16\< a:16 c:16 ds:16 e:16 gs:16 a:16 c:16 |
  e:16\> cs:16 b:16 gs:16 e:16 b:16 gs:16 b:16 |
  r8\p e,:16 b':16 e:16 gs:16 b:16 gs:16 e:16 |
  r8 e,:16 b':16 e:16 gs:16 b:16 gs:16 e:16 |
  e,:16\< a:16 c:16 ds:16 e:16 gs:16 a:16 c:16 |
  e:16\> cs:16 b:16 gs:16 e:16 b:16 gs:16 b:16 |
  <e, b'>1\pp ~ <e b'> ~ <e b'> ~ <e b'>
  e8( as cs e~e) r r4 | r2 r8 fs(\>\ub ds c) |
  e,8(\pp as cs e) r2 | r2 r8 fs(\>\ub ds c) |
  <e, b'>1\ppp ~ <e b'> ~ <e b'> ~ <e b'> ~ <e b'>8 r r4 r2
  R1*3 %\partPageBreak
  \barNumberCheck#ElevenmF
  \unset tupletSpannerDuration
  as4.->\ff cs8 e g4.-> | as-> g8 e cs4.-> |
  e'4-| cs-| as-| g-| | e-| cs-| \times2/3{ bf4-> g-> e } |
  b'1:16\ff \key e\minor
  b1:16
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \override PercentRepeatCounter #'direction = #DOWN
  <<
    s1\ff
    \repeat unfold 12 \times2/3{ g'8 fs e b d b }
    \tag#'part \repeat percent 6 s1
  >>
  \revert PercentRepeatCounter #'direction
  b4-. d-. e-. g-. | b-. d-. e-. g-. |
  e,,1:16\fff e:16 f:16 f:16
  fs2:16-> g:16-> a:16-> b:16-> |
  gs4-. a-. bf-. b-. | gs-. a-. bf-. b-. |
  c-. d-. e-. g-. | d-. a-. b-. b-. |
  \barNumberCheck#TwelvemF
  e1:16\ff d:16 e:16 cs:16 a:16 f:16
  <<
    { s1\fff s1 s2 s2\> s1 s1\p s1\> }
    \repeat unfold 32  \times2/3{ e8 g b }
    \tag#'part \repeat percent 8 s1
  >>
  e,4\! r4 r2 R1*5
  r2 r4 \times2/3{ b'8\ppp b b } e,-. e-. r4 r2 R1*4
  \cueWhile "violamF" "viola" #UP R1
  r2 e'8:16\f\< g:16 b:16 e:16 |
  e2\ff fs4(-. g)-. fs4.(-. e8)-. e2 |
  \acciaccatura a,,8 <fs' d'>1 |
  <a, fs' c'>2-> <a fs' c'>
  <<
    s1^\div\fff
    \tag#'part <<
      {<e' b'>2:16 <e b'>:16 <e b'>:16 <e b'>:16} \\
      {<e, e'>2:16 <e e'>:16 <e e'>:16 <e e'>:16}
    >>
    \tag#'score {<e e' b'>1:16 <e e' b'>:16}
  >>
  e4.:16 gs16\< gs b b e4.:16\! | gs1:16
  e,4.:16 gs16 gs\< b b e4.:16\! | gs1:16
  \repeat unfold 6 {e4:16 d:16->\fz}
  \times2/3{
    e,4.:16 gs:16 b:16 cs:16 | e:16 gs:16 b:16 cs:16 |
    e:16 cs:16 b:16 gs:16 | e:16 cs:16 b:16 gs:16 |
  }
  e4 r4 r2 | e4 r4 e r4 | e r4 r2 |
  e4 r4 r2 | e4 r4 r2\fermata \partPageBreak
}

bassmF = \relative c, {
  \clef "bass_8"
  \key e \minor
  b4.(\ff c8) r2 | b4.( c8) r2 | b4(-> c8) r8 b4(-> c8) r8 |
  b8 r b'\< r b r b r | b r b r b r b r |
  b4(\ffz g8) r8 b4( fs8) r8 |
  b4( e,8) r8 b'4( ds,8) r8 | r4 ef4-.\f df-. df-. |
  c8->\< b! c-> b c-> b c'-> b
  e,4\ff r4 r2 | a,4 r4 r2 | e'4 r4 b r4 | e r4 r2 |
  e4 r4 r2 | a,4 r4 r2 | g4 r4 fs r4 | e8\ff e' e e e r r4 |
  e4 r r2 | a4 r4 r2 | e4 r4 g r4 |
  e r4 r2 | e4 r r2 | a4 r4 r2 |
  g4 r8 g, fs4 r8 fs' | e2:8 e8 r r4 |
  b'4-.\ff a-. g-. fs-. |
  g2-> a4-.\db b-. | b-. c-. d\fz e8 c | b4-> a8 fs b4 b, |
  b'-> a-> g-> fs-> |
  g2-> a4.(\ub b8) | b4 c d\fz e8 c | b4-> a8 fs b4 b, |
  \barNumberCheck#OnemF
  e2\ff r2 | a, r2 | e'4 r8 e g4 r8 g | e2 r4 g8 e | e2 r4 e |
  c2\fz g\fz | a2-> a4-. b-. | a2-> a4-. b-. |
  a4-> a8-. b-. a4-> a8-. b-. | a4-> a8-. b-. a-. b-. a-. b-. |
  \barNumberCheck#TwomF
  e-.\ff r8 b-. r8 e-. r8 b-. r8 | e,-. r8 fs-. r8 g-. r8 a-. r8 |
  d r8 d8. d16 d4 r4 |
  e8-. r8 b-. r8 e-. r8 b-. r8 | e,-. r8 fs-. r8 g-. r8 a-. r8 |
  b r8 b r8 e r8 \times2/3{ e8 g a } |
  b8\fz r8 b, r8 r2 | b'8\fz r8 b, r8 r2 |
  b'8\fz r8 b, r8 r2 | b'8\fz r8 b, r8 r2 |
  e8\f r8 b r8 e r8 b r8 | e, r8 fs r8 g r8 a r8 |
  d r8 d8. d16 d4 r4 |
  e8 r8 b r8 e r8 b r8 | e1\fz | d\fz |
  cs8 r8 cs4--\f\db r4 bf--\f\db | r4 g--\f\db r4 g--\f\db R1*6\partPageBreak
  \barNumberCheck#ThreemF
  R1*14
  \trCueWhile "cellomF" "cello 8va" #UP c R1*2
  r4 \times2/3{ ds'8(\p\<\db fs g} a8.) fs16\!( a8.\ub fs16) |
  r4 \times2/3{ e,8\<\ub g b} e4\! r |
  r4 \times2/3{ fs8(\mf\< a b} c8.) a16\! c8. a16 |
  r4 \times2/3{ g,8\f\ub b d} g4 r |
  \times 2/3{ b,8\<\db d g } b4-> ds(\fz b8) r | c4-.\f c,-.\< r c-. |
  d2 d' d, d' |
  \barNumberCheck#FourmF
  \grace s8 % synch with grace in Violin1
  g,4\ff g, r4 g | g'8-> g g,4 r4 g |
  g'-. g,-. g'-. g,-. | g'-. g,-. g'-. g,-. |
  g' g, r4 g | g'8-> g g,4 r4 g |
  g'-. g,-. g'-. g,-. | g'-. g,-. g'-. g,-. |
  g'4.->\ff g,8->~g4. g'8->~g8 g,4.-> g'-> g,8->~g4 g'4.-> g,8->~g4 |
  g'4. g,8~g4 g' |
  g,-- g'-- g,-- g'-- | g,-- g'-- g,-- g'-- |
  b8\f r8-\markup\italic"marcato" a r8 g2 | b8 r8 a r8 g2 |
  b8 r8 a r8 g2 |  b8 r8 a r8 g2-> R1*4
  b,4(\mp a g2) b4(\> a g2) |
  b4(\p a g2) b4(\> a g2) |
  g2:16\pp g:16 |
  g2:16\> g:16 g4\! r4 r2 R1
  \barNumberCheck#FivemF
  R1*4
  r4 e''^\pizz\pp d b g  e d b | g1_\arco~g~g~g\ub\<
  g1\fz\> g~g\p g\> g\pp g g g\< fs\f\> ~fs fs\p~fs\>
  \barNumberCheck#SixmF
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  g4\pp\ub a8-. b-. a8.\db g16 g8\ub r8 R1 g4\ub a8-. b-. a8. g16 g8 r8 R1
  bf4  c8-. d-. c8. bf16 bf8 r8 R1 bf4 c8-. d-. c8. bf16 bf8 r8 R1
  bf'8\f r r4 r2
  r4 \times2/3{g8\f\< a bf e, f g c, d e\! } |
  f8 r f,2.\fp\>~ | f1\!~ f1~ f1~ f2 r4 \times2/3{ cs'8\> cs cs} |
  f,4-. f-. r2\! | fs1\pp~ fs~ fs~ fs~ fs2 r4 \times2/3{ d'8\pp d d} |
  fs,4-. fs-. r2 |
  g1\pp~ g~
  \barNumberCheck#SevenmF
  g1~ g~ g~ g
  g4-. g-. r4 g | r4 g\< r4 g | r4 g r4 g | r4 g r4 g |
  g1:16\ff g:16
  g4\pp g r4 g | r4 g\< r4 g | r4 g r4 g | r4 g r4 g |
  gf1:16\ff gf:16
  fs2\pp g4-| a-| | g4. fs8 fs2 |
  g a4\< b | a4. g8 g2 |
  a b4 c | b4. a8 a2 |
  \barNumberCheck#EightmF
  c4.\ff\< ef8-. fs-. a4.->\fz | c2->\fz r2 |
  c,4.->\fz\< ef8-. fs-. a4.->\fz | c2->\fz r2 |
  cs,8-.\ff e-. cs'-. r8 r2 | d,8-.\ff fs-. d'-. r8 r2 |
  e,8 e' r4 e,8\< e' r4 | e,8 e' r4 e,8 e' r4 |
  d,1:16\ff d:16 d2:16 d'2:16\fz |
  d,1:16 d2:16 d'2:16\fz |
  d,1:16 d:16 d:16 d:16
  cs2:16\< fs,2:16 b1:32\fff b:32 |
  b4-. b-. r4 b-. | r4 b-. r8 b-.\db b4-.\ub |
  r4 b-. r4 b-. | r8 b-.\noBeam b-. r4. b8-. r \partPageBreak
  \barNumberCheck#NinemF
  R1*7
  g''16\ppp g g g g8 r8 r2 e16 e e e e8 r8 r2 | c16 c c c c8 r8 r2 |
  a16 a a a a8 r8 r2 | f16\< f f f f8 r8 f,16 f f f f8 r8 | fs1:16
  \key e\major
  b4\pp b r2
  <<
    s1*0-\pizz
    \repeat unfold 8 { r4 b r2 }
    \tag#'part \repeat percent 8 s1
  >>
  r4 a r a| r a r2 | r2 a4\< r | r4 a r a\! r a\> r a\! |
  r4 a-. d-. fs-. a-. d-. r2 |
  r4 \times2/3{ bs,8(\mf^\arco ds e } fs8. ds16 fs8. ds16) |
  r4 \times2/3{ cs8-|\<\ub e-| gs-| } cs-|\fz r8 r4 |
  r4 \times2/3{ ds,8(\mf fs gs} a8.\< fs16 a8. fs16)\! |
  r4 \times2/3{ e8-|\< gs-| b-| } e-|\fz r8 r4 |
  \times2/3{ gs,8-|\f b-| e-| } gs-| r8 bs,4( gs8) r |
  a4-. a,-. fs2\> | b2 b' b,\p\> b'
  \barNumberCheck#TenmF
  e,,1\p~ e\<~e\!~e\>~e\p~e\<~e\>~e
  e1\pp~ e~e~e~e~e~e~e~e8 r r4 r2 R1*7
  \barNumberCheck#ElevenmF
  \unset tupletSpannerDuration
  as4.->\ff cs8 e g4.-> | as-> g8 e cs4.-> |
  e'4-| cs-| as-| g-| | e-| cs-| \times2/3{ bf4-> g-> e-> } |
  \set tupletSpannerDuration = #(ly:make-moment 1 2)
  \times4/6 {
    b'2.:8\fff b:8
    \key e\minor
    b2.:8 b:8
  }
  <<
    s1\ff \override PercentRepeatCounter #'direction = #DOWN
    \repeat unfold 12 \times4/6{b2.:8}
    \tag#'part \repeat percent 6 s1
  >> \revert PercentRepeatCounter #'direction
  b4-. d-. e-. g-. | b-. d-. e-. g-. |
  e,,1->\fff e-> f-> f->
  fs2-> g-> a-> b-> |
  gs4-. a-. bf-. b-. | gs-. a-. bf-. b-. |
  c-. d-. e-. g-. | d-. a-. b-. b-. |
  \barNumberCheck#TwelvemF
  e1:16\ff d:16 e:16 cs:16 a:16 f:16
  <<
    { s1\fff s1 s2 s2\> s1 s1\p s1\> }
    \repeat unfold 32  \times2/3{ e8( g b) }
    \tag#'part \repeat percent 8 s1
  >>
  <<
    s1\pp \override PercentRepeatCounter #'direction = #DOWN
    {e1~e~e~e\ub e~e~e\db~e~ }
    \tag#'part \repeat percent 8 s1
  >> \revert PercentRepeatCounter #'direction
  e,4 r4 r2 R1*3
  \trCueWhile "violamF" "viola 15ma" #DOWN c, R1*2
  e'2\ff r R1 a,1->\ff\db a2->\db a->
  <<
    s1\ff
    \repeat unfold 9 e1:16
    \tag#'part \repeat percent 9 s1
  >>
  e4-. gs-. b-. cs-. | e-. gs-. b-. cs-. |
  e-. cs-. b-. gs-. | e-. cs-. b-. gs-. |
  e4-. r4 r2 | e4\db r4 e\db r4 | e\db r4 r2 |
  e4 r4 r2 | e4 r4 r2\fermata \partPageBreak
}

