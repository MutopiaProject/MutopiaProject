\version "2.14.0"

% Variables to hold common motifs.
% Names end in B for brass, then the measure number
% of first occurence
motifBsixteen={
  d8.->\p\< f16-. af16-. bf8.-> cf'8.->\f\> af16-. gf16-. f8.->\!
}

hornImA = \relative c'' {
  \tag#'part \mark "in E"
  \transposition e
  R1*5
  <<
    \tag #'part {
      % In trCueWhile, we specify af' in absolute mode,
      % as the desired notation on this staff when the cue-ing
      % instrument plays concert Middle-C
      \trCueWhile "flute1mA" "flute 8va" #UP af { s1*3 \voiceOne s2 }
      \cueWhile "violin1mA" "strings" #DOWN { s2 | s8.. }
    } { R1*4 r8..
  } >> f32\ff f2 r4 |
  r8.. f32 f2 r4 |
  r8.. f32 f8. r16 r8.. f32 f8. r16 |
  R1*3
  \trCueWhile "horn3mA" "horn III" #UP gs' R1
  R1
  \cueWhile "horn3mA" "horn III" #UP R1
  d16\f r8. r4 d16 r8. r4 |
  d16 r8. r4 d16 r8. r4 |
  ef16 r8. r4 r4 r16 ef-. ef-. ef-. |
  ef16 r8. d16 r8. r2 |
  R1
  \barNumberCheck#allegroMolto
  R2*11
  \cueWhile "bassoon1mA" "winds" #UP R2*4
  d2->\ff ~ d8 r r4 f2-> ~ f8 r r4
  d2-> ~ d8 r r4 d2-> ~ d8 r r4
  R2*4
  \trCueWhile "violin1mA" "violins 8va" #UP af R2*2
  d2\ff d\fz ef\fz ef\fz
  d8 g8-. s8*0\< \repeat unfold 6 g8-.
  \barNumberCheck#rehearsalOne
  ef2\ff~ef ef2->~ef ef4 r8 d | ef4 r8 d ef8 r8 r4
  R2*11
  R2*14
  R2*30
  R2*28
  \barNumberCheck#rehearsalFive
  \cueWhile "flute1mA" "flute" #UP R2*4
  R2*14
  \trCueWhile "violin1mA" "violins 8va" #UP af R2*4
  g2->\ff~g g->~g g4 g8 f | g f g f |
  g r f r g, r r4 R2*2
  \barNumberCheck#rehearsalSix
  g'8 r ef r R2*7 \partcombineSoloIOnce
  \trCueWhile "violin1mA" "violins 8va" #DOWN af R2*4
  c4.\p c8 a g4. c8. e16-. g8-. g-. | g2-> ~g4 r4 R2*15
  \barNumberCheck#rehearsalSeven \partPageBreak
  \cueWhile "trumpet1mA" "trumpet" #UP R2*4
  d2->\ff ~d ~d ~d
  d4.\ff d8 bf a4. d4. f8 \times2/3{ d8( f) a-. } a4(\fz |
  f2)\ff ~f ~f ~f
  f8 r8 r4 | f8 r8 r4 | ff8 r8 r4 | e8 r8 r4 | e8\fz r8 r4 R2*3
  d2\ff ~d d->\fz ~ d R2*4
  \barNumberCheck#rehearsalEight
  ef2\ff ~ef ef->\fz ~ef R2*4
  e4\ff r8 ds8 | e4 r8 ds8 | e4 r8 e8 | f4 r8 f8 |
  \repeat unfold 6 { fs8 r }
  \times2/3{ g8\ff\< g g} \times2/3{ gs gs gs }
  a\fz r r4 R2*15
  \barNumberCheck#rehearsalNine
  R2*8
  \cueWhile "oboe1mA" "oboes" #UP R2*7
  d,2\ff ~d8 r8 r4
  f2\ffz ~f8 r r4
  f2\ffz ~f8 r r4
  g2\fz ~g8 r r4
  e4\fz r R2
  e4\fz r R2*39
  \barNumberCheck#rehearsalEleven
  \trCueWhile "violin1mA" "violins 8va" #UP gs R2*4
  f2->\ff ~f\> ~f ~f4.\p r8
  R2*4 R2*20
  \barNumberCheck#rehearsalTwelve
  R2*18
  \trCueWhile "violin1mA" "violins 8va" #UP gs R2*4
  e4.\f e8 cs8 b4. | e4.\< e8 cs8 b4. |
  \barNumberCheck#rehearsalThirteen
  c2->\fff f2-> a,2-> ~a af-> ~af af->\fz ~af
  b!4 r8 b b4 r8 b | b4 r8 b b4 r8 b |
  f'2-> ~f ~f ~f \partPageBreak
  s2*0\ff \repeat unfold 4 { ef2 R2 }
  \repeat unfold 4 { af,4 r }
  ef'8 r c r b! r c r d r ef r f r g r | d4 r4
  ef8 r f r | ef4 r | ef8 r d r |
  ef4 r8 d | ef4 r8 d | \repeat unfold 4 {ef d}
  ef2-> ~ef ~ef ~ef ef-> \fz ~ef ef->\fz ef->\fz
  ef8 r ef r | r4 ef8[ r16 ef] |
  \repeat unfold 3 { ef8 r8 r4 }
}

hornIImA = \relative c'' {
  \tag #'part \mark "in E"
  \transposition e
  R1*5
  <<
    \tag #'part {
      % In trCueWhile, we specify af' in absolute mode,
      % as the desired notation on this staff when the cue-ing
      % instrument plays concert Middle-C
      \trCueWhile "flute1mA" "flute 8va" #UP af { s1*3 \voiceOne s2 }
      \cueWhile "violin1mA" "strings" #DOWN { s2 | s8.. }
    } { R1*4 r8..
  } >> d32\ff d2 r4 |
  r8.. d32 d2 r4 |
  r8.. d32 d8. r16 r8.. d32 d8. r16 |
  R1*3
  \trCueWhile "horn3mA" "horn III" #UP gs' R1
  R1
  \cueWhile "horn3mA" "horn III" #UP R1
  d,16\f r8. r4 d16 r8. r4 |
  d16 r8. r4 d16 r8. r4 |
  c16 r8. r4 r4 r16 c'-. c-. c-. |
  c16 r8. b16 r8. r2 |
  R1
  \barNumberCheck#allegroMolto
  R2*11
  \cueWhile "bassoon1mA" "winds" #UP R2*4
  b2->\ff ~ b8 r r4 d2-> ~ d8 r r4
  b2-> ~ b8 r r4 d2-> ~ d8 r r4
  R2*4
  \trCueWhile "violin1mA" "violins 8va" #UP af R2*2
  c2\ff c\fz c\fz c\fz
  b8 f'8-. s8*0\< \repeat unfold 6 f8-.
  \barNumberCheck#rehearsalOne
  c2\ff~c c2->~c c4 r8 g | c4 r8 g c8 r8 r4
  R2*11
  R2*14
  R2*30
  R2*28
  \barNumberCheck#rehearsalFive
  \cueWhile "flute1mA" "flute" #UP R2*4
  R2*14
  \trCueWhile "violin1mA" "violin 8va" #UP af R2*4
  ef2->\ff~ef ef->~ef ef4 ef8 d | ef d ef d |
  ef r g, r g r r4 R2*2
  \barNumberCheck#rehearsalSix
  ef'8 r ef r R2*31 \partPageBreak
  \barNumberCheck#rehearsalSeven
  \cueWhile "trumpet1mA" "trumpets" #UP R2*4
  b2->\ff ~b ~b ~b
  d4.\ff d8 bf-> a4.-> d4. f8 \times2/3{ d8( f) a-. } a4(\fz |
  d,2)\ff ~d ~d ~d
  d8 r8 r4 | d8 r8 r4 | df8 r8 r4 | cs8 r8 r4 | cs8\fz r8 r4 R2*3
  b2\ff ~b b->\fz ~ b R2*4
  \barNumberCheck#rehearsalEight
  c2\ff ~c c->\fz ~c R2*4
  cs4\ff r8 bs8 | cs4 r8 bs8 | cs4 r8 cs8 | d4 r8 d8 |
  \repeat unfold 6 { d8 r }
  \times2/3{ ef8\ff\< ef ef} \times2/3{ e e e }
  f\fz r r4 R2*15
  \barNumberCheck#rehearsalNine
  R2*8
  \cueWhile "oboe1mA" "oboes" #UP R2*7
  b,2\ff ~b8 r8 r4
  d2\ffz ~d8 r r4
  f,2\ffz ~f8 r r4
  e'2\fz ~e8 r r4
  c4\fz r R2
  c4\fz r R2*5
  \barNumberCheck#rehearsalTen
  R2*12 \partcombineSoloIIOnce
  \cueWhile "flute2mA" "flute" #UP R2*4
  g2\pp a4-| fs4-| b2-| b,2-|
  g'2 a4 fs b4. b,8 | b2 | e,2 ~e\< ~e ~e R2*6\!
  \barNumberCheck#rehearsalEleven
  \trCueWhile "violin1mA" "violins 8va" #UP gs R2*4
  df''2->\ff ~df\> ~df ~df4.\p r8
  R2*4 R2*20
  R2*18
  \trCueWhile "violin1mA" "violins 8va" #UP gs R2*4
  e4.\f e8 cs8 b4. | e4.\< e8 cs8 b4. |
  \barNumberCheck#rehearsalThirteen \partPageBreak
  c2->\fff f2-> f,2-> ~f f-> ~f f->\fz ~f
  b4 r8 b b4 r8 b | b4 r8 b b4 r8 b |
  b2-> ~b ~b ~b
  s2*0\ff \repeat unfold 4 { c2 R2 }
  \repeat unfold 4 { f,4 r }
  c'8 r c r b r c r d r ef r f r g r | c,4 r4
  c8 r d r | c4 r | c8 r g r |
  c4 r8 b | c4 r8 b | \repeat unfold 4 {c b}
  c2-> ~c ~c ~c c-> \fz ~c c->\fz c->\fz
  c8 r c r | r4 c8[ r16 c] |
  \repeat unfold 3 { c8 r8 r4 }
}

hornIIImA = \relative c'' {
  \tag #'part \mark "in C"
  \transposition c
  \cueDuring "cellomA" #UP {
    R1*3 -\tag#'part _\markup\tiny"cello" r8..
  } e32\fz\> e2.~e4\pp r r2
  R1*9
  \trCueWhile "flute1mA" "flute 8va"#UP c' R1
  \transpose d d' \motifBsixteen |
  R1
  \transpose d es' \motifBsixteen |
  b16\f r8. r4 b16 r8. r4 |
  b16\f r8. r4 c16 r8. r4 |
  e8-> g8-> e8-> c8-> bf8-> g8->
  \cueWhile "horn1mA" "horn I" #UP \times 2/3 {e cs' cs} |
  e16 r8. b16 r8. r2 |
  R1 |
  \barNumberCheck#allegroMolto
  e,4.\mf g8\< b e4.-> | g4->\f e8 c b\> e,4. |
  R2*7\!
  \cueWhile "bassoon1mA" "winds" #UP R2*4
  b'2->\ff ~ b8 r r4 |
  e2->\fz ~ e8 r r4 |
  b2->\fz ~ b8 r r4 |
  a2->\fz ~ a8 r r4 |
  R2*4
  \trCueWhile "violin1mA" "violins 8va" #UP c' R2*2
  gs8\ff a4.-> gs8 a4.-> a8 bf4.-> a8 bf4.-> |
  b8-. b-. b-.\< b-. b-. b-. b-. b-. |
  \barNumberCheck#rehearsalOne
  e,4.\ff g8-. b-. e4.-> | g4->\fz e8-. c-. b-. e,4. |
  e'4 r8 b e4 r8 b e8 r r b\ff |
  e4. r8 | r4 r8 e,\ff |
  a4.-> r8 | r4 r8 a\ff |
  d4.-> r8 | r4 r8 d,\ff |
  g4.-> r8 | e2\ff R2 e2\ff R2
  \barNumberCheck#rehearsalTwo
  R2*10 \partcombineSoloIOnce
  \trCueWhile "clarinet1mA" "clarinet 8va" #UP c R2*4
  \barNumberCheck#rehearsalThree
  <<
    s1\pp
    \repeat unfold 8 { d4-- d-- }
    \tag#'part \repeat percent 8 s2
  >>
  R2*18
  \trCueWhile "violin1mA" "violin 15ma" #UP c R2*4
  e'2\f~e\> e~e\! R2*24
  R2*22
  \cueWhile "cellomA" "low strings" #DOWN R2*2
  g4.\ff g8 e d4 d8 d4. d8 d d d d
  d r ds r b r r4 R2*2
  \barNumberCheck#rehearsalSix
  d8 r g, r | g'2->\ff ~g8 r r4 R2*2
  g2->\ff ~g\> ~g ~g4\p r R2*23
  \barNumberCheck#rehearsalSeven
  \cueWhile "trumpet1mA" "trumpet" #UP R2*4
  ef2->\ff ~ef ~ef ~ef cs8 r r4 R2*3
  ef2\ff ~ef ~ef ~ef c!8 r r4 | c8 r r4 | c8 r r4 |
  d8 r r4 | f8\fz r r4 R2*3
  ef,2\ff ~ef ef2->\fz ~ef R2*4 \partPageBreak
  \barNumberCheck#rehearsalEight
  e!2\ff ~e e->\fz ~e R2*4
  c'4\ff r8 c8 | c4 r8 c8 | c4 r8 c8 | c4 r8 c8 |
  \repeat unfold 6 { c8 r } cs r d r |
  cs2\fz\> ~cs cs\p\> ~cs ~cs\pp ~cs ~cs ~cs(
  d8) r r4 R2*7
  \barNumberCheck#rehearsalNine
  e,4.\mf g8 b e4. g4-> e8 c b e,4. R2*8
  \trCueWhile "flute1mA" "flute 15ma" #UP c R2*3
  b'2\ff ~b8 r8 r4
  fs2\ffz ~fs8 r r4
  e'2\ffz ~e8 r r4
  gs,2\fz ~gs8 r r4
  e'4\fz r R2
  e4\fz r R2*5
  \barNumberCheck#rehearsalTen
  R2*34
  \barNumberCheck#rehearsalEleven
  \trCueWhile "violin1mA" "violins 15ma" #UP c R2*4
  c2\ff ~c\> ~c ~c4.\p r8
  R2*24 -\tag#'part ^\markup\large{\italic"muta in" "E"}
  \barNumberCheck#rehearsalTwelve
  \tag #'score \set Staff.shortInstrumentName="H(E)"
  R2*18
  \transposition e
  \trCueWhile "violin1mA" "violin 15ma" #UP af, R2*4
  \inE
  e4.\f e8 cs8 b4. | e4.\< e8 cs8 b4. |
  \barNumberCheck#rehearsalThirteen
  c2->\fff f2-> a,2-> ~a af-> ~af af->\fz ~af
  af4 r8 af af4 r8 af | af4 r8 af af4 r8 af |
  g2-> ~g ~g ~g
  s2*0\ff \repeat unfold 4 { c2 R2 }
  \repeat unfold 4 { af4 r }
  g8 r af r f r ef r af r c r b! r c r | c4 r4
  g8 r g r | c,4 r | f8 r g r |
  ef'4 r8 d | ef4 r8 d | \repeat unfold 4 {ef d}
  ef2-> ~ef ~ef ~ef ef-> \fz ~ef ef->\fz ef->\fz
  ef8 r g, r | r4 g8[ r16 g] |
  \repeat unfold 3 { g8 r8 r4 }
}

hornIVmA = \relative c'' {
  \tag #'part \mark "in C"
  \transposition c
  \cueWhile "cellomA" "cello" #UP {
    R1*3 r8..
  } e32\fz\> e2.~e4\pp r r2
  R1*4 \partcombineSoloIIOnce
  r8.. fs,32\ff fs2 r4
  r8.. fs32 fs2 r4
  r8.. fs32 fs8. r16 r8.. fs32 fs8. r16 |
  R1*2
  \trCueWhile "flute1mA" "flute 8va" #UP c' R1
  \transpose d d' \motifBsixteen |
  \trCueWhile "flute1mA" "flute 8va" #UP c' R1
  \transpose d es' \motifBsixteen |
  b16\f r8. r4 b16 r8. r4 |
  b16\f r8. r4 c16 r8. r4 |
  c8-> g'8-> e8-> c8-> bf8-> g8->
  \cueWhile "horn1mA" "horn I" #UP \times 2/3 {e cs cs} |
  e16 r8. \partcombineApartOnce b'16 r8. r2 |
  R1 |
  \barNumberCheck#allegroMolto
  e,4.\mf g8\< \noBreak b e4.-> |
  g4->\f e8 c b\> e,4. |
  s1*0\!
  R2*7
  \cueWhile "bassoon1mA" "winds" #UP R2*4
  b2->\ff ~ b8 r r4 |
  fs'2->\fz ~ fs8 r r4 |
  b2->\fz ~ b8 r r4 |
  a2->\fz ~ a8 r r4 |
  R2*4
  \trCueWhile "violin1mA" "violins 8va" #UP c' R2*2
  gs8\ff a4.-> gs8 a4.-> a8 bf4.-> a8 bf4.-> |
  b8-. b,-. b-.\< b-. b-. b-. b-. b-. |
  \barNumberCheck#rehearsalOne
  e4.\ff g8-. b-. e4.-> | g4->\fz e8-. c-. b-. e,4. |
  e4 r8 \partcombineApartOnce b' e,4 r8 \partcombineApartOnce b' |
  e,8 r r b'\ff |
  e4. r8 | r4 r8 e,\ff |
  a4.-> r8 | r4 r8 a\ff |
  d4.-> r8 | r4 r8 d,\ff |
  g4.-> r8 | e2\ff R2 e2\ff R2
  \barNumberCheck#rehearsalTwo
  R2*14
  \barNumberCheck#rehearsalThree
  R2*26
  \trCueWhile "violin1mA" "violin 15ma" #UP c R2*4
  \barNumberCheck#rehearsalFour
  e2\f~e\> e~e\! R2*24
  R2*22
  \cueWhile "cellomA" "low strings" #DOWN R2*2
  g'4.\ff g8 e d4 d8 d4. d8 d d d d
  d r ds r b r r4 R2*2
  \barNumberCheck#rehearsalSix
  d8 r g, r | g2->\ff ~g8 r r4 R2*2
  g2->\ff ~g\> ~g ~g4\p r R2*23
  \barNumberCheck#rehearsalSeven
  \cueWhile "trumpet1mA" "trumpet" #UP R2*4
  c2->\ff ~c ~c ~c cs8 r r4 R2*3
  c2\ff ~c ~c ~c c8 r r4 | c8 r r4 | c8 r r4 |
  d8 r r4 | d8\fz r r4 R2*3
  ef,2\ff ~ef ef2->\fz ~ef R2*4 \partPageBreak
  \barNumberCheck#rehearsalEight
  e!2\ff ~e e->\fz ~e R2*4
  c'4\ff r8 c8 | c4 r8 c8 | c4 r8 c8 | c4 r8 c8 |
  \repeat unfold 6 { fs,8 r } g r af r |
  cs2\fz\> ~cs cs\p\> ~cs ~cs\pp ~cs ~cs ~cs(
  d8) r r4 R2*7
  \barNumberCheck#rehearsalNine
  e,4.\mf g8 b e4. g4-> e8 c b e,4. R2*8
  \trCueWhile "flute1mA" "flute 15ma" #UP c R2*3
  b2\ff ~b8 r8 r4
  ds2\ffz ~ds8 r r4
  e2\ffz ~e8 r r4
  e2\fz ~e8 r r4
  e4\fz r R2
  e4\fz r R2*5
  \barNumberCheck#rehearsalTen
  R2*34
  \barNumberCheck#rehearsalEleven
  \trCueWhile "violin1mA" "violin 15ma" #UP c R2*4
  f2\ff ~f\> ~f ~f4.\p r8
  R2*24
  \barNumberCheck#rehearsalTwelve
  \tag #'score \set Staff.shortInstrumentName="H(E)"
  R2*18
  \transposition e
  \trCueWhile "violin1mA" "violin 15ma" #UP af, R2*4
  \inE
  e'4.\f e8 cs8 b4. | e4.\< e8 cs8 b4. |
  \barNumberCheck#rehearsalThirteen
  c2->\fff f2-> f,2-> ~f f-> ~f f->\fz ~f
  f4 r8 f f4 r8 f | f4 r8 f f4 r8 f |
  d2-> ~d ~d ~d
  s2*0\ff \repeat unfold 4 { c2 R2 }
  \repeat unfold 4 { f4 r }
  \partcombineApartOnce g8 r f r |
  \partcombineApartOnce f r \partcombineApartOnce ef r |
  f8 r ef r g r g r | af4 r4 |
  g8 r g r | c,4 r | f8 r g r |
  c4 r8 b | c4 r8 b | \repeat unfold 4 {c b}
  c2-> ~c ~c ~c c-> \fz ~c c->\fz c->\fz
  c8 r c, r | r4 c8[ r16 c] |
  \repeat unfold 3 { c8 r8 r4 }
}

trumpetImA = \relative c'' {
  \tag #'part \mark "in E"
  \transposition e
  R1*15
  \trCueWhile "horn3mA" "horn III" #DOWN gs' R1
  R1
  \cueWhile "horn3mA" "horn III" #DOWN R1
  d16\f r8. r4 d16 r8. r4 |
  d16 r8. r4 d16 r8. r4 |
  c16 r8. r4 r4 r16 c c c |
  g16 r8. g16 r8. r2 |
  R1 \barNumberCheck#allegroMolto
  R2*12
  \cueWhile "bassoon1mA" "winds" #UP R2*3
  g2->\ff ~g8 r8 r4 |
  d2-> ~d8 r8 r4 |
  g2-> ~g8 r8 r4 |
  c2-> ~c8 r8 r4 |
  R2*6
  r4 c-.\ff \repeat unfold 3{ r c\fz }
  g8 r g-.\< \repeat unfold 5 g-. |
  \barNumberCheck#59
  c4.\ff c16 c c2-> |
  c4. c16 c c2-> |
  g4 r8 g g4 r8 g g8 r r4 |
  R2*7
  c2\f R2 c2\f R2
  \barNumberCheck#rehearsalTwo
  R2*14 -\tag#'part _\markup\large{\italic"muta in" "C"}
  \barNumberCheck#rehearsalThree
  R2*30 \barNumberCheck#rehearsalFour
  R2*28 \barNumberCheck#rehearsalFive
  \tag #'score \set Staff.shortInstrumentName="T(C)"
  \transposition c'
  \cueWhile "flute1mA" "flute" #DOWN R2*4
  R2*14
  \trCueWhile "violin1mA" "violins 8va" #UP c R2*4
  \inC
  d2\ff ~d2 g,2-> ~g4 r8 d' |
  g, d' g, d' g, d' g, d' |
  g, r b r b r r4 | % first ending
  R2*2
  \barNumberCheck#rehearsalSix
  g8\ff r g r R2*2
  r8 b16\f b \times 2/3 {b8 b b} | b r r4 R2*2
  r8 b16\p\> b \times 2/3 {b8 b b} | b\! r r4 R2*3
  \cueWhile "horn1mA" "horn" #DOWN R2*4
  \trCueWhile "flute2mA" "piccolo 15ma" #UP c { R2*3 e,8.\pp gs16 b8 b8 }
  b2~b4 r8 gs16 gs | gs2 ~gs4 r8 e16 e |
  e4 r8 e16 e | e2 | r4 r8 e16 e | e2 | r4 r8 e16 e | e2\< |
  r4\! r8 e16\mf e | e2\< |
  \barNumberCheck#rehearsalSeven
  f4.\f f8 d8 c4. f4. a8 \times2/3{ f8 a c } c4->~ |
  c2\ff ~c ~c ~c a8 r8 r4 R2*3
  c2\ff ~c ~c ~c c8 r8 r4 | c8 r r4 c8 r r4 | f,8 r r4 R2*4
  bf2\ff ~bf gf2( bf)
  s2*0\ff \repeat unfold 3 {b8.-> b16 gs fs r8 }
  b8.-> b16 g fs r8\partPageBreak
  \barNumberCheck#rehearsalEight
  b2\ff ~b c2->\fz( b) |
  \repeat unfold 3 {c8.-> c16 a g r8 }
  c8.-> c16 af g r8 |
  s2*0\ff \repeat unfold 4 {c4 r8 c16 c } |
  \repeat unfold 6 { c8 r } cs r d r ef r r4 R2*15
  \barNumberCheck#rehearsalNine
  \tag #'score \set Staff.shortInstrumentName="T(E)"
  R2*8
  \transposition e
  \trCueWhile "oboe1mA" "oboes" #DOWN af R2*7
  \inE
  g,2\ff ~g8 r8 r4
  d2\ffz ~d8 r r4
  c2\ffz ~c8 r r4
  g'2\fz ~g8 r r4
  c4\fz r R2
  c4\fz r R2*5
  \barNumberCheck#rehearsalTen
  R2*34
  \barNumberCheck#rehearsalEleven
  R2*32
  \barNumberCheck#rehearsalTwelve
  \tag #'score \set Staff.shortInstrumentName="T(C)"
  R2*22
  \transposition c'
  % choose an enharmonic spelling
  \trCueWhile "horn1mA" "horn" #DOWN dff' {
    R2*3
    \tag#'part \inC
    R2
  }
  \tag#'score \inC
  \barNumberCheck#rehearsalThirteen
  a4.->\fff a8 fs-. e4.-> a8.-> cs16 e8-. e-. e2->
  a,4.-> a8 fs-. e4.-> a8.-> c!16 e8-. e-. e2->
  a,4 r8 a a4 r8 a | a4 r8 a a4 r8 a |
  fs2-> ~fs fs-> ~fs
  \repeat unfold 4 { e8 g16\< c e4-^ ~e2\! }
  \repeat unfold 4 { c4 r }
  e8 r e r a, r e' r c r e r b r b r | c4 r4
  b8 r b r | e4 r | c8 r b r |
  b4 r8 b | b4 r8 b16 b| \repeat unfold 4 {b8 b16 b16}
  b2->\fz ~b c->\fz ~c \repeat unfold 4 {c8 c16 c16~}
  c8 e16 e~ e8 e16 e~| e8 e16 e~ e8 e16 e~|
  e8 r b r | r4 b8[ r16 b] |
  \repeat unfold 3 { b8 r8 r4 }
}

trumpetIImA = \relative c' {
  \tag #'part \mark "in E"
  \transposition e
  R1*15
  \cueWhile "horn3mA" "horn III" #UP R1*3
  e16\f r8. r4 e16 r8. r4 |
  f16 r8. r4 f16 r8. r4 |
  c16 r8. r4 r4 r16 c c c |
  g16 r8. g16 r8. r2 |
  R1 \barNumberCheck#allegroMolto
  R2*12
  \cueWhile "bassoon1mA" "winds" #UP R2*3
  g'2->\ff ~g8 r8 r4 |
  d2-> ~d8 r8 r4 |
  g2-> ~g8 r8 r4 |
  c,2-> ~c8 r8 r4 |
  R2*6
  r4 c-.\ff \repeat unfold 3{ r c\fz }
  g8 r g-.\< \repeat unfold 5 g-. |
  \barNumberCheck#rehearsalOne
  c4.\ff c16 c c2-> |
  c4. c16 c c2-> |
  g'4 r8 g g4 r8 g g8 r r4 |
  R2*7
  c,2\f R2 c2\f r2 \barNumberCheck#rehearsalTwo
  R2*14 \barNumberCheck#rehearsalThree
  R2*30 \barNumberCheck#rehearsalFour
  R2*28 \barNumberCheck#rehearsalFive
  \tag #'score \set Staff.shortInstrumentName="T(C)"
  \transposition c'
  \cueWhile "flute1mA" "flute" #DOWN {
    R2*2
  } \cueWhile "flute1mA" "" #UP {
    R2*2
  } R2*14
  \trCueWhile "violin1mA" "violins 8va" #UP c R2*4
  \inC
  d'2\ff ~d2 g,2-> ~g4 r8 d |
  g[ d] g[ d] g[ d] g[ d] |
  g r b r b r r4 | % first ending
  R2*2
  \barNumberCheck#rehearsalSix
  g8\ff r g r R2*2
  r8 b16\f b \times 2/3 {b8 b b} | b r r4 R2*2
  r8 b16\p\> b \times 2/3 {b8 b b} | b\! r r4 R2*3
  \cueWhile "horn1mA" "horn" #DOWN R2*4
  \trCueWhile "flute2mA" "piccolo 8va" #UP c { R2*3 e,8.\pp gs16}
  b8 b8 | b2~b4 r8 gs16 gs | gs2 ~gs4 r8 e16 e |
  e4 r8 e16 e | e2 | r4 r8 e16 e | e2 | r4 r8 e16 e | e2\< |
  r4\! r8 e16\mf e | e2\< |
  \barNumberCheck#rehearsalSeven
  f4.\f f8 d8 c4. f4. a8 \times2/3{ f8 a c } c4->~ |
  c2\ff ~c ~c ~c a8 r8 r4 R2*3
  c2\ff ~c ~c ~c c8 r8 r4 | c8 r r4 c8 r r4 | f,8 r r4 R2*4
  gf2\ff ~gf gf2( gf)
  s2*0\ff \repeat unfold 3 {b8.-> b16 gs fs r8 }
  b8.-> b16 g fs r8 \partPageBreak
  \barNumberCheck#rehearsalEight
  g2\ff ~g e2->\fz( g) |
  \repeat unfold 3 {c8.-> c16 a g r8 }
  c8.-> c16 af g r8 |
  s2*0\ff \repeat unfold 4 {c4 r8 c16 c } |
  \repeat unfold 6 { c8 r } cs r d r ef r r4 R2*15
  \barNumberCheck#rehearsalNine
  \tag #'score \set Staff.shortInstrumentName="T(E)"
  R2*8
  \transposition e
  \trCueWhile "oboe1mA" "oboes" #DOWN af R2*7
  \inE
  g,2\ff ~g8 r8 r4
  d2\ffz ~d8 r r4
  c2\ffz ~c8 r r4
  g'2\fz ~g8 r r4
  c,4\fz r R2
  c4\fz r R2*5
  \barNumberCheck#rehearsalTen
  R2*34
  \barNumberCheck#rehearsalEleven
  R2*32
  \barNumberCheck#rehearsalTwelve
  \tag #'score \set Staff.shortInstrumentName="T(C)"
  R2*22
  \transposition c'
  \tag#'part \inC
  \trCueWhile "horn1mA" "horn" #DOWN dff' R2*4 % choose an enharmonic spelling
  \barNumberCheck#rehearsalThirteen
  a'4.->\fff a8 fs-. e4.-> a8.-> cs16 e8-. e-. e2->
  a,4.-> a8 fs-. e4.-> a8.-> c!16 e8-. e-. e2->
  a,4 r8 a a4 r8 a | a4 r8 a a4 r8 a |
  fs2-> ~fs fs-> ~fs
  \repeat unfold 4 { e8 g16\< c e4-^ ~e2\! }
  \repeat unfold 4 { c4 r }
  e,8 r e r \partcombineApartOnce a r e r a r g r b r b r | c4 r4
  b8 r b r | e,4 r | c'8 r b r |
  b4 r8 b | b4 r8 b16 b| \repeat unfold 4 {b8 b16 b16}
  b2->\fz ~b c->\fz ~c \repeat unfold 4 {c8 c16 c16~}
  c8 e16 e~ e8 e16 e~| e8 e16 e~ e8 e16 e~|
  e8 r g, r | r4 g8[ r16 g] |
  \repeat unfold 3 { g8 r8 r4 }
}

tromboneImA = \relative c' {
  \key e \minor
  \clef alto
  R1*15
  \cueWhile "horn3mA" "horn III" #UP R1
  R1
  \cueWhile "horn3mA" "horn III" #UP R1
  d16\f r8. r4 d16 r8. r4 |
  ds16 r8. r4 ds16 r8. r4 |
  e16 r8. r4 r4 r16 e-. cs-. as-. |
  b16 r8. b16 r8. r2 |
  R1 \barNumberCheck#allegroMolto
  R2*12
  \trCueWhile "flute1mA" "flute 8va" #UP c R2*3
  ds2->\ff ~ds8 r8 r4 |
  c2-> ~c8 r8 r4 |
  ds2-> ~ds8 r8 r4 |
  e2-> ~e8 r8 r4 |
  R2*10
  \cueWhile "trumpet1mA" "trumpet" #UP R2*2
  \barNumberCheck#rehearsalOne
  e,4.->\ff g8 b e4.-> | g4-> e8 c b e,4. |
  b'4 r8 ds b4 r8 ds b8 r r4 R2*11
  R2*14
  R2*30
  R2*28
  R2*18
  \trCueWhile "violin1mA" "violin 15ma" #UP c, R2*4
  d2\ff e8 d4. | g8. b,16 d4~d2 |
  b4. a8 b a b a |
  b8 r b r b r r4 R2*2
  \barNumberCheck#rehearsalSix
  b8 r r4 R2*31
  \barNumberCheck#rehearsalSeven
  \cueWhile "trumpet1mA" "trumpet" #UP R2*4
  c,4.\f ef8 fs8 a4.-^ c4.-^ a8 fs8 ef4. cs8 r8 r4 | R2*3
  ds4.\f fs8 a8 c4.-^ ef4.-^ c8 a8 fs4. |
  a8 r8 r4 | a8 r8 r4 | af8 r8 r4 | cf8 r8 r4 R2*4
  ef,4.\ff gf8 bf8 ef4.-^ gf4-^ ef8 cf8 bf8 ef,4. |
  b'4\ff r b r b r b r
  \barNumberCheck#rehearsalEight
  e,4.\ff g8 b8 e4.-^ g4-^ e8 c8 b8 e,4. |
  c'4\ff r c r c r c r |
  c8 r r c | c r r c | cs r r cs | d r r d |
  \repeat unfold 3 {ef r r ef } e r f r |
  a,2\fp\> ~ a2 a2\p\> ~ a2
  a2\pp ~a ~a ~a( bf8) r8 r4 R2*7 \partPageBreak
  \barNumberCheck#rehearsalNine
  R2*12
  \trCueWhile "flute1mA" "flute 15ma" #UP c, R2*3
  ds2\ff ~ds8 r8 r4
  c2\ffz ~c8 r r4
  cs2\ffz ~cs8 r r4
  d2\fz ~d8 r r4
  d4\fz r R2
  d4\fz r R2*5
  \barNumberCheck#rehearsalTen
  \key gs\minor
  R2*34
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  \trCueWhile "violin1mA" "violin 15ma" #UP c, R2*4
  a2\f ~a\> ~a ~a4.\p r8 R2*4
  \key af\major
  R2*20
  \barNumberCheck#rehearsalTwelve
  R2*22
  \cueWhile "horn1mA" "horn" #UP R2*4
  \barNumberCheck#rehearsalThirteen
  \key e\minor
  cs2->\fff ~cs
  e,4.-> a8 cs e4.-> f4-^ e8 c8 a4 r8 e |
  e4.-> a8 c! e4.-> | \repeat unfold 4 { ef4 r8 ef8 }
  ds2 ~ds ~ds ~ds e\f R2 c\f R2 b\f R2 c\f R2
  \repeat unfold 4 { c4 r }
  b8 r c r | a r c r | c r g r | ds'r e r |
  c4 r | b8 r a r | g4 r | c8 r a r | b4 r8 b | b4 r8 b |
  b2:8 b2:8
  e,4.->\fz g8 b e4.-> g4-> e8 c8 g8 e'4 c8 |
  g8 e c' g | e'c g'e | c4 b8 g | e' c b g |
  g' r b, r | r4 b8[ r16 b] | \repeat unfold 3 { b8 r8 r4 }
}

tromboneIImA = \relative c' {
  \key e \minor
  \clef tenor
  R1*15
  \cueWhile "horn3mA" "horn III" #UP R1*3
  gs16\f r8. r4 gs16 r8. r4 |
  a16 r8. r4 a16 r8. r4 |
  bf16 r8. r4 r4 r16 e, e e |
  e16 r8. fs16 r8. r2 |
  R1 \barNumberCheck#allegroMolto
  R2*12 %\noBreak
  \trCueWhile "flute1mA" "flute 15ma" #UP c, R2*3
  fs2->\ff ~fs8 r8 r4 |
  a2-> ~a8 r8 r4 |
  fs2-> ~fs8 r8 r4 |
  c'2-> ~c8 r8 r4 |
  R2*10
  \cueWhile "trumpet1mA" "trumpet" #UP R2*2
  \barNumberCheck#rehearsalOne
  e,4.->\ff g8 b e,4.-> |
  g4-> \partcombineApart e8 c' \partcombineAutomatic b e,4.-> |
  g4 r8 fs g4 r8 fs g8 r r4 R2*11
  R2*14
  R2*30
  R2*28
  R2*18
  \trCueWhile "violin1mA" "violin 15ma" #UP c, R2*4
  b2\ff b8 b4. | g8. b16 d4~d2 |
  g,4. fs8 g fs g fs |
  g8 r a r b r r4 R2*2
  \barNumberCheck#rehearsalSix
  g8 r r4 R2*31
  \barNumberCheck#rehearsalSeven
  \cueWhile "trumpet1mA" "trumpet" #UP R2*4
  c,4.\f ef8 fs8 a4.-> c4.-> a8 fs8 ef4. cs8 r8 r4 | R2*3
  ds4.\f fs8 a8 c4.-> ef4.-> c8 a8 fs4. |
  a8 r8 r4 | a8 r8 r4 | af8 r8 r4 | cf8 r8 r4 R2*4
  ef,4.\ff gf8 bf8 ef4.-> gf4-> ef8 cf8 bf8 ef,4. |
  fs4\ff r fs r fs r fs r
  \barNumberCheck#rehearsalEight
  e4.\ff g8 b8 e4.-^ g4-^ e8 c8 b8 e,4. |
  g4\ff r g r g r g r |
  af8 r r g | af r r g | af r r af | a r r a |
  \repeat unfold 3 {bf r r bf } b r c r |
  fs,2\fp\> ~ fs2 fs2\p\> ~ fs
  g2\pp ~g ~g ~g( af8) r8 r4 R2*7
  \barNumberCheck#rehearsalNine \partPageBreak
  R2*12
  \trCueWhile "flute1mA" "flute 15ma" #UP c, R2*3
  fs2\ff ~fs8 r8 r4
  a2\ffz ~a8 r r4
  a2\ffz ~a8 r r4
  b2\fz ~b8 r r4
  b4\fz r R2
  b4\fz r R2*5
  \barNumberCheck#rehearsalTen
  \key gs\minor
  R2*34
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  \trCueWhile "violin1mA" "violin 15ma" #UP c, R2*4
  c,2\f ~c\> ~c ~c4.\p r8 R2*4
  \key af\major
  R2*20
  \barNumberCheck#rehearsalTwelve
  R2*22
  \cueWhile "horn1mA" "horn" #UP R2*4
  \barNumberCheck#rehearsalThirteen
  \key e\minor
  a'2->\fff ~a
  e4.-> a8 cs e4.-> f4-> e8 c8 a4 r8 e |
  e4.-> a8 c! e4.-> | \repeat unfold 4 { c4 r8 c8 }
  a2 ~a ~a ~a g\f R2 a\f R2 g\f R2 a\f R2
  \repeat unfold 4 { a4 r }
  g8 r e r |ds r e r |fs r e r | a r b r |
  a4 r | \partcombineApartOnce b8 r fs r | e4 r |
  a8 r fs r | g4 r8 fs | g4 r8 fs |
  \repeat unfold 4 {g8 fs}
  e4.->\fz g8 b e4.-> g4-> e8 c8 g8 e4 c'8 |
  g8 e c' g | e'c g'e | c4 b8 g | e' c b g |
  b r g r | r4 g8[ r16 g] | \repeat unfold 3 { g8 r8 r4 }
}

bassTrombonemA = \relative c {
  \key e \minor
  \clef bass
  R1*15
  \cueWhile "horn3mA" "horn III" #UP R1*3
  b16\f r8. r4 b16 r8. r4 |
  b16 r8. r4 c16 r8. r4 |
  c16 r8. r4 r4 r16 e cs as|
  b16 r8. b16 r8. r2 |
  R1 \barNumberCheck#allegroMolto
  R2*12 %\noBreak
  \trCueWhile "flute1mA" "flute 15ma" #UP c, R2*3
  b2->\ff ~b8 r8 r4 |
  e2-> ~e8 r8 r4 |
  ds2-> ~ds8 r8 r4 |
  e2-> ~e8 r8 r4 |
  R2*10
  \cueWhile "trumpet1mA" "trumpet" #UP R2*2
  \barNumberCheck#rehearsalOne
  e,4.->\ff g8 b e4.-> | g4-> e8 c b e,4.-> |
  e'4 r8 b e4 r8 b e8 r r4 |
  r4 r8 e\f | a,4 r r r8 a| d4 r | r r8 d |
  g,4 r | r r8 g8\f | cs2 R2 c!2\f R2
  \barNumberCheck#rehearsalTwo
  R2*14
  R2*30
  R2*28
  R2*18
  \trCueWhile "violin1mA" "violin 15ma" #UP c, R2*4
  g'4.\ff g8 e d4. | g8. b16 b,8 r |
  b8 r r b g' b, g' b, g' b, g' b, |
  g'8 r fs r b, r r4 R2*2
  \barNumberCheck#rehearsalSix
  g'8 r r4 R2*31
  \barNumberCheck#rehearsalSeven
  R2*12
  \cueWhile "trombone1mA" "trombone" #UP R2*4
  ds8\ff r r4 | ds8 r r4 | d8 r r4 | d8 r r4 R2*4
  \cueWhile "trombone1mA" "trombone" #UP R2*4
  ds4->\f fs-> ds-> fs-> ds-> fs->
  ds4-> fs8-. b,-. |
  \barNumberCheck#rehearsalEight
  e4\ff r4 R2*3
  s2*0\f \repeat unfold 3 {e4-| g-|} e-| g8 c, |
  f8 r r c f r r c f r r c fs r r c |
  \repeat unfold 6 {c8 r}
  cs8 r d r |
  ds2\fp\> ~ds2 ds2\p\> ~ds
  e2\pp ~e ~e ~e( f8) r8 r4 R2*7
  \barNumberCheck#rehearsalNine \partPageBreak
  R2*12
  \trCueWhile "flute1mA" "flute 15ma" #UP c, R2*3
  b,2\ff ~b8 r8 r4
  c2\ffz ~c8 r r4
  cs2\ffz ~cs8 r r4
  d2\fz ~d8 r r4
  d4\fz r R2
  d4\fz r R2*5
  \barNumberCheck#rehearsalTen
  \key gs\minor
  R2*34
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  \trCueWhile "violin1mA" "violin 15ma" #UP c, R2*4
  f,2\f ~f\> ~f ~f4.\p r8 R2*4
  \key af\major
  R2*20
  \barNumberCheck#rehearsalTwelve
  R2*22
  \trCueWhile "horn1mA" "horns 8va" #UP dff R2*4
  \barNumberCheck#rehearsalThirteen
  \key e\minor
  e'2->\ff ~e e2-> e e2-> e e2-> e
  \repeat unfold 4 { f4 r8 f }
  fs2 ~fs ~fs ~fs4 b, |
  c2\f R2 a\f R2 g\f R2 a\f R2
  \repeat unfold 4 { a4 r }
  g8 r a r | b r c r | d r e r |fs r g r |
  a,4 r | b8 r b r | e4 r | a,8 r b r | e4 r8 b | e4 r8 b |
  \repeat unfold 4 {e8 b}
  e4.->\fz r8 R2*7
  e8 r e r | r4 e8[ r16 e] | \repeat unfold 3 { e8 r8 r4 }
}
