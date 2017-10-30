\version "2.18.0"

guitarone  = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
    \repeat volta 1 {
     r8 r16 <b, g'> <a fis'> <b g'> <a fis'> <b g'> <a fis'> <b g'> <a fis'> <b g'> | % 1
    r8 r16 <fis' d'> <e cis'> <fis d'> <e cis'> <fis d'> <e cis'> <fis d'> <e cis'> <fis d'> | % 2
    r8 r16 <b g'> <a fis'> <b g'> <g e'> <b g'> <a fis'> <b g'> <g e'> <cis g'> | % 3
    fis16 r16 r8 
    \times 2/3 { d,16 [ c'16 b ] }
    \scaleDurations #'(2 . 3) {
    c, [ b' a ]
    b, [ a' g ] a, [ g'  fis ] | % 4
    }
    <b, d g>8 r16 <b' g'> <a fis'> <b g'> <a fis'> <b g'> <a fis'> <b g'> <g d'> <b f'> | % 5
    r8 r16 <g e'> <f d'> <g e'> <f d'> <g e'> <f d'> <g e'> <e c'> <g e'> | % 6
    r8 r16 <fis d'> <e cis'> <fis d'> <e cis'> <fis d'> <e cis'> <fis d'> <d a'> <fis c'> | % 7
    <d g b>16 b16\rest b8\rest
    \times 2/3 { g'16 [ a16 b ]  }
    \scaleDurations #'(2 . 3) {
    c16 [  b a ]
    b16 [ a g ]  e' [ d c ] | % 8
  }
    \times 2/3 { d16 r16 r16 } r8 r4 r4 | %9
    R1*3/4 |
    R1*3/4 |
    R1*3/4 |
    R1*3/4 |
    R1*3/4 | %14
    \times 2/3 { r16 a, [ b16 ] }
    \scaleDurations #'(2 . 3) {
        e16 [ b16 a16 ]
        r16 fis16 [ a16 ] d16 [ a16 fis16 ]
        r16  e16 [ g16 ] cis16 [ g16 e16 ] | %15
  }
    \set subdivideBeams = ##f
    r8 r16 <fis d'> <e cis'> <fis d'> <e cis'> <fis d'> r4 | % 16
 }
 
 \repeat volta 1 {
    \times 2/3 { d''16 [ fis16 b16 ] }
    \scaleDurations #'(2 . 3) {
    a16 [  fis16  e16 ]
    d16 [ fis16 g16 ] fis16 [ d16 c16 ]
    b16 [ d16 e16 ] d16 [ b16  a16 ] | % 17
    g16 [ b16 e16 ] d16 [ b16 a16 ]
    g16 [ b16 c16 ] b16 [ g16 fis16 ]
    e16 [ g16 a16 ] g16 [ e16 d16 ] | % 18
    c16 [ e16 f16 ] e16 [ c16 b16 ]
    a16 [ c16 d16 ] c16 [ a16 g16 ]
    fis16 [ a16 b16 ] a16 [ fis16 e16 ] % 19
    dis16 [ fis16 g16 ] fis16 [ dis16 cis16 ]
    b16 [ dis16 e16 ] dis16 [ b16 a16 ]
    g16 [ b16 c16 ] b16 [ g16  fis16 ] | % 20
  }
    r8 r16 <g' e'> <fis dis'> <g e'> <fis dis'> <g e'> g <g e'> <fis dis'> <g e'> | % 21
    r8 r16 <g e'> <fis dis'> <g e'> <fis dis'> <g e'> b <g e'> <fis dis'> <g e'> | % 22
    \times 2/3 { r16 fis'16 [ g16 ] }
    \scaleDurations #'(2 . 3) {
    a16 [ b16 c16 ~ ]
    c16 [ b16 a16 ] g16 [ fis16 e16 ]
    dis16 [ c16 b16 ] a16 [ g16 fis16 ] | % 23
  }
    e16 <g' e'> <fis dis'> <g e'> <dis b'> <e c'> <dis b'> <e c'> <a, fis'> <b g'> <a fis'> <b g'> | % 24
    \times 2/3 { c,16 [ e16 f16 ] }
    \scaleDurations #'(2 . 3) {
    fis16 [ g16 gis16 ]
    a16 [ b16 c16 ] d16 [ c16 b16 ]
    c16 [ d16 e16 ] fis16 [ g16 a16 ] | % 25        
    b,,16 [ d16  es16 ] e16 [ f16 fis16 ]
    g16 [ a16 b16 ] c16 [ b16 a16 ]
    b16 [ c16 d16 ] e16 [ fis16 g16 ] | % 26
  }
    \times 2/3 { c,16 r16 r16 } r8 r4 r4 | %27
    R1*3/4 |
    R1*3/4 |
    R1*3/4 |
    \times 2/3 { fis16 [ a16 b16 ] } 
    \scaleDurations #'(2 . 3) {
    c16 [  d16 e16 ] ~
    e16 [ d16 c16 ] b16 [ a16 g16 ] ~
    g16 [ fis16 g16 ] a16 [ b16 c16 ] | % 31
  }
    \grace c8 b r16 <b g'> <a fis'> <b g'> <a fis'> <b g'> r4 | %32
 } 
}

