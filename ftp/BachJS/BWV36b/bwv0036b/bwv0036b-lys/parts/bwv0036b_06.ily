pieceName = "6. RECITATIV."
instInfo = #(format "~A, ~A"
  #'sopranoName #'continuoName )

global = {
  \key d \major
  \time 4/4
}

globalMarksBreaks = {
  s1*15
  \bar "|."
}

sopranoMusic = \relative fis' {
  \clef "treble" \global
  \tempo 4=64
  \autoBeamOff
  r4 r8 fis8 cis'8 fis8 \appoggiatura e8 d8 r16 b16 | % 2
  gis8 gis8 cis8 gis8 a4 r8 cis8 | % 3
  fis8 a8 dis,8. e16 e4 r8 b8 | % 4
  gis8 e8 d'8 cis8 cis4 r8 a8 | % 5
  e'8 e8 e8 fis8 g4 r8 e8 | % 6
  cis8 cis8 e8 a,8 fis'8 fis8 r8 fis8 | % 7
  b,8 b8 d8 b8 \appoggiatura a8 g4 r8 g8 | % 8
  e'8 c8 a8 d8 b8 b8 r8 g8 | % 9
  d'8 d8 d8 e8 fis4 r8 a,8 | % 10
  c8 c8 c8 b8 gis8 r16 e16 gis8 a8 | % 11
  b8 e,8 d'8 cis8 a4 r8 a8 | % 12
  g'8 e8 cis8 e8 ais,8 cis8 e8 dis8 | % 13
  dis8 r16 dis16 fis8 dis8 bis8. bis16 bis8 dis8 | % 14
  gis8 cis,8 fis8 e8 \appoggiatura dis8 cis4 r4 | % 15
  R1
}

sopranoLyrics = \lyricmode {
  Wenn sich die Welt mit dei -- nem Ruh -- me trägt,
  den dein ge -- lehr -- ter Fleiß stets zu ver -- meh -- ren pflegt,
  wenn dei -- ne Fröm -- mig -- keit ein wah -- res Mus -- ter gi -- bet,
  wie man dem Näch -- sten dient und Gott da -- bei doch lie -- bet,
  wenn sich dein ed -- les Haus auf dei -- ne Vor -- sicht stützt,
  wo -- durch es auch den Ar -- men nützt,
  so sehn wir dies nur mit Be -- wund -- rung an,
  weil uns -- re Dürf -- tig -- keit nichts Hö -- hers wa -- gen kann.
}

continuoMusic = \relative fis {
  \clef "bass" \global
  fis1~ | % 2
  fis1~ | % 3
  fis2 gis2~ | % 4
  gis2 a2~ | % 5
  a2 b,2 | % 6
  e2 d2~ | % 7
  d2 e2~ | % 8
  e4 fis4 g2~ | % 9
  g2 dis2~ | % 10
  dis2 d2~ | % 11
  d2 cis2~ | % 12
  cis1 | % 13
  fis1 | % 14
  e4 a4 r4 gis4 | % 15
  cis,1\fermata
}

contFigBass = \figuremode {
  \set figuredBassPlusDirection = #RIGHT
  \set figuredBassAlterationDirection = #RIGHT
  \bassFigureExtendersOn
  <5 3>2. <6 4>4
  <7/ 4\! 2\+>2 <5 3>2~
  <5 3>4 <6\\>4 <6>2~
  <6>4 <5>4 <_>2~
  <_>2 <6>2
  <6\!>2 <_>2
  <6>2 <7>2
  <6!>4 <6 5!>4 <_>2~
  <_>2 <6>2
  <7! 5>2 <4\+ 2>~
  <4\+ 2>2 <6>2
  <6 5>2 <6\\>2
  <6\\\!>2 <6\\\! 4\+ 2\+>2
  <6 _+>4 <6\!> r4 <6 4>8 <5\+ _+>8
  <_>1
}

