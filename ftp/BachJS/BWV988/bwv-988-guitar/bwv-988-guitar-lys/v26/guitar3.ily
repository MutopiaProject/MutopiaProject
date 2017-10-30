\version "2.18.0"

 guitarthree = \relative c''  {
 \set Staff.instrumentName = "Gtr3 "
 \time 3/4 
 \repeat volta 1 {
    g4 d4 r8 g8 | % 1
    g8. [ e16 ]
    \SUpc \appoggiatura e8 fis4 r8 a8 | % 2
    b8. [ g16 ] e4 r8 a,8 | % 3
    d4 d4 r8 c8 | % 4
    b8. [ c16 ] d4 r8 g,8  | % 5
    c4 e,4 r8 g8 | % 6
    fis8. [ g16 ] a4 r8 d,8 | % 7
    g4 g,4 r4 | % 8
    \set Staff.timeSignatureFraction = #'(18 . 16)
    \scaleDurations #'(4 . 6) {
        \set Timing.measureLength = #(ly:make-moment 3 4)        
        g16 [ a g  d e fis ] g16 [ fis g  a g a ]  b16 [ a b c b cis ] | % 9
        d16 [ e d  a b cis ] d16 [ cis d e d e ] fis16 [ e fis g e fis ]| % 10
        g16 [ a g  b, e fis ] g16 [ fis g a g a ]  b16 [ a b cis a b ] | % 11
        cis16 [ d cis  e, a b ] cis16 [ b cis  d  cis d ] e16 [ d e fis d e ] | % 12
        fis16 [ e fis  a g a ] d,16 [ cis d fis a b ] c16 [ b c a fis a ] | % 13
        g16 [ fis d b a b ] e,16 [ dis e g b cis ]  d16 [ cis d  b g b ] | % 14
        cis16 [ b cis  e d e ] a,16 [ gis a cis e fis ]  g16 [ fis g e cis e ] | % 15
        fis16 [ e fis a g a ] d,16 [ cis d fis a cis ] d4. \prallmordent % 16
    }         
 }

 \repeat volta 1 {
    \time 3/4  
    \set Staff.timeSignatureFraction = #'(3 . 4)
    d,,4 c4 r8 c8 | % 17
    b8. [ d16 ] g4 r8 d'8 | % 18
    cis4 dis4 r8 e8 | % 19
    dis4 fis,4 r8 dis'8 | % 20
    e4 b4 r8 b8 | % 21
    a8. [ b16 ]
    \once \override Slur #'control-points = #'((.5 . -0.6) (1.2 . -1.2) (1.7 . -0.6) (1.8 . -0.4))
    \appoggiatura b8 c4 r8 c8 | % 22
    b4 a4 r8 a8 | % 23
    a8. [ fis16 ] g4 
    \set Staff.timeSignatureFraction = #'(18 . 16)
    \scaleDurations #'(4 . 6) {
        \set Timing.measureLength = #(ly:make-moment 3 4) 
        r16 e16 [ fis g  a b ] | % 24
        c16 [ b c f e d ] c16 [ d c  b c b ] a16 [ b a g a fis ] | % 25
        b16 [ a b e d c ] b16 [ c b a b a ] g16 [ a g fis g e ] | % 26
        a16 [ g a d c b ]  a16 [ b a g a g ] fis16 [ g fis e fis e ] | % 27
        d16 [ cis d g fis e ] d16 [ e d c d c ] b16 [ c b a b a ] | % 28
        g16 [ fis g c b a ] g16 [ a g f g f ] e16 [ f e d e d ] | % 29
        g8. [ g16 a b ] c16 [ b c d c d] e16 [ d c b a g ] | % 30
        fis16 [ e fis d e fis ] g16 [ fis g a b c ] d16 [ cis d e fis d ] | % 31
        g8 r8 r8 r16 a16 [ g fis g d ] g,4. % 32
      }
   } 
}
