\version "2.18.0"

 guitarone = \relative c' {
 \set Staff.instrumentName = "Gtr1 "
 \time 18/16 
 \repeat volta 1 {
    \set Staff.timeSignatureFraction = #'(18 . 16)
    \scaleDurations #'(4 . 6) {
        \set Timing.measureLength = #(ly:make-moment 3 4)   
        g16 [ a g  d  e fis ] g16 [ fis g  a  g a ] b16 [ a b  c  b cis ] %1
        d16 [ e d a b cis ] d16 [ cis d e d e ] fis16 [ e fis g e fis ] | % 2
        g16 [ a g b, e fis ] g16 [ fis g a g a ] b16 [ a b cis b cis ] | % 3
        d16 [ e d a b cis ]  d16 [ cis d e d e ] fis16 [ e fis g e fis ] | % 4
        g16 [ fis g d c d ]  b16 [ g fis g b d ] f16 [ e f d b d ] | % 5
        e16 [ d e c b c ]  g16 [ e d e g c ]  e16 [ d e c a c ] | % 6
        d16 [ c d a g a ]  fis16 [ d cis d fis a ] c16 [ b c a fis a ] | % 7
        b16 [ a b g fis g ] d16 [ b a b d g ] b16 [ g fis g b d ] | % 8
    }
    \time 3/4 
    \set Staff.timeSignatureFraction = #'(3 . 4)
    g8. [ fis32 e32 ] d4 r8 b'8 | % 9
    a4 a4 r8 a8 | % 10
    a4 g4 r8 g8 | % 11
    g8. [ e16 ]
    \once \override Slur #'control-points = #'((.5 . 2.7) (1.2 . 2.2) (1.4 . 2.3) (1.8 . 2.5))
    \appoggiatura b8 a4 r8 g'8 | % 12
    g8. [ e16 ]
    \once \override Slur #'control-points = #'((.5 . 4.4) (1.0 . 4.2) (1.4 . 4.3) (1.9 . 4.7))
    \appoggiatura e8 fis4 r8 a8 | % 13
    b8. [ fis16 ]
    \SUpc \appoggiatura fis8 g4 r8 g8 | % 14
    g4 cis,4 r8 a8 | % 15
    a8. [ e16 ]
    \SUpc \appoggiatura e8 fis4 r4 | % 16
 }

 \repeat volta 1 {
    \set Staff.timeSignatureFraction = #'(18 . 16)
    \scaleDurations #'(4 . 6) {
        \set Timing.measureLength = #(ly:make-moment 3 4)      
        \set Score.currentBarNumber = #17
        a16 [ g a d c b ] a16 [ b a g a g ]  fis16 [ g fis e fis e ] | % 17
        d16 [ c d g fis e ] d16 [ e d c d c ]  b16 [ c b a b a ] | % 18
        g16 [ fis g b a g ] fis16 [ g fis e fis e ] dis16 [ e dis cis dis cis ]  | % 19 
        b16 [ ais b e dis cis ] b16 [ c b a b a ] g16 [ a g fis g fis ] | % 20
        e16 [ dis e b' a b ] g16 [ fis g b e fis ] g16 [ fis g e dis e ] | % 21
        c16 [ b c e d e ] a,16 [ gis  a c f a ] c16  [ b c a f a ] | % 22
        dis,16 [ cis dis fis e fis ] b,16 [ ais b dis fis g ] a16 [ g a fis dis fis ] | % 23
        g16 [ fis g b a b ] e,16 [ dis e g b dis ] e16 [ c b a g fis ] | % 24
    }
    \time 18/16
    \set Staff.timeSignatureFraction = #'(3 . 4)
    e8 r8 r8 r16 g''16 \grace g8 fis8. [ e16 ] | % 25
    \grace e8 d4 ~ d8. [ f16 ] \grace f8 e8. [ d16 ] | % 26    
    \grace d8 c2 ~ c8. [ c16 ] | % 27
    c8 r8 r4 fis,8 r8 | %28
    g8 r8 r4 b8 r8 | %29
    c8 r8 r4 r4 | %30
    R1*3/4 | %31
    R1*3/4 | %33
 }
}
