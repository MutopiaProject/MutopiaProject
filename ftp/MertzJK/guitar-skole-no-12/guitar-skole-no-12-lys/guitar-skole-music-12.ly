%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Start Music%%%%%%%%%%%%%%%

staffOneVoiceOneNotes =
\transpose c c'
{
  \key d \major
  \time 4/4
  \tempo "Cantabile" 4=90
  \transposition c'
  %1
  <d'-3 fis'-2>4 a8.-1 a16 <d' fis'>4 a8. a16
  %2
  \mySetTextSpannerIX
  \mySetTextSpannerRight
  <d' fis'-2>8\glissando d''-2 ^\startTextSpan cis''-1 b'-4 a'2-2
  %3
  a'4-2\stopTextSpan <g e'-0>8. e'16 f'!4-1 <f!-3 d'-4>4
  %4
  <e-1 cis'-2>4 e'8. e'16 a'4-4 g'-2 \myBreak

  %5
  <d'-3 fis'-2>4 a8.-1 a16 <d' fis'>4 a8. a16
  %6
  <d' fis'-2>8\glissando d''-2 ^\startTextSpan cis''-1 b'-4 a'4-2\< b'-4\!
  %7
  cis''8-1 a'-2\stopTextSpan e'-0 cis'-2 <gis-1 b fis'-3> e'\> d'-4 b\!
  %8
  <gis b>2 a4-2 b4\rest
  \bar "||:" \myBreak

  \repeat volta 2
  {
    %9
    <a-1 cis'-2 g'-4>4\mf fis'8 e' <cis' e'>4 <cis' eis'-1>
    %10
    <d'-2 fis'-1>8 e'! d'-2 b a4-1 b4\rest
    %11
    <a-1 cis'-2 g'-4>4 fis'8 e' <cis' e'>4 <cis' eis'-1>
    %12
    <d'-2 fis'-1>8 e'! d'-2 b a4-1 d'4\rest \myBreak

    %13
    <d'-3 fis'-2>4 a8.-1 a16 <d' fis'>4 a8. a16
    %14
    <d' fis'-2>8\glissando d''-2 cis''-1 b'-4 a'4-2 <a-2 d'-4>4
    %15
    <b e'>4\< <g b fis'-2>8 g'-4\! <a-1 d'-3 fis'-2>4 <g cis'-2 e'>4
    %16
    <g cis'-1 e'>2\glissando <fis-2 d'-1>4 b4\rest
  }
}
staffOneVoiceTwoNotes =
\transpose c c'
{
  \transposition c'
  %1
  d2\p d2
  %2
  d2. d4
  %3
  a,2 a,
  %4
  a,2 a,

  %5
  d2 d
  %6
  d2. d4
  %7
  e,2 e,
  %8
  a,4 e, a, s4

  %9
  a,2 a,
  %10
  d2 r8 d8 cis-3 b,-1
  %11
  a,2 a,
  %12
  d2 r8\> g8 fis-3 e-1\!

  %13
  d2\p d2
  %14
  d2. fis,4-1
  %15
  g,4-3 e, a,\> a,
  %16
  d4 a,\! d4-3 s4
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
