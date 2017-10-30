\version "2.18.0"

 guitarthree = \relative c  {
 \set Staff.instrumentName = "Gtr3 "
 \repeat volta 1 {
    g'4
    g,4 ~ g8 [ fis16 e16 ] fis8 [ d8 ] |
    g8 [ a8 b8 c8 ] d4. dis8 |
    e4 r8 c8 g8 [ d'8 ] g8 [ a16 b16 ] |
\break
    c8 [ b8 a8 d,8 ] g,2 ~ |

    g8 g'4 fis8 e8 [ e'16 dis16 ] \TUpo e4 ~ | % 5
    e8 e,4 d8 c8 [ c'16 b16 ] c16 [ d16 e16 d16 ] |
\break
    cis16 [ a16 d16 cis16 ] b16 [ a16 b16 gis16 ] a16 [ b16 a16 g16 ] fis16 [ e16 d16 cis16 ] |
    d16 [ cis16 b16 a16 ] g16 [ e16 a8 ] d,8 [ fis16 a16 ] d4 |
 }

\pageBreak
  
 \repeat volta 1 {
    d8 d'4 c8 b16 [ a16 b16 c16 ] b16 [ a16 g16 fis16 ] |
    g8 g'4 fis8 e16 [ dis16 e16 fis16 ] e16 [ d16 c16 b16 ] |
    ais16 [ e'16 fis16 g16 ] a!8 [ a,8 ] g16 [ a16 b16 g16 ] e16 [ fis16 g16 e16 ] |
\break
    c'8 [ a8 b8 b,8 ] e,4 r8 e'8 ~ |
    e8 [ c8 d8 e8 ] a,8 [ a'8 ] e16 [ d16 e16 fis16 ] |
    g16 [ a16 b16 g16 ] a16 [ fis16 g16 a16 ] d,16 [ e16 fis16 g16 ] fis16 [ e16 d16 c16 ] |
\break
    b16 [ g16 a16 b16 ] c16 [ d16 e16 fis16 ] g16 [ a16 b16 a16 ] g16 [ fis16 e16 d16 ] |
    c16 [ b  c a ] d8 [ d,8 ] g8 [ b16 d16 ] g4  |
  }
}

