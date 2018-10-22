\version "2.18.0"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Start Music%%%%%%%%%%%%%%%

staffOneVoiceOneNotes =
\transpose c c'
{
  \key d \major
  \time 3/8
  \tempo "Tempo di Valse"
  \transposition c'
  \repeat volta 2
  {
    \partial 8 a8-1\mf
    %1
    a16 d'-3 fis'8-2-> d'
    %2
    d'8 [cis'-2] a
    %3
    a16-1 cis'-2 g'8-4 e'8
    %4
    e'8 [d'-3] a-3
    %5
    a16 d' fis'8-> d'
    %6
    a16 cis' g'8-4-> e' \myBreak

    %7
    fis'16 d' a fis' e' cis'
    % partial
    d'8 b8\rest
  }
  \repeat volta 2
  {
    a8\f
    %8
    a16 cis' e'8 <cis' e'>
    %9
    a16 d' fis'8 <d' fis'>8
    %10
    a16 cis' g'8-4 <cis' g'>
    %11
    fis'8 e' d' \myBreak

    %12
    a16 cis' e'8 <cis' e'>
    %13
    a16 d' fis'8 <d' fis'>
    %14
    a16 cis' \myTextRall g'8-4 <d' fis'>
    %15
    <cis' e'>8 b8\rest a8\mf \myTextATempo
    %16
    a16 d' fis'8-> d'
    %17
    d'8 [cis'] a \myBreak

    %18
    a16 cis'16 g'8-4-> e'
    %19
    e'8 d' a
    %20
    a16 d' fis'8-> d'
    %21
    a16 cis' g'8-4-> e'
    %22
    fis'16 d' a fis' e' cis'
    %23
    d'8 b8\rest
  }
}
staffOneVoiceTwoNotes =
\transpose c c'
{
  \transposition c'
  %partial 8
  r8
  %1
  d4.
  %2
  a,4 r8
  %3
  a,4.
  %4
  d4 r8
  %5
  d4.
  %6
  a,4.

  %7
  d8 a a,
  %partial
  d8 s8
  %partial
  r8
  %8
  a,4 a,8
  %9
  a,4 a,8
  %10
  a,4 a,8
  %11
  d4.

  %12
  a,4 a,8
  %13
  a,4 a,8
  %14
  a,4 a,8
  %15
  a,8 s8 r8
  %16
  d4.
  %17
  a,4 r8

  %18
  a,4.
  %19
  d4 r8
  %20
  d4.
  %21
  a,4.
  %22
  d8 a a,
  %23
  d8 s8
  
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
