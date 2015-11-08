
continuo = \relative c, {
  | fis4.^\scrTutti-\hideMF r8 r fis' eis4. r8 r e8
  | dis4. r8 r d8 cis4 d8 b4 cis8
  | fis,4. r4. r2.
%  | R1*12/8
  %4
  | R1.*3
  | cis'4.^\scrForte^\scrTutti-\hideF r8 r cis8 d4. r8 r dis8
  | e4. r8 r eis8 fis4 d!8 b4 cis8
  | fis,4. r4. r2.
  %10
  | R1*12/8*4
  | r4. r8 r gis'8^\scrPianoPar^\scrTutti-\hideP cis,4 gis8 cis,4 r8
  %15
  | R1.*8
  %23
  | b'4.^\scrTutti_\scrForte-\hideF r8 r b a4. r8 r a^\scrPianoPar-\hideP
  | gis4. r8 r gis cis4. r8 r cis
  %25
  | fis,4 r8 r4. r2.
  | r2. \scrNoPad cis''4_\scrPiano-\hideP gis8 cis,4 b'8
  | ais4 r8 r4. b4 fis8 b,4 a'8
  | gis4 r8 r4. a4 e8 a,4 g'8
  | fis4 r8 r r d a'4. r8 r fis
  %30
  | b4 r8 r r e,8 a4 r8 r r g8
  | fis4 r8 r r e dis4 r8 r r b
  | e4 r8 r r fis gis!4 r8 r r ais
  | b4 r8 r r a! gis4 r8 r r e
  | a4 r8 r r d8 gis,4 r8 r r cis
  %35
  | fis,4 r8 r r fis eis4. r8 r e
  | dis4. r8 r d cis4 d8 b4 cis8
  | fis,4.^\scrTutti_\scrFortePar-\hideF r8 r fis'8 eis4 r8 r r e
  | dis4 r8 r r d cis4 d8 b4 cis8-\hideMP
  | \tag #'played { fis2.-\hideP r } \tag #'printed { fis,4. r r2. }
  | \bar "|."
}

figuredContinuo = \figuremode {
  \bassFigureStaffAlignmentDown
  \set figuredBassAlterationDirection = #RIGHT
  | s2 s8 <6>8 <7->8 <6>2 <6>8
  | <7>8 <6>2 <6>8 <7 _+>4 <5 3>8 <6 5>4 \bigAccidental <_+>8
  | s1.
  %4
  | s1.*3
  | \bigAccidental <_+>2 s8 \bigAccidental <_+> <7>2 s8 <6 5>
  | \bigAccidental <_+>2 s8 <6 5> <9 4>4 <5 3>8 <6 5>4 \bigAccidental <_+>8
  | s1.
  %10
  | s1.*4
  | s2 s8 \bigAccidental <_+>8 s4 <6 4>2
  %15
  | s1.*8
  %23
  | s2 s8 s8 <4\+ 2>4 s2
  | \bassFigureExtendersOn <6 5->2 s8 <11 11>16 <11 11>  <7 _+>4 s4 s16 <11 11>16 <11 11>8
  %25
  | <5 3>1.
  | s2. \bigAccidental <_+>2 <_+>8. <_+>16
  | <6 3>2. <4>8 \bigAccidental <_+>2 <_+>8
  | <6 5->2. <4>8 <3>2 <3>8
  | <6>1 s4. <7>8
  %30
  | \bassFigureExtendersOff <7>8 <[6]>2 <7>2. <[4! 2]>8
  | <6\\>2 s8 <6! 4> <6 5->s2 <7 _+>8
  | \bassFigureExtendersOn \bigAccidental <_!>2 s16 <11>8 <11>16 <6>2 s8 <6 5>
  | s2 s8 <4 2> <6 5>2 s8 <7>
  | \bassFigureExtendersOff s2 s8 <7> <7> <[6\\]> s4. <7 _+>8
  %35
  | s2 s8 <6> <7-> <6> s4. <6>8
  | <7>8 <6> s4. <6>8 <7 _+>2 s8 <7>8
  | s2 s8 <6> <7-> <6> s4. <6>8
  | <7>8 <6> s4. <6>8 <7 _+>4 <5 3>8 <6 5>4 \bigAccidental <_+>8
  | s1. |
}
