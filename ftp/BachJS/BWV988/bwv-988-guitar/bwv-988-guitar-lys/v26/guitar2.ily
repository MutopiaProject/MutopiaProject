\version "2.18.0"

 guitartwo = \relative c'' {
 \time 3/4 
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 1 {
    b4 b4 r8 b8 | % 1
    a4 a4 r8 d8 | % 2
    d4 cis4 \prall r8 g8 | % 3
    g8. [ e16 ]
    \SUpc \appoggiatura e8 fis4 r8 a8 | % 4
    d,8. [ e16 ] f4 r8 g8 | % 5
    g8. [ e16 ]
    \SUpb \appoggiatura d8 c4 r8 e8 | % 6
    a,8. [ b16 ] c4 r8 d8 | % 7
    d8. [ b16 ] g4 r4  | % 8
    b'4 b4 r8 g'8 | % 9
    g8. [ e16 ] fis4 \mordent r8 c8 | % 10
    b8. [ dis16 ] e4 \mordent r8 e8 | % 11
    a,8. [ cis16 ] e,4 r8 cis'8 | % 12
    cis4 d4 r8 d8 | % 13
    d4 e r8 e8 | % 14
    a,8. [ g32 fis32 ]
    \SUpb \appoggiatura fis8 e4 r8 a,8 | % 15
    d4 d4 r4 | % 16
 }

 \repeat volta 1 {
    fis,8. [ e16 ] \appoggiatura e8 fis4 r8 d8 | % 17
    g8. [ a16 ]
    \SUpc \appoggiatura a8 b4 r8 g'8 | % 18
    e8. [ b'16 ]
    \SUpd \appoggiatura b8 a4 r8 a8 | % 19 
    a8. [ fis16 ] \SUp \appoggiatura e8 dis4 r8 fis8 | % 20
    g8. [ fis16 ]
    \SUpb \appoggiatura f8 e4 r8 g8 | % 21
    g4 f4 r8 a8 | % 22
    a8. [ fis16 ] \SUp \appoggiatura e8 dis4 r8 fis8 | % 23
    fis8. [ dis16 ] e4 \mordent r4  | % 24
    \time 3/4
    \set Staff.timeSignatureFraction = #'(3 . 4)
    r8  r16 gis16 a8. [ b16 ] c4 ~ | % 25
    c8. [ fis,16 ] g8. [ a16 ] b4 ~  | % 26
    b8. [ e,16 ] fis8. [ g16 ] a8. [ g16 ] | % 27
    \set Staff.timeSignatureFraction = #'(18 . 16)
        \scaleDurations #'(4 . 6) {
        \set Timing.measureLength = #(ly:make-moment 3 4) 
        <fis, fis'>16 [ g fis cis d e ] fis16 [ e fis g fis g ] a16 [ g a  b g a ] | % 28        
        b16 [ c b  fis  g a ] b16 [ a b c b c ] d16 [ c d  e c d ] | % 29
        e16 [ f e  b c d ] e16 [ d e  fis e fis ] g16 [ fis g a  fis g ]| % 30
        a16 [ b a  fis g a ] b16 [ a b d c b ]  a16 [ g fis e  d c ] | % 31
        b16 [ a g fis g d ] b8 r8 r8 r4. % 32
   }
 }
}
