\version "2.14.0"
inE = <<
  \tag#'part \mark "in E"
  \tag#'score s1*0^\markup\whiteout\pad-around#0.3 \large\halign #1.5 "in E"
>>

hornImF = \relative c'' {
  \tag #'part \mark "in E"
  \transposition e
  R1*5
  \trCueWhile "violin1mF" "violin 15ma" #UP af, R1*2
  r4 ef-.\f ef-. ef-. f1\<
  ef4\ff r r2 | c4 r r2 | ef4 r ef r | ef4 r r2 |
  ef4 r r2 | c4 r r2 | ef4 r f r | ef2\ff~ef8 r r4 |
  ef4 r r2 | c4 r r2 | ef4 r ef r | ef4 r r2 |
  ef4 r r2 | c4 r r2 | ef4 r f r | ef2~ef8 r r4 R1*8
  \barNumberCheck#OnemF
  ef4\ff r r2 | d4 r r2 | ef4 r ef r | ef4 r r2 |
  ef4 r r2 | f2 g2 | ef2 d4 d | ef2 d4 d |
  ef4 d8 d8 ef4 d8 d8 | ef4 d8 d d d d d |
  \barNumberCheck#TwomF
  r8 ef\f r bf r8 ef r8 bf | r8 ef r f r g r8 a! |
  r8 f r f f r r4 | r8 ef r bf r ef r bf |
  r8 ef r f r g r af | r ef r d c r r4 R1*4
  r8 ef\f r bf r8 ef r8 bf | r8 ef r f r g r8 a! |
  r8 f r f f r r4 | r8 ef r bf r ef r bf |
  r8 ef\f r4 r2 | r8 d\f r4 r2 |
  \times2/3 {ef8\f ef ef} r4 \times2/3 {c8\f c c} r4
  \times2/3 {a8\f a a} r4 \times2/3 {ef'8\f ef ef} r4
  R1*6
  \barNumberCheck#ThreemF
  R1*17 \partPageBreak
  \trCueWhile "violin1mF" "violin 8va" #UP af R1*4
  c2\(\< df4 c\) ef1->\fz d!1->\<
  \barNumberCheck#FourmF
  \tag #'score \set Staff.instrumentName="H"
  ef1->\ff d1-> ef1-> d2-> ef ef1-> d1-> ef1-> d2 ef4. r8 R1*4
  ef1->\f bf2\< \times2/3{ ef8\! bf g } ef8 r |
  r4 g'2->~\ff g8 r | r4 g2->~ g8 r |
  r4 g2->~ g8 r | r4 g2->~\f g8 r
  \tag #'score \set Staff.shortInstrumentName=\markup"H(F)"
  \transposition f
  R1*12 %-\tag#'part -\markup\large{\italic"muta" "in F"}
  R1*8 \partcombineSoloIOnce
  \cueWhile "oboe1mF" "oboe" #UP R1*2
  \inF
  bf,2->\f c4-. d c4. bf8 bf2 | a4-. g-.\> a-. bf-. |
  a2\p\> g2 fs4\! r r2
  \tag #'score \set Staff.shortInstrumentName=\markup"H(E)"
  \transposition e
  R1*3 \inE
  b2->\f c4-. d-. c4. b8 b2 | g2 af4 bf |
  af4 g g'4.-> g8
  \barNumberCheck#SixmF
  c,1\fz\> R1\! c1\fz\> R1\!
  c1\fp\>~c1\pp c1\fp\>~c1\pp\< | ef8\f r r4 r2 R1*5
  a,1\p\> ~ a\! d1\pp ~d2 r R1*6
  \barNumberCheck#SevenmF
  R1*8
  ef1\ff ~ ef R1*4
  d1\ff ~ d R1*4
  f4\fz f8 f f[ r16 f] f8 f | f8\< f f f f f f f\! |
  \barNumberCheck#EightmF
  f1\ff R1 f1\ff R1
  r2 c4\f r | r2 d4\f r |
  gf8 gf r4 gf8\< gf r4 | gf8 gf r4 gf8 gf r4 |
  ef2->\ff f4-. gf-. | f4.-> ef8 ef2 | ef2-> df4-> bf8-. df-. | ef2. r4 |
  ef2 df4 bf8 df | ef2. r4 |
  ef1->\ffz df->\fz df->\fz fs2->\fz c-> |
  ef1\fff ~ef
  ef4-. ef-. r ef-. | r ef-. r8 ef-. ef4-. |
  r4 ef-. r ef-. | r8 ef ef r r4 ef8-. r |
  \barNumberCheck#NinemF
  c2\(\p d4 ef d4. c8 c2\) | c2\(\> bf4 g8 bf\) | c1\pp
  R1*9
  R1*2
  \trCueWhile "flute1mF" "flute 8va" #UP af R1*2 \partcombineSoloIOnce
  r2 f2\mf ~ f2\( e4 d\) | d4.\( c8\) e2\> ~e4 r\! r2 R1*8
  d2\p b e1 | f2\< d g1->\fz | e2\f \scoreDynamicsOff c2 ~c1\> | c( b)\p |
  \barNumberCheck#TenmF \partPageBreak
  R1*12
  \partcombineSoloIOnce
  << \tag#'part \repeat unfold 2 {
    \cueDuring "cellomF" #DOWN { s2^\markup\tiny"cello" }
    \cueDuring "violamF" #DOWN { s2*2^\markup\tiny"viola" s8 }
    \cueDuring "cellomF" #DOWN { s4.^\markup\tiny"cello" }
  } R1*4 >>
  r4 g4.\p\< c8 e g ~g r c4.\> a8 g e-> ~ |
  e8 r c4. c8-. a-. g ~g4\! r r2 |
  c8-.\p e-. d-. c-. e-. d-. c-. e-. | d-. c-. e-. d-. c-. e-. d-. c-. |
  e16\< e d8 c e d c16 c e8 d |
  \times2/3{ c8( e) d-. } \times2/3{ c8 d e }
  \times2/3{ d8( c) d-. } \times2/3{ e8 g c }
  \barNumberCheck#ElevenmF
  c8\ff r r4 r2 R1*3
  c,2->\fff d4-. ef-. d4. c8 c2 | c2-> bf4 g8 bf c1-> |
  c2-> bf4 g8 bf c1-> |
  \repeat unfold 4 { c4-> g8-. bf-. }
  c4-. ef-. ef-. ef-. | c4-. ef-. ef-. ef-. |
  ef1\ff ~ ef e ~e
  f4 r g r d r f r | g4-. c,-. ef-. ef-. g-. c,-. ef-. ef-. |
  gf4-. f-. e-. g-. f-. f-. ef-. d-. |
  \barNumberCheck#TwelvemF
  ef1->\ffz gf->\fz ef->\fz e->\fz f-> f-> g->\fff ~ g
  ef1\> ~ ef ~ef4\! r r2
  R1*11
  c2\p d4-- ef-- d4. c8 c2 | bf1\pp
  af2 bf c1 ~ c4 r r2 R1*2
  f1->\ff f2-> f-> e1\fff ~ e
  e1-> d4. cs8 cs2 | e1-> d4. cs8 cs2 |
  \repeat unfold 12 e4-.
  \repeat unfold 8 { e4 \times2/3 e4.:8 }
  e4-. r r2 | e4-. r e-. r | e4-. r r2 | e4-. r r2 |
  << e1\fermata {s2\> s\ppp} >>
}

hornIImF = \relative c'' {
  \tag #'part \mark "in E"
  \transposition e
  R1*5
  \trCueWhile "violin1mF" "violin 15ma" #UP af, R1*2
  r4 cf-.\f cf-. cf-. d1\<
  c!4\ff r r2 | c,4 r r2 | c'4 r g r | g4 r r2 |
  g4 r r2 | c,4 r r2 | c'4 r b r | c2\ff~c8 r r4 |
  g4 r r2 | c,4 r r2 | g'4 r g r | g4 r r2 |
  g4 r r2 | c,4 r r2 | g'4 r b r | g2~g8 r r4 R1*8
  \barNumberCheck#OnemF
  g4\ff r r2 | af4 r r2 | g4 r g r | g4 r r2 |
  g4 r r2 | c2 c2 | c2 c4 b | c2 c4 b |
  c4 c8 b8 c4 c8 b8 | c4 c8 b c b c b |
  \barNumberCheck#TwomF
  r8 ef\f r bf r8 ef r8 bf | r8 ef r f r g r8 a! |
  r8 d, r d d r r4 | r8 ef r bf r ef r bf |
  r8 ef r f r g r af | r ef r d c r r4 R1*4
  r8 ef\f r bf r8 ef r8 bf | r8 ef r f r g r8 a! |
  r8 d, r d d r r4 | r8 ef r bf r ef r bf |
  r8 c\f r4 r2 | r8 bf\f r4 r2 |
  \times2/3 {ef8\f ef ef} r4 \times2/3 {c8\f c c} r4
  \times2/3 {a8\f a a} r4 \times2/3 {c8\f b! c} r4 R1*6
  \barNumberCheck#ThreemF
  R1*17\partPageBreak
  \trCueWhile "violin1mF" "violin 8va" #UP af R1*4
  \cueWhile "horn1mF" "horn I" #UP R1*3
  \barNumberCheck#FourmF
  \tag #'score \set Staff.instrumentName="H"
  bf1->\ff b1-> c4-> b-> c-> a-> af2-> g->
  bf1-> b1-> c4-> b-> c-> a-> af2 g4. r8 R1*4
  ef'1->\f bf2\< \times2/3{ ef8\! bf g } ef8 r |
  r4 g2->~\ff g8 r | r4 g2->~ g8 r |
  r4 g2->~ g8 r | r4 g2->~\f g8 r
  \tag #'score \set Staff.shortInstrumentName=\markup"H(F)"
  \transposition f
  R1*12 %-\tag #'part _\markup\large{\italic"muta in" "F"}
  R1*6 \partcombineSoloIIOnce
  \trCueWhile "oboe1mF" "oboe 8va" #UP g R1*4
  \inF
  bf2->\f c4-. d c4. bf8 bf2 | a4-. g-.\> a-. bf-. |
  a2\p\> g2 fs4\! r r2
  \tag #'score \set Staff.shortInstrumentName=\markup"H(E)"
  \transposition e
  R1*3
  \tag #'score \inE
  b2->\f c4-. d-. c4. b8 b2 | g2 af4 bf |
  af4 g g'4.-> g8
  \barNumberCheck#SixmF
  c,1\fz\> R1\! c1\fz\> R1\!
  c1\fp\>~c1\pp c1\fp\>~c1\pp\< | ef8\f r r4 r2 R1*5
  a,,1\p\> ~ a\! d1\pp ~d2 r R1*6
  R1*8
  cf'1\ff ~ cf R1*4
  b1\ff ~ b R1*6
  \barNumberCheck#EightmF
  d1\ff R1 d1\ff R1
  r2 a4\f r | r2 bf4\f r |
  ef8 ef r4 ef8\< ef r4 | ef8 ef r4 ef8 ef r4 |
  ef2->\ff f4-. gf-. | f4.-> ef8 ef2 | ef2-> df4-> bf8-. df-. | ef2. r4 |
  ef2 df4 bf8 df | ef2. r4 |
  ef1->\ffz df->\fz df->\fz c2->\fz fs,-> |
  c'1\fff ~c
  c4-. c-. r bf-. | r c-. r8 c-. c4-. |
  r4 c-. r bf-. | r8 c c r r4 c8-. r |
  \barNumberCheck#NinemF
  c2\(\p d4 ef d4. c8 c2\) | c2\(\> bf4 g8 bf\) | c1\pp R1*9
  R1*14
  \trCueWhile "oboe1mF" "oboe 8va" #UP af R1*2
  b2\p gs c1 | d2\< b e1->\fz | c2\f c,2 ~ c1\> | g~ g\p |
  \barNumberCheck#TenmF \partPageBreak
  R1*16
  \cueWhile "horn1mF" "horn I" #UP R1*4
  e'8-.\p c'-. g-. e-. c'-. g-. e-. c'-. |g-. e-. c'-. g-. e-. c'-. g-. e-. |
  c'16\< c g8 e c' g e16 e c'8 g |
  \times2/3{ e8( c') g-. } \times2/3{ e8 g c }
  \times2/3{ g8( e) g-. } \times2/3{ c8 e c }
  \barNumberCheck#ElevenmF
  c8\ff r r4 r2 R1*3
  c2->\fff d4-. ef-. d4. c8 c2 | c2-> bf4 g8 bf c1-> |
  c2-> bf4 g8 bf c1-> |
  \repeat unfold 4 { c4-> g8-. bf-. }
  c4-. c-. c-. c-. | c4-. c-. c-. c-. |
  c1\ff ~ c cs ~ cs | b4 r g r c r b r |
  df4-. \partcombineApartOnce c-. c-. c-. |
  df-. \partcombineApartOnce c-. c-. c-. |
  ef4-. d-. c-. bf-. d-. df-. c-. b-. |
  \barNumberCheck#TwelvemF
  c1->\ffz df->\fz c->\fz cs->\fz af-> af-> c->\fff ~ c
  c1\> ~ c ~c4\! r r2 R1*11
  c2\p d4-- ef-- d4. c8 c2 | bf1\pp
  af2 bf c1 ~ c4 r r2 R1*2
  f,1->\ff f2-> f-> g1\fff ~ g
  g1-> d'4. cs8 cs2 | g1-> d'4. cs8 cs2 |
  \repeat unfold 12 e,4-.
  \repeat unfold 8 { g4 \times2/3 g4.:8 }
  g4-. r r2 | g4-. r g-. r | g4-. r r2 | g4-. r r2 |
  << g1\fermata {s2\> s\ppp} >>
}

hornIIImF = \relative c'' {
  \tag #'part \mark "in E"
  \transposition e
  R1*5
  \trCueWhile "violin1mF" "violin 15ma" #UP af, R1*2
  r4 b-.\f b-. b-. b1\<
  c2->\ff d4-. ef-. d4.-> c8 c2 |
  c2 bf4 g8 bf c2.-> c4 | c2-> d4-. ef-. | d4.-> c8 c2 |
  c4 \times2/3{ ef8 c ef } g4 g, | c2\ff ~c8 r r4 |
  c2-> d4-. ef-. d4.-> c8 c2 |
  c2 bf4 g8 bf c2 r4 c4 | c2-> d4-. ef-. | d4.-> c8 c2 |
  c4 \times2/3{ ef8 c ef } g4 g, | c2 ~c8 r r4 R1*8
  c4\ff r r2 | c4 r r2 | c4 r bf r | c4 r r2 |
  c4 r r2 | c2 c2 | c2 c4 g | c2 c4 g |
  c4 c8 g8 c4 c8 g8 | c4 c8-. g-. c-. g-. c-. g-. |
  \barNumberCheck#TwomF
  r8 c\f r g r8 c r8 g | r8 c r d r ef r8 f |
  r8 bf, r bf bf r r4 | r8 c r g r c r g |
  r8 c r d r ef r f | r c r b! c r r4 R1*4
  r8 c\f r g r8 c r8 g | r8 c r d r ef r8 f |
  r8 bf, r bf bf r r4 | r8 c r g r c r g |
  r8 ef'\f r4 r2 | r8 d\f r4 r2 | c8 r r4 r2 R1*7
  R1*12
  \cueWhile "clarinet1mF" "clarinet" #UP R1*4
  b1\p\< c d\fz ef\fz R1*4
  \barNumberCheck#FourmF
  \tag #'score \set Staff.instrumentName="H"
  R1*11
  \trCueWhile "violin1mF" "violin 8va" #UP af R1
  ef1->\f bf2\< \times2/3{ ef8\! bf g } ef8 r |
  r4 g2->~\ff g8 r | r4 g2->~ g8 r |
  r4 g2->~ g8 r | r4 g2->~\f g8 r
  g8-| a-| b-| g-| c-| g-| ef-| c-| g'-| a-| b-| g-| c-| g-| ef-| c-| |
  bf1->\fp\> ~bf g'1\mp\> ~ g g\p\> ~ g
  ~g4\! r r2 %-\tag #'part ^\markup\large{\italic"muta in" "F"}
  \tag #'score \set Staff.shortInstrumentName=\markup"H(F)"
  \transposition f
  R1*11
  \cueWhile "oboe1mF" "oboe" #UP R1*2
  \inF
  bf2->\f c4-. d c4. bf8 bf2 | a4-. g-.\> a-. bf-. |
  a2\p\> g2 fs4\! r r2 %-\tag #'part ^\markup\large{\italic"muta in" "E"}
  \tag #'score \set Staff.shortInstrumentName=\markup"H(E)"
  \transposition e
  R1*3 \inE
  b2->\f c4-. d-. c4. b8 b2 | g2 af4 bf |
  af4 g g4. g8
  \barNumberCheck#SixmF
  c,1\fz\> R1\! c1\fz\> R1\!
  c1\fp\>~c1\pp c1\fp\>~c1\pp\< | c'8\f r r4 r2 R1*9
  \trCueWhile "flute1mF" "flute 8va" #UP af R1*2
  bf1\pp ~ bf g1 ~ g ~ \partPageBreak
  \barNumberCheck#SevenmF
  g4 r r g | r2 g4 r | r g r2 | g4 r r g4 | r2 g4 r |
  g4 r g\< r g r g r g r g r\! R1*2
  b4\pp r b r b\< r b r b r b r b r b r b1->\ff ~b |
  b4\p b8 b b[ r16 b] b8 b | \repeat unfold 8 b8-.
  ef4 ef8 ef ef[\< r16 ef] ef8 ef |
  ef8-. ef8-. ef8-. ef8-. ef8-. ef8-. ef8-. ef8-.\!
  \tag #'score \set Staff.shortInstrumentName=\markup"H(C)"
  \transposition c
  \tag#'part \inC
  R1*2
  \barNumberCheck#EightmF
  \tag#'score \inC
  c,4.\ff\< ef8-. fs-. a4.->\fz c1->\fz |
  c,4.\ff\< ef8-. fs-. a4.->\fz c1->\fz |
  \tag #'score \set Staff.shortInstrumentName=\markup"H(E)"
  \transposition e
  R1*2 %-\tag #'part ^\markup\large{\italic"muta in" "E"}
  \inE
  c8\f c r4 c8\< c r4 | c8 c r4 c8 c r4 |
  bf1\ff ~bf
  bf4. bf16 bf bf4. bf16 bf bf1 |
  bf4. bf16 bf bf4. bf16 bf bf1 |
  bf1->\ff bf1->\fz bf1->\fz a2->\fz d,2-> g1->\fff ~g
  g4-. g-. r g-. | r g-. r8 g-. g4-. |
  r4 g-. r g-.| r8 g-. g-. r r4 g8-. r |
  \barNumberCheck#NinemF
  R1*13
  R1*24
  \barNumberCheck#TenmF
  R1*16
  \cueWhile "horn1mF" "horn I" #UP R1*3
  r4 c,\p g c, ~c1 ~c1 ~
  c1\< ~c1
  \barNumberCheck#ElevenmF
  ef''1\ff ~ef ef->\ffz ~ef g,1->\fff ~g
  r8 ef'\f r bf \repeat unfold 11 { r ef r bf }
  ef4-. ef-. ef-. ef-. | ef4-. ef-. ef-. ef-. |
  af,1\ff ~af af ~af
  g4 r g r af r g r | bf4-. a-. c-. c-. bf-. a-. c-. c-. |
  c4-. f,-. c'-. ef-. bf-. df-. c-. b-. |
  \barNumberCheck#TwelvemF
  c1->\ffz bf->\fz c->\fz cs->\fz c2-> f, df'-> df,4-. f-. |
  g1->\fff ~ g g1\> ~ g ~g4\! r r2
  R1*15
  R1*2 \partcombineSoloIOnce
  \trCueWhile "violin1mF" "violin 15ma" #UP af, R1*2
  d'1->\ff d2-> d-> c1\fff ~ c
  c,4.-> e8-. g-. c4.-> e1-> | c,4.-> e8-. g-. c4.-> e1-> |
  \repeat unfold 6 { c4-> bf-> }
  \repeat unfold 8 { c4 \times2/3 c4.:8 }
  c4-. r r2 | c4-. r c-. r | c4-. r r2 | c4-. r r2 |
  << c1\fermata {s2\> s\ppp} >>
}

hornIVmF = \relative c' {
  \tag #'part \mark "in E"
  \transposition e
  R1*5
  \trCueWhile "violin1mF" "violin 15ma" #UP af, R1*2
  r4 b-.\f b-. b-. b'1\<
  c2->\ff d4-. ef-. d4.-> c8 c2 |
  c2 bf4 g8 bf c2.-> c4 | c2-> d4-. ef-. | d4.-> c8 c2 |
  c4 \times2/3{ ef8 c ef } g4 g, | c2 ~c8 r r4 |
  c2-> d4-. ef-. d4.-> c8 c2 |
  c2 bf4 g8 bf c2 r4 c4 | c2-> d4-. ef-. | d4.-> c8 c2 |
  c4 \times2/3{ ef8 c ef } g4 g, | c2\ff ~c8 r r4 R1*8
  \barNumberCheck#OnemF
  c4\ff r r2 | c4 r r2 | c4 r bf r | c4 r r2 |
  c4 r r2 | c,2 c2 | c2 c4 g | c2 c4 g |
  c4 c8 g8 c4 c8 g8 | c4 c8-. g-. c-. g-. c-. g-. |
  \barNumberCheck#TwomF
  r8 c'\f r g r8 c r8 g | r8 c r d r ef r8 f |
  r8 bf, r bf bf r r4 | r8 c r g r c r g |
  r8 c r d r ef r f | r c r b! c r r4 R1*4
  r8 c\f r g r8 c r8 g | r8 c r d r ef r8 f |
  r8 bf, r bf bf r r4 | r8 c r g r c r g |
  r8 c\f r4 r2 | r8 bf\f r4 r2 | fs8 r r4 r2 R1*7
  R1*11
  <<
    \tag#'part {
      s2. \cueWhile "clarinet1mF" "clarinet" #UP {s4 s1*4 }
    }
    R1*5
  >>
  b1\p\< c d\fz ef\fz R1*4
  \barNumberCheck#FourmF
  \tag #'score \set Staff.instrumentName="H"
  <<
    s1\ff
    \repeat unfold 8 ef,1->
    \tag#'part \repeat percent 8 s1
  >>
  R1*4
  ef'1->\f bf2\< \times2/3{ ef8\! bf g } ef8 r |
  r4 g,2->~\ff g8 r | r4 g2->~ g8 r |
  r4 g2->~ g8 r | r4 g2->~\f g8 r
  g8-| a-| b-| g-| c-| g-| ef'-| c-| g-| a-| b-| g-| c-| g-| ef'-| c-| |
  bf1->\fp\> ~bf g1\mp\> ~ g g\p\> ~ g ~g4\! r r2
  \tag #'score \set Staff.shortInstrumentName=\markup"H(F)"
  \transposition f
  R1*11
  \cueWhile "oboe1mF" "oboe" #UP R1*2
  \inF
  bf'2->\f c4-. d c4. bf8 bf2 | a4-. g-.\> a-. bf-. |
  a2\p\> g2 fs4\! r r2
  \tag #'score \set Staff.shortInstrumentName=\markup"H(E)"
  \transposition e
  R1*3
  \inE
  b2->\f c4-. d-. c4. b8 b2 | g2 af4 bf |
  af4 g g4. g8
  \barNumberCheck#SixmF
  c,1\fz\> R1\! c1\fz\> R1\!
  c1\fp\>~c1\pp c1\fp\>~c1\pp\< | c8\f r r4 r2 R1*9 \partPageBreak
  \trCueWhile "flute1mF" "flute 8va" #UP af R1*2
  bf1\pp ~ bf g1 ~ g ~
  \barNumberCheck#SevenmF
  g4 r r g | r2 g4 r | r g r2 | g4 r r g4 | r2 g4 r |
  g4 r g\< r g r g r g r g r\! R1*2
  b4\pp r b r b\< r b r b r b r b r b r b1->\ff ~b R1*2
  c'4 c8 c c[\< r16 c] c8 c | c8-. c8-. c8-. c8-. c8-. c8-. c8-. c8-.\!
  \tag #'score \set Staff.shortInstrumentName=\markup"H(C)"
  \transposition c
  \tag#'part \inC
  R1*2
  \barNumberCheck#EightmF
  c,4.\ff\< ef8-. fs-. a4.->\fz c1->\fz |
  c,4.\ff\< ef8-. fs-. a4.->\fz c1->\fz |
  \tag #'score \set Staff.shortInstrumentName=\markup"H(E)"
  \transposition e
  R1*2
  \tag#'part \inE
  c,8\f c r4 c8\< c r4 | c8 c r4 c8 c r4 |
  bf1\ff ~bf
  bf4. bf16 bf bf4. bf16 bf bf1 |
  bf4. bf16 bf bf4. bf16 bf bf1 |
  bf1->\ff bf1->\fz bf1->\fz a2->\fz d2-> g1->\fff ~g
  g4-. g-. r g-. | r g-. r8 g-. g4-. |
  r4 g-. r g-.| r8 g-. g-. r r4 g8-. r |
  \barNumberCheck#NinemF
  R1*13
  R1*24
  \barNumberCheck#TenmF
  R1*16
  \cueWhile "horn1mF" "horn I" #UP R1*3
  r4 c,\p g c, ~c1 ~c1 ~
  c1\< ~c1
  \barNumberCheck#ElevenmF
  a''1\ff ~a c->\ffz ~c g,1->\fff ~g
  r8 c'\f r g \repeat unfold 11 { r c r g }
  c4-. c-. c-. c-. | c4-. c-. c-. c-. |
  c,1\ff ~c df ~df
  d4 r ef r f r g r | bf4-. a-. c,-. c-. bf'-. a-. c,-. c-. |
  c4-. \partcombineApartOnce f-. c-. ef-. |
  \partcombineApartOnce bf'-. af-. g-. g-.
  \barNumberCheck#TwelvemF
  g1->\ffz gf->\fz g->\fz a->\fz c2-> f, df'-> df,4-. f-. |
  c1->\fff ~ c c1\> ~ c ~c4\! r r2 R1*15
  \trCueWhile "violin1mF" "violin 8va" #DOWN af R1 \partcombineSoloIIOnce
  \trCueWhile "violin1mF" "" #UP af R1*3
  bf'1->\ff bf2-> bf-> c,1\fff ~ c
  c4.-> e8-. g-. c4.-> e1-> | c,4.-> e8-. g-. c4.-> e1-> |
  \repeat unfold 6 { c,4-> bf-> }
  \repeat unfold 8 { c'4 \times2/3 c4.:8 }
  c4-. r r2 | c4-. r c-. r | c4-. r r2 | c4-. r r2 |
  << c,1\fermata {s2\> s\ppp} >>
}

trumpetImF = \relative c' {
  \tag #'part \mark "in E"
  \transposition e
  R1*7
  r4 fs-.\f fs-. fs-. | r8 g\< r g r g r g |
  c,2->\ff d4-. ef-. | d4.->\ff c8 c2 |
  c bf4 g8 bf | c2.-> c4 |
  c2-> d4-. ef-. | d4.-> c8-. c2-. |
  c4 \times2/3{ ef8 c ef } g4 g, | c2\ff ~ c8 r r4 |
  c'2-> d4-. ef-. | d4.-> c8 c2 |
  c bf4 g8 bf | c2 r4 c |
  c2-> d4-. ef-. | d4.-> c8 c2 |
  c4 \times2/3{ ef8 c ef } g4 g, | c2~c8 r r4 R1*8
  g4\ff r r2 | c4 r r2 | g4 r4 g r4 | g r4 r2 |
  g4 r4 r2 | f4-> ef8-. f-. g2-> |
  af-> af4-. g-. | af2-> af4-. g-. |
  af af8-. g-. af4 af8-. g-. | af4 af8-. g-. af-. g-. af-. g-. |
  \barNumberCheck#TwomF
  c\f r8 r4 c8 r8 r4 | c8 r r4 r2 R1
  c8\f r8 r4 c8 r8 r4 | c8 r8 r4 r4 c8 r8 | g r8 g r8 c r r4 R1*4
  c8\f r8 r4 c8 r8 r4 | c8 r r4 r2 R1
  c8\f r8 ef, r8 c' r8 ef, r8 | c' r r4 r2 g8 r r4 r2 |
  r4 c4--\f r4 c-- | r4 c--\f r4 c-- | R1*6 R1*19
  \trCueWhile "violin1mF" "violin 15ma" #UP af, R1*5
  \barNumberCheck#FourmF
  \tag #'score \set Staff.instrumentName="T"
  g2\ff r8 g16 g g8 g | d2 r4 d |
  g-. g-. r8 g16 g g8 g | d4 d8. d16 g4 r4 |
  g2 r8 g16 g g8 g | d2 r4 d |
  g g r8 g16 g g8 g | d4 d8. d16 g4 r4 |
  g2\f r8 g16 g g8 g | d2 r4 \times2/3{ d8 d d } |
  g4-. g-. r8 g16 g g8 g | d4 \times2/3{ d8 d d } d4 d |
  g4. g16 g g8 g16 g g8 g | d r8 \times2/3{ d8 d d } g4 r4 |
  R1*16 R1*10 \cueWhile "horn1mF" "horn" #UP R1*3
  bf4.\pp bf16-. bf-. bf4-. bf-. | bf r r2 R1*7
  \tag #'score \set Staff.shortInstrumentName=\markup\concat{"T(E"\flat")"}
  \transposition ef
  R1*24
  R1*4
  \transposedCueDuring "violin1mF" #DOWN a, R1*2 \partcombineSoloIOnce
  \trCueWhile "violin1mF" "violin 15ma" #UP a, R1*2
  \inEf
  e,4.\ff g8 g2 | e4. e8 c2
  \tag #'score \set Staff.shortInstrumentName="T(E)"
  \transposition e
  R1*4
  \inE
  d4.\ff fs8 fs2 | d4. cs8 b2 |
  g'4\pp g8 g g r16 g g8 g | g2:8 g2:8
  g4 g8 g g\< r16 g g8 g | g2:8 g2:8
  c4\fz c8 c c r16 c c8 c | c2:8-.\< c2:8-.\partPageBreak
  d1->\ff R1 d1->\ff R1
  r2 d4\f r4 r2 d4\f r
  \tag #'score \set Staff.shortInstrumentName="T(C)"
  \transposition c'
  R1*2
  \inC
  g,2->\ff a4-.-"marcato" bf-. a4.-> g8 g2 |
  g2-> f4-> d8-. f-. g2.-> r4 |
  g2-> f4-> d8-. f-. g2.-> r4 |
  g2.->\ff r4 bf2.->\fz r4
  d2.->\fz r4 e1->\fz b!->\fff~b
  b4-. b-. r b-. | r b-. r8 b-. b4-. | r b-. r b-. | r8 b-. b-. r r4 b8-. r |
  R1*13
  R1*24
  \tag #'score \set Staff.shortInstrumentName="T(E)"
  \transposition e
  R1*21
  R1*3
  \trCueWhile "cellomF" "low strings 8vb" #DOWN af'' R1
  \trCueWhile "cellomF" "" #UP af'' R1*2
  \trCueWhile "cellomF" "" #DOWN af'' R1
  \inE
  g2\ff r2 | r4 g8\ff g16 g g8 g g g | g2 r |
  \repeat unfold 5 {r8 g16 g g8 g g4. r8 |}
  g r r4 r2 R1*2
  r2 r4 af8.\ff af16 | af1~af2. af4 |
  g r4 g r4 | c r4 g r4 |
  g-. c8 c c4 c8 c | g4-. c8 c c4 c8 c |
  c4 d8 d g,4 g8-. g-. | d'4 f,8 f g4 g8 g |
  \barNumberCheck#TwelvemF
  c,1->\ff df1->\fz c1->\fz cs1->\fz c1-> df-> ef->\ff~ef~ef4 r r2
  R1*13 R1*4
  \trCueWhile "violin1mF" "violin 8va" #DOWN af R1
  \trCueWhile "violin1mF" "" #UP af R1*3
  d'1->\ff | d2-> d-> | c1-^\fff~c
  c2-> d4 e | d4.-> cs8 cs2 |
  c-> d4 e | d4.-> cs8 cs2 |
  \repeat unfold 6 {c4-. df-.}
  \repeat unfold 8 {c4 \times2/3 c4.:8 }
  c4 r r2 | c4-. r c-. r | c-. r r2 | c4-. r r2 |
  << c1\fermata {s2\> s\ppp} >>
}

trumpetIImF = \relative c' {
  \tag #'part \mark "in E"
  \transposition e
  R1*7
  r4 fs-.\f fs-. fs-. | r8 g,\< r g r g r g |
  c2->\ff d4-. ef-. | d4.->\ff c8 c2 |
  c bf4 g8 bf | c2.-> c4 |
  c2-> d4-. ef-. | d4.-> c8-. c2-. |
  c4 \times2/3{ ef8 c ef } g4 g, | c2\ff ~ c8 r r4 |
  c2-> d4-. ef-. | d4.-> c8 c2 |
  c bf4 g8 bf | c2 r4 c |
  c2-> d4-. ef-. | d4.-> c8 c2 |
  c4 \times2/3{ ef8 c ef } g4 g, | c2~c8 r r4 R1*8
  \barNumberCheck#OnemF
  g'4\ff r r2 c,4 r r2 g'4 r4 g r4 | g r4 r2 |
  g4 r4 r2 | f4-> ef8-. f-. g2-> |
  af-> af4-. g-. | af2-> af4-. g-. |
  af af8-. g-. af4 af8-. g-. | af4 af8-. g-. af-. g-. af-. g-. |
  \barNumberCheck#TwomF
  c,\f r8 r4 c8 r8 r4 | c8 r r4 r2 R1
  c8\f r8 r4 c8 r8 r4 | c8 r8 r4 r4 c8 r8 |
  \partcombineApartOnce g' r8 \partcombineApartOnce g r8 c, r r4 R1*4
  c8\f r8 r4 c8 r8 r4 | c8 r r4 r2 R1
  c8\f r8 \partcombineApartOnce ef r8 c r8 \partcombineApartOnce ef r8 |
  c r r4 r2 g8 r r4 r2 | r4 c4--\f r4 c-- | r4 c--\f r4 c-- |
  R1*6 R1*19
  \trCueWhile "violin1mF" "violin 15ma" #DOWN af, R1*5
  \barNumberCheck#FourmF
  \tag #'score \set Staff.instrumentName="T"
  g'2\ff r8 g16 g g8 g | d2 r4 d |
  g-. g-. r8 g16 g g8 g | d4 d8. d16 g4 r4 |
  g2 r8 g16 g g8 g | d2 r4 d |
  g g r8 g16 g g8 g | d4 d8. d16 g4 r4 |
  g2\f r8 g16 g g8 g | d2 r4 \times2/3{ d8 d d } |
  g4-. g-. r8 g16 g g8 g | d4 \times2/3{ d8 d d } d4 d |
  g4. g16 g g8 g16 g g8 g | d r8 \times2/3{ d8 d d } g4 r4 |
  R1*16 R1*10 \cueWhile "horn1mF" "horn" #UP R1*3
  bf,4.\pp bf16-. bf-. bf4-. bf-. | bf r r2 R1*7
  \tag #'score \set Staff.shortInstrumentName=\markup\concat{"T(E"\flat")"}
  \transposition ef
  R1*24
  R1*4
  \trCueWhile "violin1mF" "violin 8va" #UP a R1*4
  \inEf
  e4.\ff g8 g2 | e4. e8 c2
  \tag #'score \set Staff.shortInstrumentName="T(E)"
  \transposition e
  R1*4 \inE
  d4.\ff fs8 fs2 | d4. cs8 b2 |
  g4\pp g8 g g r16 g g8 g | g2:8 g2:8
  g4 g8 g g\< r16 g g8 g | g2:8 g2:8
  c4\fz c8 c c r16 c c8 c | c2:8-.\< c2:8-. \partPageBreak
  d1->\ff R1 d1->\ff R1
  r2 d4\f r4 r2 d4\f r
  \tag #'score \set Staff.shortInstrumentName="T(C)"
  \transposition c'
  R1*2 \inC
  g2->\ff a4-.-\markup\italic"marcato" bf-. a4.-> g8 g2 |
  g2-> f4-> d8-. f-. g2.-> r4 |
  g2-> f4-> d8-. f-. g2.-> r4 |
  g2.->\ff r4 bf2.->\fz r4
  d2.->\fz r4 e1->\fz b!->\fff~b
  b4-. b-. r b-. | r b-. r8 b-. b4-. | r b-. r b-. | r8 b-. b-. r r4 b8-. r |
  R1*13
  R1*24
  \tag #'score \set Staff.shortInstrumentName="T(E)"
  \transposition e
  R1*21
  R1*3
  \trCueWhile "cellomF" "low strings 8vb" #DOWN af'' R1
  \trCueWhile "cellomF" "" #UP af'' R1*2
  \trCueWhile "cellomF" "" #DOWN af'' R1
  \tag#'part \inE
  ef,2\ff r2 | r4 ef8\ff ef16 ef ef8 ef ef ef | ef2 r |
  \repeat unfold 5 {r8 ef16 ef ef8 ef ef4. r8 |}
  ef r r4 r2 R1*2
  r2 r4 af8.\ff af16 | af1~af2. af4 |
  g r4 g r4 | c r4 g r4 |
  g-. c8 c c4 c8 c | g4-. c8 c c4 c8 c |
  c,4 d8 d e4 g8-. g-. | d4 f8 f g4 g8 g |
  \barNumberCheck#TwelvemF
  c,1->\ff df1->\fz c1->\fz cs1->\fz c1-> df-> ef->\ff~ef~ef4 r r2
  R1*13 R1*4
  \trCueWhile "violin1mF" "violin 8va" #DOWN af R1*1
  \trCueWhile "violin1mF" "" #UP af R1*3
  bf'1->\ff | bf2-> bf-> | c1-^\fff~c
  c2-> d4 e | d4.-> cs8 cs2 |
  c-> d4 e | d4.-> cs8 cs2 |
  \repeat unfold 6 {c,4-. df-.}
  \repeat unfold 8 {c4 \times2/3 c4.:8 }
  c4 r r2 | c4-. r c-. r | c-. r r2 | c4-. r r2 |
  << c1\fermata {s2\> s\ppp} >>
}

tromboneImF = \relative c' {
  \key e \minor
  \clef alto
  R1*7
  r4 ef4-.\f df-. df-. | \scoreDynamicsOff c8\< b! c b c b c b |
  b4\ff r r2 | c4 r r2 | b4 r4 b r4 | b r r2 |
  b4 r r2 | c4 r r2 | b4 r4 a r4 | b2\ff~b8 r r4 |
  b4 r r2 | c4 r r2 | b4 r4 b r4 | b r r2 |
  b4 r r2 | c4 r r2 | e4 r4 ds r4 | e2~e8 r r4 R1*8
  \barNumberCheck#OnemF
  b4\ff r r2 | c4 r r2 | b4 r4 b r4 | b r r2 |
  b4 r r2 | e2-> b-> | c c4-. b-. | c2 c4 b |
  c c8 b c4 c8 b | c4 c8-. b-. c-. b-. c-. b-. |
  \barNumberCheck#TwomF
  e\f r8 b r8 e r8 b r8 | g r8 a r8 b r8 cs r8 |
  d r8 d r8 d r r4 | e8 r8 b r8 e r8 b r8 |
  g r8 a r8 b r8 c r8 | b r8 ds r8 e r r4 R1*4
  e8\f r8 b r8 e r8 b r8 | g r8 a r8 b r8 cs r8 |
  d r8 d r8 d r r4 | e8 r8 b r8 e r8 b r8 |
  b r r4 r2 | b8 r r4 r2 |
  r4 e4\fz r4 cs\fz | r4 e,\fz r4 e\fz R1*6
  R1*20
  \trCueWhile "violin1mF" "violin 15ma" #UP c, R1*4
  \barNumberCheck#FourmF
  g4\ff r r2 | g4 r r2 | g8 r8 g r8 g r8 g r8 | g r8 g r8 g4 r4 |
  g r r2 | g4 r r2 | g8 r8 g r8 g r8 g r8 | g r8 g r8 g4 r4 |
  d'\f r r d4 | r2 ef4\f r | r d4 r2 | ef4 r r ef4 | d8 r8 ds r8 e r8 e r8 |
  d r8 d r8 d4 r R1*16 R1*22 R1*24 R1*4
  <<
    \tag#'part {
      \transposedCueDuring "violin1mF" #DOWN c,
      { s2 s2^\markup\tiny"violin 15ma" s1 }
      \transposedCueDuring "violin1mF" #UP c, s1*2
    }
    R1*4
  >>
  g,4.\ff bf8 bf2 | g4. f8 ef2 R1*4
  gf4.\ff bf8 bf2 | gf4. f8 ef2 R1*6 \partPageBreak
  c'1->\ff R1 c1->\ff R1
  cs2.->\f r8 cs | d2.->\f r8 d |
  \repeat unfold 4 {d4(\fz cs8) r8 } d4 r r2 R1*9
  e2->\ff fs4 g | fs4. e8 e2 |
  e d4 b8 d | e2. r4 |
  e2 d4 b8 d | e2. r4 |
  \barNumberCheck#NinemF
  g,1\pp~g~g~g
  R1*9
  R1*24
  \key e\major
  R1*21
  R1*3
  << \tag#'part {\transposedCueDuring "cellomF" #UP c'' {
    s1_\markup\tiny "low strings 8vb" s1*3
  }} R1*4 >>
  e'2->\ff fs4-. g-. |\key e\minor
  fs4. e8 e2 |
  e-> d4-> b8-. d-. | e1-> |
  e2-> d4-> b8-. d-. | e1-> |
  e4-> b8-. d-. e4-> b8-. d-. | e4-> b8-. d-. e4-> b8-. d-. | e r r4 r2 R1
  e,4.-> g8-. c-. e4.-> | g e8 d c4. |
  df1\fff~df2. d4 | ds r e r | e r4 ds r4 |
  b-. cs-. e-. e-. | b-. cs-. e-. e-. |
  e-. fs-. e-. d-. | d-. c-. b-. b-. |
  b1^^\ff | bf^^\fz | b^^\fz | cs-^\fz | c-^ | c-^ | e1-^\fff~e~e4 r r2 R1*13
  \cueWhile "horn1mF" "horn" #UP R1*2
  fs,1\pp~fs g1~g4 r r2 R1*2
  d'1->\ff | c2-> d-> | b1->\fff~b
  e,4.-> gs8-. b-. e4.-> | c1-> |
  e,4.-> gs8-. b-. e4.-> | c1-> |
  b4-. c-. b-. c-. | b-. c-. b-. c-. | b-. gs-. b-. c-. |
  b-. gs-. b-. cs-. | e-. gs,-. b-. cs-. |
  e-. cs-. b-. gs-. | e'-. cs-. b-. gs-. |
  b-. r r2 | b4 r4 b r4 | b r r2 | b4 r r2 | b4 r4 r2\fermata
}

tromboneIImF = \relative c' {
  \key e \minor
  \clef tenor
  R1*7
  r4 g4-.\f g-. g-. | fs1\<|
  g4\ff r r2 | a4 r r2 | g4 r4 g r4 | g r r2 |
  g4 r r2 | a4 r r2 | g4 r fs r4 | g2\ff~g8 r r4 |
  g4 r r2 | a4 r r2 | g4 r4 g r4 | g r r2 |
  g4 r r2 | a4 r r2 | b4 r4 a r4 | b2~b8 r r4 R1*8
  \barNumberCheck#OnemF
  g4\ff r r2 | a4 r r2 | g4 r4 g r4 | g r r2 |
  g4 r r2 | c2-> g-> | a a4-. fs-. | a2 a4-. fs-. |
  a a8-. fs-. a4 a8-. fs-. | a4 a8-. fs-. a-. fs-. a-. fs-. |
  \barNumberCheck#TwomF
  e\f r8 \partcombineApartOnce b' r8 e, r8 \partcombineApartOnce b' r8 |
  e, r8 fs r8 g r8 a r8 | d, r8 d r8 d r r4 |
  e8 r8 \partcombineApartOnce b' r8 e, r8 \partcombineApartOnce b' r8 |
  e, r8 fs r8 g r8 a r8 | g r8 fs r8 g r r4 R1*4
  e8\f r8 \partcombineApartOnce b' r8 e, r8 \partcombineApartOnce b' r8 |
  e, r8 fs r8 g r8 a r8 |  d, r8 d r8 d r r4 |
  e8 r8 \partcombineApartOnce b' r8 e, r8 \partcombineApartOnce b' r8 |
  g r r4 r2 | fs8 r r4 r2 |
  r4 bf4\fz r4 g\fz | r4 cs,\fz r4 cs\fz R1*6
  R1*20 %\partPageBreak
  \trCueWhile "violin1mF" "violin 15ma" #UP c, R1*4
  \barNumberCheck#FourmF
  g'4\ff r r2 | g4 r r2 | g8 r8 g r8 g r8 g r8 | g r8 g r8 g4 r4 |
  g r r2 | g4 r r2 | g8 r8 g r8 g r8 g r8 | g r8 g r8 g4 r4 |
  b4\f r r b | r2 c4\f r | r b4 r2 | c4 r r c4 | b8 r8 b r8 b r8 cs r8 |
  c r8 c r8 b4 r R1*16
  \barNumberCheck#FivemF
  R1*22 R1*24
  \barNumberCheck#SevenmF \partPageBreak
  R1*4
  \transposedCueDuring "violin1mF" #DOWN c, <<
    R1*2
    \tag#'part { s2 s2^\markup\tiny"violin 15ma" }
  >>
  \transposedCueDuring "violin1mF" #UP c, R1*2
  g4.\ff bf8 bf2 | g4. f8 ef2 R1*4
  gf4.\ff bf8 bf2 | gf4. f8 ef2 R1*6
  c'1->\ff R1 c1->\ff R1
  cs2.->\f r8 cs | d2.->\f r8 d |
  \repeat unfold 4 {d4(\fz cs8) r8 } d4 r r2 R1*9
  e2->\ff fs4 g | fs4. e8 e2 |
  e d4 b8 d | e2. r4 |
  e2 d4 b8 d | e2. r4 |
  \barNumberCheck#NinemF
  e,1\pp~e~e~e
  R1*9
  \key e\major
  R1*24
  \barNumberCheck#TenmF %\partPageBreak
  R1*21
  R1*3
  << \tag#'part {\transposedCueDuring "cellomF" #UP c'' {
    s1_\markup\tiny "low strings 8vb" s1*3
  }} R1*4 >>
  e2->\ff fs4-. g-. |\key e\minor
  fs4. e8 e2 |
  e-> d4-> \partcombineApartOnce b'8-. d,-. | e1-> |
  e2-> d4-> \partcombineApartOnce b'8-. d,-. | e1-> |
  e4-> \partcombineApartOnce b'8-. d,-. e4-> \partcombineApartOnce b'8-. d,-. |
  e4-> \partcombineApartOnce b'8-. d,-. e4-> \partcombineApartOnce b'8-. d,-. |
  e r r4 r2 R1
  e4.->\ff g8-. c-. e4.-> | g-> e8 d c4. |
  af1\fff~af2. af4 | a r b r | c r4 a r4 |
  gs-. a-. as-. b-. | gs-. a-. as-. b-. |
  c-. d-. b-. b-. | a-. a-. g-. fs-. |
  g1^^\ff | f^^\fz | g^^\fz | gs-^\fz | e-^ | a-^ |
  b1-^\fff~b~b4 r r2 R1*13
  \cueWhile "horn1mF" "horn" #UP R1*2
  d,1\pp~d e1~e4 r r2 R1*2
  fs1->\ff | fs2-> fs-> | gs1->\fff~gs
  e4.-> gs8-. b-. e4.-> | af,1-> |
  e4.-> gs8-. b-. e4.-> | af,1-> |
  \repeat unfold 6 {gs4-. es-.}
  gs-. \repeat unfold 15 e-. |
  gs-. r r2 | gs4 r4 gs r4 | gs r r2 | gs4 r r2 |
  gs4 r4 r2\fermata
}

bassTrombonemF = \relative c {
  \key e \minor
  \clef bass
  R1*7
  r4 ef4-.\f df-. df-. | c8\< b! c b c b c b |
  e4\ff r4 r2 | a,4 r4 r2 | e'4 r4 b r4 | e r4 r2 |
  e4 r4 r2 | a,4 r4 r2 | g4 r4 fs r4 | e2\ff~e8 r8 r4 |
  e'4 r4 r2 | a,4 r4 r2 | e'4 r g r | e4 r4 r2 |
  e4 r4 r2 | a,4 r4 r2 | e'4 r fs r | e2~e8 r r4 R1*8
  \barNumberCheck#OnemF
  e4\ff r4 r2 | a4 r4 r2 | e4 r4 g r4 | e r4 r2 |
  e4 r4 r2 | c2-> g-> |
  a a4-. b-. | a2 a4-. b-. |
  a a8-. b-. a4 a8-. b-. | a4 a8-. b-. a-. b-. a-. b-. |
  \barNumberCheck#TwomF
  e\f r8 b r8 e r8 b r8 | e r8 fs r8 g r8 a r8 | d, r8 d r8 d r8 r4 |
  e8 r8 b r8 e r8 b r8 | e r8 fs r8 g r8 a r8 | b r8 b, r8 e r r4 R1*4
  e8\f r8 b r8 e r8 b r8 | d r8 fs r8 g r8 a r8 | d, r8 d r8 d r8 r4 |
  e8 r8 b r8 e r8 b r8 | e8\fz r8 r4 r2 d8\fz r8 r4 r2
  cs8\f r8 cs2-> bf4->~bf g2.-> R1*27
  \trCueWhile "violin1mF" "violin 15ma" #UP c, R1*3
  g4\ff r4 r2 | g4 r4 r2 | g8 r8 g r8 g r8 g r8 | g r8 g r8 g4 r4 |
  g r4 r2 | g4 r4 r2 | g8 r8 g r8 g r8 g r8 | g r8 g r8 g4 r4 |
  g'\f r r g4 | r2 g4\f r r g4\f r2 | g4 r r g4 | g8 r8 g r8 g r8 g r8 |
  g r8 g r8 g4 r R1*16 R1*22 R1*24 R1*22
  R1*14
  \trCueWhile "violin1mF" "violin 15ma" #UP c, R1*4
  e2->\ff fs4 g | fs4. e8 e2 |
  e d4 b8 d | e2. r4 |
  e2 d4 b8 d | e2. r4 |
  b1\pp~b~b~b R1*9
  \key e\major
  R1*24 \partPageBreak
  \barNumberCheck#TenmF
  R1*21
  R1*3
  \cueWhile "cellomF" "low strings" #UP R1*4
  e2->\ff fs4-. g-. |\key e\minor
  fs4. e8 e2 |
  e-> d4 b8-. d-. | e1-> |
  e2-> d4-> b8-. d-. | e1-> |
  e4-> b8-. d-. e4-> b8-. d-. | e4-> b8-. d-. e4-> b8-. d-. | e r r4 r2 R1*3
  f1\ff~f2. f4 | fs r4 g r4 | a r4 b, r4 |
  gs-. a-. as-. b-. | gs-. a-. as-. b-. |
  c-. d-. e-. g-. | d-. a-. b-. b-. |
  e1->\ff | d->\fz | e->\fz | cs->\fz | a-> | f'-> | e1->\fff~e~e4 r r2 R1*13
  \trCueWhile "horn1mF" "horn 8va" #UP c R1*2
  a,1\pp~a e1~e4 r r2 R1*2
  a1->\ff | a2-> a-> | e'1->\fff~e |
  e->\ff d-> | e-> | d-> |
  e4-. gs,-. e'-. gs,-. | e'-. gs,-. e'-. gs,-. | e'-. gs,-. e'-. gs,-. |
  e'-. gs,-. b-. cs-. | e-. r r2 |
  r2 r4 gs-. | e-. cs-. b-. gs-. | e-. r4 r2 |
  e'4 r4 e r4 | e r4 r2 | e4 r4 r2 | e4 r4 r2\fermata
}
