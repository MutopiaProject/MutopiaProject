%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Start Music%%%%%%%%%%%%%%%
#(define RH rightHandFinger)

staffOneVoiceOneNotes =
\transpose c c'
{
  \transposition c'
  \key c \major
  \time 4/4
  \tempo "Andantino" 4=140
  %1
  <c'-\RH #3 >4 <g-\RH #2 > <c'-\RH #3 > <e'-\RH #4 >
  <g'-4-\RH #3 >4 <e'-\RH #4 > <c'-\RH #3 > <g-\RH #2 >
  <a-2-\RH #2 >4 <f'-1-\RH #4 > <d'-4-\RH #3 > <c'-\RH #2 >
  <b-\RH #3 >4 <d'-4-\RH #3 > <g-\RH #2 >2
  <c'-\RH #3 >4 <g-\RH #2 > <c'-\RH #3 > <e'-\RH #4 > \myBreak

  %6
  <g'-4-\RH #3 >4 <e'-\RH #4 > <c'-\RH #3 > <g-\RH #2 >
  <a-2-\RH #2 >4 <d'-4-\RH #3 >2 <b-\RH #3 >4
  <c'-\RH #3 >1
  <d'-4-\RH #3 >2 <e'-\RH #4 >
  <d'-4-\RH #3 >4 <g-\RH #2 > <g-\RH #2 > <g-\RH #2 > \myBreak

  %11
  <d'-\RH #3 >2 <e'-\RH #4 >
  <d'-\RH #3 >4 <g-\RH #2 > <g-\RH #2 > <g-\RH #2 >
  <b-\RH #3 >2 <c'-\RH #3 >
  <d'-4-\RH #3 >2 <e'-\RH #4 >
  <b-\RH #3 >4 <b-\RH #2 > <c'-\RH #3 > <a-\RH #2 >
  <g-\RH #2 >4 <g-\RH #2 > <g-\RH #2 > <g-\RH #2 > \myBreak

  %17
  <g'-4-\RH #4 >2 <e'-\RH #4 >
  <f'-\RH #4 >2 <d'-4-\RH #3 >
  <e'-\RH #4 >2 <c'-\RH #3 >
  <b-\RH #3 >4 <g-\RH #2 > <g-\RH #2 > <g-\RH #2 >
  <g'-4-\RH #4 >2 <e'-\RH #4 > \myBreak

  %
  <f'-\RH #4 >2 <d'-4-\RH #3 >
  <e'-\RH #4 >2 <c'-\RH #3 >
  <b-\RH #3 >2 r2
  <c'-\RH #3 >4 <g-\RH #2 >4 <c'-\RH #3 > <e'-\RH #4 >
  <g'-4-\RH #4 >4 <e'-\RH #4 > <c'-\RH #3 > <g-\RH #2 > \myBreak

  <a-2-\RH #2 >4 <f'-1-\RH #4 > <d'-4-\RH #3 > <c'-\RH #2 >
  <b-\RH #3 > <g-\RH #2 > <a-\RH #2 > <b-\RH #3 >
  <c'-\RH #3 > <g-\RH #2 > c' e'~
  e'4 a-2 d'-4 f'-1
  <e'-\RH #3 > <c'-\RH #2 > <d'-4-\RH #3 > <b-\RH #2 >
  c'2~ c'4 r4 \bar "|."
}
staffOneVoiceTwoNotes =
\transpose c c'
{
  \transposition c'
  c1~
  c2. e4
  f1-3
  g2 r4 f4-3
  e1~

  %6
  e2. e4
  f2-3 <g-\RH #2 >2
  c4 <g-\RH #2 > e- > c
  b,4-2 <g-\RH #2 > c <g-\RH #2 >
  b,2-2 r2

  %11
  b,4 <g-\RH #2 > c <g-\RH #2 >
  b,2 r2
  g,4 <g-\RH #2 >  a, <g-\RH #2 >
  b,-2 <g-\RH #2 >  c4 <g-\RH #2 >
  d2 d
  g,2 r2

  %17
  e2-2 c
  d2 b,2-2
  c2 e
  d2 r2
  e2-2 c

  %22
  d2 b,-2
  c2 a,
  g,4-3 g f-4- > d- >
  c1~
  c2.

  %27
  e4
  f1-3
  g4 r f2
  e1
  f1-3
  g2- > g,-3
  c4 g c r4
}
staffOneVoiceThreeNotes =
\transpose c c'
{
  \transposition c'
  \repeat unfold 16 { s1 }
  %17
  %17
  b4\rest <g-\RH #2 >2 <g-\RH #2 >4
  a4\rest <g-\RH #2 >2 <g-\RH #2 >4
  g4\rest <g-\RH #2 >2 <g-\RH #2 >4
  s1
  b4\rest <g-\RH #2 >2 <g-\RH #2 >4

  a4\rest <g-\RH #2 >2 <g-\RH #2 >4
  g4\rest <g-\RH #2 >2 <g-\RH #2 >4
}
staffOneVoiceFourNotes =
{
}
staffTwoVoiceOneNotes =
{
}
staffTwoVoiceTwoNotes =
{
}
staffTwoVoiceThreeNotes =
{
}
staffTwoVoiceFourNotes =
{
}

myChords = \chordmode
{
}
myMainWords = \lyricmode
{
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%End of Music%%%%%%%%%%%%%%
