\version "2.14.0"

fluteImS = \relative c''' {
  \key e\minor
  e8\f e e2~ |
  e2. |
  b8 b b2~ |
  b2. R2.*28
  \cueWhile "violin1mS" "strings" #DOWN R2.*4
  \cueWhile "violin1mS" "strings" #UP {
    R2.*5
    r4
  } b8\ff b b4 |
  e, e r |
  r g-. b-. |
  g8( fs e4) r |
  r b'8 b b4 |
  e, e r |
  r g-. b-. |
  \barNumberCheck#OnemS
  g8( fs e4) e'-. |
  d2-> cs4->~ |
  cs c2-> |
  b-> e,4~ |
  e e'2-> |
  d-> cs4->~ |
  cs c2-> |
  \repeat unfold 3 { b8( e) e4-. e8( c) }
  e4-. r r R2.*8
  \key e\major
  gs,8(\p b b2~ |
  b \times2/3{ cs8 b fs }
  e2) fs4( |
  gs8 b b2~ |
  b8) e( ds cs b4~ |
  b8) cs( b gs b4~ |
  b8 gs fs gs b gs |
  fs gs e2~ |
  e4) r r R2.*7 |
  r4 cs'8(\f\< e e4~ |
  e2)\! \times2/3{ fs8( e cs }
  b8 gs8 b2\>~ |
  b2.)\! |
  r4 cs8(\< e e4~ |
  e2)\! \times2/3{ fs8( e cs }
  b8 gs8 b2\>~ |
  b)\! r4 |
  \override PercentRepeatCounter #'padding = #2.5
  <<
    {s2.\p s s\< s s\f s2 s4\> s2 s8 s8\!}
    \tag#'part \repeat percent 7 s2.
    \repeat unfold 7 b2.:8
  >>
  \barNumberCheck#TwomS
  R2.*14
  \cueWhile "horn1mS" "horn" #DOWN {
    R2.*4
    r4
  } ds2\f~ |
  ds ds4 |
  ds ds fs |
  fs2.~ |
  fs |
  ds |
  \barNumberCheck#ThreemS
  \key e\minor
  e2\ff e4~ |
  e e2 |
  e e4~ |
  e e2 |
  e e4~ |
  e e2 |
  e e4 |
  e r e |
  e r e |
  e r e |
  e r e |
  e r r |
  e4 r r |
  e4 r r |
  e4 r r |
  e4 r r |
  R2. |
  e4 r2 |
  R2. |\partcombineSoloI
  g,2.\fp\>~ |
  g4 r2\! |
  R2.*10 \partPageBreak
  \barNumberCheck#FourmS
  <<
    \tag#'part \trCueWhile "cellomS" "cello 15mb" #UP c'''
    \context CueVoice {s2.*3 s4 s\stopSlurSpan }
    { R2.*3 r4 r }
  >> e'4(\p |
  ds g,!) r R2.*7
  <<
    \tag#'part \cueWhile "violamS" "viola" #DOWN
    \context CueVoice {s2.*3 s4 s\stopSlurSpan }
    { R2.*3 r4 r }
  >> af'4(\p |
  g b,!) r R2.*4 \partcombineAutomatic
  r4 r c,4\p |
  c4. c8 e-. r |
  e4. e8 g-. r |
  g2.~ |
  g2 g4 |
  g4. g8 c r |
  b4. b8 a r |
  g2.~ |
  g2 c,4 |
  c4. c8 e r |
  e4. e8 g r |
  g2.~ |
  g2 g4 |
  g4.\< g8 e' r\! |
  d2\f\> c4 |
  <<c2.~ {s2 s4\p} >>
  c r c, | c' r r
  \barNumberCheck#FivemS
  R2.*8
  b8(\p g' b,) r a r |
  g2.*5/6\fp\startTrillSpan s8\stopTrillSpan |
  fs8( d' fs,) r e r |
  d2.*5/6\startTrillSpan s8\stopTrillSpan |
  e8( c' e,) r d r |
  c2.*5/6\startTrillSpan s8\stopTrillSpan |
  b8( g' b,) r a r |
  g2~\startTrillSpan g8\stopTrillSpan r R2.*8
  e'2~\p\startTrillSpan e8\stopTrillSpan r R2.
  e2~\startTrillSpan e8\stopTrillSpan r R2.
  f2~\startTrillSpan f8\stopTrillSpan r R2.
  f2~\startTrillSpan f8\stopTrillSpan r |
  c4.\p c8 e r |
  e4. e8 g r |
  g2.~ |
  g2 g4 |
  g4. g8 c r |
  b4. b8 a r |
  g2.~ |
  g2 c,4 |
  c4.\< c8 e r |
  e4. e8 g r |
  g2.~ |
  g2 g4 |
  g4. g8 e' r |
  d2 c4 |
  c2.\fz-> ~ |
  c4 r r R2.*9
  s2. %coda
  R2.*20
  \trCueWhile "horn1mS" "horn 8vb" #UP c'' R2.*2 \partcombineSoloIOnce
  \cueWhile "oboe1mS" "oboe" #UP R2.*2
  fs,2\f\< a4-. |
  cs-. fs2-> |
  a->\ff fs4-. |
  cs-. a2-> |
  ds8\< ds ds4-. a-. |
  a-. ds8 ds ds4 |
  a-. a-. ds8 ds\! |
  ds4-. a-. a-. |
  gs'2.\fff~ |
  gs2.~
  gs2.\>~
  gs2.~
  gs4 r\! r R2.*13
  R2.
  e4\ff r r
}

fluteIImS = \relative c''' {
  \key e\minor
  e8\f e e2~ |
  e2. |
  b8 b b2~ |
  b2. R2.*8 \partcombineSoloIIOnce
  r4 b8-.\p b-. b4-. |
  e,-. e-. r |
  r fs-. a-. |
  g8( fs e4) r |
  r b'8-. b-. b4-. |
  e,-. e-. r |
  r fs-. a-. |
  g8( fs e4) r R2.*12
  \cueWhile "violin1mS" "strings" #DOWN R2.*4
  \cueWhile "violin1mS" "strings" #UP {
    R2.*5
  r4
} b'8\ff b b4 |
  e, e r |
  r g-. b-. |
  g8( fs e4) r |
  r b'8 b b4 |
  e, e r |
  r g-. b-. |
  \barNumberCheck#OnemS
  g8( fs e4) e'-. |
  d2-> cs4->~ |
  cs c2-> |
  b-> e,4~ |
  e e'2-> |
  d-> cs4->~ |
  cs c2-> |
  \repeat unfold 3 { b8( e) e4-. e8( c) }
  e4-. r r R2.*8
  \key e\major
  R2.*11
  \cueWhile "clarinet1mS" "clarinet" #UP R2.*5
  r4 a,8(\f\< cs cs4~ |
  cs2)\! \times2/3{ ds8( cs a }
  gs8 e8 gs2\>~ |
  gs2.)\! |
  r4 a8(\< cs cs4~ |
  cs2)\! \times2/3{ ds8( cs a }
  gs8 e8 gs2\>~ |
  gs)\! r4 |
  \override PercentRepeatCounter #'padding = #2.5
  <<
    {s2.\p s s\< s s\f s2 s4\> s2 s8 s8\!}
    \tag#'part \repeat percent 7 s2.
    \repeat unfold 7 b2.:8
  >>
  \barNumberCheck#TwomS
  R2.*14
  \cueWhile "violin1mS" "violin" #UP R2.*4
  r4 ds2\f~ |
  ds ds4 |
  ds ds fs |
  fs2.~ |
  fs |
  ds |
  \barNumberCheck#ThreemS
  \key e\minor
  e2\ff e4~ |
  e e2 |
  e e4~ |
  e e2 |
  e e4~ |
  e e2 |
  e e4 |
  e r c |
  b r c |
  b r c |
  b r c |
  b r r |
  c4 r r |
  b4 r r |
  c4 r r |
  b4 r r R2.
  b4 r2 R2.
  R2.*12
  \barNumberCheck#FourmS
  R2.*15
  << \tag #'part {
    \cueWhile "flute1mS" "flute I" #UP {s2. s2 }
    \cueWhile "oboe1mS" "oboe I" #UP {s4 s2}
    \cueWhile "violin1mS" "violin" #UP {s4 s2.*3
    \context CueVoice {s4 s4\stopSlurSpan } }
  } {
    R2.*6 r4 r
  } >> c,4\p |
  c4. c8 e-. r |
  e4. e8 g-. r |
  g2.~ |
  g2 g4 |
  g4. g8 c r |
  b4. b8 a r |
  g2.~ |
  g2 c,4 |
  c4. c8 e r |
  e4. e8 g r |
  g2.~ |
  g2 g4 |
  g4.\< g8 e' r\! |
  d2\f\> c4 |
  <<c2.~ {s2 s4\p} >>
  c r c, | c'\repeatTie r r \partPageBreak
  \barNumberCheck#FivemS
  R2.*8
  g8(\p b g) r f r |
  e2.*5/6\fp\startTrillSpan s8\stopTrillSpan |
  d8( fs d) r c r |
  b2.*5/6\startTrillSpan s8\stopTrillSpan |
  c8( e c) r b r |
  a2.*5/6\startTrillSpan s8\stopTrillSpan |
  g8( b g) r fs r |
  e2~\startTrillSpan e8\stopTrillSpan r R2.*8
  gs2~\p\startTrillSpan gs8\stopTrillSpan r R2.
  gs2~\startTrillSpan gs8\stopTrillSpan r R2.
  a2~\startTrillSpan a8\stopTrillSpan r R2.
  a2~\startTrillSpan a8\stopTrillSpan r |
  c4.\p c8 e r |
  e4. e8 g r |
  g2.~ |
  g2 g4 |
  g4. g8 c r |
  b4. b8 a r |
  g2.~ |
  g2 c,4 |
  c4.\< c8 e r |
  e4. e8 g r |
  g2.~ |
  g2 g4 |
  g4. g8 e' r |
  d2 c4 |
  c2.\fz-> ~ |
  c4 r r
  \barNumberCheck#SixmS
  R2.*9
  s2. %coda
  R2.*4 \partcombineSoloII
  \trCueWhile "horn3mS" "horn 8vb" #UP c'' R2.*4
  r4 g8\p g g4-. | c,4-. c-. r |
  r4 g'8 g g4-. | c,4-. c-. r R2.*4
  r4 gs'8 gs gs4-. | cs,4-. cs-. r |
  r4 gs'8 gs gs4-. | cs,4-. cs-. r R2.*4 \partcombineAutomatic
  fs2\f\< a4-. |
  cs-. fs2-> |
  a->\ff fs4-. |
  cs-. a2-> |
  ds8\< ds ds4-. a-. |
  a-. ds8 ds ds4 |
  a-. a-. ds8 ds\! |
  ds4-. a-. a-. |
  e'2.\fff~ |
  e2.~
  e2.\>~
  e2.~
  e4 r\! r R2.*13
  R2.
  e4\ff r r \partPageBreak
}

oboeImS = \relative c'' {
  \key e\minor
  e8\f e e2~ |
  e2. |
  b8 b b2~ |
  b2. R2.*8 \partcombineSoloIOnce
  r4 b'8-.\p b-. b4-. |
  e,-. e-. r |
  r fs-. a-. |
  g8( fs e4) r |
  r b'8-. b-. b4-. |
  e,-. e-. r |
  r fs-. a-. |
  g8( fs e4) r R2.*12
  << {
    \cueWhile "violin1mS" "strings" #DOWN s2.*4
    \cueWhile "violin1mS" "strings" #UP {s2.*5 s4}
  } {
    R2.*9 r4
  } >> b'8\ff b b4 |
  e, e r |
  r g-. b-. |
  g8( fs e4) r |
  r b'8 b b4 |
  e, e r |
  r g-. b-. |
  \barNumberCheck#OnemS
  g8( fs e4) e'-. |
  d2-> cs4->~ |
  cs c2-> |
  b-> e,4~ |
  e e'2-> |
  d-> cs4->~ |
  cs c2-> |
  b8( e,) e4-. e8( c) | b8( e) e4-. e8( c) | b8( e) e4-. e8( c) |
  e4-. r r R2.*8
  \key e\major
  gs,8(\p b) b2~ |
  b2\! \times2/3{ cs8( b fs }
  e2) fs4( | gs8 b b2~ |
  b8) e( ds cs b4~ | b8) cs( b gs b4 ~ |
  b8) gs( fs gs b gs | fs gs e2~ | e4) r r R2.*7
  r4 cs'8(\f\< e e4~ |
  e2)\! \times2/3{ fs8( e cs }
  b8 gs8 b2\>~ |
  b2.)\! |
  r4 cs8(\< e e4~ |
  e2)\! \times2/3{ fs8( e cs }
  b8 gs8 b2\>~ |
  b)\! r4 |
  gs'8\p gs gs gs a[ a] | gs gs gs gs a[ a] |
  \scoreDynamicsOff gs8\< gs gs gs a[ a] | gs gs gs gs a[ a] |
  gs2.:8\f <<gs2.:8 {s2 s4\>} >> |
  a8[ a] gs gs gs gs\! \pageBreak
  \barNumberCheck#TwomS
  R2.*14
  \cueWhile "horn1mS" "horn" #DOWN {
    R2.*4 r4
  } a2\f~ |
  a2 gs4 | gs fs a |
  a2.\<~ | a |
  fs2 a4 |
  \barNumberCheck#ThreemS
  \key e\minor
  g2\ff g4~ | g g2 |
  fs fs4~ | fs g2 |
  g g4~ | g g2 |
  fs fs4 |
  b r c |
  b r c |
  b r c |
  b r c |
  b r r |
  g4 r r |
  b4 r r |
  g4 r r |
  g4 r r |
  R2. |
  g4 r2 |
  R2. |
  e2.(\fp\> | e4) r\! r |
  R2.*10
  \barNumberCheck#FourmS
  R2.*11 \partcombineSoloI
  << \tag#'part {
    \cueWhile "violamS" "viola" #DOWN
    \context CueVoice { s2.*4 s4 s4\stopSlurSpan }
    \trCueWhile "flute1mS" "flute I 8va" #UP c { s4 s2 }
  } {
    R2.*5 r4 r4
  } >> af4(\p | g b,) r | R2.*3 \partcombineAutomatic
  r4 r c4\p |
  c4. c8 e-. r |
  e4. e8 g-. r |
  g2.~ |
  g2 g4 |
  g4. g8 c4 |
  b4. b8 a4 |
  g2.~ |
  g2 c,4 |
  c4. c8 e r |
  e4. e8 g r |
  g2.~ |
  g2 g4 |
  g4.\< g8 g4 |
  f!2\f\> e4 |
  <<e2.~ {s2 s4\p} >>
  e r c\p | e\repeatTie r r
  \barNumberCheck#FivemS
  R2.*8
  g8(\p b g) r f r |
  e2.*5/6\fp\startTrillSpan s8\stopTrillSpan |
  d8( fs! d) r c r |
  b2.*5/6\startTrillSpan s8\stopTrillSpan |
  e8( c' e,) r d r |
  c2.*5/6\startTrillSpan s8\stopTrillSpan |
  b8( g' b,) r a r |
  g2~\startTrillSpan g8\stopTrillSpan r R2.*7
  \partcombineSoloI
  \repeat unfold 4 {
    \cueWhile "violin1mS" "strings" #UP R2.
    \cueWhile "flute1mS" "winds" #UP R2.
  } \partcombineAutomatic
  c4.\p c8 e r |
  e4. e8 g r |
  g2.~ |
  g2 g4 |
  g4. g8 c r |
  b4. b8 a r |
  g2.~ |
  g2 c,4 |
  c4.\< c8 e r |
  e4. e8 g r |
  g2.~ |
  g2 g4 |
  g4. g8 g r |
  fs2 e4 |
  e2.\fz-> ~ |
  e4 r r
  \barNumberCheck#SixmS
  R2.*9
  s2. %coda
  R2.*4 \partcombineSoloI
  \trCueWhile "horn3mS" "horn 8vb" #UP c'' R2.*4
  r4 g8\p g g4-. | c,4-. c-. r |
  r4 g'8 g g4-. | c,4-. c-. r R2.*4
  r4 gs'8 gs gs4-. | cs,4-. cs-. r |
  r4 gs'8 gs gs4-. | cs,4-. cs-. r R2.*2 \partcombineAutomatic
  fs,2\f a4-. |
  cs-. fs2-> |
  fs,2\< a4-. |
  cs-. fs2-> |
  a->\ff fs4-. |
  cs-. a2-> |
  ds8\< ds ds4-. a-. |
  a-. ds8 ds ds4 |
  a-. a-. ds8 ds\! |
  ds4-. a-. a-. |
  b'2.\fff~ |
  b2.~
  b2.\>~
  b2.~
  b4 r\! r R2.*13
  R2.
  b4\ff r r \partPageBreak
}

oboeIImS = \relative c'' {
  \key e\minor
  e8\f e e2~ |
  e2. |
  b8 b b2~ |
  b2. R2.*28
  << { R2.*9 r4 } {
    \cueWhile "violin1mS" "strings" #DOWN s2.*4
    \cueWhile "violin1mS" "strings" #UP s2.*4
    \trCueWhile "violin1mS" "strings 8va" #UP c {
      s2. s4
    }
  } >> b8\ff b b4 |
  e, e r |
  r g-. b-. |
  g8( fs e4) r |
  r b'8 b b4 |
  e, e r |
  r g-. b-. |
  \barNumberCheck#OnemS
  g8( fs e4) e' |
  d2-> cs4->~ |
  cs c2-> |
  b-> e,4~ |
  e e'2-> |
  d-> cs4->~ |
  cs c2-> |
  \repeat unfold 3 { b8( e) e4-. e8( c) }
  e4-. r r R2.*8
  \key e\major
  R2.*11
  \trCueWhile "clarinet1mS" "clarinet 8va" #UP c R2.*5
  r4 a,8(\f\< cs cs4~ |
  cs2)\! \times2/3{ ds8( cs a }
  gs8 e8 gs2\>~ |
  gs2.)\! |
  r4 a8(\< cs cs4~ |
  cs2)\! \times2/3{ ds8( cs a }
  gs8 e8 gs2\>~ |
  gs)\! r4 |
  e'8\p e e e ds[ ds] | e e e e ds[ ds] |
  e8\< e e e ds[ ds] | e e e e ds[ ds] |
  e8\f e e e ds[ ds] | e e e e ds[\> ds] |
  ds8[ ds] e e e e\! \partPageBreak
  \barNumberCheck#TwomS
  R2.*14
  \cueWhile "horn1mS" "horn" #DOWN {
    R2.*4 r4
  } ds2\f~ |
  ds ds4 | ds ds fs |
  fs2.\<~ | fs |
  ds2 ds4 |
  \barNumberCheck#ThreemS
  \key e\minor
  e2\ff e4~ |
  e e2 |
  e e4~ |
  e e2 |
  e e4~ |
  e e2 |
  e e4 |
  g r fs |
  g r fs |
  g r fs |
  g r fs |
  g r r |
  e4 r r |
  g4 r r |
  e4 r r |
  e4 r r R2.
  e4 r2 R2.
  c2.(\fp\> | b4) r\! r |
  R2.*10
  \barNumberCheck#FourmS
  R2.*16
  << \tag #'part {
    \cueWhile "oboe1mS" "oboe I" #UP { s2. s2 }
    \cueWhile "violin1mS" "violin" #UP
    \context CueVoice { s4 s2.*3 s4 s\stopSlurSpan }
  } {
    R2.*5 r4 r
  } >> c4\p |
  c4. c8 c-. r |
  c4. c8 e-. r |
  c2.~ |
  c2 c4 |
  c4. c8 e4 |
  b4. b8 b4 |
  c2.~ |
  c2 c4 |
  c4. c8 c r |
  c4. c8 e r |
  e2.~ |
  e2 e4 |
  e4.\< e8 e4 |
  d2\f\> c4 |
  <<c2.~ {s2 s4\p} >>
  c r c | c\repeatTie r r
  \barNumberCheck#FivemS
  R2.*8
  \cueWhile "oboe1mS" "oboe I" #UP R2.*4
  c8( e c) r b r |
  a2.*5/6\startTrillSpan s8\stopTrillSpan |
  g8( b g) r fs r |
  e2~\startTrillSpan e8\stopTrillSpan r \partcombineSoloIIOnce R2.*15
  c'4.\p c8 c r |
  c4. c8 e r |
  e2.~ | e2 e4 |
  e4. e8 e r |
  g4. g8 f! r|
  e2.~ | e2 c4 |
  c4.\< c8 c r |
  c4. c8 e r |
  e2.~ | e2 e4 |
  e4. e8 e r |
  d2 c4 |
  c2.\fz-> ~ |
  c4 r r
  \barNumberCheck#SixmS
  R2.*9
  s2. %coda
  R2.*8
  \cueWhile "oboe1mS" "oboe I" #UP R2.*4
  R2.*4
  \cueWhile "oboe1mS" "oboe I" #UP R2.*4
  \trCueWhile "horn1mS" "horn 8vb" #UP c'' R2.*2
  fs,2\f a4-. |
  cs-. fs2-> |
  fs,2\< a4-. |
  cs-. fs2-> |
  a->\ff fs4-. |
  cs-. a2-> |
  ds8\< ds ds4-. a-. |
  a-. ds8 ds ds4 |
  a-. a-. ds8 ds\! |
  ds4-. a-. a-. |
  gs'2.\fff~ |
  gs2.~
  gs2.\>~
  gs2.~
  gs4 r\! r R2.*13
  R2.
  g!4\ff r r \partPageBreak
}

clarinetImS = \relative c''{
  \key g\minor
  \tag #'part \mark "in A"
  \transposition a
  g'8\f g g2~ | g2. |
  d8 d d2~ | d2. R2.*8 \partcombineSoloIOnce
  \cueWhile "oboe1mS" "flute & oboe" #UP {
    R2. r4
  } d8-.\p d-. d4-. | g,-. g-. r |
  r bf-. d-. | bf8( a g4) r |
  r d'8-. d-. d4-. | g,-. g-. r |
  r bf-. d-. | g,2.->_\markup\dynamic"fz" | g2.->_\markup\dynamic"fz" |
  g2.->_\markup\dynamic"fz" |
  g4._\markup\dynamic"fz" d8( bf d) | g2._\markup\dynamic"fz" |
  g2._\markup\dynamic"fz" | g2._\markup\dynamic"fz" |
  g4. d8( bf d | g,) r r2 R2.*11
  \cueWhile "horn1mS" "horns" #DOWN R2.
  r4 d'''8\ff d d4 | g, g r |
  r bf-. d-. | bf8( a g4) r |
  r d'8 d d4 | g, g r |
  r bf-. d-. |
  \barNumberCheck#OnemS
  bf8( a g4 g) |
  f2-> e4->~ | e ef2-> |
  d-> g,4~ | g g'2-> |
  f-> e4~ | e ef2-> |
  \repeat unfold 3 { d8( g) g4-. g8( ef) }
  g4-. r r R2.*8
  \key g\major
  R2.*6
  <<
    \tag#'part \cueWhile "oboe1mS" "flute & oboe" #UP
    \context CueVoice {s2. s4 s2\stopSlurSpan}
    R2.*2
  >>
  b8(\mp\< d d2~ | d) \times2/3{ e8(\mf d b } | g2 a4) |
  b8(\< d) d2~ | d8\! g( fs e) d4~ | d8 e( d b) d4~ |
  d8 b(\> a b d b | a b g2)\! R2.*8
  <<
    { \scoreDynamicsOff s2.\p s s\< s s\f s2 s4\> s2 s8 s\! }
    \repeat unfold 7 d2.:8
  >> \partPageBreak
  \barNumberCheck#TwomS
  R2.*18
  \cueWhile "oboe1mS" "flute & oboe" #UP R2.*5
  fs2\f\< fs4 |
  \barNumberCheck#ThreemS
  \key g\minor
  g2\ff g4~ | g g2 |
  g g4~ | g g2 |
  g g4~ | g g2 |
  a a4 |
  bf r a |
  bf r a |
  bf r a |
  bf r a |
  bf r r |
  g4 r r |
  bf4 r r |
  ef,4 r r |
  bf'4 r r R2.
  bf4 r r R2.*3
  bf,2.->\p\>~ | bf4\! r r |
  bf,2.->\p\>~ | bf4\! r r |
  g2.~ | g4 r r |
  bf2.\pp~ | bf~ | bf~ | bf~ |
  \barNumberCheck#FourmS
  bf4 r r
  R2.*2 \partcombineSoloI
  \trCueWhile "flute1mS" "flute I 8va" #UP ef {
    R2. r4 r
  }g''(\p | fs bf,!) r R2.*11
  <<
    \tag#'part \cueWhile "violin1mS" "violin" #UP
    \context CueVoice {s2.*4 s2 s4\stopSlurSpan}
    R2.*5
  >> \partcombineAutomatic
  bf4.\p bf8 bf-. r | bf4. bf8 bf-. r |
  bf2. ~ | bf2 bf4 |
  bf4. bf8 ef4 |
  d4. d8 c4 |
  bf2. ~ | bf2 bf4 |
  bf4. bf8 ef r |
  ef4. ef8 ef r |
  ef2. ~ | ef2 ef4 |
  d4.\< d8 d4 |
  d2\f\> ef4 |
  <<ef2.~ {s2 s4\p} >>| ef4 r r
  << s2. \tag#'score {ef4\p\repeatTie r r} \tag#'part \thinSkip >>
  \barNumberCheck#FivemS
  R2.*8
  d8(\p bf' d,) r c r |
  bf2.*5/6\startTrillSpan\fp s8\stopTrillSpan |a8( f' a,) r g r |
  f2.*5/6\startTrillSpan\fp s8\stopTrillSpan |g8( ef' g,) r f r |
  ef2.*5/6\startTrillSpan s8\stopTrillSpan |d8( bf' d,) r c r |
  bf2\startTrillSpan ~ bf8\stopTrillSpan r R2.*8
  d2\startTrillSpan ~ d8\stopTrillSpan r R2.
  d2\startTrillSpan ~ d8\stopTrillSpan r R2.
  \times4/6 f2.:8 f8 r R2.
  \times4/6 f2.:8 f8 r |
  bf4.\p bf8 bf r | bf4. bf8 bf r |
  bf2. ~ | bf2 bf4 |
  bf4. bf8 ef r |
  d4. d8 c r |
  bf2. ~ | bf2 bf4 |
  bf4.\< bf8 bf r |
  bf4. bf8 bf r |
  bf2. ~ | bf2 ef4 |
  d4. d8 d4 |
  d2 ef4 |
  ef2.\fz ~ | ef4 r r R2.*9
  s2. %coda
  R2.*16
  \cueWhile "oboe1mS" "oboe" #UP R2.*4
  \cueWhile "horn1mS" "horn" #DOWN R2.*2
  \barNumberCheck#SevenmS
  a,2\f c4-. |
  e-. a2-> |
  a,\< c4-. |
  e-. a2-> |
  c->\ff a4-. |
  e-. c2-> |
  fs8 fs fs4-. c-. |
  c-. fs8 fs fs4-. |
  c-. c-. fs8 fs |
  fs4-. c-. c-. |
  g'2.\fff~ | g2.~ | g2.\>~ | g2.~ | g4 r\! r R2.*3
  bf,,2.\pp~ | bf2.~ | bf2.~ | bf2. |
  \trCueWhile "violamS" "viola 8vb" #UP ef'' {
    bf2.\pp~ | bf2.~ | bf2.~ | bf2.~ | bf2.~ | bf4
  }  r r R2.
  d'4\ff r r \partPageBreak
}

clarinetIImS = \relative c'' {
  \key g\minor
  \tag #'part \mark "in A"
  \transposition a
  g'8\f g g2~ | g2. |
  d8 d d2~ | d2.
  <<
    R2.*16
    {s2.*9 \cueWhile "clarinet1mS" "clarinet I" #UP s2.*7}
  >>
  g,2.->_\markup\dynamic"fz" | g2.->_\markup\dynamic"fz"
  | g2.->_\markup\dynamic"fz" |
  g4._\markup\dynamic"fz" d8( bf d) | g2._\markup\dynamic"fz" |
  g2._\markup\dynamic"fz" | g2._\markup\dynamic"fz" |
  g4. d8( bf d | g,) r r2 R2.*11
  \cueWhile "horn1mS" "horns" #DOWN R2.
  r4 d''8\ff d d4 | g, g r |
  r bf-. d-. | bf8( a g4) r |
  r d'8 d d4 | g, g r |
  r bf-. d-. |
  \barNumberCheck#OnemS
  bf8( a g4 g) |
  f2-> e4->~ | e ef2-> |
  d-> g,4~ | g g'2-> |
  f-> e4~ | e ef2-> |
  \repeat unfold 3 { d8( g) g4-. g8( ef) }
  g4-. r r R2.*8
  \key g\major
  R2.*8
  b8(\mp\< d d2~ | d) \times2/3{ e8(\mf d b } | g2 a4) |
  b8(\< d) d2~ | d8\! g( fs e) d4~ | d8 e( d b) d4~ |
  d8 b(\> a b d b | a b g2)\! R2.*8
  b2:8\p c4:8 b2:8 c4:8 b2:8\< c4:8 b2:8 c4:8 b2.:8\f
  << b2.:8 {s2 s4\>} >>
  c8[ c] b b b b\! \partPageBreak
  \barNumberCheck#TwomS
  R2.*18
  \cueWhile "oboe1mS" "flute & oboe" #UP R2.*5
  a2\f\< a4 |
  \barNumberCheck#ThreemS
  \key g\minor
  bf2\ff bf4~ | bf bf2 |
  a a4~ | a bf2 |
  bf bf4~ | bf bf2 |
  g' g4 |
  g r g |
  g r g |
  g r g |
  g r g |
  g r r |
  ef4 r r |
  g4 r r |
  c,4 r r |
  g'4 r r R2.
  g4 r r R2.*3
  g,2.->\p\>~ | g4\! r r |
  bf,2.->\p\>~ | bf4\! r r |
  g2.~ | g4 r r |
  g2.\pp~ | g~ | g~ | g~ |
  \barNumberCheck#FourmS
  g4 r r
  R2.*16
  <<
    \tag#'part \cueWhile "violin1mS" "violin" #UP
    \context CueVoice {s2.*4 s2 s4\stopSlurSpan}
    R2.*5
  >>
  g'4.\p g8 g-. r | g4. g8 g-. r |
  g2. ~ | g2 g4 |
  g4. g8 bf4 |
  bf4. bf8 af4 |
  g2. ~ | g2 g4 |
  g4. g8 bf r |
  bf4. bf8 bf r |
  bf2. ~ | bf2 bf4 |
  bf4.\< bf8 bf4 |
  bf2\f\> bf4 |
  <<bf2.~ {s2 s4\p} >> |
  bf4 r r
  << s2. \tag#'score {bf4\p\repeatTie r r} \tag#'part \thinSkip >>
  \barNumberCheck#FivemS
  R2.*8
  bf8(\p d bf) r af r |
  g2.*5/6\startTrillSpan\fp s8\stopTrillSpan | f8( a f) r ef r |
  d2.*5/6\startTrillSpan\fp s8\stopTrillSpan | ef8( g ef) r d r |
  c2.*5/6\startTrillSpan s8\stopTrillSpan | bf8( d bf) r a r |
  g2\startTrillSpan ~ g8\stopTrillSpan r R2.*8
  g2\startTrillSpan\p ~ g8\stopTrillSpan r R2.
  g2\startTrillSpan ~ g8\stopTrillSpan r R2.
  \times4/6 f2.:8 f8 r R2.
  \times4/6 f2.:8 f8 r |
  g'4.\p g8 g r | g4. g8 g r |
  g2. ~ | g2 g4 |
  g4. g8 g r |
  bf4. bf8 af r |
  g2. ~ | g2 g4 |
  g4.\< g8 g r |
  g4. g8 g r |
  g2. ~ | g2 ef'4 |
  d4. d8 d4 |
  d2 ef4 |
  ef2.\fz ~ | ef4 r r
  \barNumberCheck#SixmS
  R2.*9
  s2. %coda
  R2.*16
  \cueWhile "oboe1mS" "oboe" #UP R2.*4
  \cueWhile "horn1mS" "horn" #DOWN R2.*2
  a,,2\f c4-. |
  e-. a2-> |
  a\< c4-. |
  e-. a2-> |
  c->\ff a4-. |
  e-. c2-> |
  fs,8 fs fs4-. c-. |
  c-. fs8 fs fs4-. |
  c-. c-. fs8 fs |
  fs4-. c-. c-. |
  d'2.\fff~ | d2.~ | d2.\>~ | d2.~ | d4 r\! r R2.*3
  g,,2.\pp~ | g2.~ | g2.~ | g2. |
  \trCueWhile "violamS" "viola 8vb" #UP ef'' {
    g2.\pp~ | g2.~ | g2.~ | g2.~ | g2.~ | g4
  }  r r R2.
  bf'4\ff r r \partPageBreak
}

bassoonImS = \relative c' {
  \clef bass
  \key e\minor
  e8\ff e e2~ | e2. |
  b8 b b2~ | b2. R2.*28
  \trCueWhile "violin1mS" "strings 15ma" #DOWN c, R2.*4
  \trCueWhile "violin1mS" "strings" #UP c, {
    R2.*4
    r4
  } g,2->\ff |
  g-> g4 |
  a2-> a4 |
  g2 g4 |
  g2 g4 |
  g2 g4 |
  a2 a4 |
  g2 g4 |
  \barNumberCheck#OnemS
  g e''2->\ff |
  d-> cs4->~ | cs c2-> |
  b-> e,4->~ | e e'2-> |
  d-> cs4->~ | cs c2-> |
  b8 a g4 c | b8 a g4 c | b8 a g4 c | b8 a g4 r R2.*4
  \partcombineSoloIOnce r4 e'8(\p c b) r |
  r4 e8( c b) r |
  r4 e8( c b) r |
  r4 e8( cs b) r |
  \key e\major
  r4 e8( cs b4~ | b2.)~ | b2.~ | b4 r r R2.*4
  r4 e8(\p cs b4~ | b2.)~ | b2.~ | b2.~ | b4 r r R2.*11
  gs8(\p b) b2~ | b \times2/3{ cs8(\< b fs } |
  e2 fs4) |
  gs8( b b2~ | b8)\f e( ds cs) b4~ | b8 gs( fs gs b\> gs |
  fs gs e2) s2.*0\!
  \barNumberCheck#TwomS
  R2.*8
  d'2.\p ~ | d2. |
  c2.~ | c2 ef4 |
  df2.~ | df2 e!4 | d2.( | ds2.)\< | e2. | f2.\! |
  fs8 r b,,2->\f~ | b2. |
  b4. c8 ds4 |
  fs\< a2 |
  e'4. ds8 c4 |
  b-. fs-. b-. |
  \barNumberCheck#ThreemS
  \key e\minor
  e2->\ff d4->~ |
  d cs2-> |
  c fs,4-. |
  b-. g-. e-. |
  e'2-> d4->~ |
  d cs2-> |
  c a4 |
  e e a |
  e e a |
  e e a |
  e e a |
  e r r |
  a4 r r |
  e4 r r |
  a4 r r |
  e4 r r R2.
  e4 r r R2.*3
  c'2.(\p\> | b4)\! r r |
  e,2.(\p\> | e4)\! r r |
  c2.( | b4) r r
  R2.*4
  \barNumberCheck#FourmS
  R2.*3\partcombineSoloI
  << {
    \trCueWhile "flute1mS" "flute 15ma" #UP c, {s2. s2}
    \trCueWhile "clarinet1mS" "clarinet 8va" #UP c {s4 s2.}
  } {
    R2.*3
  } >>
  r4 af'2\p~ | af2.~ | af2 r4 R2.*8\partcombineAutomatic
  <<
    \tag#'part \trCueWhile "violin1mS" "violin 15ma" #UP c,
    \context CueVoice {s2.*4 s2 s4\stopSlurSpan}
    R2.*5
  >>
  e'4.\p e8 e-. r | e4. e8 e-. r |
  e2.~ | e2 e4 |
  e4. e8 e4 | f4. f8 f4 |
  e2.~ | e2 e4 |
  e4. e8 e r |
  e4. e8 e r |
  e2.~ | e2 e4 |
  e4.\< e8 e r | f2\fz\> e4 |
  <<e2.~ {s2 s4\p} >> | e4 r r
  << s2. \tag#'score {e4\p\repeatTie r r} \tag#'part \thinSkip >>
  \barNumberCheck#FivemS
  R2.*23
  \repeat unfold 4 {
    \trCueWhile "violin1mS" "strings" #UP c, R2.
    \trCueWhile "flute1mS" "winds" #DOWN c, R2.
  }
  e4.\p e8 e r | e4. e8 e r |
  e2.~ | e2 e4 |
  e4. e8 e r | f4. f8 f r |
  e2.~ | e2 e4 |
  e4.\< e8 e r | e4. e8 e r |
  e2.~ | e2 e4 |
  e4. e8 e r | d2 e4 |
  e2.\fz~ | e4 r r R2.*9
  s2.%coda
  \partPageBreak
  R2.*16
  \trCueWhile "oboe1mS" "flute & oboe 8va" #UP c R2.*4
  \cueWhile "horn1mS" "horn" #UP R2.*2
  fs,2\f a4-. | cs-. fs2 R2.*4
  ds8\ff ds ds4-. a-. |
  a-. ds8 ds ds4 |
  a-. a-. ds8 ds |
  ds4-. a-. a-. |
  \trCueWhile "violin1mS" "violin 15ma" #UP c, {
    e2.\fff~ | e2.~ |
  } \trCueWhile "violin1mS" "violin 8va" #UP c {
    e2.\>~ | e2.~ |
  } \trCueWhile "violin1mS" "violin" #UP c' {
    e2.\mf\>~ | e2.~ | e2.\p\>~ | e2.\pp~ | e4 r r R2.
  } R2.*8
  R2. e4\ff r r
}

bassoonIImS = \relative c {
  \clef bass
  \key e\minor
  e8\ff e e2~ | e2. |
  b8 b b2~ | b2. R2.*28
  \trCueWhile "violin1mS" "strings 15ma" #DOWN c, R2.*4
  \trCueWhile "violin1mS" "strings" #UP c, {
    R2.*4
    r4
  } e,2->\ff |
  <<
    \repeat percent 7 s2.
    \repeat unfold 7 { e2-> e4 }
  >>
  \barNumberCheck#OnemS
  e4 e''2->\ff |
  d-> cs4->~ | cs c2-> |
  b-> e,4->~ | e e'2-> |
  d-> cs4->~ | cs c2-> |
  g8 fs e4 a | g8 fs e4 a | g8 fs e4 a | g8 fs e4 r
  R2.*8
  \key e\major
  R2.*20
  \trCueWhile "oboe1mS" "oboe 8va" #UP c R2.*4
  gs8(\p b) b2~ | b \times2/3{ cs8(\< b fs } |
  e2 fs4) |
  gs8( b b2~ | b8)\p e( ds cs) b4~ | b8 gs( fs gs b\> gs |
  fs gs e2) s2.*0\!
  \barNumberCheck#TwomS
  R2.*8
  gs2.\p ~ | gs2. |
  a2.~ | a2 a4 |
  bf2.~ | bf2 as4 | b2.( | bs2.)\< | cs2. | d2.\! |
  ds8 r b,,2->\f~ | b2. |
  b4. c8 ds4 |
  fs\< a2 |
  e'4. ds8 c4 |
  b-. fs-. b-. |
  \barNumberCheck#ThreemS
  \key e\minor
  e2->\ff d4->~ |
  d cs2-> |
  c fs,4-. |
  b-. g-. e-. |
  e'2-> d4->~ |
  d cs2-> |
  c a4 |
  e e a |
  e e a |
  e e a |
  e e a |
  e r r |
  a4 r r |
  e4 r r |
  a4 r r |
  e4 r r R2.
  e4 r r R2.*5
  c'2.(\p\> | b4)\! r r |
  g2.( | g4) r r
  R2.*4
  \barNumberCheck#FourmS
  R2.*17
  <<
    \tag#'part \trCueWhile "violin1mS" "violin 15ma" #UP c,
    \context CueVoice {s2.*4 s2 s4\stopSlurSpan}
    R2.*5
  >>
  c'4.\p c8 c-. r | c4. c8 c-. r |
  c2.~ | c2 c4 |
  c4. c8 c4 | d4. d8 d4 |
  c2.~ | c2 c4 |
  c4. c8 c r |
  c4. c8 c r |
  c2.~ | c2 c4 |
  b4.\< b8 b r | b2\fz\> c4 |
  <<c2.~ {s2 s4\p} >>| c4 r r
  << s2. \tag#'score {c4\p\repeatTie r r} \tag#'part \thinSkip >>
  \barNumberCheck#FivemS
  R2.*23
  \repeat unfold 4 {
    \trCueWhile "violin1mS" "strings" #UP c, R2.
    \trCueWhile "flute1mS" "winds" #DOWN c, R2.
  }
  c4.\p c8 c r | c4. c8 c r |
  c2.~ | c2 c4 |
  c4. c8 c r | d4. d8 b r |
  c2.~ | c2 c4 |
  c4.\< c8 c r | c4. c8 c r |
  c2.~ | c2 c4 |
  e,4. e8 e r | g2 c4 |
  c2.\fz~ | c4 r r
  \barNumberCheck#SixmS
  R2.*9
  s2.%coda
  \partPageBreak
  R2.*16
  \trCueWhile "oboe1mS" "flute & oboe 8va" #UP c R2.*4
  \cueWhile "horn1mS" "horn" #UP R2.*2
  fs,2\f a4-. | cs-. fs2 R2.*4
  ds8\ff ds ds4-. a-. |
  a-. ds8 ds ds4 |
  a-. a-. ds8 ds |
  ds4-. a-. a-. |
  \trCueWhile "violin1mS" "violin 15ma" #UP c, {
    e,2.\fff~ | e2.~ |
  } \trCueWhile "violin1mS" "violin 8va" #UP c {
    e2.\>~ | e2.~ |
    e2.\mf\>~ | e2.~ | e2.\p\>~ | e2.\pp~ | e4 r r R2.
  } R2.*8
  R2. e4\ff r r
}

