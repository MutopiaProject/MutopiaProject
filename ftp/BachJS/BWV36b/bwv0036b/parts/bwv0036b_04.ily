pieceName = "4. RECITATIV."
instInfo = #(format "~A, ~A, ~A"
  #'altoName #'stringsName #'continuoName )

global = {
  \key d \major \time 4/4
}

globalMarksBreaks = {
  s1*17
  \bar "|."
}

violinIMusic =  \relative b' {
  \clef "treble" \global
  \tempo 4=64
  b1 | % 2
  c1 | % 3
  b2 e2~ | % 4
  e2 d4 cis4 | % 5
  d1~ | % 6
  d2 cis2 | % 7
  g'2 fis2~ | % 8
  fis4 dis4 e2 | % 9
  g4 r4 ais4 b4~ | % 10
  b2 gis2 | % 11
  fis1 | % 12
  f2 cis2 | % 13
  ais2 b2 | % 14
  d2 e2 | % 15
  gis2 a2 | % 16
  fis4 e4 r4 cis8 b8 | % 17
  a1\fermata
}

violinIIMusic = \relative g' {
  \clef "treble" \global
  g1 | % 2
  a1 | % 3
  g2 b2 | % 4
  cis2 d4 g,4 | % 5
  a1~ | % 6
  a2 fis2 | % 7
  e2 b'2~ | % 8
  b1 | % 9
  cis4 r4 cis4 d4 | % 10
  b2 cis2~ | % 11
  cis2 b2 | % 12
  gis2 e2 | % 13
  cis2 d2 | % 14
  fis2 gis2 | % 15
  b2 a2~ | % 16
  a8 fis8 b4 r4 a8 gis8 | % 17
  e1\fermata
}

violaMusic = \relative d' {
  \clef "alto" \global
  d1 | % 2
  fis1 | % 3
  d2 e2 | % 4
  a,2. e'4 | % 5
  fis1~ | % 6
  fis2 cis2~ | % 7
  cis2 dis2~ | % 8
  dis4 fis4 g2 | % 9
  e4 r4 fis4 fis4 | % 10
  gis2 f2 | % 11
  fis2 b,4 fis4 | % 12
  cis'2 g'2 | % 13
  e2 fis2 | % 14
  d2 b2 | % 15
  e1 | % 16
  d4 b4 r4 e8 d8 | % 17
  cis1\fermata
}

altoMusic = \relative d' {
  \clef "treble" \global
  \autoBeamOff
  r4 r8 d8 g8 g8 b8 a8 | % 2
  \appoggiatura g8 fis8 r16 a16 c8 a8 fis8 d8 d'8 a8 | % 3
  b8 b8 r8 b8 g8 g8 b8 e,8 | % 4
  cis'4 r8 a8 d8 d,8 cis8. a'16 | % 5
  fis8 fis8 r8 d8 fis8. g16 a8 r16 d,16 | % 6
  a'8 a8 a8 b8 cis8 r16 fis,16 cis8 d8 | % 7
  e8 e8 g8 fis8 dis8 dis8 r8 fis8 | % 8
  b8 fis8 a8 g8 g8 r16 e16 e'8 cis8 | % 9
  ais8. d16 b8 b8 r4 r8 b8 | % 10
  gis8 r8 d'8 r8 f,8 f8 gis8 cis,8 | % 11
  cis'4 r8 a8 fis8 fis8 b8 fis8 | % 12
  gis4 r8 cis8 ais8. b16 cis8 r16 cis,16 | % 13
  g'8 g8 g8 fis8 d4 r8 fis8 | % 14
  b8 b8 d8 b8 gis8 r16 gis16 b8 gis8 | % 15
  e8 r16 b'16 cis8 d8 e8 g,8 r8 e8 | % 16
  fis8 b8 gis8. a16 a8 e8 r4 | % 17
  r1
}

altoLyrics = \lyricmode {
  Die Freun -- de sind ver -- gnügt,
  den Fest- und Gna -- den -- tag zu schau -- en;
  sie kön -- nen ih -- ren Wunsch auf sich -- re Grün -- de bau -- en,
  auf des -- sen Huld, der al -- les weis -- lich fügt,
  der man -- che Pro -- ben schon ge -- wie -- sen,
  dass die -- ser from -- me Mann ihn tau -- send -- mal ge -- prie -- sen.
  Al -- lein! Wie? Dür -- fen wir auch froh bei sei -- nem Glü -- cke sein?
  Ver -- schmä -- he nicht, du gü -- ti -- ger Ri -- vin,
  dass wir uns auch be -- mühn, und las -- sen itzt,
  dich zu ver -- eh -- ren, auch uns -- re Lie -- der hö -- ren.
}

continuoMusic = \relative g, {
  \clef "bass" \global
  g1~ | % 2
  g1~ | % 3
  g1~ | % 4
  g2 fis4 e4 | % 5
  d1~ | % 6
  d2 ais'2~ | % 7
  ais2 a2~ | % 8
  a2 g2~ | % 9
  g4 r4 fis4 b4~ | % 10
  b1 | % 11
  a2 d2 | % 12
  cis2 e2~ | % 13
  e2 b2~ | % 14
  b2 d2~ | % 15
  d2 cis2 | % 16
  d2 r4 e4 | % 17
  a,1\fermata
}

contFigBass = \figuremode {
  \override BassFigureBracket.stencil = #brackets->bows
  \set figuredBassPlusDirection = #RIGHT
  \set figuredBassAlterationDirection = #RIGHT
  \bassFigureExtendersOn
  <_>1
  <7>4 <4! 2>2.
  <5 3>2 <[6]>2
  <4\+ 2>2 <6>4 <6\!>4
  <5>1~
  <5>2 <6>2
  <7 5>2 <4\+ 2>2~
  <4\+ 2>2 <6>2
  <6 4 2\+>4 r4 <_+>4 <_>4
  <6\\>2 <6\\ 4\+ 2>2
  <6>2 <6\!>2
  <_+>2 <4\+ 3!>2~
  <4\+ 3!>2 <_>2~
  <_>2 <4\+ 2>2~
  <4\+ 2>2 <6 5!>2
  <5 3>4 <4\+ 2> r4 <_+>
  <_>1
}

PartPSixVoiceOne =  \relative g, {
  \clef "bass_8" \global
  g1~ | % 2
  g1~ | % 3
  g1~ | % 4
  g2 fis4 e4 | % 5
  d1~ | % 6
  d2 ais'2~ | % 7
  ais2 a2~ | % 8
  a2 g2~ | % 9
  g4 r4 fis4 b4~ | % 10
  b1 | % 11
  a2 d2 | % 12
  cis2 e2~ | % 13
  e2 b2~ | % 14
  b2 d2~ | % 15
  d2 cis2 | % 16
  d2 r4 e4 | % 17
  a,1
}

PartPSevenVoiceOne =  \relative g,, {
  \clef "bass_8" \global
  g1~ | % 2
  g1~ | % 3
  g1~ | % 4
  g2 fis4 e4 | % 5
  d1~ | % 6
  d2 ais'2~ | % 7
  ais2 a2~ | % 8
  a2 g2~ | % 9
  g4 r4 fis4 b4~ | % 10
  b1 | % 11
  a2 d2 | % 12
  cis2 e2~ | % 13
  e2 b2~ | % 14
  b2 d2~ | % 15
  d2 cis2 | % 16
  d2 r4 e4 | % 17
  a,1
}

