%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Start Music%%%%%%%%%%%%%%%

staffOneVoiceOneNotes =
\transpose c c'
{
  \key g \major
  \time 4/4
  \tempo "Andante" 4=90
  \transposition c'
  %1
  <g b g'-4>4 fis'8.-2 e'16 <g b e'>4 d'4-4
  %2
  f'4-2 <gis-1 b e'>8 b d'4-4 <a c'>
  %3
  <a c' e'>4 d'8-4 c' b4 g'8-3 fis'-2
  %4
  fis'8-2 [e'] fis'8. [e'16] d'4-1 b4\rest \myBreak

  %5
  <g b g'-4>4 fis'8.-2 e'16 <g b e'>4 d'-4
  %6
  f'4-2 <gis-1 b e'>8 b d'4-4 <a c'>
  %7
  <a c' e'>4 d'8-4 c' b4 ais-2
  %8
  <g b>4 b8.-> a!16-2 g4 b4\rest \bar "||:" \myBreak

  \repeat volta 2
  {
    %9
    b4\mf <a-3 b>8 b <a c'-1>4 <a b>
    %10
    <g b>4 g'8-3 fis' fis'4-> <g b e'>4
    %11
    b4 <a-3 b>8 b <a c'-1>4 <a b>
    %12
    a'8-4-> g'-2 fis'-1 e'\> e'4 d'-4\! \myBreak

    %13
    <g b g'-4>4 fis'8. e'16 <g b e>4 d'-4
    %14
    f'4-2 <gis-1 b e'>8 b d'4-4 <a c'>4
    %15
    <a c' e'>4 d'8-4 c' b4 ais-2
    %16
    <g b>4 b8.-> a!16-2 g4 b4\rest
  } % repeat volta 
}  
staffOneVoiceTwoNotes =
\transpose c c'
{
  \transposition c'
  %1
  g,4-3\p r g,-3 r
  %2
  e,2 a,
  %3
  d2 g
  %4
  <a, g cis'-1>2 <d-3 fis-2>4 s4

  %5
  g,4-3 r g,-3 r
  %6
  e,2 a,
  %7
  d2 g4 cis-3
  %8
  d4 d g, s4
  %9
  r4 b,-2 b, b,
  %10
  e,2 e,
  %11
  r4 b,-2 b, b,
  %12
  <e, g b>2 <d a c'>

  %13
  g,4-3\p r g,-3 r
  %14
  e,2 a,
  %15
  d2 g4 cis-3
  %16
  d4 d g 
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
