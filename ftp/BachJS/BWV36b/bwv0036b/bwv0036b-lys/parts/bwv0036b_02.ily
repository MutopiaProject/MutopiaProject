pieceName = "2. RECITATIV."
instInfo = #(format "~A, ~A"
  #'tenorName #'continuoName )

globalMarksBreaks = {
  s1*13 \bar "|."
}

tenorMusic = \relative a {
  \clef "treble_8" \key d \major \time 4/4
  \autoBeamOff
  r8 a8 e'8 r16 e16 cis8 e8 e8 a,16 e'16 | % 2
  a8 e8 g8 fis8 fis8 r16 cis16 ais8 b8 | % 3
  cis8 fis,8 e'8 e8 r8 fis8 g8 e8 | % 4
  cis8 cis8 fis8 cis8 d8 r16 b16 cis8 d8 | % 5
  e8 cis8 ais8. d16 b4 r4 | % 6
  r4 r8 b8 fis'4 fis4 | % 7
  dis8 dis8 fis8 b,8 e8 e8 r16 b16 b16 cis16 | % 8
  d8. d16 d8 d8 e8 b8 d8 cis8 | % 9
  a4 r4 r8 a8 cis8 d8 | % 10
  e8 e8 e8 fis8 gis8 gis8 gis8 cis,8 | % 11
  a'4 r8 fis8 dis8 fis8 dis8 b8 | % 12
  d4 r8 d8 cis8 fis,8 eis'8 fis8 | % 13
  fis8 cis8 r4 r2
}

tenorLyrics = \lyricmode {
  Ihr seht, wie sich das Glü -- cke des teu -- er -- sten Ri -- vins
  durch die ge -- wohn -- ten Bli -- cke
  in die -- ser an -- ge -- neh -- men Zeit
  zu sei -- nes Hau -- ses Wohl ver -- neut.
  Der Se -- gen krö -- net seit Be -- mü -- hen,
  das uns -- rer Phi -- lu -- ris so man -- chen Vor -- teil schafft.
  Und die -- ser Se -- gen macht durch sei -- ne star -- ke Kraft,
  dass Not und Un -- ge -- mach von sei -- ner Sei -- te flie -- hen.
}

continuoMusic = \relative cis {
  \clef "bass" \key d \major \time 4/4
  cis1~ | % 2
  cis2 ais2~ | % 3
  ais1~ | % 4
  ais2 b2 | % 5
  g2 r4 fis4 | % 6
  b2 a2~ | % 7
  a2 gis2~ | % 8
  gis1 | % 9
  cis1~ | % 10
  cis2 b2 | % 11
  fis'2 a2 | % 12
  gis2 a4 d,4 | % 13
  r4 cis4 fis,2\fermata
}

contFigBass = \figuremode {
  \set figuredBassPlusDirection = #RIGHT
  \set figuredBassAlterationDirection = #RIGHT
  \bassFigureExtendersOn
  <6>1~
  <6>4 <5>4 <6>2~
  <6>4 <5>2.~
  <5>2 <_>2
  <6 4 2\+>2 r4 <6 4>8 <5 _+>
  <_>2 <6 4\+ 2>2~
  <6 4\+ 2>2 <6>2
  <5>1
  <6>1~
  <6>2 <6\\ 4\+ 2>2
  <_>2 <4\+ 2>
  <6\\ 5!>2 <6>4 <6 4\+ 2\+>4
  r4 <6 4>8 <5 _+>
  <_>2
}

