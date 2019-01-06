\version "2.18.0"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Start Music%%%%%%%%%%%%%%%

staffOneVoiceOneNotes =
\transpose c c'
{
  \key g \major
  \time 2/4
  \tempo "Andantino"
  \transposition c'
  \repeat volta 2
  {
    %1
    b16 g b g c' g c' g
    %2
    d'-4 g d' g d'8 e'16 [fis'-2]
    %3
    g'-4 g g' g fis'-2 g fis' g
    %4
    e' g e' g d'8-4 b8\rest

    %5
    \oneVoice <a c'>16 d <a c'> d <a c'> [d] e' d'
    %6
    <g b> d <g b> d <g b> [d] g'-3 fis'-2
    %7
    \voiceOne c e' b, d'-4 a, c' g, b
    %8
    b c' cis' d' a8 b8\rest
  }
  \repeat volta 2
  {
    %9
    d16 c'-1 fis'-3 c' d c' fis' c'
    %10
    g g'-4 g d'-3 g b g d'
    %11
    d c'-1 fis'-3 c' d c' fis' c'
    %12
    g g'-4 g d'-3 g b g d'-4

    %13
    c g e' c b, g d'-4 b,
    %14
    d a-2 fis'-3 d e b g'-4 e
    %15
    c e' c' a b d' c' a
    %16
    g, g d b, g,8 b8\rest
  }
}
staffOneVoiceTwoNotes =
\transpose c c'
{
  \transposition c'
  %1
  g,8\mf g, a, a,
  %2
  b,-2 b, b, r
  %3
  e-2 e d d
  %4
  c-3 c b,-2 s

  %5
  s4 s4
  %6
  s4 s4
  %7
  c8-3 b,-2 a, g,
  %8
  d4 d8 s

  %9
  d4 d
  %10
  g8-> g-> g-> g->
  %11
  d4 d
  %12
  g8-> g-> g-> g->

  %13
  c8.-3 c16 b,8.-2 b,16
  %14
  d8. d16 e8.-2 e16
  %15
  c4 d8 d
  %16
  g,8-> d16-> b,16-> g,8-> s8

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
