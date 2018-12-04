\version "2.18.0"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Start Music%%%%%%%%%%%%%%%

staffOneVoiceOneNotes =
\transpose c c'
{
  \repeat volta 2
  {
    \key g \major
    \time 3/8
    \tempo "Allegretto" 4=100
    \transposition c'
    %1
    <g b>8 <g b> <a c'>
    %2
    b,8 d' g
    %3
    c8 e' g
    %4
    b,8 d'-4 g
    %5 
    <g b>8 <g b> <a c'>
    %6
    b,8 d'-4 g
    %7
    d8 c' a
    %8
    g4 b8\rest \myBreak
  }

  \repeat volta 2
  {
    %9
    d8 fis'-3 c'-1
    %10
    d8 g'-4 b
    %11
    d8 c' a
    %12
    d8 b g
    %13
    d8 fis'-3 c'-1
    %14
    d8 g'-4 b
    %15
    d8 c' a
    %16
    <g, g>4 r8 \myTextFine \myBreak
  }

  \repeat volta 2
  {
    %17
    e8 e' b
    %18
    g8 e' b
    %19
    dis8 fis'-3 b
    %20
    e8 g'-4 b8
    %21
    e8 e' b
    %22
    g8 e' b
    %23
    dis8 fis'-3 b
    %24
    <g b e'>4 b8\rest \myBreak
  }

  \repeat volta 2
  {
    %25
    fis8 dis'-4 a-1
    %26
    g8 e' b
    %27
    dis fis'-3 b
    %28
    e8 g'-4 b
    %29
    fis8 dis'-4 a-1
    %30
    g8 e' b
    %31
    dis fis'-3 b
    %32
    <g b e>4 \myTextDCalFine r8 
  }% repeat volta
}  
staffOneVoiceTwoNotes =
\transpose c c'
{
  \transposition c'
  %1
  R1*3/8
  %2
  b,4.-2
  %3
  c4.-3
  %4
  b,4.-2
  %5
  R1*3/8
  %6
  b,4.-2
  %7
  d4.
  %8
  g,4 s8

  %9
  \repeat unfold 7
  {
    d4.
  }
  %16
  s8 s8 s8

  %17
  e4.
  %18
  g4.->
  %19
  dis4.-1
  %20
  e4.-2
  %21
  e4.
  %22
  g4.->
  %23
  dis4.-1
  %24
  e4-2 s8

  %25
  fis4.-3
  %26
  g4.->
  %27
  dis4.-1
  %28
  e4.-2
  %29
  fis4.-3
  %30
  g4.->
  %31
  dis4.-1
  %32
  e4 s8
}
staffOneVoiceThreeNotes =
{
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
