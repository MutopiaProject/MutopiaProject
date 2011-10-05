\version "2.14.0"

fluteImF = \relative c''' {
  \key e \minor
  R1*5 \partcombineSoloIOnce
  \cueWhile "violin1mF" "violin" #UP R1*2
  r4 ds4-.\f ds-. ds-. | ds1\<\startTrillSpan
  e4\stopTrillSpan\ff r r2 | c4 r r2 | b4 r4 b r4 | b r r2 |
  b4 r r2 | c4 r r2 | b4 r4 ds r4 | e2\ff~e8 r r4 |
  e4 r r2 | e4 r r2 | b4 r4 b r4 | b r r2 |
  e4 r r2 | e4 r r2 | b4 r4 ds r4 | e2~e8 r r4 R1*7
  r2 \tag #'score \ottava #1 r4 b4\ff |
  \barNumberCheck#OnemF
  e2-> fs4-. g-. | fs4.-> e8 e2 | e d4 b8 d | e2. e4 |
  e2 fs4-. g-. | a4.( g16 a) b2-> |
  g16(\fz fs e4.) fs4-. ds-. | g16( fs e4.) fs4-. ds-. |
  g16( fs e8) fs8-. ds-.  g16( fs e8) fs8-. ds-.
  g16( fs e8) fs8-. ds-. fs-. ds-. fs-. ds-. |
  \tag #'score \ottava #0
  \barNumberCheck#TwomF
  e r8 d r8 e r8 d r8 | e r8 d r8 d r8 a r8 | a r8 d r8 d r r4 |
  e8 r8 d r8 e r8 d r8 | e r8 d r8 d r8 c r8 | e r8 ds r8 e r r4 |
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  s1*0\f \repeat unfold 2 \times2/3{
    b8( c d  c g c  b c b  a g a) |
    g( fs g  fs e fs  e fs e  ds fs b) |
  }
  e8 r8 d r8 e r8 d r8 |
  e r8 d r8 \partcombineApartOnce b r8 \partcombineApartOnce a r8 |
  \partcombineApartOnce a r8 d r8 d r r4 |
  b8 r8 d r8 g r8 d r8 | b4 r r2 | fs'4 r r2 |
  \times2/3{e8\f ds e} r4 \times2/3{cs8\f bs cs} r4 |
  \times2/3{bf8\fz a bf} r4 \times2/3{e,8\fz ds e} r4 |
  r4 \times2/3{bf8\mf a bf} r4 \times2/3{bf8\> a bf} |
  r4 \times2/3{bf8\p\> a bf} r4 \times2/3{bf8 a bf} |
  df8( c df c df c df c) |
  df1\pp~df8 r r4 r2 R1 R1*7 \partcombineSoloI
  << \tag#'part {
    s2.
    \cueWhile "clarinet1mF" "clarinet" #UP
    \context CueVoice {s4 s1*2 s1\stopSlurSpan}
  } {
    R1*3
    r2 r4 f,(\p
  } >>
  f\< e g\> f | f2)\! r2 R1*9\partcombineAutomatic
  g'2(\f b) | d1*7/8\startTrillSpan\< s8\stopTrillSpan
  \barNumberCheck#FourmF
  g,4.(\stopTrillSpan\ff b8 a4. g8) | a4.( c8 b4. a8) |
  \repeat unfold 4 { b8[-> b] } | b r8 a r8 g2 |
  g4.( b8 a4. g8) | a4.( c8) b4.( a8) |
  \acciaccatura as8 b8[\fz b] b[\fz b] b[\fz b] b[\fz b] | b r8 a r8 g2 |
  \tag #'score \ottava #1
  g'4.(\ff fs8) g4.( b,8) | a4(-> c)-> b(-> a)-> |
  g'4.( fs8) g4.( b,8) | a4( c) b( a) |
  d( ds e2) |
  d\startTrillSpan \acciaccatura {cs16[\stopTrillSpan d]} g8 r r4 R1*4
  \tag #'score \ottava #0
  b,8\f r8 a r8 g2 | b8 r8 a r8 g2 |
  b8\> r8 a r8 g2 | b8 r8 a r8 g2\! |
  b1\mp~b\>~b\p~b\>~b4\pp r r2 R1*3 \partPageBreak
  R1*6
  r2 b'8\pp r8 a r8 | g2\trill fs8 r8 e r8 |
  d2\trill c4\((\< b) |
  a( b)\)\! c8( b e d) |
  c1->\fz~c1*7/8\> s8\! \scoreDynamicsOff b1\p~b2(a2 g8) r r4
  b'8\pp r8 a r8 | g2\trill fs8 r8 e r8 |
  d2\trill c4\((\< b) |
  a( b)\)\! c8( b e d) |
  c1->\f~c1*7/8\> s8\! b1\p~b1~
  \barNumberCheck#SixmF
  b8 r r4 r2 |
  \times2/3{ b,4.:8\fz\> b:8 b:8 b:8 } R1\!
  \times2/3{ b4.:8\fz\> b:8 b:8 b:8 } R1\!
  \times2/3{ bf4.:8\fz\> bf:8 bf:8 bf:8 } R1\!
  \times2/3{ bf4.:8\p\< bf:8 bf:8 bf:8 }
  df8\f r r4 r2 R1*3
  a'4.(\p\< c8) c2 | a4.(\> g8 f2) |
  f( g4 a)\! | g4.( f8) f2 | as1\pp~as2 r |
  as4.(\pp cs8) cs2 | as4.( gs8 fs2) |
  fs( gs4 as)\! | gs4.( fs8) fs2 | b1~b4. r8 r2 |
  \barNumberCheck#SevenmF
  b4.(\p d8) d2 | b4.( a8) g2 |
  b8[ r16 d] d4-. b8[ r16 a] g4-. R1
  <<
    {s1\p s\< }
    \repeat unfold 8 {b8. d16 d4-> }
  >>
  ef1\ff~ef
  <<
    {s1\p s\< }
    \repeat unfold 8 {g,8. bf16 bf4-> }
  >>
  ef1\ff~ef
  b4\p-. cs8-. ds-. cs[ a16\rest b] b8-. ds-. |
  cs-. b-. ds-. cs-. b-. ds-. cs-. b-. |
  e4-.\fp fs8-. g-. fs[\< r16 e] e8-. g-. |
  fs-. e-. g-. fs-. e-. g-. fs-. e-. |
  fs4->\fz g8-. a-. g[ r16 fs] fs8-. a-. |
  g-.\< fs-. a-. g-. fs-. a-. g-. fs-. |
  fs1\ff R1 fs->\ff R1
  r2 fs4\f r4 | r2 fs4\f r4 |
  bf,8 bf r4 bf8\< bf r4 | bf8 bf r4 bf8 bf r4 |
  d1\ff~d d4. d16 d d4. d16 d | d1 |
  d4. d16 d d4. d16 d | d1 d \ffz d\ffz d\ffz
  e\fz g1\fff~g g4-. g-. r4 g-. |
  r4 g-. r8 g-. g4-. | r4 g-. r4 g-. | r8 g-. g-. r r4 g8-. r
  R1*13\partPageBreak
  \key e\major
  \cueWhile "violin1mF" "violin" #DOWN R1*2 \partcombineSoloI
  r2 r4 \times2/3{ b,,8(\mp\< e gs } b8. gs16 b8. fs16\> b8. e,16) r4\! R1*2
  r2 r4 \times2/3{ b8(\mf\< e gs } b8. gs16 b8. fs16\> b8. e,16) r4\! R1*2
  r4 \times2/3{ a,8(\f\< d fs } a8. fs16 a8.\! e16 a8 d,) r4 r2 R1*2
  \times2/3{ a8(\f d fs } a8. fs16 a8. e16 a8 d,) R1 \partcombineAutomatic
  a'2.(\p gs4) | gs(\< e' ds cs) cs2.(\! c4) | b(\< gs' fs e) |
  b'(\f gs fs e) | ds(\> cs b a) gs1~gs2 fs2\p |
  \barNumberCheck#TenmF
  e4.(\p gs8 fs4. e8) | gs4.(\< b8 a4. gs8) | gs2.(\fz\> fs4) | e1\p |
  e4.( gs8 fs4. e8) | gs4.(\< b8 a4. gs8) | gs2.(\fz\> fs4) | e1*7/8\p\> s8\! |
  e'4.(\pp ds8 e4 gs,) | fs( a gs fs) | e'4.( ds8 e4 gs,) | fs( a gs fs) |
  gs16\< gs8 gs gs gs16 ~ gs16 gs8 gs gs gs16 | gs2.(\fz\> fs4) |
  gs16\p\< gs8 gs gs gs16 ~ gs16 gs8 gs gs gs16 | gs2.(\fz\> fs4 |
  e)\! r r2 R1
  e'4.(\pp b8 gs4. fs8 | e) r r4 r2
  R1 R1*3
  e'1\ff~e1 cs~cs g'->\fff~
  \key e\minor
  g1
  \repeat unfold 12 { g8\prall r8 d\prall r8 }
  \repeat unfold 8 g4-.
  g1\fff( e2) c2 |
  df1~df2. d4 | ds4 r b r e r a r
  f-. e-. g-. g-. | f-. e-. g-. g-. | g-. fs-. e-. d-. | d-. c-. b-. b-. |
  b1->\ff | bf->\fz | b->\fz | cs->\fz | c-> | c-> |
  e1->\fff~e~e4 r r2 R1*6 \partcombineSoloI
  r2 r4 \times2/3{ b8\pp b b } | e,8-. e-. r4 r2 R1*9
  \partcombineAutomatic
  \cueWhile "violin1mF" "" #DOWN R1
  \cueWhile "violin1mF" "violin" #UP R1
  e'2\f fs4-. g-. | fs4. e8 e2 | d1-> | c2-> d-> | e1\fff~e
  e1-> | gs-> | e-> | gs-> |
  \repeat unfold 6 { e4-. f-. }
  \repeat unfold 8 { gs4 \times2/3 gs4.:8 } gs4 r r2
  e4-. r e-. r | e-. r r2 | e4-. r r2
  << e1\fermata {s2\> s\ppp} >>
}

fluteIImF = \relative c''' {
  \key e \minor
  R1*7
  r4 ds4-.\f ds-. ds-. | ds1\<\startTrillSpan
  e4\stopTrillSpan\ff r r2 | c4 r r2 | b4 r4 b r4 | b r r2 |
  b4 r r2 | c4 r r2 | b4 r4 b r4 | b2\ff~b8 r r4 |
  e4 r r2 | c4 r r2 | b4 r4 b r4 | b r r2 |
  e4 r r2 | c4 r r2 | \partcombineApartOnce b4 r4 b r4 | b2~b8 r r4 R1*7
  r2 \tag #'score \ottava #1 r4 b4\ff |
  \barNumberCheck#OnemF
  e2-> fs4-. g-. | fs4.-> e8 e2 | e d4 b8 d | e2. e4 |
  e2 fs4-. g-. | e2 e2 |
  c2 c4-. b-. | c2 c4-. b-. |
  c4 c8-. b-. c4 c8-. b-. | c4 c8-. b-. c8-. b-. c8-. b-.
  \tag #'score \ottava #0
  \barNumberCheck#TwomF
  b8\f r g r8 b r8 g r8 | b r8 a r8 b r8 a r8 | a r8 d r8 d r r4 |
  b8 r8 g r8 b r8 g r8 | b r8 a r8 b r8 c r8 | e r8 ds r8 e r r4 |
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  s1*0\f \repeat unfold 2 \times2/3{
    b8( c d  c g c  b c b  a g a) |
    g( fs g  fs e fs  e fs e  ds fs b) |
  }
  e8 r8 g, r8 b r8 g r8 | b r8 a r8 b r8 a r8 | a r8 a r8 a r r4 |
  g8 r8 b r8 e r8 b r8 | g4 r r2 | b4 r r2 |
  \times2/3{bf8\f bf bf} r4 \times2/3{cs8\f bs cs} r4 |
  \times2/3{bf8\fz a bf} r4 \times2/3{e,8\fz ds e} r4 |
  r4 \times2/3{bf8\mf a bf} r4 \times2/3{bf8\> a bf} |
  r4 \times2/3{bf8\p\> a bf} r4 \times2/3{bf8 a bf} |
  df8( c df c df c df c) |
  df1\pp~df8 r r4 r2 R1 R1*17
  \cueWhile "violin1mF" "violin" #UP R1*5
  g2(\f b) | d1*7/8\startTrillSpan\< s8\stopTrillSpan
  \barNumberCheck#FourmF
  g,4.(\stopTrillSpan\ff b8 a4. g8) | a4.( c8 b4. a8) |
  \repeat unfold 4 { b8[-> b] } | b r8 a r8 g2 |
  g4.( b8 a4. g8) | a4.( c8) b4.( a8) |
  \acciaccatura as8 b8[\fz b] b[\fz b] b[\fz b] b[\fz b] | b r8 a r8 g2 |
  \tag #'score \ottava #1
  b4.(\ff a8) b4.( g8) | fs4( a) g( fs) |
  b4.( a8) b4.( g8) | fs4( a) g( fs) |
  d'( ds e2) |
  d\startTrillSpan \acciaccatura {cs16[\stopTrillSpan d]} b8 r r4 R1*4
  \tag #'score \ottava #0
  b8\f r8 a r8 g2 | b8 r8 a r8 g2 |
  b8\> r8 a r8 g2 | b8 r8 a r8 g2\! |
  b1\mp~b\>~b\p~b\>~b4\pp r r2 R1*3 \partPageBreak
  R1*6
  r2 g'8\pp r fs r | e2\trill d8 r c r |
  b2\trill a4\((\< g) |
  fs( g)\)\! a8( g c b) |
  a1->\fz~a1*7/8\> s8\! fs1\p~fs1( g8) r r4
  g'8\pp r fs r | e2\trill d8 r c r |
  b2\trill a4\((\< g) |
  fs( g)\)\! a8( g c b) |
  a1->\f~a1*7/8\> s8\! a1\p~a1(
  \barNumberCheck#SixmF
  g8) r r4 r2 |
  \times2/3{ g,4.:8\fz\> g:8 g:8 g:8 } R1\!
  \times2/3{ g4.:8\fz\> g:8 g:8 g:8 } R1\!
  \times2/3{ g4.:8\fz\> g:8 g:8 g:8 } R1\!
  \times2/3{ g4.:8\p\< g:8 g:8 g:8 }
  bf8\f r r4 r2 R1*3
  f'4.(\p\< a8) a2 | f4.(\> c8 c2) |
  cs( f4) f\! | cs4.( cs8)-. cs2 | as'1\pp~as2 r |
  fs4.(\pp as8) as2 | fs4.( cs8 cs2) |
  d( fs4) fs\! | d4.( d8)-. d2 | g1~g4. r8 r2 |
  \barNumberCheck#SevenmF
  g4.(\p b8) b2 | g4.( d8) d2 |
  g8[ r16 b] b4-. g8[ r16 d] b4-. R1
  <<
    {s1\p s\< }
    \repeat unfold 8 {g'8. b16 b4-> }
  >>
  ef1\ff~ef
  <<
    {s1\p s\< }
    \repeat unfold 8 {ef,8. g16 g4-> }
  >>
  ef'1\ff~ef
  a,4\p-. a8-. a-. a[ a16\rest a] a8-. a-. |
  a-. a-. a-. a-. a-. a-. a-. a-. |
  b4-.\fp b8-. b-. b[\< r16 b] b8-. b-. |
  b-. b-. b-. b-. b-. b-. b-. b-. |
  c4->\fz c8-. c-. c[ r16 c] c8-. c-. |
  c-.\< c-. c-. c-. c-. c-. c-. c-. |
  ds1\ff R1 ds->\ff R1
  r2 e4\f r4 | r2 b4\f r4 |
  bf8 bf r4 bf8\< bf r4 | bf8 bf r4 bf8 bf r4 |
  bf1\ff~bf bf4. bf16 bf bf4. bf16 bf | bf1 |
  bf4. bf16 bf bf4. bf16 bf | bf1 bf \ffz bf\ffz bf\ffz
  as\fz e'1\fff~e e4-. e-. r4 d-. |
  r4 e-. r8 e-. e4-. | r4 e-. r4 d-. | r8 e-. e-. r r4 e8-. r|
  R1*13 \partPageBreak
  \key e\major
  R1*14
  \cueWhile "flute1mF" "flute I" #UP R1
  \cueWhile "violin1mF" "violin" #UP R1
  a,2.(\p gs4) | gs(\< e' ds cs) cs2.(\! c4) | b(\< gs' fs e) |
  b'(\f gs fs e) | ds(\> cs b a) gs1~gs2 fs2\p |
  \barNumberCheck#TenmF
  gs,4.(\p e'8 b4. gs8) | e'4.(\< gs8 fs4. e8) | ds1\fz\> | e1\p |
  gs,4.( e'8 b4. gs8) | e'4.(\< gs8 fs4. e8) | ds1\fz\> | e1*7/8\p\> s8\! R1*4
  gs16\p\< gs8 gs gs gs16 ~ gs16 gs8 gs gs gs16 | gs2.(\fz\> fs4) |
  gs16\p\< gs8 gs gs gs16 ~ gs16 gs8 gs gs gs16 | gs2.(\fz\> fs4 |
  e)\! r r2 R1
  gs4.(\pp fs8 e4. b8 | gs) r r4 r2 R1
  R1*3
  cs'1\ff~cs1 as~as e'->\fff~
  \key e\minor
  e1
  \repeat unfold 12 { e8\prall r8 b\prall r8 }
  \repeat unfold 8 e4-.
  c1\fff( c1) c~c( a4) r b r | c r ds r
  b-. cs-. e-. e-. | b-. cs-. e-. e-. | e-. a,-. e'-. b-. | a-. a-. g-. fs-.|
  b1->\ff | bf->\fz | b->\fz | cs->\fz | a-> | a-> |
  b1->\fff~b~b4 r r2 R1*13
  << R1*6 {
    \cueWhile "horn1mF" "horn" #DOWN s1*4
    \cueWhile "violin1mF" "violin" #DOWN s1
    \cueWhile "violin1mF" "violin" #UP s1
  } >>
  e2\f fs4-. g-. | fs4. e8 e2 | d1-> | c2-> d-> | e1\fff~e
  e1-> | c-> | e-> | c-> |
  \repeat unfold 6 { b4-. c-. }
  \repeat unfold 8 { e4 \times2/3 e4.:8 } e4-. r r2
  e4-. r e-. r | e-. r r2 | e4-. r r2
  << b1\fermata {s2\> s\ppp} >>
}

oboeImF = \relative c'' {
  \key e \minor
  R1*7
  r4 bf'4-.\f bf-. bf-. | a1\<
  g4\ff r r2 | fs4 r r2 | g4 r4 g r4 | g r r2 |
  g4 r r2 |fs4 r r2 | e4 r4 a r4 | g2\ff~g8 r r4 |
  b4 r r2 | c4 r r2 | b4 r4 b r4 | b r r2 |
  b4 r r2 | c4 r r2 | b4 r4 a r4 | g2~g8 r r4 R1*7
  r2 r4 b,4\ff |
  \barNumberCheck#OnemF
  e2-> fs4-. g-. | fs4.-> e8 e2 | e d4 b8 d | e2. e4 |
  e2 fs4-. g-. | a4.( g16 a) b2-> |
  g16(\fz fs e4.) fs4-. ds-. | g16( fs e4.) fs4-. ds-. |
  g16( fs e8) fs8-. ds-.  g16( fs e8) fs8-. ds-.
  g16( fs e8) fs8-. ds-. fs-. ds-. fs-. ds-. |
  \barNumberCheck#TwomF
  g\f r g r g r g r | g r a r b r \partcombineApart fs8. e16 |
  \partcombineChords fs8 r a r fs r r4 |
  g8 r g r g r g r | g r a r b r \partcombineApart g8. fs16 |
  \partcombineChords g8 r fs r g r r4 | \partcombineAutomatic
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  s1*0\f \repeat unfold 2 \times2/3{
    b,8( c d  c g c  b c b  a g a) |
    g( fs g  fs e fs  e fs e  ds fs b) |
  }
  e,8 r g' r g r g r | g r a r b r fs8. e16 | fs8 r fs r fs r r4 |
  g8 r b r g r d r | g4 r r2 | fs4 r r2 |
  \times2/3{bf8\f bf bf} r4 \times2/3{g8\f g g} r4 |
  \times2/3{e8\fz e e} r4 \times2/3{e8\fz ds e} r4 R1*2
  bf1\p\>~bf\pp~bf8 r r4 r2 R1 R1*14
  \trCueWhile "cellomF" "cello 8vb" #DOWN c'' R1*2
  a1(\p g2.\< b4) c1\fz b\< b c2(\f d4 c) b1 b2(\< a)
  \barNumberCheck#FourmF
  b1\ff a b a2( b2) | b1 c b a2 b4. r8|
  b'4.(\ff a8) b4. b8 | a4( c) b( a) |
  b4.( a8) b4. b8 | a4( c) b( a) |
  b2 b2 | fs\startTrillSpan \acciaccatura {e16[\stopTrillSpan fs]} g8 r r4
  R1*4 \partPageBreak
  b8\f r a r g2 | b8 r a r g2 |
  b8\> r a r g2 | b8 r a r g2\! R1*8
  R1*4
  \trCueWhile "bassmF" "bass 15mb" #DOWN c''' R1*2
  r2 b8\pp r a r | g2\trill fs8 r e r |
  d2\trill c4\((\< b) |
  a( b)\)\! c8( b e d) |
  c1->\fz~c1*7/8\> s8\! \scoreDynamicsOff b1\p~b2( a2 b8) r r4
  b'8\pp r8 a r8 | g2\trill fs8 r8 e r8 |
  d2\trill c4\((\< b) |
  a( b)\)\! c8( b e d) |
  c1->\f~c1*7/8\> s8\! b1\p~b1~
  \barNumberCheck#SixmF
  b8 r r4 r2 R1*6
  \times2/3{
    bf4.:8\p\< bf:8 bf:8 bf:8
  } df8\f r r4 r2 R1*7
  fs1~fs2 r2 R1*6
  \barNumberCheck#SevenmF
  d4.(\p g8) g2 | d4.( b8) b2 R1*6
  bf'1\ff~bf
  <<
    {s1\p s\< }
    \repeat unfold 8 {g8. bf16 bf4-> }
  >>
  bf1\ff~bf
  ds,4\p ds8 ds ds2:8 | ds2:8 ds2:8
  e4\fp e8 e e2:8\< | e2:8 e2:8
  fs4->\fz g8-. a-. g[ r16 fs] fs8-. a-. |
  g-.\< fs-. a-. g-. fs-. a-. g-. fs-. |
  a1\ff R1 a->\ff R1
  r2 fs4\f r4 | r2 fs4\f r4 |
  bf8 bf r4 bf8\< bf r4 | bf8 bf r4 bf8 bf r4 |
  bf1\ff~bf bf4. bf16 bf bf4. bf16 bf | bf1 |
  bf4. bf16 bf bf4. bf16 bf | bf1 bf \ffz bf\ffz bf\ffz
  as\fz g1\fff~g g4-. g-. r4 g-. |
  r4 g-. r8 g-. g4-. | r4 g-. r4 g-. | r8 g-.\noBeam g-. r r4 g8-. r |
  e,2(\p fs4 g fs4.\> e8 e2) e( d4 b8 d e1)\pp R1*9 \partPageBreak
  \key e\major
  \cueWhile "violin1mF" "violin" #DOWN R1*2 \partcombineSoloI
  r2 r4 \times2/3{ b'8(\mp\< e gs } b8. gs16 b8. fs16\> b8. e,16) r4\! R1*2
  r2 r4 \times2/3{ b8(\mf\< e gs } b8. gs16 b8. fs16\> b8. e,16) r4\! R1*2
  r4 \times2/3{ a,8(\f\< d fs } a8. fs16 a8.\! e16 a8 d,) r4 r2 R1*2
  \times2/3{ a8(\f d fs } a8. fs16 a8. e16 a8 d,) R1 \partcombineAutomatic
  a2.(\p gs4) | gs(\< e' ds cs) cs2.(\! c4) | b(\< gs' fs e) |
  b'(\f gs fs e) | ds(\> cs b a) gs2( b) ~ b1\p |
  \barNumberCheck#TenmF
  b1\p~b\< c\fz\> b\p |
  b1( b)\< c\fz\> b1*7/8\p\> s8\!|
  e4.(\pp ds8 e4 gs,) | fs( a gs fs) | e'4.( ds8 e4 gs,) | fs( a gs fs) |
  c'1\< c\fz\> cs\p\< c(\fz\> b4)\! r r2 |
  gs'4.(\pp b8 a4. gs8) R1*3
  R1*3
  g1\ff~g1 g~g g->\fff~
  \key e\minor
  g1
  \repeat unfold 12 { g8\prall r8 d\prall r8 }
  \repeat unfold 8 g4-.
  c1\fff( c1) |
  c1~c | a4 r b r fs r a r
  b-. e,-. g-. g-. | b-. e,-. g-. g-. | bf-. a-. gs-. b-. | a-. a-. g-. fs-. |
  g1->\ff | bf->\fz | g->\fz | gs->\fz | a-> | a-> |
  b1->\fff~b e,1\>~e e,\p~e\>~e4\! r r2 R1*9
  << R1*6 {
    \cueWhile "horn1mF" "horn" #DOWN s1*4
    \cueWhile "violin1mF" "violin" #DOWN s1
    \cueWhile "violin1mF" "violin" #UP s1
  } >>
  e'2\f fs4-. g-. | fs4. e8 e2 | a1-> | a2-> a-> | b1\fff~b
  b1-> | c-> | b-> | c-> |
  \repeat unfold 6 { gs4-. gs-. }
  \repeat unfold 8 { b4 \times2/3 b4.:8 } b4 r r2
  b4-. r b-. r | b-. r r2 | b4-. r r2
  << b1\fermata {s2\> s\ppp} >>
}

oboeIImF = \relative c'' {
  \key e \minor
  R1*7
  r4 g'4-.\f g-. g-. | fs1\<
  e4\ff r r2 | e4 r r2 | e4 r4 d r4 | e r r2 |
  e4 r r2 | e4 r r2 | b4 r4 ds r4 | e2\ff~e8 r r4 |
  g4 r r2 |fs4 r r2 | g4 r4 d r4 | g r r2 |
  g4 r r2 |fs4 r r2 | e4 r4 ds r | e2~e8 r r4 R1*7
  r2 r4 b4\ff |
  \barNumberCheck#OnemF
  e2-> fs4-. g-. | fs4.-> e8 e2 | e d4 b8 d | e2. e4 |
  e2 fs4-. g-. | e2 e2 |
  c2 c4-. b-. | c2 c4-. b-. |
  c4 c8-. b-.  c4 c8-. b-.
  c4 c8-. b-. c-. b-. c-. b-. |
  \barNumberCheck#TwomF
  e\f r d r e r d r | e r d r d r cs r8
  d8 r fs r d r r4 |
  e8 r d r e r d r | e r d r d r c r8
  e8 r ds r e r r4 |
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  s1*0\f \repeat unfold 2 \times2/3{
    b8( c d  c g c  b c b  a g a) |
    g( fs g  fs e fs  e fs e  ds fs b) |
  }
  e,8 r d' r e r d r | e r d r d r cs4 | d8 r d r d r r4 |
  e8 r g r e r b r | b4 r r2 | b4 r r2 |
  \times2/3{g'8\f g g} r4 \times2/3{e8\f e e} r4 |
  \times2/3{cs8\fz cs cs} r4 \times2/3{bf8\fz bf bf} r4 R1*2
  g1\p\>~g\pp~g8 r r4 r2 R1 R1*14
  \trCueWhile "cellomF" "cello 8vb" #DOWN c'' R1*2
  fs1(\p e2.\< g4) a1\fz g\< g g2(\f gs4 a) g1 fs2(\<fs)
  \barNumberCheck#FourmF
  g1\ff fs g fs2( g2) | g1 fs g fs2 g4. r8|
  g'4.(\ff fs8) g4. g8 | fs4( a) g( fs) |
  g4.( fs8) g4. g8 | fs4( a) g( fs) |
  b,2 b2 | fs'\startTrillSpan \acciaccatura {e16[\stopTrillSpan fs]} g8 r r4 R1*4
  b,8\f r a r g2 | b8 r a r g2 |
  b8\> r a r g2 | b8 r a r g2\! |
  b1\mp~b1\>~b1\p\>~b1~b4\! r4 r2 R1*9
  r2 g'8\pp r fs r | e2\trill d8 r c r |
  b2\trill a4\((\< g) |
  fs( g)\)\! a8( g c b) |
  a1->\fz~a1*7/8\> s8\! fs1\p~fs( g8) r r4
  g'8\pp r fs r | e2\trill d8 r c r |
  b2\trill a4\((\< g) |
  fs( g)\)\! a8( g c b) |
  a1->\f~a1*7/8\> s8\! a1\p~a(
  \barNumberCheck#SixmF
  g8) r r4 r2 R1*6
  \times2/3{
    g4.:8\p\< g:8 g:8 g:8
  } bf8\f r r4 r2 R1*7
  fs1\pp~fs2 r2 R1*6
  \barNumberCheck#SevenmF
  R1*4
  \cueWhile "violin1mF" "violin" #UP R1*4
  bf1\ff~bf
  <<
    {s1\p s\< }
    \repeat unfold 8 {ef8. g16 g4-> }
  >>
  bf,1\ff~bf
  a4\p a8 a a2:8 | a2:8 a2:8
  b4\fp b8 b b2:8\< | b2:8 b2:8
  c4->\fz c8-. c-. c[ r16 c] c8-. c-. |
  c-.\< c-. c-. c-. c-. c-. c-. c-. | \partPageBreak
  fs1\ff R1 fs->\ff R1
  r2 e4\f r4 | r2 b4\f r4 |
  g'8 g r4 g8\< g r4 | g8 g r4 g8 g r4 |
  g1\ff~g d4. d16 d d4. d16 d | d1 |
  d4. d16 d d4. d16 d | d1 g\ffz f\ffz f\ffz
  e\fz e1\fff~e e4-. e-. r4 d-. |
  r4 e-. r8 e-. e4-. | r4 e-. r4 d-. | r8 e-.\noBeam e-. r r4 e8-. r |
  \barNumberCheck#NinemF
  e,2(\p fs4 g fs4.\> e8 e2) e( d4 b8 d e1)\pp
  R1*9
  \key e\major
  R1*14
  \cueWhile "oboe1mF" "oboe1" #UP R1
  \cueWhile "violin1mF" "violin" #UP R1
  a2.(\p gs4) | gs(\< e' ds cs) cs2.(\! c4) | b(\< gs' fs e) |
  b'(\f gs fs e) | ds(\> cs b a) gs1 a1\p |
  \barNumberCheck#TenmF
  gs1(\p b)\< a\fz\> gs\p |
  gs1( b)\< a\fz\> gs1*7/8\p\> s8\! R1*4
  as1\p\< a\fz\> as\p\< a(\fz\> gs4)\! r r2 |
  e'4.(\pp gs8 fs4. e8)
  R1*3
  R1*3
  e1\ff~e1 e~e e->\fff~
  \key e\minor
  e1
  \repeat unfold 12 { e8\prall r8 b\prall r8 }
  \repeat unfold 8 e4-.
  c1\fff( c1) |
  c1~c | ds4 r e r e r ds r
  f-. cs-. e-. e-. | f-. cs-. e-. e-. | g-. fs-. e-. d-. | fs-. f-. e-. ds-. |
  e1->\ff | f->\fz | e->\fz | es->\fz | e-> | f-> |
  g1->\fff~g e1\>~e e,\p~e\>~e4\! r r2 R1*9
  << R1*6 {
    \cueWhile "horn1mF" "horn" #DOWN s1*4
    \cueWhile "violin1mF" "violin" #DOWN s1
    \cueWhile "violin1mF" "violin" #UP s1
  } >>
  e'2\f fs4-. g-. | fs4. e8 e2 | fs1-> | fs2-> fs-> | gs1\fff~gs
  gs1-> | fs4.-> es8 es2-> | gs1-> | fs4.-> es8 es2-> |
  \repeat unfold 6 { e4-. f-. }
  \repeat unfold 8 { gs4 \times2/3 gs4.:8 } gs4 r r2
  gs4-. r gs-. r | gs-. r r2 | gs4-. r r2
  << gs1\fermata {s2\> s\ppp} >>
}

clarinetImF = \relative c'''{
  \key g \minor
  \tag #'part \mark "in A"
  \transposition a
  R1*7
  r4 bf-. \f bf-. bf-. | a1\<
  g4\ff r r2 | g4 r r2 | g4 r f r | g r r2 |
  g4 r r2 | g4 r r2 | g4 r fs r | g2\ff ~ g8 r r4 |
  g r r2 | g4 r r2 | g4 r f r | g r r2 |
  g4 r r2 | g4 r r2 | g4 r fs r | g2 ~ g8 r r4 R1*7
 \grace s8 % match acciaccatura in Violin I
  r2 r4 d\ff |
  \barNumberCheck#OnemF
  g2-> a4-. bf-. |
  a4.-> g8 g2 |
  g f4 d8 f |
  g2. g4 |
  g2 a4-. bf-. |
  c4.( bf16 c) d2-> |
  bf16( \fz a g4.) a4-. fs-. |
  bf16( a g4.) a4-. fs-. |
  bf16( a g8) a-. fs-. bf16( a g8) a-. fs-. bf16( a g8) a-. fs-. a-. fs-. a-. fs-. |
  d r f r d r f r |
  d r f r f r e r |
  f r a r f r r4 |
  d8 r f r d r f r |
  d r f r f r ef r |
  d r d r d r r4 |
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  s1*0\f \repeat unfold 2 \times 2/3 {
    d'8( ef f ef bf ef d ef d c bf c) |
    bf( a bf a g a g a g fs a d) |
  } \partcombineApartOnce g,8 r f r g r f r |
  d r f r f r e r |
  f r f r f r r4 |
  d8 r f r bf r f r |
  d4 r r2 |
  d4 r r2 |
  \times 2/3 { g8\f fs g } r4 \times 2/3 { e8\f ds e } r4 |
  \times 2/3 { df8\fz c df } r4 \times 2/3 { e8\fz e e } r4 |
  r4 \times2/3 g,4.:8\mf r4 \times2/3 g4.:8\>
  r4 \times2/3 g4.:8\p\> r4 \times2/3 g4.:8 R1*2\!
  g'2.\< g4~g4 g4--( g4-- g4--)
  \barNumberCheck#ThreemF
  g2.(\f\< f4 c'\> a f ef) | ef(d f2\p~f2.) f4( |
  g2.\< f4 c'\! a f ef) | ef(d\> f2~f2.)\! f4( |
  af2.\p g4) af(\> ef df4. bf8\! | c1~ c2.) ef4( |
  af2.\< g4) af(\! ef df4.\> bf8 | c1~ c2)\! c4. c8 |
  ef2.(\< d4) | d2.( g4) | g2.(\fz f4)
  f1(\<~ f2 fs) | g2(\f af4 g) | bf2( d,) |
  f1*7/8\startTrillSpan\< s8\stopTrillSpan\!
  \barNumberCheck#FourmF
  f1\stopTrillSpan\ff fs g4( fs g2) |
  f1 f1 fs-> g4 fs g2 f2~f4. r8 |
  bf4.(\ff a8) bf4.( d,8) c4(ef) d(c)
  bf'4.( a8) bf4.( d,8) c4(ef) d(c)
  f( fs g2) |
  f-\startTrillSpan \acciaccatura { e16[\stopTrillSpan f] } bf8 r r4
  r2 g8.(\f d16 g8) r | r2 g8.(\f d16 g8) r |
  r2 g8.(\f d16 g8) r | r2 g8.(\f d16 g8) r |
  d'8\f r c r bf2 | d8 r c r bf2 | d8\> r c r bf2 | d8 r c r bf2\!
  R1*8 \partPageBreak
  r2 d,4-.\pp c-. bf-. r g-. f-. d-. r r2 R1*15
  \cueWhile "horn1mF" "horn" #UP R1*5
  bf'8\p r bf r bf r bf r R1 bf8\p r bf r bf r bf r R1*8
  ef4.( \p \< af8) af2 | ef4.( \> c8 c2) |
  c( e4) e\! | c4. c8 c2 | e1\pp ~ cs2 r |
  e4.( \pp a8) a2 | e4.( cs8 cs2) |
  cs( f4 f) \! | cs4.( cs8)-. cs2 | f1 ~ f4. r8 r2 R1*3
  d8[\p r16 f] f4-. d8[ r16 c] bf4-.
  <<
    { s1 s\< }
    \repeat unfold 8 { d8. f16 f4-> }
  >>
  gf1\ff ~ gf
  <<
    { s1\p s\< }
    \repeat unfold 8 { bf,8. df16 df4-> }
  >>
  g1\ff ~ g
  d4\p -. e8-. fs-. e[ r16 d] d8-. fs-. |
  e-. d-. fs-. e-. d-. fs-. e-. d-. |
  g4-> \fp a8-. bf-. a[\< r16 g] g8-.  bf-. |
  a-. g-. bf-. a-. g-. bf-. a-. g-.\! |
  ef4-> \fz ef8-. ef-. ef[ r16 ef] ef8-. ef-. |
  ef-. \< ef-. ef-. ef-. ef-. ef-. ef-. ef-. |
  a1\ff R1 a-> \ff R1
  r2 g4\f r | r2 d4\f r |
  bf'8 bf r4 bf8\< bf r4 | bf8 bf r4 bf8 bf r4 |
  f1\ff ~ f f4. f16 f f4. f16 f | f1 |
  f4. f16 f f4. f16 f | f1
  f\ffz f\ffz f\ffz g\fz bf\fff ~ bf bf4-. bf-. r bf-. |
  r bf-. r8 bf-. bf4-. | r bf-. r bf-. |
  r8 bf-. bf-. r r4 bf8-. r
  d,,1\p~d\> d\pp~d1*7/8\> s8\! g'2(\pp f4 d8 f g1) R1*7
  \key g \major
  \cueWhile #"violin1mF" "violin" #DOWN R1*4 \partcombineSoloIOnce
  R1 \partcombineSoloIOnce
  r4 d2.\mf\<~d2 g2( b4\f a g2)\>~ g1 |
  a4(\p\> f d4. c8) c4(\< a'2 g4) f1~f2 d'2\f |
  c4(\> a8 f8 d4. c8) c4(\p\< a' g f) a2\! r2 R1*4
  d,2(\f ds) e(\> g) g( b~b a)\p
  g4.( \p b8 a4. g8) |
  \scoreDynamicsOff b4.( \< d8 c4. b8) |
  b2.( \fz \> a4) | g1\p |
  g4.( b8 a4. g8) |
  b4.( \< d8 c4. b8) |
  b2.( \fz \> a4) | g1\p \> \partcombineUnisonoOnce R1*5\!
  fs1(\fz\> g8)\! r r4 r2
  fs1*7/8\fz\> s8\!
  g4.(\pp b8 a4. g8) R1*2
  g4.(\pp d8 b4. a8 g4) r r2 R1*3 \partPageBreak
  g'1\ff ~ g e ~ e bf'-> \fff ~
  \key g \minor
  bf \repeat unfold 12 { bf8-\prall r f-\prall r }
  \repeat unfold 8 bf4-.
  bf1\fff ~ bf b ~ b | c4 r d r a r fs r |
  af-. g-. g-. g-. | af-. g-. g-. g-. |
  bf-. a-. g-. f-. | f-. ef-. d-. d-. | d1-> \ff |
  f-> \fz | d-> \fz | e-> \fz | ef-> | ef-> |
  bf'-> \fff ~ bf d,\>~d d,\p~d\>~d4 r r2 R1
  bf'4.(\p d8 d2 bf4. a8 g2) |
  bf4.( d8 d2 bf4. a8 g2) |
  bf4.(\> a8 g2 bf4.\pp a8 g2
  bf4.\> a8 g2 bf4.\ppp a8 g2) R1*2
  c,1->\pp ~ c( d) ~ d4 r r2 |
  g'2\f a4-. bf-. a4. g8 g2 a1-> a2-> a->
  b1\fff ~ b d,-> | ef-> | d-> | ef-> |
  \repeat unfold 6 { e4-. ef-. }
  \repeat unfold 8 { b' \times 2/3 b4.:8 }
  b4 r r2 b4-. r b-. r | b-. r r2 |
  b4-. r r2
  << g1\fermata {s2\> s\ppp} >>
}

clarinetIImF = \relative c'' {
  \key g \minor
  \tag #'part \mark "in A"
  \transposition a
  R1*7
  r4 df-. \f df-. df-. | c1\<
  bf4\ff r r2 | ef4 r r2 | d4 r d r | d r r2 |
  d4 r r2 | ef4 r r2 | d4 r d r | d2\ff ~ d8 r r4 |
  bf r r2 | ef4 r r2 | d4 r d r | d r r2 |
  d4 r r2 | ef4 r r2 | d4 r d r | d2 ~ d8 r r4 R1*7
  r2 r4 d\ff |
  \barNumberCheck#OnemF
  g2-> a4-. bf-. | a4.-> g8 g2 |
  g f4 d8 f | g2. g4 |
  g2 a4-. bf-. |  g2 g |
  ef2 ef4-. d-. |
  ef2 ef4-. d-. |
  ef4 ef8-. d-.  ef4 ef8-. d-. |
  ef4 ef8-. d-.  ef8-. d-.  ef8-. d-.|
  bf8\p r bf r bf r bf r | bf r c r d r bf r | a r f' r a, r r4 |
  bf8 r bf r bf r bf r | bf r c r d r bf r | bf r a r bf r r4 |
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  s1*0\f \repeat unfold 2 \times 2/3 {
    d8( ef f ef bf ef d ef d c bf c) |
    bf( a bf a g a g a g fs a d) |
  } g8 r bf, r bf r bf r bf r c r d r c r | c r c r c r r4 |
  bf8 r d r g r d r | bf4 r r2 a4 r r2 |
  \times 2/3 { df8\f df df} r4 \times 2/3 {bf8\f bf bf} r4 |
  \times 2/3 { g8\fz g g } r4 \times 2/3 {cs8\fz cs cs} r4 |
  r4 \times2/3 e,4.:8\mf r4 \times2/3 e4.:8\>
  r4 \times2/3 e4.:8\p\> r4 \times2/3 e4.:8 R1*4\!
  \barNumberCheck#ThreemF
  R1*21
  \cueWhile "clarinet1mF" "clarinet I" #UP R1*3
  \barNumberCheck#FourmF
  f'1\ff fs g4( fs g2) |
  f1 f1 fs-> g4 fs g2 f2~f4. r8 |
  d4.(\ff c8) d4.( bf8) a4(c) bf(a)
  d4.( c8) d4.( bf8) a4(c) bf(a)
  d2 d |
  a-\startTrillSpan \acciaccatura { g16[\stopTrillSpan a] } d8 r r4
  r2 g8.(\f d16 g8) r | r2 g8.(\f d16 g8) r |
  r2 g8.(\f d16 g8) r | r2 g8.(\f d16 g8) r |
  d8\f r c r bf2 | d8 r c r bf2 | d8\> r c r bf2 | d8 r c r bf2\!
  R1*8
  \barNumberCheck#FivemF
  r2 d4-.\pp c-. bf-. r g-. f-. d-. r r2 R1*15
  \cueWhile "horn1mF" "horn" #UP R1*5
  g8\p r d r g r d r R1 g8\p r d r g r d r R1*8
  \cueWhile "clarinet1mF" "clarinet" #UP R1*4
  cs'1\pp ~ cs2 r R1*4 d1\pp ~ d4. r8 r2 R1*3
  bf8[\p r16 d] d4-. bf8[ r16 f] d4-.
  <<
    { s1 s\< }
    \repeat unfold 8 { bf'8. d16 d4-> }
  >>
  df1\ff ~ df
  <<
    { s1\p s\< }
    \repeat unfold 8 { gf,8. bf16 bf4-> }
  >>
  df1\ff ~ df R1*4
  c4-> \fz c8-. c-. c[ r16 c] c8-. c-. |
  c-. \< c-. c-. c-. c-. c-. c-. c-. | \partPageBreak
  fs1\ff R1 fs-> \ff R1
  r2 a,4\f r | r2 a4\f r |
  df8 df r4 df8\< df r4 | df8 df r4 df8 df r4 |
  df1\ff ~ df df4. df16 df df4. df16 df | df1 |
  df4. df16 df df4. df16 df | df1
  df\ffz df\ffz df\ffz cs\fz g'\fff ~ g g4-. g-. r f-. |
  r g-. r8 g-. g4-. | r g-. r f-. |
  r8 g-.\noBeam g-. r r4 g8-. r
  \barNumberCheck#NinemF
  d,1\p~d\> bf\pp~bf1*7/8\> s8\! R1*9
  \key g \major
  R1*20
  \cueWhile #"clarinet1mF" "clarinet I" #UP R1*4
  b'4.( \p g'8 d4. b8) |
  g'4.( \< b8 a4. g8) |
  fs1\fz \> g1\p |
  b,4.( \p g'8 d4. b8) |
  g'4.( \< b8 a4. g8) |
  fs1\fz\> g1\p\> R1*8\!
  b,4.(\pp g'8 d4. b8) R1*2
  b4.(\pp a8 g4. d8 b4) r r2 R1*3
  \barNumberCheck#ElevenmF
  e'1\ff ~ e cs~ cs g'-> \fff ~
  \key g \minor
  g \repeat unfold 12 { g8-\prall r d-\prall r }
  \repeat unfold 8 g4-.
  g1\fff ~ g e ~ e2. f4 | fs4 r d r ef! r c r |
  d-. e-. ef-. d-. | d-. e-. ef-. d-. |
  g-. f-. d-. d-. | c-. c-. bf-. a-. | bf1-> \ff |
  df-> \fz | bf-> \fz | b-> \fz | c-> | c-> |
  g'-> \fff ~ g bf,\>~bf bf,\p~bf\>~bf4 r r2 R1
  g'4.(\p bf8 bf2 g4. d8 bf2) |
  g'4.( bf8 bf2 g4. d8 bf2) |
  g'4.(\> d8 bf2 g'4.\pp d8 bf2
  g'4.\> d8 bf2 g'4.\ppp d8 bf2) R1*2
  c1->\pp ~ c( d) ~ d4 r r2 |
  g'2\f a4-. bf-. a4. g8 g2 f1-> ef2-> f->
  d1\fff ~ d d-> | ef-> | d-> | ef-> |
  \repeat unfold 6 { b4-. b-. }
  \repeat unfold 8 { d \times 2/3 d4.:8 }
  d4 r r2 d4-. r d-. r | d-. r r2 |
  d4-. r r2
  << g1\fermata {s2\> s\ppp} >>
}

bassoonImF = \relative c {
  \clef bass
  \key e \minor
  R1*7
  r4 ef4-.\f df-. df-. | c8\< b! c b c b c' b |
  e,4\ff r r2 | a4 r r2 | e4 r4 b' r4 | e, r r2 |
  e4 r r2 | a4 r r2 | g4 r4 fs r4 | e2\ff~e8 r r4 |
  e4 r r2 |a4 r r2 | e4 r4 g r4 | e r r2 |
  e4 r r2 |a4 r r2 | g4 r4 fs r | e2~e8 r r4 R1*7
 \grace s8 % match acciaccatura in Violin I
  r2 r4 b'4\ff |
  \barNumberCheck#OnemF
  e2-> fs4-. g-. | fs4.-> e8 e2 | e d4 b8 d | e2. e4 |
  e2 fs4-. g-. | e2-> b2-> |
  c2 c4-. b-. | c2 c4-. b-. |
  c4 c8-. b-.  c4 c8-. b-.
  c4 c8-. b-. c-. b-. c-. b-. |
  \barNumberCheck#TwomF
  b,1->\f g4( a b cs) a2( d8) r r4 | \partcombineChords
  b1-> g4( a b c!) | b8-. e-. ds-. b'-. e,-. r r4 |
  fs'4( g fs e) d!( c b a8) ds |
  fs4( g fs e) d!( c b a) | b8 r b,2.-> |
  g4( a b cs) a2( d8) r r4 \partcombineAutomatic
  b1-> g'->\fz fs->\fz e8\fz r e'4\fz r cs\fz |
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  r4 e,\fz \times2/3{ cs'8\fz cs cs } r4 |
  <<
    { s4 s\mf s s\> | s s\p\> }
    \repeat unfold 4 { r4 \times2/3{ g8 g g } }
  >> R1\!
  r8 bf,(-.\p cs-. e-. g-. bf)-. \times2/3{ cs(-.\< e-. g)-. } |
  g8\fz r r4 r2 R1
  R1*17
  \trCueWhile "violin1mF" "violin 15ma" #UP c, R1*3
  d2(\mf\< ds) e2(\f d4 c) d1 c1\<
  \barNumberCheck#FourmF
  b1\ff c b2. g4 d'2 d2 | b1\fz c b2. g4 d'2 d4. r8 R1*4
  g,2\f g g( g8) r r4 |
  \repeat unfold 4 {r2 e'8.(\f b16 e8) r8 }
  b8-| cs-| d-| b-| e-| b-| g-| e-| | b'-| cs-| d-| b-| e-| b-| g-| e-|
  fs'4(\> e) d2 fs4( e) d2\!
  b8-.\mp b-. a-. a-. g-. g-. g-. a-. |
  b8-.\> b-. a-. a-. g8.-.-> g16-. g8-. a-.|
  b8-.\p b-. a-.\> a-. g-. g-. g-. a-. |
  b8-.\! b-. a-. a-. g8.-.-> g16-. g8-. a-.|
  g8-.\pp a-. g8.-.g16-. g8-. a-. g-. a-.|
  g8.-.-> g16-. g8-. a-. g-. a-. g8. g16|
  g8( a b4~b8 c d b | g4)\pp r g r |
  \barNumberCheck#FivemF
  g r r2 g4 r r2 |
  r2 b4-. a-. g-. r e-. d-. b-. r r2 R1*13 \partPageBreak
  \trCueWhile "horn1mF" "horn 8va" #UP c R1*4
  \cueWhile "cellomF" "low strings" #DOWN R1
  e'8\p r b r e r b r R1
  e8\p r b r e r b r R1
  e4(\p d e d) R1
  e4(\< d e d) df8\f r r4 r2 R1*15
  \trCueWhile "flute1mF" "flute 15ma" #UP c, R1*3
  \trCueWhile "clarinet1mF" "clarinet 8va" #UP c R1
  <<
    {s1\p s\< }
    \repeat unfold 8 {b8. d16 d4-> }
  >>
  bf1\ff~bf
  <<
    {s1\p s\< }
    \repeat unfold 8 {g8. bf16 bf4-> }
  >>
  bf1\ff~bf
  fs8.\p fs16 fs8 fs g g a a |
  g8. g16 g8 fs fs fs fs fs|
  g8.\fp g16 g8 g a\< a b b|
  a8. a16 a8 g g g g g\! |
  a8\fz a a a b b c c |
  b8[r16 b] b8 a a a a a|
  \barNumberCheck#EightmF
  c,4.\ff\< ef8-. fs-. a4.->\fz c2\fz r |
  c,4.\ff\< ef8-. fs-. a4.->\fz c2\fz r |
  r2 cs4 r | r2 d4 r |
  g,8 g r4 g8\< g r4 | g8 g r4 g8 g r4 |
  bf1\ff~bf
  \repeat unfold 2 { d4. d16 d d4. d16 d | d1 }
  d1\ffz d\fz d\fz cs2\fz fs,-> b,1->\fff~b
  b4-. b-. r b-. | r b-. r8 b8-. b4-. |
  r4 b-. r b-. | r8 b-.\noBeam b-. r r4 b8-. r
  \barNumberCheck#NinemF
  R1*7
  \trCueWhile "violin1mF" "violin 8va" #UP c R1*6
  \key e\major \partcombineSoloIOnce
  r2 a'2\p~a2( gs4 fs fs4. e8 gs2~gs4) r r2 R1*11
  \trCueWhile "violin1mF" "violin 15ma" #UP c, R1*5
  \scoreDynamicsOff b2(\f bs) cs2(\>c) b1~b\p(
  \barNumberCheck#TenmF
  <<
    { e,1) ~ \repeat unfold 6 {e~} e }
    \tag#'part \repeat percent 8 s1
  >>
  e4 b'4(-.\mf gs8-.-\markup\italic"marcato" gs-. b4)->|
  a8.(-- gs16-. fs8-- fs-- gs-- gs-- a4--)|
  gs8.-> b16-. b8-. b-. gs-. gs-. b4-> |
  a8.-- gs16-. fs8-- fs-- gs-- gs-- a4-- |
  as8 r r4 e8\p\< as16-. as-. cs8-. e-. |
  a!8\> fs16-. fs-. ds8-. c-. a-. fs-.\p r4 |
  r2 e8-.\p as16-. as-. cs8-. e-. |
  a!8 fs16-. fs-. ds8-. c-. a-.\noBeam r r4
  R1*5
  R1*3 \partPageBreak
  as,4.->\ff cs8-. e-. g4.-> as4.-> g8-. e-. cs4.-> |
  \unset tupletSpannerDuration
  e'4-| cs-| bf-| g-| e'-| cs-| \times2/3{bf-> g-> e->}
  b1->\fff~
  \key e\minor
  b1
  <<
    \repeat unfold 12 { r8 g' r d }
    \tag#'part \repeat percent 6 s1
  >>
  b4-.  d-. e-. g-. b-. d-. e-. g-.
  c,1\fff( c1) |
  df~df | ef4 r b r c r b r
  gs-. a-. as-. b-. | gs-. a-. as-. b-. | c-. d-. e-. g-. | d-. a-. b-. b,-. |
  e1->\ff | d->\fz | e->\fz | cs->\fz | a'-> | f-> |
  e1->\fff~e e1\>~e e\p~e\>~e~e~e4\! r r2
  R1*7
  \tag#'part \clef tenor
  \cueWhile "horn1mF" "horn" #UP R1*4
  \trCueWhile "violin1mF" "violin 8va" #UP c R1*2
  e'2\f fs4-. g-. | fs4. e8 e2 |
  \tag#'part \clef bass
  a,1-> | a2-> a-> | e1\fff~e
  e,1-> ~ e e-> ~ e
  \repeat unfold 6 { e'4-. gs-. }
  e,-. gs-. b-. cs-. e-. gs-. b-. cs-. |
  e-. cs-. b-. gs-. e-. cs-. b-. gs'-. |
  e-. r r2 | e4-. r e-. r | e-. r r2 | e4-. r r2 |
  << e,1\fermata {s2\> s\ppp} >>
}

bassoonIImF = \relative c {
  \clef bass
  \key e \minor
  R1*7
  r4 ef,4-.\f df-. df-. | c8\< b! c b c b c' b |
  e,4\ff r r2 | a4 r r2 | e4 r4 b' r4 | e, r r2 |
  e4 r r2 | a4 r r2 | g4 r4 fs r4 | e2\ff~e8 r r4 |
  e4 r r2 |a4 r r2 | e4 r4 g r4 | e r r2 |
  e4 r r2 |a4 r r2 | g4 r4 fs r | e2~e8 r r4 R1*7
  r2 r4 b''4\ff |
  \barNumberCheck#OnemF
  e2-> fs4-. g-. | fs4.-> e8 e2 | e d4 b8 d | e2. e4 |
  e2 fs4-. g-. | \partcombineChords c,2-> g2-> |
  a2 a4-. b-. | a2 a4-. b-. |
  a4 a8-. b-. a4 a8-. b-.
  a4 a8-. b-. a-. b-. a-. b-. |
  \barNumberCheck#TwomF \partcombineAutomatic
  g,1->\f e4(fs g a) fs2( d8) r r4 |
  g1-> e4(fs g a) | g8-. b-. b-. b,-. e-. r r4 |
  ds''4( e d c) b( a g fs8) b |
  ds4( e d c) b( a g fs) | g8 r g,2.-> |
  e4(fs g a) fs2( d8) r r4
  g1-> e'->\fz d->\fz cs8\fz r bf'4\fz r g\fz |
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  r4 cs,\fz \times2/3{ g'8\fz g g } r4 |
  <<
    { s4 s\mf s s\> | s s\p\> }
    \repeat unfold 4 { r4 \times2/3{ g8 g g } }
  >> R1\!
  r8 g,(-.\p bf-. cs-. e-. g-.)-. \times2/3{ bf(-.\< cs-. e)-. } |
  e8\fz r r4 r2 R1
  R1*17
  \trCueWhile "violin1mF" "violin 15ma" #UP c, R1*3
  b2(\mf\< b)  c2(\f gs4 a) d1 d,1\<
  \barNumberCheck#FourmF
  g1\ff g g2. g4 c2 b2 | g1\fz g g2. g4 c2 b4. r8 R1*4
  g,2\f g g( g8) r r4 |
  \repeat unfold 4 {r2 e''8.(\f b16 e8) r8 }
  b,8-| cs-| d-| b-| e-| b-| g-| e-| | b'-| cs-| d-| b-| e-| b-| g-| e-|
  d''4(\> c) b2 d4( c) b2\! R1*8
  R1*22 \partPageBreak
  \cueWhile "cellomF" "cello" #DOWN R1
  \trCueWhile "violin1mF" "violin 15ma" #UP c, R1
  \cueWhile "cellomF" "cello" #DOWN R1
  \trCueWhile "violin1mF" "violin 15ma" #UP c, R1
  \cueWhile "cellomF" "cello" #DOWN R1
  c4(\p bf c bf) R1
  c4(\< bf c bf) bf8\f r r4 r2 R1*15
  \trCueWhile "flute1mF" "flute 15ma" #UP c, R1*3
  \trCueWhile "clarinet1mF" "clarinet 8va" #UP c R1
  <<
    {s1\p s\< }
    \repeat unfold 8 {g8. b16 b4-> }
  >>
  g1\ff~g
  <<
    {s1\p s\< }
    \repeat unfold 8 {ef8. g16 g4-> }
  >>
  gf1\ff~gf
  fs8.\p fs16 fs8 fs g g a a |
  g8. g16 g8 fs fs fs fs fs|
  g8.\fp g16 g8 g a\< a b b|
  a8. a16 a8 g g g g g\! |
  R1*2
  \barNumberCheck#EightmF
  c,,4.\ff\< ef8-. fs-. a4.->\fz c2\fz r |
  c,4.\ff\< ef8-. fs-. a4.->\fz c2\fz r |
  r2 cs4 r | r2 d4 r |
  e8 e r4 e8\< e r4 | e8 e r4 e8 e r4 |
  g1\ff~g
  \repeat unfold 2 { bf4. bf16 bf bf4. bf16 bf | bf1 }
  bf1\ffz bf\fz bf\fz fs!2\fz fs,-> b,1->\fff~b
  b4-. b-. r b-. | r b-. r8 b8-. b4-. |
  r4 b-. r b-. | r8 b-.\noBeam b-. r r4 b8-. r R1*13
  \key e\major
  R1*16
  \trCueWhile "oboe1mF" "oboe 15ma" #UP c, R1*4
  gs''1\f a\> b2(b,2*7/8) s16\p b,1(
  \barNumberCheck#TenmF
  <<
    { e1) ~ \repeat unfold 6 {e~} e }
    \tag#'part \repeat percent 8 s1
  >>
  e4 r r2 R1*3 \partcombineApart
  e8-.\ff as-. cs16-. cs-. e8-. e r r4 |
  r2 r8 fs-. ds16-. ds-. c8-. |
  e,8-. as-. cs16-. cs-. e8-. e r r4 |
  r2 r8 fs-. ds16-. ds-. c8-. | e4 \partcombineAutomatic r r2
  R1*7 \partPageBreak
  as,,4.->\ff cs8-. e-. g4.-> as4.-> g8-. e-. cs4.-> |
  \unset tupletSpannerDuration
  e'4-| cs-| bf-| g-| e'-| cs-| \times2/3{bf-> g-> e->}
  b1->\fff~
  \key e\minor
  b1
  <<
    \repeat unfold 12 { r8 e' r b }
    \tag#'part \repeat percent 6 s1
  >>
  b,4-.  d-. e-. g-. b-. d-. e-. g-.
  e1\fff( e1) |
  f~f | fs4 r g r a r b, r
  gs-. a-. as-. b-. | gs-. a-. as-. b-. | c-. d-. e-. g-. | d-. a-. b-. b,-. |
  e1->\ff | d->\fz | e->\fz | cs->\fz | a'-> | f-> |
  e1->\fff~e e1\>~e e\p~e\>~e~e~e4\! r r2 R1*7
  \tag#'part \clef tenor
  \cueWhile "horn1mF" "horn" #UP R1*4
  \trCueWhile "violin1mF" "violin 8va" #UP c R1*2
  e''2\f fs4-. g-. | fs4. e8 e2 |
  \tag#'part \clef bass
  a,,1-> | a2-> a-> | e1\fff~e
  e1-> ~ e e-> ~ e
  \repeat unfold 6 { e4-. gs-. } \partcombineApart
  e-. gs-. \partcombineAutomatic b,-. cs-. e-. gs-. b-. cs-. |
  e-. cs-. b-. gs-. e-. cs-. b-. gs'-. |
  e-. r r2 | e4-. r e-. r | e-. r r2 | e4-. r r2 |
  << e1\fermata {s2\> s\ppp} >>
}
