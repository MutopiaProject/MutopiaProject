%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Start Music%%%%%%%%%%%%%%%

staffOneVoiceOneNotes =
\transpose c c'
{
  \key e \minor
  \time 3/4
  \tempo "Menuett" 4=130
  \transposition c'
  \repeat volta 2
  {
    %1
    e'4 dis'-4 e'
    %2
    fis'4-3 b g'4-3
    %3
    fis'-2 g-4 e'
    %4
    dis'-4 b b4\rest
    %5
    e' dis'-4 e' \myBreak

    %6
    fis'-3 b g'-3
    %7
    fis'-2 g'-4 e'
    %8
    dis'2-4 b4\rest
  }
  \repeat volta 2
  {
    %9
    b'4-4 b' a'-2
    %10
    g'-3 fis'8-2 (g'-3) e'4 \myBreak

    %11
    a'4-4 a' g'-2
    %12
    fis'-2 e'8 (fis') d'4-3
    %13
    g'4-4 fis'-2 g'-4
    %14
    e' fis'-2 g'-4\glissando
    %15
    % I want the c'-3 to glissando to b-3 this isn't working right!
    <c'-3 a'-4>8\glissando r8 <b-3 dis'-4>4. <g b e'>8
    %16
    <g b e'>2.
  }
}
staffOneVoiceTwoNotes =
\transpose c c'
{
  \transposition c'
  %1
  e2.-1
  %2
  dis2-1 e4-1
  %3
  d!2 c4-3
  %4
  b,4-1 b4 s4
  %5
  e2.-1

  %6
  dis2-1 e4-1
  %7
  d!2 c4-3
  %8
  b,2-1 s4
  %9
  \myMoveLeftPastSharp
  <b-1 dis'-1>2.
  %10
  <e b>2.-1

  %11
  <a, cis'>2.
  %12
  <d a-1>2.
  %13
  <b,-1 d'-3>2.
  %14
  <c-3 c'-1>2.
  %15
  a,8 r8 b,4.-1 r8
  %16
  e,2.
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
