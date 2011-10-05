\version "2.14.0"

motifWfifteenI = \relative c''' {
  r16 g16\p af8~af16 e8 f16-. f-. cs8 d16-. d bf8 cf16-.  |
  cf16 r8. r4 r2 |
  r16 bf'16\p cf8~cf16 g8 af16-. af-. e8 f16-. f cs8 d16-.  |
  d16 r8. r4 r2 |
}
motifWfifteenII = \relative c'' {
  r16 bf16\p cf8~cf16 g8 af16-. af-. e8 f16-. f cs8 d16-.  |
  d16-. r8. r4 r2 |
  r16 cs'16\p d8~d16 bf8 cf16-. cf-. g8 af16-. af e8 f16-.  |
  f16-. r8. r4 r2 |
}
motifWninetyone=\transpose c c' {
  g8(\p bf) bf16( a g8) a16(\fz c') c'( a) c'4-> |
  bf8( g) g16( a bf8) a16(\fz bf a f g4->)
  g8( bf) bf16( a g8) a16(\fz c') c'( a) c'4-> |
  bf8( g) g16( a bf8) a16(\fz\> bf a f g4)\! ~
}
motifWthreesixteen = { % to be used inside \transpose
gs8-.\p b-. b16( as gs8) as16( cs') cs'( as) cs'4 |
b8-. gs-. gs16( as b8) as16( b as fs gs4) |
gs8-. b-. b16( as gs8) as16( cs') cs'( as) cs'4 |
b8-. gs-. gs16( as b8) as16( b as fs gs b ds' b |
}

fluteImA = \relative c''' {
  \key e \minor
  R1*3
  \partcombineSoloIOnce
  \cueWhile "horn3mA" "horn" #DOWN R1*2
  b4(\p~b16 a8 b16-. fs2) |
  g4(\<~g16 fs8 g16-. d2)\fz\> |
  e4(~e16\p\> d8 e16 fs8) r g\! r |
  fs4 r r2 | r8..  ef'32\ff ef2 r4 |
  r8.. ef32 ef2 r4 |
  r8.. ef32 ef8. r16 r8.. ef32 ef8. r16 |
  R1*2
  \motifWfifteenI
  d16\f r8. r4 d16 r8. r4|
  ds16 r8. r4 ds16 r8. r4|
  e16 r8. r4 r4 r16 e-. e-. e-. |
  g16 r8. fs16 r8. r2 |
  R1
  \barNumberCheck#allegroMolto
  R2*8
  \cueWhile "oboe1mA" "oboe" #UP {
    R2*3 r4 r8
  } b,8\mp |
  \repeat unfold 3 { b8.-> d16-. d8-. a-. }
  b8 r8 r4 R2*11 \partcombineSoloIOnce
  \cueWhile "violin1mA" "violin" #UP R2*2
  fs'2\ffz fs\fz g\fz g\fz
  fs8 r b,4\< ~ b4. ds8 |
  e2\ff ~ e2 e2(-> e2)
  e4 r8 ds e4 r8 ds e8 r r4 |
  R2*11
  \barNumberCheck#rehearsalTwo
  R2*10
  g,,2\pp ~ g ~ g ~ g
  \barNumberCheck#rehearsalThree
  \motifWninetyone \scoreDynamicsOff
  g2\pp( a) |
  g2( a4 g) |
  g2( a) |
  g2( a4 g) |
  g2 ~ g\< ~ g ~ g
  gs\f\> ~gs\p
  gs\f\> ~gs\p
  b'\p ~ b
  c\< ~ c
  e( e)
  gs\f ~ gs\> ~ gs4 e4 ~ e4 gs, |
  b8\p r b8.\prall\< b16 |
  b8 r b8.\prall b16 |
  b8\f r b8.\prall\> b16 |
  b8 r b8.\prall b16 |
  b4\(\pp\< d g e\)
  d4\(\> b d a |
  b8\)\p r b8.\prall\pp b16 |
  b8\< r b8.\prall b16 |
  b8 r b8.\prall b16 |
  b8 r b8.\prall b16 |
  b4\(\p\< d g e\)
  d4\(\> b d a\) |
  d4\(\p\> b d a\)\! |
  d2\pp ~d ~d8 r8 r4
  R2*3
  \barNumberCheck#rehearsalFive
  g,,4.\p g8-. e-. d4. |
  g8.( b16 d8) d-. d2 |
  d8.( e16 d8. c16) b8(\< d4.) |
  \times 2/3 {c8(\! d c} \times2/3{a fs e} d2)
  R2*10
  \cueWhile "violin1mA" "violin" #UP R2*4
  d''2\ff ~d |
  g4. g8 e d4 d,8 |
  g8. b16 \repeat unfold 6 d8-. |
  d8 r ds r b r r4 | R2*2
  \barNumberCheck#rehearsalSix
  d8 r b8 r | R2*15 \partPageBreak
  \trCueWhile "flute2mA" "piccolo 8va" #UP c R2*2
  R2*14
  \barNumberCheck#rehearsalSeven
  \cueWhile "trumpet1mA" "trumpet" #DOWN R2*4
  ds2\ff-> ~ds ~ds ~ds ~ds8 r r4
  R2*3
  fs2\ff ~fs ~fs ~fs  fs8 r r4 fs8 r r4 f8 r r4 |
  f8 r r4 R2*4
  ef2\ff ~ef ~ef ~ef  \repeat unfold 4 {r4 b8\f b16 b16} |
  \barNumberCheck#rehearsalEight
  e2\ff ~e ~e ~e  \repeat unfold 4 {r4 c8\f c16 c16} |
  af8.-> c16 c8-. g-. af8.-> c16 c8-. g-.
  af8.-> df16 df8-. af-.  a8.-> d16 d8-. a-.
  bf8 r bf r | bf r bf r | bf r bf r | b r c r | cs r r4 |
  R2*7
  \cueWhile "flute2mA" "flute II begins" #UP R2*2
  R2*6
  \barNumberCheck#rehearsalNine
  R2*8
  \cueWhile "oboe1mA" "oboe" #UP {
    R2*3 r4 r8
  } b\p
  b8.-> d16 d8-. a-.
  b8.->\< d16 d8-. a-.
  b8.-> d16 d8-. a-.
  b8\f r8 r4
  R2*15
  \barNumberCheck#rehearsalTen
  \key gs \minor
  R2*8
  \cueWhile "flute2mA" "flute II begins" #DOWN R2*2
  R2*6
  \transpose gs gs'' \motifWthreesixteen
  gs2)\p ~gs2\< ~gs2 ~gs2 a8\fz r8 r4 R2*3
  \cueWhile "violin1mA" "violin I" #UP R2*2
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  \cueWhile "violin1mA" "violin I" #UP {
    R2*3
    r4
  } f'16(\f ef df8) |
  c16(\ff bf a8) c16( bf a8) s1*0\>
  \repeat unfold 6 { c16( bf a8) }
  c8\p r c8.\prall^\markup\halign #-2 \tiny\flat c16 |
  c8 r c8.\prall^\markup\halign #-2 \tiny\flat\< c16 |
  c16(bf af bf) c8.\fz c16 |
  c4\> \times2/3{af8( bf c)} |
  \key af\major
  c4( \p ef af f)
  c4(\> ef~ef bf)
  c8\p r c8.\prall c16 |
  c8\< r c8.\prall c16 |
  c16( bf af bf c8.)\fz c16 |
  c4\> \times2/3{ af8( bf c)\! }
  ef4(\p c af' f)
  c4( ef~ef bf)
  c4(\pp ef~ef bf)
  R2*6
  \barNumberCheck#rehearsalTwelve
  \cueWhile "flute2mA" "flute II" #UP R2*8
  R2*10
  \cueWhile "violin1mA" "violin I" #UP R2*4
  ef2\f ~ef ~ef\< ~ef | \partPageBreak
  \barNumberCheck#rehearsalThirteen
  \key e \minor
  %\cueWhile "trumpet1mA" "trumpets" #DOWN {
    e?2\fff ~e ~e ~e( e) ~e ~e ~e
  %}
  \repeat unfold 4 { ef4 r8 ef16 ef }
  ds2\sfz ~ds ~ds ~ds
  e2 R2 e2 R2 e2 R2 e2 R2
  c4 r c r c r c r
  e8 r e r ds r e r c r g' r ds r e r |
  c4 r b8 r a r g4 r c8 r a r |
  g'8. b16 b8 fs | g8. b16 b8 fs |
  g8 fs g fs g fs g fs |
  g2-> ~g ~g ~g
  g2\fz\startTrillSpan ~g2*7/8 s16\stopTrillSpan
  g2*7/8\startTrillSpan s16\stopTrillSpan
  g2*7/8\startTrillSpan s16\stopTrillSpan
  g8 r e r
  r4 e8[ r16 e] |
  \repeat unfold 3 {e8 r r4 }
}

fluteIImA = \relative c''' {
  \key e \minor
  \once\override Staff.MultiMeasureRest #'minimum-length = #20
  R1*5
  \cueWhile "flute1mA" "flute I" #UP  R1*4
  r8.. c32\ff c2 r4 |
  r8.. c32 c2 r4 |
  r8.. c32 c8. r16 r8.. c32 c8. r16 |
  R1*2
  \motifWfifteenII
  d16\f r8. r4 d16 r8. r4|
  ds16 r8. r4 ds16 r8. r4|
  e16 r8. r4 r4 r16 bf-. bf-. cs-. |
  e16 r8. ds16 r8. r2 |
  R1
  \barNumberCheck#allegroMolto
  R2*8
  \cueWhile "oboe1mA" "oboe" #UP {
    R2*3 r4 r8
  } g,8\mp |
  \repeat unfold 3 { g8.-> b16-. b8-. fs-. }
  b8 r r4 R2*13
  e2\ffz e\fz e\fz e\fz
  ds8 r a4\< ~ a4. ds8 |
  e2\ff ~ e2 c2(-> b2)
  e4 r8 ds e4 r8 ds e8 r r4 |
  R2*11
  \barNumberCheck #rehearsalTwo
  R2*14
  \barNumberCheck#rehearsalThree
  R2*4
  \cueWhile "flute1mA" "flute I" #UP R2*4
  g,,2\pp( f) |
  g2( f4 g) |
  g2( f) |
  g2( f4 g) |
  g2 ~ g\< ~ g ~ g
  gs\f\> ~gs\p
  gs\f\> ~gs\p
  gs'\p ~ gs
  a\< ~ a
  g?( c)
  e\f ~ e\> ~ e4 gs,4 ~ gs4 e |
  g8\p r g8.\prall\< g16 |
  g8 r g8.\prall g16 |
  g8\f r g8.\prall\> g16 |
  g8 r g8.\prall g16 |
  g4\(\pp\< b e c\)
  b4\(\> g b fs|
  g8\)\p r g8.\prall\pp g16 |
  g8\< r g8.\prall g16 |
  g8 r g8.\prall g16 |
  g8 r g8.\prall g16 |
  g4\(\p\< b e c\)
  b4\(\> g b fs\) |
  b4\(\p\> g b fs\) \! |
  R2*6
  \barNumberCheck#rehearsalFive
  \tag#'part R2*0_\markup\tiny"flute I begins"
  R2*18
  \cueWhile "violin1mA" "violin" #UP R2*4
  b2\ff~b2 b2 b2
  g8. b16 \repeat unfold 6 d8-. |
  b8 r b r b r r4 R2*2
  \barNumberCheck#rehearsalSix
  d8 r b r
  \tag #'score  \set Staff.shortInstrumentName="Pico"
  \tag #'score  \set Staff.soloIIText="Piccolo"
  R2*11 \partcombineSoloIIOnce \partPageBreak
  \cueWhile "horn1mA" "horn" #DOWN R2*4
  \transposition c''
  \tag #'part \mark "Piccolo"
  e,4.\p e8 cs b4. | e8.( gs16 b8) b-. b4. r8 |
  \tag #'score  \set Staff.shortInstrumentName="Fl"
  \tag #'score  \set Staff.soloIIText="Solo II"
  R2*5
  \transposition c'
  \tag #'part \mark "Flute"
  \tag #'score s1*0^\markup\bold"Flute"
  a,16(\mf cs e) e-. e8 r | R2
  a,16(\mf cs e) e-. e8 r | R2
  a,16(\f c! e) e-. e8 r | R2
  a,16(\f c e) e-. e8 r |
  \barNumberCheck#rehearsalSeven
  R2*4
  a2\ff-> ~a ~a ~a ~a8 r r4 | R2*3
  c2\ff ~c ~c ~c c8 r r4 |
  c8 r r4 | c8 r r4 | cf8 r r4 | R2*4
  bf2\ff ~bf( cf)( bf) |
  r4 b8\f b16 b | \repeat unfold 3 {r4 b8 b16 b }
  b2\ff ~b( c)( d) |
  r4 c8\f c16 c | \repeat unfold 3 {r4 c8 c16 c }
  f,8.-> af16 af8-. e-. f8.-> af16 af8-. e-.
  f8.-> df16 df8-. f-.  fs8.-> d16 d8-. fs-.
  bf8 r bf r | bf r bf r | bf r bf r | b r c r | a r r4 |
  R2*7
  bf,4.\p d8-. f-. af4. | bf4.\> af8-. f-. d4.\! |
  b4.\p\<\( ds8-. fs-. a4. | b4.\f a8-. fs-. ds4.\! |
  \barNumberCheck#rehearsalNine
  g32\fz fs e16\) r8 r4 |
  R2*7
  \cueWhile "oboe1mA" "oboe" #UP {
    R2*3 r4 r8
  } g\p
  g8.-> b16 b8-. fs-.
  g8.->\< b16 b8-. fs-.
  g8.-> b16 b8-. fs-.
  b8\ff r8 r4
  R2*15
  \barNumberCheck#rehearsalTen
  \key gs \minor
  R2*4 \partcombineSoloIIOnce
  \cueWhile "violin1mA" "violin I" #UP R2*4
  \transpose gs gs' \motifWthreesixteen
  gs,8)\p r8 r4
  R2*11
  \cueWhile "violin1mA" "violin I" #UP R2*6
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  \cueWhile "violin1mA" "violin I" #UP {
    R2*3
    r4
  } df''!16(\f c bf8) |
  a16(\ff g f8) a16( g f8) s1*0\>
  \repeat unfold 6 { a16( g f8) }
  af8\p r af8.\prall^\markup\halign #-2 \tiny\flat af16 |
  af8 r af8.\prall^\markup\halign #-2 \tiny\flat\< af16 |
  af16(g f g) af8.\fz af16 |
  af4\> \times2/3{f8( g af)} |
  \key af\major
  af4(\p c f df)
  af4(\> c~c g)
  af8\p r af8.\prall af16 |
  af8\< r af8.\prall af16 |
  af16( g f g af8.)\fz af16 |
  af2*7/8\> s2*1/8\!
  c4(\p af f' df)
  af4( c~c g)
  af4(\pp c~c g)
  ef2\pp\> ~ef R2*4\!
  \barNumberCheck#rehearsalTwelve
  af,4.\p af8-. f-. ef4. af8.( c16 ef8) ef-. ef2
  ef8.( f16 ef8-.\< df-.) c(ef4.) |
  \times2/3{df8(\! ef df} \times2/3{bf\> g f} ef2)
  R2*10\! \partPageBreak
  \cueWhile "violin1mA" "violin I" #UP R2*4
  c''2\f ~c ~c\< ~c |
  \barNumberCheck#rehearsalThirteen
  \key e \minor
  %\cueWhile "trumpet1mA" "trumpets" #DOWN {
    cs2\fff ~cs ~cs ~cs( c) ~c ~c ~c
  % }
  \repeat unfold 4 { c4 r8 c16 c }
  a2\sfz ~a ~a ~a
  g2 R2 c2 R2 d2 R2 c2 R2
  c4 r c r c r c r
  b8 r c r a r g r c r g' r ds r b r |
  c4 r b8 r a r g4 r c8 r a r |
  e'8. g16 g8 ds | e8. g16 g8 ds |
  e8 ds e ds e ds e ds |
  e2-> ~e ~e ~e
  e2\fz\startTrillSpan ~e2*7/8 s16\stopTrillSpan
  e2*7/8\startTrillSpan s16\stopTrillSpan
  e2*7/8\startTrillSpan s16\stopTrillSpan
  e8 r e r
  r4 e8[ r16 e] |
  \repeat unfold 3 {e8 r r4 }
}

oboeImA = \relative c'' {
  \key e \minor
  R1*3
  \cueWhile "horn3mA"  "horn" #DOWN R1*2
  g'4(\p fs e d) |
  c\(\< d bf(\fz a)\)
  b2(\> d8)\p\> r d r |
  d4\! r r2 |
  r8.. a'32\ff a2 r4 |
  r8.. a32 a2 r4 |
  r8.. a32 a8. r16 r8.. a32 a8. r16 |
  R1*2
  \motifWfifteenI
  gs16\f r8. r4 gs16 r8. r4|
  a16 r8. r4 a16 r8. r4|
  bf16 r8. r4 r4 r16 bf-. bf-. g-. |
  g16 r8. fs16 r8. r2 |
  R1
  \barNumberCheck #allegroMolto
  R2*3 \noBreak
  \cueWhile "clarinet1mA" "clarinet" #DOWN R2*5
  e,4.\mf\< g8 b e4.-> g4\fz e8-. c-. d-. g,4->
  b8\mp |
  \repeat unfold 3 { b8.-> d16-. d8-. a-. }
  b2->\ff ~ b8 r r4 c2-> ~ c8 r r4
  ds2-> ~ ds8 r r4 e2-> ~ e8 r r4
  c8(\f a g fs) c'( a g fs) e'( c\< b a) e'( c b a) e'\! r r4
  R2
  fs2\ffz fs\fz g\fz g\fz fs8 r b4\<~b2
  \barNumberCheck#rehearsalOne
  b2\ff~b c->~b->
  g4 r8 fs g4 r8 fs g8 r r4 |
  R2*25
  \barNumberCheck#rehearsalThree
  \motifWninetyone \scoreDynamicsOff
  g,2(\pp a2) g2( a4 g)
  g2( a) g2( a4 g)
  g2~g\<~g~g
  gs\f\>~gs\p
  gs\f\>~gs\p
  R2*6
  \barNumberCheck#rehearsalFour
  b'2\f~b2\>~b4 gs4~gs2~g4\p r |
  R2*23
  \barNumberCheck#rehearsalFive
  R2*18
  \cueWhile "violin1mA" "violin" #UP R2*4
  b2\ff~b g4. g8 | e d4 d8 | g8. b16 b8-. a-. b-. a-. b-. a-. |
  b8 r a r b r r4 R2*2 |
  \barNumberCheck#rehearsalSix
  b8 r g r R2*15 \partPageBreak
  \trCueWhile "flute2mA" "piccolo 8va" #UP c R2*4
  gs8.->\p b16-. b8-. fs-. | gs8.-> b16-. b8-. fs-. |
  e8.-> gs16-. gs8-. ds-. | e8.-> gs16-. gs8-. ds-. |
  cs8 r r4 |
  a16(\mf cs e) e-. e8 r | R2
  a,16(\mf cs e) e-. e8 r | R2
  a,16(\f c e) e-. e8 r | R2
  a,16(\f c e) e-. e8 r |
  \barNumberCheck#rehearsalSeven
  R2*8
  fs,4.\ff fs8 d-> cs4.-> | fs4. a8 \times2/3{fs8( a) cs-.} cs4\fz( |
  a'2)\ff ~a ~a ~a a8 r r4 | a8 r r4 | af8 r r4 | af8 r r4 |
  f8\fz r r4 R2*3
  bf2\ff ~bf( cf)( bf) |
  \repeat unfold 3 { b,8.->\f b16 gs fs r8 } b8.->\f b16 g fs r8
  \barNumberCheck#rehearsalEight
  b'2\ff ~b( g)( b) |
  \repeat unfold 3 { c,8.->\f c16 a g r8 } c8.->\f c16 af g r8
  af'4 r8 g af4 r8 g | af4 r8 af a4 r8 a |
  bf8 r gf r gf r gf r | gf r gf r g r af r |
  fs,4.->\fz\> a8 cs-. fs4.-> | a4.\p\> fs8 cs a4. |
  g4.\(\pp a8 cs e4. | a4. g8 e cs4.\) |
  R2*8
  \barNumberCheck#rehearsalNine
  R2*4
  \cueWhile "clarinet1mA" "clarinet" #UP R2*4
  e,4.\mf\< g8 b e4.-> | g4->\fz\> e8-. c-. d-. g,4 b8\p |
  b8.-> d16 d8-. a-.
  b8.->\< d16 d8-. a-.
  b8.-> d16 d8-. a-.
  b2\ff ~b8 r r4 |
  c2\ffz ~c8 r r4 |
  cs2\ffz ~cs8 r r4 |
  e2\ffz ~e8 r r4 |
  gs4\fz r R2 gs4 r R2*5
  \barNumberCheck#rehearsalTen
  \key gs \minor
  R2*20
  \cueWhile "flute1mA" "flute" #UP R2*4
  gs2\p ~gs\< ~gs ~gs a8\fz r r4 R2*3
  \cueWhile "violin1mA" "violin I" #UP R2*2
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  \cueWhile "violin1mA" "violin I" #UP {
    R2
    r4
  } bf16(\mf af gf8) |
  r4 af16(\< gf f8) |
  r4 f16(\f ef df8) |
  c'16(\ff bf a8) c16( bf a8) s1*0\>
  \repeat unfold 6 { c16( bf a8) }
  c8\p r c,8.\prall^\markup\halign #-2 \tiny\flat c16 |
  c8 r c8.\prall^\markup\halign #-2 \tiny\flat\< c16 |
  c16(bf af bf) c8.\fz c16 |
  c4\> \times2/3{af8( bf c)} |
  \key af\major
  c4( \p ef af f)
  c4(\> ef~ef bf)
  c8\p r c8.\prall c16 |
  c8\< r c8.\prall c16 |
  c16( bf af bf c8.)\fz c16 |
  c4\> \times2/3{ af8( bf c)\! }
  ef4(\p c af' f)
  c4( ef~ef bf)
  c4(\pp ef~ef bf)
  ef2\pp\> ~ef
  R2*4\! \partPageBreak
  \barNumberCheck#rehearsalTwelve
  \cueWhile "flute2mA" "flute" #UP R2*8
  r8 c4\p c8 | r8 c4 c8 | r8 c4 c8 | r8 ef4 ef8 |
  r8 df4 df8 | r8 c4 c8 R2*4 \partcombineSoloIOnce
  \trCueWhile "violin1mA" "violins 8va" #UP c R2*4
  af'2\f ~af ~af\< ~af |
  \barNumberCheck#rehearsalThirteen
  \key e \minor
  a?2\fff ~a ~a ~a( a) ~a ~a ~a
  \repeat unfold 4 { a4 r8 a16 a }
  a2-> ~a ~a ~a
  g2 R2 g2 R2 b2 R2 g2 R2
  \repeat unfold 4 { g8( fs f e) }
  b'8 r g r a r g r fs r g r a r b r |
  fs4 r g8 r a r g4 r c8 r a r |
  g8. b16 b8-. fs-. | g8. b16 b8-. fs-. |
  g8-. fs-. g-. fs-. g-. fs-. g-. fs-. |
  g2-> ~g ~g ~g
  g2\fz\startTrillSpan ~g2*7/8 s16\stopTrillSpan
  g2*7/8\startTrillSpan s16\stopTrillSpan
  g2*7/8\startTrillSpan s16\stopTrillSpan
  g8 r b r
  r4 b8[ r16 b] |
  \repeat unfold 3 {b8 r r4 }
}

oboeIImA = \relative c'' {
  \key e \minor
  R1*3
  \cueWhile "horn3mA" "horn" #DOWN R1*2
  e4(\p d c b) |
  a4\(\< b fs(\fz fs)\)
  g2(\> a8)\p\> r g r |
  a4\! r r2 |
  r8.. ef'32\ff ef2 r4 |
  r8.. ef32 ef2 r4 |
  r8.. ef32 ef8. r16 r8.. ef32 ef8. r16 |
  R1*2
  \motifWfifteenII
  d16\f r8. r4 d16 r8. r4|
  ds16 r8. r4 ds16 r8. r4|
  e16 r8. r4 r4 r16 e-. e-. e-. |
  e16 r8. ds16 r8. r2 |
  R1
  \barNumberCheck #allegroMolto
  R2*3 \noBreak
  \cueWhile "clarinet1mA"  "clarinet" #UP R2*5
  e,4.\mf\< g8 b e4.-> g4\fz e8-. c-. d-. g,4->
  g8\mp |
  \repeat unfold 3 { g8.-> b16-. b8-. fs-. }
  b2->\ff ~ b8 r r4 c2-> ~ c8 r r4
  b2-> ~ b8 r r4 c2-> ~ c8 r r4
  c8(\f a g fs) c'( a g fs) e'( c\< b a) e'( c b a) e'\! r r4
  R2
  e2\ffz e\fz e\fz e\fz ds8 r a'4\<~a2
  \barNumberCheck#rehearsalOne
  g2\ff~g e->~g->
  e4 r8 ds e4 r8 ds e8 r r4 |
  R2*25
  \barNumberCheck#rehearsalThree
  R2*4 \scoreDynamicsOff
  \cueWhile "oboe1mA" "oboe I" #DOWN R2*4
  g,2(\pp f) g( f4 g) g2( f) g2(f4 g) g2~g\<~g~g
  gs\f\>~gs\p
  gs\f\>~gs\p
  R2*6
  \barNumberCheck #rehearsalFour
  gs'2\f~gs2\>~gs4 e4~e2~e4\p r |
  R2*23
  R2*18
  \cueWhile "violin1mA" "violin" #UP R2*4
  g2\ff~g g4. g8 | e d4 d,8 | g8. g'16 g8-. fs-. g-. fs-. g-. fs-. |
  g8 r ds r b r r4 R2*2 |
  \barNumberCheck#rehearsalSix
  g'8 r b, r R2*15 \partPageBreak
  \trCueWhile "flute2mA" "piccolo 8va" #UP c R2*4
  e8.->\p gs16-. gs8-. ds-. | e8.-> gs16-. gs8-. ds-. |
  cs8.-> e16-. e8-. b-. | cs8.-> e16-. e8-. b-. |
  a8 r r4 |
  a16(\mf cs e) e-. e8 r | R2
  a,16(\mf cs e) e-. e8 r | R2
  a,16(\f c e) e-. e8 r | R2
  a,16(\f c e) e-. e8 r |
  \barNumberCheck#rehearsalSeven
  R2*8
  fs,4.\ff fs8 d-> cs4.-> | fs4. a8 \times2/3{fs8( a) cs-.} cs4\fz( |
  fs2)\ff ~fs ~fs ~fs fs8 r r4 | fs8 r r4 | f8 r r4 | f8 r r4 |
  d8\fz r r4 R2*3
  gf2\ff ~gf( ef)( gf) |
  \relative c'' {
    \repeat unfold 3 { b8.->\f b16 gs fs r8 } b8.->\f b16 g fs r8
  }
  \barNumberCheck#rehearsalEight
  g2\ff ~g( e)( g) |
  \relative c'' {
    \repeat unfold 3 { c8.->\f c16 a g r8 } c8.->\f c16 af g r8
  }
  f4 r8 e f4 r8 e | f4 r8 f fs4 r8 fs |
  gf8 r ef r ef r ef r | ef r ef r e r f r |
  fs,4.->\fz\> a8 cs-. fs4.-> | a4.\p\> fs8 cs a4. |
  g4.\(\pp a8 cs e4. | a4. g8 e cs4.\) |
  R2*8
  \barNumberCheck#rehearsalNine
  R2*4
  \cueWhile "clarinet1mA" "clarinet" #UP R2*4
  e,4.\mf\< g8 b e4.-> | g4->\fz\> e8-. c-. d-. g,4 g8\p |
  g8.-> b16 b8-. fs-.
  g8.->\< b16 b8-. fs-.
  g8.-> b16 b8-. fs-.
  b2\ff ~b8 r r4 |
  c2\ffz ~c8 r r4 |
  cs2\ffz ~cs8 r r4 |
  e2\ffz ~e8 r r4 |
  e4\fz r R2 e4\fz r R2*5
  \barNumberCheck#rehearsalTen
  \key gs \minor
  R2*20
  \trCueWhile "flute1mA" "flute 8va" #UP c R2*4
  gs,2\p ~gs\< ~gs ~gs a8\fz r r4 R2*3
  \trCueWhile "violin1mA" "violin I 8va" #UP c R2*2
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  \trCueWhile "violin1mA" "violin I 8va" #UP c {
    R2
    r4
  } df16(\mf cf bf8) |
  r4 f'16(\< ef df8) |
  r4 df16(\f c bf8) |
  a'16(\ff g f8) a16( g f8) s1*0\>
  \repeat unfold 6 { a16( g f8) }
  af8\p r af,8.\prall^\markup\halign #-2 \tiny\flat af16 |
  af8 r af8.\prall^\markup\halign #-2 \tiny\flat\< af16 |
  af16(g f g) af8.\fz af16 |
  af4\> \times2/3{f8( g af)} |
  \key af\major
  af4(\p c f df)
  af4(\> c~c g)
  af8\p r af8.\prall af16 |
  af8\< r af8.\prall af16 |
  af16( g f g af8.)\fz af16 |
  af2*7/8\> s2*1/8\!
  c4(\p af f' df)
  af4( c~c g)
  af4(\pp c~c g)
  R2*6 \partPageBreak
  \barNumberCheck#rehearsalTwelve
  \cueWhile "flute2mA" "flute" #UP R2*8
  r8 af4\p af8 | r8 af4 af8 | r8 af4 af8 | r8 g4 g8 |
  r8 g4 f8 | r8 ef4 ef8 R2*8
  c'2\f ~c ~c\< ~c |
  \barNumberCheck#rehearsalThirteen
  \key e \minor
  cs2\fff ~cs ~cs ~cs( c) ~c ~c ~c
  \repeat unfold 4 { ef4 r8 ef16 ef }
  ds2-> ~ds ~ds ~ds
  e2 R2 e2 R2 e2 R2 e2 R2
  \repeat unfold 4 { g8( fs f e) }
  e8 r e r ds r e r c r e r a, r b r |
  e4 r e8 r fs r e4 r e8 r fs r |
  e8. g16 g8-. ds-. | e8. g16 g8-. ds-. |
  e8-. ds-. e-. ds-. e-. ds-. e-. ds-. |
  e2-> ~e ~e ~e
  e2\fz\startTrillSpan ~e2*7/8 s16\stopTrillSpan
  e2*7/8\startTrillSpan s16\stopTrillSpan
  e2*7/8\startTrillSpan s16\stopTrillSpan
  e8 r g r
  r4 g8[ r16 g] |
  \repeat unfold 3 {g8 r r4 }
}

clarinetImA = \relative c' {
  \key g \minor
  \tag #'part \mark "in A"
  \transposition a
  \cueWhile "cellomA" "cello" #DOWN {
    R1*2 r2
  } g2\pp\>~g8\! r8 r4 r2
  R1*4
  \cueWhile "violin1mA" "strings" #DOWN {
    R1 r8..
  } gf''32\ff gf2 r4
  r8.. gf32 gf2 r4 |
  r8.. gf32 gf8. r16 r8.. gf32 gf8. r16 |
  R1*3
  cf,2~\p\<cf~\f\> |
  cf16\p r8. r4 r2 |
  d1\p\< |
  a'16\f r8. r4 a16 r8. r4|
  a16 r8. r4 a16 r8. r4|
  g16 r8. r4 r4 r16 g-. g-. g-. |
  bf16 r8. a16 r8. r2 |
  R1 \partPageBreak
  \barNumberCheck #allegroMolto
  \cueWhile "horn3mA" "horn" #DOWN {
    R2*3 r4 r8
  } bf,\p |
  bf8.-> d16-. d8-. a-. |
  bf8.-> d16-. d8-. a-. |
  bf8.-> d16-. d8-. a-. |
  bf8 r r4
  R2*7
  d2->\ff ~d8 r8 r4
  ef2-> ~ef8 r8 r4
  fs2-> ~fs8 r8 r4
  g2-> ~g8 r8 r4
  R2*6
  a2->\ffz
  a2->\fz
  bf2->\fz
  bf2->\fz
  a8 r8 \scoreDynamicsOff d,4\<~
  d4. fs8 |
  \barNumberCheck#rehearsalOne
  d2\ff ~ d
  bf'->~bf
  d,4 r8 d | d4 r8 d | d r r4
  d4.\(\f c8 bf4. a8 g4. f8\)
  ef8\(\< ef'4 d8\! c4. bf8\) a4.\( g8 f4. ef8\)
  d2\fz R2 df2\f R2
  \barNumberCheck#rehearsalTwo
  \partcombineSoloIOnce r16
  %{%} d16(\mp g bf d4)
  r16 df,( g bf df4)
  d,16(\< f bf d f4)\!
  r16 f,\(\p\< a ef' f4~f4\) af4\(\!~af4.\>ef8\) |
  f4\(\< af4~af4. ef8\)\! |
  af2(\> g)\!
  gf4(\pp bf gf bf) gf( bf gf  bf)
  \barNumberCheck#rehearsalThree
  f4.\(\pp df8 c2\)
  f4.\( bf,8 c16 df ef8 df4\)
  f4.\(\pp df8 c2\)
  f4.\( bf,8 c16 df ef8 df4 ~df8\) r8 r4 |
  R2*11
  \trCueWhile "violin1mA" "violin I 8va" #UP c R2
  b8\(\mp d d16 cs b8\)
  \trCueWhile "violin1mA" "violin I 8va" #UP c R2
  b8\( d d16 cs b8\)
  d2\p~d ef2\<~ef g2( g)
  \barNumberCheck#rehearsalFour
  g2\f~g\>
  d2~d
  d8\p r d8.\prall\< d16 |
  d8 r d8.\prall d16 |
  d8\f r d8.\prall\> d16 |
  d8 r d8.\prall d16 |
  d4\(\pp\< f bf g\)
  f4\(\> d f c |
  d8\)\p r d8.\prall\pp d16 |
  d8\< r d8.\prall d16 |
  d8 r d8.\prall d16 |
  d8 r d8.\prall d16 |
  d4\(\p\< f bf g\)
  f4\(\> d f c\) |
  f4\(\p\> d f c\)\! |
  f2\pp ~f ~f8 r r4
  R2*3
  \barNumberCheck#rehearsalFive
  R2*8
  r8 d4\pp d8 | r8 d4 d8 | r8 d4 d8 |
  r8 f4 f8 | r8 ef4 ef8 | r8 d4 d8 |
  r8 ef4( c8) | r8 d4(\< f8) | r8 ef4( c8) |
  r8 d4( f8) r8 g4( bf8) r8 g4( bf8) |
  \afterGrace a2\f\startTrillSpan {g16[\stopTrillSpan a]} |
  \afterGrace a2\<\startTrillSpan {g16[\stopTrillSpan a]} |
  bf2\ff~bf~bf~bf bf4. a8 bf8-. a-. bf-. a-.
  bf8 r fs r d r r4 R2*2
  \barNumberCheck#rehearsalSix
  bf'8 r bf r
  R2*6 \partPageBreak
  \cueWhile "trumpet1mA" "trumpets" #UP R2
  <<
    \repeat unfold 4 {\times2/3{d,8 d d} d r}
    {s2\p s s\pp s}
  >>
  d4 r
  R2*12 \partcombineUnisonoOnce
  \cueWhile "flute2mA" "flute" #UP R2*6
  c16(\f ef g) g-. g8 r |
  \barNumberCheck#rehearsalSeven
  R2*4
  c2\ff-> ~c ~c ~c ~c8 r r4
  R2*3
  a2\ff ~a ~a ~a  a8-. r r4 a8 r r4 af8 r r4 ff8 r r4
  R2*4
  a2\ff ~a ~a ~a
  \relative c'' \repeat unfold 4 {r4 d8\f d16 d16} |
  \barNumberCheck#rehearsalEight
  bf2\ff ~bf( g)( bf)
  \relative c'' \repeat unfold 4 {r4 ef8\f ef16 ef16} |
  ef,4 r8 ef | ef4 r8 ef | e4 r8 e | f4 r8 f |
  gf8 r gf r | gf r gf r | gf r gf r | g r af r |
  a8 r r4 R2*7 \partcombineSoloIOnce
  \cueWhile "flute2mA" "flute" #UP R2*4
  d,4.\p\<( fs8 a c4.) | d4.\f( c8 a fs4.) |
  \barNumberCheck#rehearsalNine
  bf!32(\fz a g16) r8 r4 |
  R2*2
  r4 r8 bf,\p
  \repeat unfold 3 { bf8.-> d16-. d8-. a-. }
  bf8 r8 r4 R2*7
  d2\ff ~d8 r r4 |
  ef2\ffz ~ef8 r r4 |
  e2\ffz ~e8 r r4 |
  g2\ffz ~g8 r r4 |
  g4\fz r R2 g4\fz r R2*5
  \barNumberCheck#rehearsalTen
  \key d \major
  R2*8
  \tag#'part R2*0_\markup\tiny"flute begins" \partcombineSoloIOnce
  R2*6 \partcombineSoloIOnce
  \cueWhile "flute2mA" "flute" #UP R2*2
  \transpose gs b' \motifWthreesixteen
  b,8) r8 r4 R2*4
  c8(\mp ef) ef16( d c8) R2
  c8(\mp ef) ef16( d c8)
  r4 gf'16(\p f ef8) r4 gf16(\p f ef8)
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  r4 af16(\< gf ff8)\!
  r4 cs16(\mf b a8) |
  r4 b16(\< a gs8) | R2
  ef'16(\ff df c8) ef16( df c8) s1*0\>
  \repeat unfold 6 { ef16( df c8) }
  ef8\p r r4 R2*3
  \key b\major
  R2*20 \partPageBreak
  \barNumberCheck#rehearsalTwelve
  R2*8 \partcombineSoloIOnce
  \trCueWhile "violin1mA" "violins 8va" #UP ef R2*6
  r8 e4(\p cs8) | r8 ds4( fs8) | r8 e4(\< cs8) | r8 ds4( fs8) |
  r8 fs4(\mf b8) | r8 gs4(\< b8) |
  as2\trill as2\trill
  fs2\f ~fs ~fs\< ~ fs |
  \barNumberCheck#rehearsalThirteen
  \key g \minor
  g?2\fff ~g ~g ~g( g) ~g ~g ~g
  \repeat unfold 4 { fs4 r8 fs16 fs }
  fs2-> ~fs ~fs ~fs
  g2 R2 g2 R2 g2 R2 g2 R2
  \repeat unfold 4 { ef4 r }
  g8 r g r fs r g r ef r g r fs r g r |
  g4 r d8 r c r bf4 r bf'8 r a r |
  bf,8. d16 d8-. a-. | bf8. d16 d8-. a-. |
  bf2->( bf'2) ~bf2 ~bf2
  \repeat unfold 4 { bf8 a }
  bf2\fz\startTrillSpan ~bf2*7/8 s16\stopTrillSpan
  bf2*7/8\startTrillSpan s16\stopTrillSpan
  bf2*7/8\startTrillSpan s16\stopTrillSpan
  bf8 r d, r
  r4 d8[ r16 d] |
  \repeat unfold 3 {d8 r r4 }
}

clarinetIImA = \relative c' {
  \key g \minor
  \tag #'part \mark "in A"
  \transposition a
  \cueWhile "cellomA" "cello" #DOWN {
    R1*2 r2
  } g2\pp\>~g8\! r8 r4 r2
  R1*4
  \cueWhile "violin1mA" "strings" #DOWN {
    R1 r8..
  } ef''32\ff ef2 r4
  r8.. ef32 ef2 r4 |
  r8.. ef32 ef8. r16 r8.. ef32 ef8. r16 |
  R1*3
  af,2~\p\<af~\f\> |
  af16\p r8. r4 r2 |
  b1\p\< |
  f'16\f r8. r4 f16 r8. r4|
  fs16 r8. r4 fs16 r8. r4|
  cs16 r8. r4 r4 r16 cs-. cs-. e-. |
  d16 r8. d16 r8. r2 |
  R1
  \barNumberCheck #allegroMolto
  \cueWhile "horn3mA" "horn" #DOWN {
    R2*3 r4 r8
  } g,\p |
  g8.-> bf16-. bf8-. fs-. |
  g8.-> bf16-. bf8-. fs-. |
  g8.-> bf16-. bf8-. fs-. |
  g8 r r4
  R2*3 \partcombineSoloIIOnce
  \trCueWhile "flute1mA" "flutes 8va" #UP c R2*4
  d'2->\ff ~d8 r8 r4
  ef2-> ~ef8 r8 r4
  d2-> ~d8 r8 r4
  ef2-> ~ef8 r8 r4
  R2*6
  g2->\ffz
  g2->\fz
  g2->\fz
  g2->\fz
  fs8 r8 c4\<~
  c2 |
  \barNumberCheck#rehearsalOne
  bf2\ff ~ bf
  g'->~g
  bf,4 r8 a | bf4 r8 a | bf r r4 |
  bf4.\(\f a8 g4. f8 ef4. d8\)
  c8\(\< c'4 bf8\! a4. g8\) |
  f4.\( ef8 d4. c8\)
  bf2\fz R2 bf2\f R2
  \barNumberCheck#rehearsalTwo
  R2*14
  \barNumberCheck#rehearsalThree
  R2*20
  \cueWhile "violin1mA" "violin" #UP R2
  \cueWhile "clarinet1mA" "clarinet I" #UP R2
  \cueWhile "violin1mA" "violin" #UP R2
  \cueWhile "clarinet1mA" "clarinet I" #UP R2
  b'2\p~b c!2\<~c bf2( ef)
  \barNumberCheck#rehearsalFour
  d2\f~d\>
  b2~b
  bf8\p r bf8.\prall\< bf16 |
  bf8 r bf8.\prall bf16 |
  bf8\f r bf8.\prall\> bf16 |
  bf8 r bf8.\prall bf16 |
  bf4\(\pp\< d g ef\)
  d4\(\> bf d a |
  bf8\)\p r bf8.\prall\pp bf16 |
  bf8\< r bf8.\prall bf16 |
  bf8 r bf8.\prall bf16 |
  bf8 r bf8.\prall bf16 |
  bf4\(\p\< d g ef\)
  d4\(\> bf d a\) |
  d4\(\p\> bf d a\)\! |
  R2*6
  \barNumberCheck#rehearsalFive
  \cueWhile "flute1mA" "flute" #UP R2*8
  r8 bf4\pp bf8 | r8 bf4 bf8 | r8 bf4 bf8 |
  r8 a4 a8 | r8 a4 a8 | r8 bf4 bf8 |
  r8 c4( a8) | r8 bf4(\< d8) | r8 c4( a8) |
  r8 bf4( d8) r8 ef4( g8) r8 ef4( g8) |
  \afterGrace f2\f\startTrillSpan {ef16[\stopTrillSpan f]} |
  \afterGrace f2\<\startTrillSpan {ef16[\stopTrillSpan f]} |
  d2\ff~d~d~d d4. c8 d8-. c-. d-. c-.
  d8 r c r d r r4 R2*2
  \barNumberCheck#rehearsalSix
  d8 r d r
  R2*7 \partPageBreak
  <<
    \repeat unfold 4 {\times2/3{bf8 bf bf} bf r}
    {s2\p s s\pp s}
  >>
  b!4 r
  R2*14 \partcombineUnisonoOnce
  \cueWhile "oboe1mA" "oboe" #UP R2*4
  c16(\f ef g) g-. g8 r |
  \barNumberCheck#rehearsalSeven
  R2*4
  a2\ff-> ~a ~a ~a ~a8 r r4
  R2*3
  ef2\ff ~ef ~ef ~ef  ef8 r r4 ef8 r r4 ef8 r r4 d8 r r4
  R2*4
  fs2\ff ~fs ~fs ~fs
  \repeat unfold 4 {r4 d8\f d16 d16} |
  \barNumberCheck#rehearsalEight
  g2\ff ~g( ef)( g)
  \repeat unfold 4 {r4 ef8\f ef16 ef16} |
  b4 r8 as | b4 r8 as | b4 r8 b | c4 r8 c |
  cs8 r cs r | cs r cs r | cs r cs r | d r ds r |
  e8 r r4 R2*15
  \barNumberCheck#rehearsalNine
  << R2*3 {
    \cueWhile "horn3mA" "" #DOWN R2
    \cueWhile "horn3mA" "horn" #DOWN R2*2
  } >>
  r4 r8 g,\p
  \repeat unfold 3 { g8.-> bf16-. bf8-. fs-. }
  g8 r8 r4 R2*7
  d'2\ff ~d8 r r4 |
  ef2\ffz ~ef8 r r4 |
  e2\ffz ~e8 r r4 |
  g2\ffz ~g8 r r4 |
  d4\fz r R2 d4\fz r R2*5
  \barNumberCheck#rehearsalTen
  \key d \major
  R2*28
  \trCueWhile "violin1mA" "violin 8va" #UP c R2
  \cueWhile "clarinet1mA" "clarinet" #UP R2
  \trCueWhile "violin1mA" "violin 8va" #UP c R2
  \cueWhile "clarinet1mA" "clarinet" #UP R2
  r4 ef16(\p df c8) r4 ef16(\p df c8)
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  r4 ff16(\< ef df8)\!
  r4 e,16(\mf d cs8) |
  r4 gs'16(\< fs e8) | R2
  c'16(\ff bf af8) c16( bf af8) s1*0\>
  \repeat unfold 6 { c16( bf af8) }
  cf8\p r r4  R2*3 \key b\major R2*20
  \barNumberCheck#rehearsalTwelve
  R2*10 \partcombineSoloIIOnce
  \trCueWhile "violin1mA" "violin 8va" #UP ef R2*4
  r8 cs4(\p as8) | r8 b4( ds8) | r8 cs4(\< as8) | r8 b4( ds8) |
  r8 e4(\mf gs8) | r8 e4(\< gs8) |
  fs2\trill fs2\trill
  ds2\f ~ds ~ds\< ~ ds |
  \barNumberCheck#rehearsalThirteen
  \key g \minor
  e?2\fff ~e ~e ~e( ef) ~ef ~ef ~ef
  \repeat unfold 4 { ef4 r8 ef16 ef } \partPageBreak
  c2-> ~c ~c ~c
  bf2 R2 ef2 R2 d2 R2 ef2 R2
  \repeat unfold 4 { ef4 r }
  d8 r ef r c r bf r a r g r c r d r |
  ef4 r bf8 r a r g4 r g'8 r c, r |
  g8. bf16 bf8-. fs-. | g8. bf16 bf8-. fs-. |
  \repeat unfold 4 { g8 fs }
  g2->( g'2) ~g2 ~g2
  g2\fz\startTrillSpan ~g2*7/8 s16\stopTrillSpan
  g2*7/8\startTrillSpan s16\stopTrillSpan
  g2*7/8\startTrillSpan s16\stopTrillSpan
  g8 r bf, r
  r4 bf8[ r16 bf] |
  \repeat unfold 3 {bf8 r r4 }
}

bassoonImA = \relative c {
  \clef bass
  \key e \minor
  \cueWhile "cellomA" "cello" #UP {
    R1*2 r2
  } g'8->\pp r fs r
  g r r4 r2
  R1*3
  e'4(\p d) c8\> r b r
  d4\! r r2
  R1*3
  \cueWhile "cellomA" "cello" #DOWN R1*2
  f,1\pp~
  f16 r8. r4 r2 |
  f2(-\tag#'part \pp af2) |
  b16 r8. r4 r2 |
  b,16\f r8. r4 b16 r8. r4|
  b16 r8. r4 c16 r8. r4|
  c16 r8. r4 r4 r16 bf'-. bf-. g-. |
  b16 r8. b16 r8. r2 |
  R1 \partPageBreak
  \barNumberCheck #allegroMolto
  \cueWhile "horn3mA" "horn" #UP {
    R2*3 \noBreak
    r4 r8
  } g\p |
  \repeat unfold 3 { g8.-> b16-. b8-. fs-. }
  g2 ~g8 r r4
  R2*2
  r4 r8 b\mp |
  \repeat unfold 3 { b8.-> d16-. d8-. a-. }
  b2->\ff ~ b8 r r4 |
  c2->\fz ~ c8 r r4 |
  ds2->\fz ~ ds8 r r4 |
  e2->\fz ~ e8 r r4 |
  a,16(\f b c4.) a16( b c4.) |
  c16( d e4.) c16( d e4.) |
  \repeat unfold 4 { c16( d e8) }
  gs,8\ff a4.-> gs8 a4.-> a8 bf4.-> a8 bf4.-> |
  b8-. cs-. ds-.\< e-. es-. fs-. ds-. b-. |
  \barNumberCheck#rehearsalOne
  e,4.->\ff g8-. b-. e4.-> | g4->\fz e8-. c-. b-. e,4. |
  e4 r8 b e4 r8 b e8 r r4 R2*7
  \trCueWhile "violin1mA" "vln 8va" #UP c R2
  \cueWhile "cellomA" "cello" #UP R2
  \trCueWhile "violin1mA" "vln 8va" #UP c R2
  \cueWhile "cellomA" "cello" #UP R2
  \barNumberCheck#rehearsalTwo
  \partcombineSoloIOnce r8
  %{%} e16(\mp g b4) | r8 e,16( g bf4) |
  r16 d,(\< g b) d4\! |
  r16 d,(\p\< fs c'd4~d4) f(\! ~f4.\> c8) |
  d4(\< f) ~ f4.( c8)\! | f2(\> e)\! |
  ef4(\pp e ef e) ef( e ef e |
  \barNumberCheck#rehearsalThree
  d8) r r4 R2*15
  \cueWhile "cellomA" "cello" #DOWN R2*4
  \trCueWhile "violin1mA" "violins 15ma" #UP c, R2
  gs,8\(\mp b b16 as gs8\) R2
  gs8\( b b16 as gs8\)
  b2\p~b c2\<~c e2( e)
  \barNumberCheck#rehearsalFour
  e2\f~e\> b2~b\! R2*4
  b2(\p\< e)\! d(\> d)( b4)\! r |
  r4 e, g(\< fs8 e) ef2(\marcato\f\> d8)\! r b'4(\pp\< |
  c2)(\! b)( c)( b)(\p c) ~c\pp~c~c8 r r4 |
  R2*3
  \barNumberCheck#rehearsalFive
  \tag#'part R2*0_\markup\tiny"flute begins"
  R2*7
  \trCueWhile "violin1mA" "violins 8va" #UP c {
    R2 r8
  } b4\pp b8 | r8 b4 b8 | r8 b4 b8 |
  r8 d4 d8 | r8 c4 c8 | r8 b4 b8 |
  r8 c4( a8) | r8 b4(\< d8) | r8 c4( a8) | r8 b4( d8) |
  r8 e4( g8) |
  \tag#'part \clef tenor
  r8 e4( g8)
  \afterGrace fs2\f\startTrillSpan {e16[\stopTrillSpan fs]} |
  \afterGrace fs2\<\startTrillSpan {e16[\stopTrillSpan fs]} |
  \tag#'part \clef bass
  b,2\ff ~b ~b ~b b4. a8 | b-. a-. b-. a-.
  b8 r a r b, r r4 R2*2 \partPageBreak
  \barNumberCheck#rehearsalSix
  b'8 r b r R2*15 \partcombineSoloIOnce
  \trCueWhile "flute2mA" "piccolo, higher octave" #UP c,, R2*4
  e4\pp r8 b | e4 r8 b | cs4 r8 gs | cs4 r8 gs |
  cs2(\p e8 d cs d) cs2(\< e8 d cs d)
  c2( e8 d c d) e2~e8( d c e)
  \barNumberCheck#rehearsalSeven
  c,,2\f ~c ~c ~c
  c4.\ff ef8 fs a4.\marcato c\marcato a8 fs ds4. |
  cs2\ff ~cs ~cs ~cs
  ds4.\ff fs8 a c!4.\marcato ds\marcato c8 a fs4. |
  ds8 r ds4-> ~ds8 r8 ds4->( | d8) r d4-> ~ d8 r d4-> ~ d8 r r4 R2*3
  ef'4.\ff gf8 bf ef4.-> gf4-> ef8 cf bf ef,4. |
  \repeat unfold 4 {r4 b'8\f b16 b16} |
  \barNumberCheck#rehearsalEight
  e,4.\ff g8 b e4.-> g4-> e8 c b e,4. |
  \repeat unfold 4 {r4 c'8\f c16 c16} |
  af4 r8 g | af4 r8 g | af4 r8 af | a4 r8 a |
  bf8 r bf r | bf r bf r | bf r bf r | b r c r |
  cs8 r r4 R2*15
  \barNumberCheck#rehearsalNine
  \cueWhile "horn3mA" "horn" #UP {
    R2*3
    r4 r8
  } g\p
  \repeat unfold 3 { g8.-> b16-. b8-. fs-. }
  g2 ~ g8 r8 r4 R2*6
  fs2\ff ~fs8 r r4 |
  fs2\ffz ~fs8 r r4 |
  a2\ffz ~a8 r r4 |
  b2\ffz ~b8 r r4 |
  b4\fz r R2 b4\fz r R2*5
  \barNumberCheck#rehearsalTen
  \key gs \minor
  R2*12 \partcombineSoloIOnce
  \trCueWhile "flute2mA" "flute 8va" #UP c R2*4
  \transpose gs gs \motifWthreesixteen
  gs2) ~gs\< ~gs ~gs a8\fz r r4
  a8(\mp c) c16( b a8) R2
  a8(\mp c) c16( b a8)
  r4 ef'16(\p d c8) r4 ef16(\p d c8)
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  r4 f16(\< ef df8) R2*2
  r4 f16(\f ef df8) |
  c16(\ff bf a8) c16( bf a8) s1*0\>
  \repeat unfold 6 { c16( bf a8) }
  c8\p r r4 R2*3
  \key af\major
  R2*4
  e,4( \p\< f) g( f) af(\f g8 f) ff2(\> ef8)\p r r4 R2*11 \partPageBreak
  \barNumberCheck#rehearsalTwelve
  \trCueWhile "flute2mA" "flute 8va" #UP c R2*8
  r8 c'4\p c8 | r8 c4 c8 | r8 c4 c8 | r8 ef4 ef8 |
  r8 df4 df8 | r8 c4 c8 |
  r8 df4( bf8) | r8 c4( ef8) | r8 ef4(\< bf8) | r8 c4( ef8) |
  \tag #'part \clef tenor
  r8 f4(\mf af8) | r8 f4(\< af8) |
  g2\trill g2\trill
  \tag #'part \clef bass
  af,2\f ~af gf->\< ~ gf |
  \barNumberCheck#rehearsalThirteen
  \key e \minor
  e?2\fff ~e ~e ~e( e) ~e ~e ~e
  f4 r8 c'16 c | c4 r8 c16 c |c4 r8 c16 c |c4 r8 c16 c |
  b2-> b, ~b ~b
  c2 R2 a'2 R2 g2 R2 a2 R2
  \repeat unfold 4 { a4 r }
  g8 r a r b, r c r d r e r fs r g r |
  a4 r b8 r b, r e'4 r a,8 r b r |
  e,8 b' e b e, b' e b e b e b e b e b |
  g2-> ~g ~g ~g
  g\fz ~g g->\fz g->\fz
  g8 r e r
  r4 e8[ r16 e] |
  \repeat unfold 3 {e8 r r4 }
}

bassoonIImA = \relative c {
  \clef bass
  \key e \minor
  \cueWhile "cellomA" "cello" #UP {
    R1*2 r2
  }  b8->\pp r c r
  b r r4 r2
  R1*8
  \cueWhile "cellomA" "cello" #DOWN R1*2
  d1\pp~
  d16 r8. r4 r2 |
  d1\pp  |
  gs16 r8. r4 r2 |
  b,,16\f r8. r4 b16 r8. r4|
  b16 r8. r4 c16 r8. r4|
  c16 r8. r4 r4 r16 g''-. g-. e-. |
  g16 r8. b,16 r8. r2 |
  R1
  \barNumberCheck #allegroMolto
  \cueWhile "horn3mA" "horn" #UP {
    R2*3 %\noBreak
    r4 r8
  } e\p |
  \repeat unfold 3 { e8.-> g16-. g8-. ds-. }
  e2 ~e8 r r4
  R2*2
  r4 r8 g\mp |
  \repeat unfold 3 { g8.-> b16-. b8-. fs-. }
  b,2->\ff ~ b8 r r4 |
  c2->\fz ~ c8 r r4 |
  ds2->\fz ~ ds8 r r4 |
  e2->\fz ~ e8 r r4 |
  fs16(\f g a4.) fs16( g a4.) |
  a16( b c4.) a16( b c4.) |
  \repeat unfold 4 { a16( b c8) }
  gs,8\ff a4.-> gs8 a4.-> a8 bf4.-> a8 bf4.-> |
  b8-. cs-. ds-.\< e-. es-. fs-. ds-. b-. |
  \barNumberCheck#rehearsalOne
  e,4.->\ff g8-. b-. e4.-> | g4->\fz e8-. c-. b-. e,4. |
  e4 r8 b e4 r8 b e8 r r4 R2*11
  \barNumberCheck#rehearsalTwo
  R2*14
  \barNumberCheck#rehearsalThree
  R2*21
  \cueWhile "bassoon1mA" "bassoon I" #UP R2*3
  gs'2\p~gs a2\<~a g2( c)
  \barNumberCheck#rehearsalFour
  b2\f~b\> e,2~e\! R2*4
  g2(\p\< c)\! b(\> c)( g4)\! r |
  r4 e, g(\< fs8 e) ef2(\marcato\f\> d8)\! r d'4(\pp\< |
  d2)(\! d)( d)( d)(\p d) ~d\pp~d~d8 r r4 |
  R2*3
  \barNumberCheck#rehearsalFive
  R2*8
  r8 g4\pp g8 | r8 g4 g8 | r8 g4 g8 |
  r8 fs4 fs8 | r8 fs4 fs8 | r8 g4 g8 |
  r8 a4( fs8) | r8 g4(\< b8) | r8 a4( fs8) | r8 g4( b8) |
  r8 c4( e8) | r8 c4( e8)
  \tag#'part \clef tenor
  \afterGrace d2\f\startTrillSpan {c16[\stopTrillSpan d]} |
  \afterGrace d2\<\startTrillSpan {c16[\stopTrillSpan d]} |
  \tag#'part \clef bass
  g,2\ff ~g ~g ~g g4. fs8 | g-. fs-. g-. fs-.
  g8 r fs r b,, r r4 R2*2
  \barNumberCheck#rehearsalSix
  g''8 r g r R2*19 \partPageBreak
  \trCueWhile "oboe1mA" "oboe 15ma" #UP c, R2*4
  a2(\p cs8 b a b) a2(\< cs8 b a b)
  a2( c8 b a b) c2~c8( b a c)
  \barNumberCheck#rehearsalSeven
  c,,2\f ~c ~c ~c
  c4.\ff-> ef8 fs a4.-> c-> a8 fs ds4. |
  cs2\ff ~cs ~cs ~cs
  ds4.\ff fs8 a c!4.-> ds-> c8 a fs4. |
  ds8 r ds4-> ~ds8 r8 ds4->( | d8) r d4-> ~ d8 r d4-> ~ d8 r r4 R2*3
  ef4.\ff gf8 bf ef4.-> gf4-> ef8 cf bf ef,4. |
  \repeat unfold 4 {r4 b''8\f b16 b16} |
  \barNumberCheck#rehearsalEight
  e,,4.\ff g8 b e4.-> g4-> e8 c b e,4. |
  \repeat unfold 4 {r4 c''8\f c16 c16} |
  f,4 r8 e | f4 r8 e | f4 r8 f | fs4 r8 fs |
  fs8 r fs r | fs r fs r | fs r fs r | g r gs r |
  a8 r r4 R2*15
  \barNumberCheck#rehearsalNine
  \cueWhile "horn3mA" "horn" #UP {
    R2*3 r4 r8
  } e\p
  \repeat unfold 3 { e8.-> g16-. g8-. ds-. }
  e2 ~ e8 r8 r4 R2*6
  ds2\ff ~ds8 r r4 |
  ds2\ffz ~ds8 r r4 |
  e2\ffz ~e8 r r4 |
  gs2\ffz ~gs8 r r4 |
  d4\fz r R2 d4\fz r R2*5
  \barNumberCheck#rehearsalTen
  \key gs \minor
  R2*28
  \trCueWhile "violin1mA" "violin 15ma" #UP c, R2
  \trCueWhile "clarinet1mA" "clarinet 8va" #UP c R2
  \trCueWhile "violin1mA" "violin 15ma" #UP c, R2
  \trCueWhile "clarinet1mA" "clarinet 8va" #UP c R2
  r4 c'16(\p bf a8) r4 c16(\p bf a8)
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  r4 df16(\< c bf8) R2*2
  r4 df16(\f c bf8) |
  a16(\ff g f8) a16( g f8) s1*0\>
  \repeat unfold 6 { a16( g f8) }
  af8\p r r4 R2*3
  \key af\major
  R2*4
  e,4( \p\< f) g( f) af(\f g8 f) ff2(\> ef8)\p r r4 R2*11
  \barNumberCheck#rehearsalTwelve
  \trCueWhile "flute2mA" "flute 8va" #UP c R2*8
  r8 af'4\p af8 | r8 af4 af8 | r8 af4 af8 | r8 g4 g8 |
  r8 g4 f8 | r8 ef4 ef8 |
  r8 bf'4( g8) | r8 af4( c8) | r8 bf4(\< g8) | r8 af4( c8) |
  r8 df4(\mf f8) | r8 df4(\< f8) |
  ef2\trill ef2\trill
  af,,2\f ~af gf->\< ~ gf | \partPageBreak
  \barNumberCheck#rehearsalThirteen
  \key e \minor
  e?2\fff ~e ~e ~e( e) ~e ~e ~e
  f4 r8 f'16 f | f4 r8 f16 f |f4 r8 f16 f |f4 r8 f16 f |
  b,2-> b, ~b ~b
  c2 R2 a'2 R2 g2 R2 a2 R2
  \repeat unfold 4 { a4 r }
  g8 r a r b, r c r d r e r fs r g r |
  a4 r b8 r b, r e'4 r a,8 r b r |
  e,8 b' e b e, b' e b e b e b e b e b |
  e2-> ~e ~e ~e
  e\fz ~e e->\fz e->\fz
  e8 r e, r
  r4 e8[ r16 e] |
  \repeat unfold 3 {e8 r r4 }
}

