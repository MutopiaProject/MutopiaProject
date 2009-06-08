%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Start Music%%%%%%%%%%%%%%%
staffOneVoiceOneNotes =
{
  \key d \minor
  \time 2/2
  \tempo "Gavotte" 4=105
  \repeat volta 2
  {
    %
    \partial 2
    d''4-3 e''4
    %1
    f''4-1 f''8 (g''8-4) e''4 d''8-3 e''8 
    %2
    cis''!4-2 a'4-1 g''4-4 f''8 (e''8)
    %3
    f''4-1 g''8-4 (f''8) e''4 d''4-4 
    %
    cis''!2-2 \myBreak
  }
  \repeat volta 2
  {
    \partial 2
    %
    a''4-4 g''4-1
    %4
    f''4.-1 fis''!8-2 g''4-4 a''4-4 
    %5
    a''8-4\glissando bes''8-4 bes''4 f''!8-1 (e''8) d''4-4 
    %6
    e''4 f''4-1 f''4. e''8 \myBreak
    %7
    
    <a'-2 f''-1>2 <a' f''>4 <a' e''>4 
    %8
    d''4.-4 e''8 e''4. d''8-4 
    %9
    cis''!4-2 a'4 a''4-4 d''8-2 cis''8-1 
    %10
    cis''!8-1 ([d''8-3]) d''8 e''8 e''4. d''8-3
    %
    d''2
  }
}
staffOneVoiceTwoNotes =
{
  %
  \partial 2
  d'4 cis'!4-4
  %1
  <d' a'-2>2 g'2 
  %2
  e'2.-1 a4
  %3
  <d' a'-2>2 c'!4-3 bes4-1
  %
  a4 a'4-1 \myBreak
  %
  r4 a4
  %4
  \myMoveUpLeft
  d''4-3 c''4-1 bes'4-3 a'4-1
  %5
  g'2 a4 <bes-1 bes'-3>4 
  %6
  <g-2 bes'-3>4 <a a'-2>4 <c'-3 g'>2 
  %7
  f'4-3 e'4 d'4 c'4-3
  %8
  bes4-1 a4 g2-2
  %9
  a4 r4 r2 
  %10
  bes'4-2 g'4 <a'-1 cis''-2>4 a4 
  %
  d'2
}
staffOneVoiceThreeNotes =
{
}
staffOneVoiceFourNotes =
{
  \repeat unfold 4 { s2 s2 }
  s4 \myMoveUpLeft e''4-3
  d'2 s2
  \repeat unfold 3 { s2 s2 }
  \myMoveUpLeft bes'2-3 \myMoveUpLeft bes'2-3
  \myMoveLessUpLeft a'4-1 s4 s2
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
