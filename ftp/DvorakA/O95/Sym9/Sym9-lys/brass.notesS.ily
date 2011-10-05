\version "2.14.0"

hornImS = \relative c' {
  \transposition e
  \tag#'part \mark "in E"
  r8 c'\f c2~ | c2. |
  r8 g g2~ | g2. \partcombineUnisono R2.*28
  << \tag#'part {
    \transposedCueDuring "violin1mS" #DOWN af
    {s2.*4^\markup\tiny"violin 8va"}
    \transposedCueDuring "violin1mS" #UP af {s2.*4 s4 }
  }{
    R2.*8 r4 \partcombineAutomatic
  } >> c2->\ff |
  bf-> a4->~ | a af2-> |
  g c,4~ | c c'2-> |
  bf-> a4->~ | a af2-> |
  g c,4~ |
  \barNumberCheck#OnemS
  c ef'2->\ff |
  ef f4~ | f f2 |
  ef ef4~ | ef ef2 |
  ef f4~ | f f2 |
  c8 c c4 d |
  c8 c c4 d |
  c8 c c4 d |
  c r r R2.*8
  R2.*20 \partcombineSoloIOnce
  \trCueWhile "flute1mS" "flute 8va" #UP af R2.*4
  c8\p c c c b[ b] | c c c c b[ b] |
  c\< c c c b[ b] | c c c c b[ b] |
  c\mf c c c b[ b] | c c c c b[\> b] |
  b[ b] c c c c\!
  \barNumberCheck#TwomS R2.*10 \partcombineSoloIOnce
  \trCueWhile "violin1mS" "violin 8va" #UP af R2.*4
  bf2\mf df4 |
  b2\< d4 |
  c2 ef4 |
  cs2 e4 |
  d f2->\f~ | f e4~ |
  e d f8\< f | f4 f8 f f4 | f8\! f f4 f8 f | f4 f8 f f4 |
  \barNumberCheck#ThreemS
  ef\ff c2-> |
  c-> c4->~ | c c2-> |
  c c4~ | c c2 |
  c c4~ | c c2 |
  ef4 r d | ef r d | ef r d | ef r d |
  ef4 r r | ef4 r r | ef4 r r | ef4 r r | ef4 r r R2. ef4 r r R2.
  R2.*12
  R2.*22 R2.*16
  << s2. \tag#'score R2. \tag#'part \thinSkip >>
  \barNumberCheck#FivemS
  R2.*23
  \repeat unfold 4 {
    \trCueWhile "violin1mS" "strings" #UP af R2.
    \trCueWhile "flute1mS" "winds" #DOWN af R2.
  }
  ef4.\p ef8 ef r | ef4. ef8 ef r |
  ef2.~ ef2 ef4 |
  ef4. ef8 ef r | ef4. ef8 ef r |
  ef2.~ ef2 ef4 |
  ef4.\< ef8 ef4 | ef4. ef8 ef4 |
  ef2.~ ef2 ef4 |
  ef4. ef8 ef4 | ef4. ef8 ef4 |
  ef2.\fz~ ef4 r r R2.*5
  b2.\p |
  d2.\fz\< |
  d2 f4\f |
  f2.
  s2.%coda
  \partPageBreak
  R2.*8
  \trCueWhile "oboe1mS" "oboe 8va" #UP af R2.*4
  cs,2\f\< e4-. |
  a-. cs2 |
  e->\ff cs4-. |
  b-. a2 R2.*4
  d,2\ff\< f4-. |
  a-. d2\! R2.*2
  d,2\ff\< f4-. |
  a-. d2->\! |
  f-> d4-. |
  a-. f2-> |
  f'2.->\ff~ | f2. |
  f2.~ | f2. | \scoreDynamicsOff
  e2.\fff~ | e2.~ | e2.\>~ | e2.~ |
  g,2.\mf\>~ | g2. ~ |
  g2.\p~ | g2.\pp~ | g4 r r R2.*7
  \trCueWhile "bassmS" "bass 8vb" #DOWN af'' R2.*2
  R2.
  ef'4 r r
}

hornIImS = \relative c {
  \transposition e
  \tag#'part \mark "in E"
  r8 c'\f c2~ | c2. |
  r8 g g2~ | g2. R2.*28
  << {
    \cueWhile "violin1mS" "violin" #UP {s2.*4 s4}
    \trCueWhile "violin1mS" "violin 8va" #UP af {s2 s2.*3 s4 }
  }{
    R2.*8 r4
  } >> c'2->\ff |
  bf-> a!4->~ | a af2-> |
  g c,4~ | c c'2-> |
  bf-> a4->~ | a af2-> |
  g c,4~ |
  \barNumberCheck#OnemS
  c c'2->\ff |
  c c4~ | c c2 |
  c c4~ | c c2 |
  c c4~ | c c2 | \partcombineApart
  c8 c c4 c |
  c8 c c4 c |
  c8 c c4 c |
  c \partcombineAutomatic r r R2.*8 R2.*31
  \barNumberCheck#TwomS
  R2.*8 \partcombineSoloIIOnce
  \trCueWhile "violin1mS" "violin 8va" #UP af R2.*6
  g2\mf g4 |
  gs2\< gs4 |
  a2 a4 |
  as2 as4 |
  b b2->\f~ | b b4~ |
  b b d8\< d | d4 d8 d d4 | d8\! d d4 d8 d | d4 d8 d d4 |
  \barNumberCheck#ThreemS
  c\ff c,2-> |
  c-> c4->~ | c c2-> |
  c c4~ | c c2 |
  c c4~ | c c2 |
  c'4 r c | c r c | c r c | c r c |
  c4 r r | c4 r r | c4 r r | c4 r r | c4 r r R2. c4 r r R2.
  R2.*12
  R2.*22 R2.*16
  << s2. \tag#'score R2. \tag#'part \thinSkip >>
  \barNumberCheck#FivemS
  R2.*23
  \repeat unfold 4 {
    \trCueWhile "violin1mS" "strings" #UP af R2.
    \trCueWhile "flute1mS" "winds" #DOWN af R2.
  }
  ef,4.\p ef8 ef r | ef4. ef8 ef r |
  ef2.~ ef2 ef4 |
  ef4. ef8 ef r | ef4. ef8 ef r |
  ef2.~ ef2 ef4 |
  ef4.\< ef8 ef4 | ef4. ef8 ef4 |
  ef2.~ ef2 ef4 |
  ef4. ef8 ef4 | ef4. ef8 ef4 |
  ef2.\fz~ ef4 r r R2.*5
  g2.\p |
  b2.\fz\< |
  b2 d4\f |
  d2.
  s2.%coda
  \partPageBreak
  R2.*8
  \trCueWhile "oboe1mS" "oboe 8va" #UP af R2.*4
  cs,2\f\< e4-. |
  a-. cs2 |
  e->\ff cs4-. |
  b-. a2 R2.*4
  d,2\ff\< f4-. |
  a-. d2\! R2.*2
  d,2\ff\< f4-. |
  a-. d2->\! |
  f-> d4-. |
  a-. f2-> |
  b2.->\ff~ | b2. |
  b2.~ | b2. |
  c2.\fff~ | c2.~ | c2.\>~ | c2. |
  e,2.\mf\>~ | e2._\( |
  ef2.\)\p~ | ef2.\pp~ | ef4 r r R2.*7
  \trCueWhile "bassmS" "bass 8vb" #DOWN af'' R2.*2
  R2.
  c'4 r r
}

hornIIImS = \relative c'' {
  \transposition e
  \tag#'part \mark "in E"
  R2.*12 \partcombineSoloIOnce
  \trCueWhile "oboe1mS" "oboe 8va" #UP af R2.*8
  c2.->\p ~ | c4 r r R2.*2
  c2.->\p ~ | c4 r r R2.*6 \partcombineUnisono
  << {
    \cueWhile "violin1mS" "violin" #UP {s2.*4 s4}
    \trCueWhile "violin1mS" "violin 8va" #UP af {s2 s2.*3 s4 }
  }{
    R2.*8 r4 \partcombineAutomatic
  } >> c2->\ff | bf2-> a!4->~| a4 af2-> |
  g2 c,4~| c4 c'2-> | bf2-> a4-> ~| a4 af2-> | g2 c,4~ |
  \barNumberCheck#OnemS
  c4 g'8\ff g g4 |
  c, c r |
  r d f |
  ef8 d c4 r |
  r g'8 g g4 |
  c, c r |
  r d f |
  c8 c c4 c |
  c8 c c4 c |
  c8 c c4 c |
  c r r R2.*8
  R2.*28
  << \tag#'part {
    \voiceOne
    \context CueVoice r8*3/4
    \cueWhile "cellomS" "cello" #DOWN {s8 s4 s4 s2.*2}
    \oneVoice
  } {
    R2.*3
  } >>
  \barNumberCheck#TwomS
  <<
    s2.\ppp
    \repeat unfold 8 c'2.~
    \repeat percent 8 s2.
  >>
  c4 r r R2.*9
  g2.->\f~ |g2. |
  g4.\< af8 b4 | d f2 |
  c'4.\fz b8 af4-. | g-. d-. g,-. |
  \barNumberCheck#ThreemS
  c2->\ff bf4->~ | bf a2-> |
  gs d4-. | g-. ef-. c-. |
  c'2-> bf4->~ | bf a2-> |
  af2 f4 | c'4 r c |
  c4 r c | c4 r c| c4 r c |
  c4 r r | c r r | c r r | c r r | c r r R2.
  c4 r r R2.
  \clef bass
  <<
    {s2.\p s s\> s s\pp }
    \repeat unfold 8 c,,2.~
    \repeat percent 8 s2.
  >>
  c4 r r |
  \clef treble
  R2.*3
  R2.*17
  <<
    \tag#'part \trCueWhile "violin1mS" "violin 8va" #UP af
    \context CueVoice {s2.*4 s2 s4\stopSlurSpan}
    R2.*5
  >> ef''4.\p ef8 ef-. r |
  ef4. ef8 ef-. r |
  ef2.~ | ef2 ef4 |
  ef4. ef8 ef4 |
  ef4. ef8 ef4 |
  ef2.~ | ef2 ef4 |
  ef4. ef8 ef4 |
  ef4. ef8 ef4 |
  ef2.~ | ef2 ef4 |
  ef4.\< ef8 ef4 |
  ef2\f ef4\> |
  <<ef2.~ {s2 s4\p} >> | ef4 r r
  << s2. \tag#'score {ef4\p\repeatTie r r} \tag#'part \thinSkip >>
  \barNumberCheck#FivemS  R2.*47
  \tag#'score \set Staff.instrumentName=\markup"H34"
  R2.*9
  s2.%coda
  \partPageBreak
  \tag#'score \set Staff.shortInstrumentName
  =\markup\center-column {"H34" "(C)"}
  \transposition c
  R2.*4
  \inC
  e,2\f\< g4-. | c4-. e2 | g2->\ff e4-. | d4-. c2 R2.*14
  \tag#'score \set Staff.shortInstrumentName
  =\markup\center-column {"H34" "(E)"}
  \transposition e
  R2.*2
  \trCueWhile "flute1mS" "flute 15ma" #UP af, R2.*4
  \tag#'part \inE
  g2.->\ff~ | g2 g8 g |
  g2.~ | g2 g8 g |
  c2.\fff~c~c\>~c~c4\! r r R2.*11
  \trCueWhile "bassmS" "bass 8vb" #DOWN af'' R2.*2
  R2.
  g4\ff r r
}

hornIVmS = \relative c' {
  \transposition e
  \tag#'part \mark "in E"
  R2.*32
  << {
    \trCueWhile "violin1mS" "violin 8va" #DOWN af {s2.*4}
    \trCueWhile "violin1mS" "" #UP af {s2.*4 s4 }
  }{
    R2.*8 r4
  } >> c2->\ff | c2-> c4->~| c4 c2-> |
  c2 \partcombineApart c4~| c4 \partcombineAutomatic  c2-> |
  c2-> c4-> ~| c c2-> | c c4~ |
  \barNumberCheck#OnemS
  c4 g'8\ff g g4 | c, c r |
  r d f | ef8 d c4 r |
  r g'8 g g4 |
  c, c r |
  r d f |
  c8 c c4 c |
  c8 c c4 c |
  c8 c c4 c |
  c r r
  R2.*8
  R2.*31
  \barNumberCheck#TwomS
  R2.*14
  \trCueWhile "violin1mS" "violin 8va" #UP af R2.*4
  g2.->\f~ |g2. |
  g4.\< af8 b4 | d f2 |
  c'4.\fz b8 af4-. | g-. d-. g,-. |
  \barNumberCheck#ThreemS
  c2->\ff bf4->~ | bf a2-> |
  gs d4-. | g-. ef-. c-. |
  c'2-> bf4->~ | bf a2-> |
  af2 f4 | c'4 r c |
  c4 r c | c4 r c| c4 r c |
  c4 r r | c r r | c r r | c r r | c r r R2.
  c4 r r R2.
  \clef bass
  <<
    {s2.\p s s\> s s\pp }
    \repeat unfold 8 c,2.~
    \repeat percent 8 s2.
  >>
  c4 r r |
  R2.*3
  R2.*17
  \clef treble
  <<
    \tag#'part \trCueWhile "violin1mS" "violin 8va" #UP af
    \context CueVoice {s2.*4 s2 s4\stopSlurSpan}
    R2.*5
  >> ef'4.\p ef8 ef-. r |
  ef4. ef8 ef-. r |
  ef2.~ | ef2 ef4 |
  ef4. ef8 ef4 |
  ef4. ef8 ef4 |
  ef2.~ | ef2 ef4 |
  ef4. ef8 ef4 |
  ef4. ef8 ef4 |
  ef2.~ | ef2 ef4 |
  ef4.\< ef8 ef4 |
  ef2\f ef4\> |
  << ef2.~ {s2 s4\p} >> | ef4 r r
  << s2. \tag#'score {ef4\p\repeatTie r r} \tag#'part \thinSkip >>
  \barNumberCheck#FivemS  R2.*47
  \tag#'score \set Staff.instrumentName=\markup"H34"
  R2.*9
  s2.%coda
  \partPageBreak
  \tag#'score \set Staff.shortInstrumentName
  =\markup\center-column {"H34" "(C)"}
  \transposition c
  R2.*4
  \inC
  e2\f\< g4-. | c4-. e2 | g2->\ff e4-. | d4-. c2 R2.*14
  \tag#'score \set Staff.shortInstrumentName
  =\markup\center-column {"H34" "(E)"}
  \transposition e
  R2.*2
  \cueWhile "horn1mS" "horn" #UP R2.*4
  \inE
  g,2.->\ff~ | g2 g8 g |
  g2.~ | g2 g8 g |
  c2.\fff~c~c\>~c~c4\! r r R2.*11
  \trCueWhile "bassmS" "bass 8vb" #DOWN af'' R2.*2
  R2.
  g4\ff r r
}

trumpetImS = \relative c'' {
  \tag#'part \mark "in E"
  \transposition e
  R2.*41
  \trCueWhile "oboe1mS" "oboe 8va" #UP af R2.*7
  \barNumberCheck#OnemS
  c4\ff r c | r c8-. c-. c4-. |
  c4 r c | r c8-. c-. c4-. |
  c4 r c | r c8 c c4 |
  c4 r c | c8\ff c c4 c |
  c8 c c4 c | c8 c c4 c | c4 r r R2.*8
  R2.*20
  \trCueWhile "flute1mS" "flute 8va" #UP af R2.*4
  <<
    s2.\pp
    \repeat unfold 7 { r4 g r }
    \repeat percent 7 s2.
  >>
  \barNumberCheck#TwomS
  R2.*9
  r4 c,8\p c c4 | b4-. b-. r |
  r4 df8\< df df4 | c4-. c-. r |
  r4 d8 d d4 |
  cs4\f r g'8-. g-.|
  d4\< r af'8-. af-.|
  ef4\f r a8-. a-.|
  e4 r bf'8-. bf-.|
  f2.->\f | g2.->\<~ | g8\! r d'2->\f~\< | d2. ~ | d4\! r r |
  g,4 g8 g g4 |
  \barNumberCheck#ThreemS
  \tag#'score \set Staff.instrumentName=\markup"T"
  c2.\ff | r4 c8 c c4 | c4 c r |
  r4 c c | c8 c c4 r | r4 c8 c c4 | c4 c r |
  \repeat unfold 4 { c4 c8 c8 c4 }
  \repeat unfold 5 { c4 r r }
  R2. c4 r r R2.
  \tag#'score \set Staff.shortInstrumentName=\markup"T(C)"
  \transposition c
  R2.*12
  \tag#'part s2.*0^\markup\large{\italic"muta in" "C"}
  R2.*22
  R2.*16 << s2. \tag#'score R2. \tag#'part \thinSkip >>
  R2.*23
  \repeat unfold 4 {
    \trCueWhile "violin1mS" "strings" #UP c' R2.
    \trCueWhile "flute1mS" "winds" #UP c' R2.
  }
  \tag#'part \inC
  c4.\p c8 c r |
  c4. c8 c r |
  c4. c8 c r |
  c4. c8 c r |
  c4. c8 c r |
  g4. g8 g r |
  <<
    {s2. s s\< }
    \repeat unfold 6 {c4. c8 c4 }
    \repeat percent 6 s2.
  >>
  g4. g8 g4 |
  d'2 c4 |
  c2.\fz ~ c4 r r |
  \tag#'part s2.*0_\markup\large{\italic"muta in" "E"}
  R2.*9
  \tag#'score \set Staff.shortInstrumentName=\markup"T(E)"
  \transposition e
  s2.%coda
  \partPageBreak
  R2.*24
  \trCueWhile "flute1mS" "flute 15ma" #UP af, R2.*4
  \inE
  g2.->\ff~ | g2 g8 g |
  g2.~ | g2 g8 g |
  c,2.\fff~c2 c4 | a4\> g2~ | g2. | c2\mf\> e4 | g2\! g4 |
  g2.\fp\>~ | g2.\!~ | g2.\pp~ | g2.~ | g4 r r R2.*5
  \trCueWhile "bassmS" "bass 8vb" #DOWN af'' R2.*2
  R2.
  c,4\ff r r
}

trumpetIImS = \relative c' {
  \tag#'part \mark "in E"
  \transposition e
  R2.*41
  \trCueWhile "oboe1mS" "oboe 8va" #UP af R2.*7
  c4\ff r c | r c8-. c-. c4-. |
  c4 r c | r c8-. c-. c4-. |
  c4 r c | r c8 c c4 |
  c4 r c | c8\ff c c4 c |
  c8 c c4 c | c8 c c4 c | c4 r r R2.*8
  R2.*20
  \trCueWhile "flute1mS" "flute 8va" #UP af R2.*4
  <<
    s2.\pp
    \repeat unfold 7 { r4 g r }
    \repeat percent 7 s2.
  >>
  \barNumberCheck#TwomS
  R2.*9
  r4 c8\p c c4 | b4-. b-. r |
  r4 df8\< df df4 | c4-. c-. r |
  r4 d8 d d4 |
  cs4\f r g'8-. g-.|
  d4\< r af'8-. af-.|
  ef4\f r a8-. a-.|
  e4 r bf'8-. bf-.|
  f2.->\f | g2.->\<~ | g8\! r d'2->\f~\< | d2. ~ | d4\! r r |
  g,4 g8 g g4 |
  \barNumberCheck#ThreemS
  \tag#'score \set Staff.instrumentName=\markup"T"
  c,2.\ff | r4 c8 c c4 | c4 c r |
  r4 c c | c8 c c4 r | r4 c8 c c4 | c4 c r |
  \repeat unfold 4 { c4 c8 c8 c4 }
  \repeat unfold 5 { c4 r r }
  R2. c4 r r R2.
  \tag#'score \set Staff.shortInstrumentName=\markup"T(C)"
  \transposition c
  R2.*12-\tag#'part _\markup\large{\italic"muta" "in C"}
  R2.*22
  R2.*16
  << s2. \tag#'score R2. \tag#'part \thinSkip >>
  \barNumberCheck#FivemS
  R2.*23
  \repeat unfold 4 {
    \trCueWhile "violin1mS" "strings" #UP c' R2.
    \trCueWhile "flute1mS" "winds" #UP c' R2.
  }
  \inC
  c4.\p c8 c r |
  c4. c8 c r |
  c4. c8 c r |
  c4. c8 c r |
  c4. c8 c r |
  g4. g8 g r |
  <<
    {s2. s s\< }
    \repeat unfold 6 {c4. c8 c4 }
    \repeat percent 6 s2.
  >>
  g4. g8 g4 |
  g'2 e4 |
  e2.\fz ~ e4 r r |
  R2.*9 -\tag#'part _\markup\large{\italic"muta" "in E"}
  \tag#'score \set Staff.shortInstrumentName=\markup"T(E)"
  \transposition e
  s2.%coda
  \partPageBreak
  R2.*24
  \trCueWhile "flute1mS" "flute 15ma" #UP af, R2.*4
  \inE
  g2.->\ff~ | g2 g8 g |
  g2.~ | g2 g8 g |
  c,2.\fff~c2 c4 | a4\> g2~ | g2. | c2\mf\> e4 | g2\! g4 |
  g2.\fp\>~ | g2.\!~ | g2.\pp~ | g2.~ | g4 r r R2.*5
  \trCueWhile "bassmS" "bass 8vb" #DOWN af'' R2.*2
  R2.
  c,4\ff r r
}
