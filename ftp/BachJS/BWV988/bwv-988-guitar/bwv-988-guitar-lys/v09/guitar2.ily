\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 1 {
    R1 | 
    g8 [ fis8 g8 a8 ] b8 [ fis8 b8 a8 ] |
    g8 [ b8 ] \TUpo e4 ~ e8 [ fis16 e16 ] d4 |
    e8 [ d8 e8 fis8 ] g8 [ d8 g8 fis8 ] |

    e8 [ fis16 g16 ] a4 ~ a8 [ g16 fis16 ] g8 g, |
    a'8 [ g8 a8 b8 ] c8 [ g8 c8 b8 ] |
    a8 [ b16 cis16 ] d4 ~ d8 [ cis16 b16 ] cis16 [ d16 e8 ]~ |
    e8 d4 cis8 d2 | } 
 
 \repeat volta 1 {
    R1 |
    d8 [ b8 cis8 dis8 ] e8 [ b8 e8 fis8 ] | 
    g8 [ cis,8 ] f4 ~ f8 [ e16 dis16 ] e8 r8 |
    r8 c4 b16 [ a16 ] g16 [ fis16 e16 d16 ] e16 [ fis16 g16 e16 ] |

    \SUpb \appoggiatura d16 c8. [ d16 ] b4 \prall c8 r8 g'4 ~|
    g8 fis4 e8 fis8 [ a16 g16 ] a16 [ c16 b16 a16 ] |
    g4 a4 b2 ~|
    b8 [ e8 d8 c8 ] b2 
    }
}
