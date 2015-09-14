

continuo = \relative c {
  | a8-\scrSpiccato a' r4 r2
  | gis,8_[ gis'] r4 r2
  | r8 a16[ gis] a8 fis dis fis dis b
  | gis8_[ gis'16 fis] gis8 e cis e cis a
  %5
  | fis8 fis'e e, dis dis'cis cis'
  | b b, e gis a, a'16 gis a8[ fis]
  | \stemDown gis, gis'16 fis gis8[ e] fis,8 fis'16 e fis8[ b,]
  | \stemNeutral e,8 fis16 gis a4~ a8 gis a b
  | e,8 e' r4 r2
  %10
  | d,8 d' r4 r2
  | cis8 cis' r4 r2
  | a,8 a' r4 r2
  | d,8 d' gis, b cis,cis'fis,a
  | b,8 b'e,gis a,a'fis cis
  %15
  | dis8 dis,dis dis' e e,e e'
  | fis8 fis,fis fis'cis16 b cis d e8[ e,]
  | a4 r4 r2
  | r8 a16^\scrSolo-\scrPiano-\hideP b cis8[ a] gis e r4
  | r2 r8 e'16^\scrSolo fis gis8[ e]
  %20
  | a8 a, r4 r2
  | R1*2
  | e'8^\scrTuttiCtr-\scrForte e' r4 r2
  | d,8 d' r4 r2
  %25
  | cis,8 cis' r4 r2
  | R1*7
  %33
  | e,,8^\scrTuttiCtr-\scrForte-\hideF e' r4 r2
  | gis,8 gis' r4 r2
  %35
  | r8 a16 gis a8[ fis] dis fis dis b
  | gis8_[ gis'16 fis] gis8 e cis e cis a
  | fis8 fis' e e, dis dis'cis cis'
  | b8 b, e gis a,[ a'16 gis] a8 fis
  | gis,8_[ gis'16 fis] gis8 cis, fis, fis'16 e fis8^[ b,]
  %40
  | e,8 fis16 gis a4( a8) gis a b
  | e,8 e' r4 r2
  | r2 a,8-\scrPiano^\scrSolo-\hideP a' r4
  | R1
  | r2 d,8 d' r4
  %45
  | r2 cis,8 cis' r4
  | r2 b,8 b' r4
  | R1
  | fis,8 fis' r4 r2
  | b,8-\scrForte-\hideF^\scrTuttiCtr b' r4 r2
  %50
  | a,8 a' r4 r2
  | gis,8^\scrSolo_[ gis'-\scrPiano-\hideP] r4 r2
  | a,8 a' r4 r2
  | gis,8 gis' r4 r2
  | fis,8 fis' r4 r2
  %55
  | R1*2
  | fis,8-\scrForte-\hideF^\scrTuttiCtr fis' r4 r2
  | e,8^\scrForte-\hideF e' r4 r2
  | \posTextScriptA dis8^\scrSoloPiano-\hideP dis' r4 b,8 b' r4
  %60
  | e,8 e' r4 a,,8 a' r4
  | dis,8 dis' r4 gis,,8_[ gis'] r4
  | cis,8 r r4 dis8 r r4
  | e8 r r4 r2
  | R1
  %65
  | cis8^\scrTuttiCtr-\scrForte-\hideF cis' r4 r2
  | gis,8_[ gis'] r4 r2
  | \posTextScriptC cis,,8^\scrSoloPiano-\hideP cis' r4 fis,8 fis' r4
  | b,8 b' r4 e,8 e' r4
  | a,,8 a' r4 r2
  %70
  | R1*3
  | b,8^\scrSolo-\scrPiano-\hideP b' r4 gis,8_[ gis'] r4
  | e,8 e' r4 a,8 a' r4
  %75
  | fis,8 fis' r4 dis,8 dis' r8 b
  | dis8 fis a fis dis b dis fis
  | b8 r r4 r2
  | R1
  | a,8^\scrTutti-\scrForte-\hideF a' r4 r2
  % 80
  | e8 e' r4 r2
  | a,,8^\scrSolo-\scrPiano-\hideP a' r4 r2
  | r2 d,8 d' r4
  | R1
  | r2 cis,8 cis' r4
  %85
  | r2 b,8 b' r4
  | r2 a,8 a' r4
  | R1*2
  | a,8-\scrFortePar^\scrTuttiSpiccato-\hideF a' r4 r2
  %90
  | gis,8_[ gis'] r4 r2
  | r8 a16 gis a8[ fis] dis fis dis b
  | gis8_[ gis'16 fis] gis8 e cis e cis a
  | fis8 fis'e e, dis dis'cis cis'
  | b8 b,e gis a,a'16 gis a8[ fis]
  %95
  | gis,8_[ gis'16 fis] gis8 e fis,_[ fis'16 e] fis8 b,
  | e,8 fis16 gis a4~ a8 gis a b
  | e,8 e' r4 r2
  | d,8 d' r4 r2
  | cis8 cis' r4 r2
  %100
  | a,8 a' r4 r2
  | d,8 d'gis,b cis,cis' fis,a
  | b,8 b' e,gis a,a'fis cis
  | dis8 dis,dis dis' e e,e e'
  | fis8 fis,fis fis' cis16 b cis d e8[ e,]
  | \tag #'printed { a4 r } \tag #'played { a4. r8 } r2
  | \bar "|."
}

figuredContinuo = \figuremode {
  \bassFigureStaffAlignmentDown
  \set figuredBassAlterationDirection = #RIGHT
  | s1
  | <6 5>4 s2.
  | s8 <5>8 <6>4 <7> <6>
  | <7>4 <6> <5> <6>
  %5
  | <5>4 <6 4 2> <6 5> <6>
  | <7 _+>4. <6> <6>4
  | <7>4 <6> <7> <6\\>
  | s4 \tuplet 3/2 { <7>8 <6> <5> } <4\+ 2>8 <6> <6 5> \bigAccidental <_+>
  | s1
  %10
  | <4 2>1
  | <6>1
  | <7!>1
  | s8 <6> <7>4 <7>8 <6> <7>4
  | <7>4 <7> s4. <6>8
  %15
  | <6 5>2 <6 4>
  | <6>2 <6>4 <6 4>8 <5 3>
  | s1
  | s4 <6> <6>2
  | s2. <6 5>4
  %20
  | s1*4
  | <4 2>1
  %25
  | <6>1
  | s1*7
  %33
  | s1
  | <6 5>1
  %35
  | s4 <6> <7> <[6]>
  | <7>4 <6> <7> <[6]>
  | <5>4 <6 4 2> <6 5> <6>
  | <7 _+>2 <7>4 <6>
  | <7>4 <6> <7> <6\\>
  %40
  | s4 \tuplet 3/2 { <7>8 <6> <5> } <4\+ 2> <6> <6 5> \bigAccidental <_+>
  | s1*4
  %45
  | s2 <7 5!>8 <[6\\]> s4
  | s2 <5 3>
  | s1
  | <7 _+>1
  | s1
  %50
  | <6 4\+ 2>1
  | <6 5->1
  | s1
  | <7>1
  | <5 3>1
  %55
  | s1*3
  | <6 4\+ 2>1
  | <6 5>2 <7 _+>
  %60
  | s2 <7\\>
  | <7>2 <7 _+>
  | s2 <6\\>
  | <6>1
  | s1
  %65
  | s1
  | <7 _+>1
  | <5 3>2 <7 _+>
  | s2 <7>
  | s1
  %70
  | s1*3
  | s2 <6 5>
  | <7>1
  % 75
  | <5>2 <7 5>4. <7 _+>8
  | <6 5>2 <6 5>
  | <7 _+>1
  | s1*2
  %80
  | <7>1
  | s1*3
  | s2 <5>
  %85
  | s2 <5>
  | s2 <5>
  | s1*3
  %90
  | <6 5>1
  | s8 <5> <6>4 <7> <6>
  | <7>4 <6> <5> <6>
  | <5>4 <6 4 2> <6 5> <6>
  | <7 _+>4. <6> <6>4
  %95
  | <7>4 <6> <7> <6\\>
  | s4 \tuplet 3/2 { <7>8 <6> <5> } <4\+ 2> <6> <6 5> \bigAccidental <_+>
  | s1
  | <4 2>1
  | <6>1
  %100
  | <7!>1
  | s8 <6> <7> s <7> <6> <7>4
  | <7>4 <7>2 s8 <6>
  | <6 5>2 <6 4>
  | <6>2 <6>4 <6 4>8 <5 3>
  %105
  | s1 |
}
