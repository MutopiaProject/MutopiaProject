\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
    r16 bes16 [ c d ] es [ d c bes ] a8 [ es' a, d ~ ] | % 1
    d16 [ g, a bes ] c [ bes a g ] a8  r8 r8 a8  | % 2
    bes8 [ a bes b ] c16 [ d es d ] c [ b a g ] | % 3
    fis'8 r8 r8 d8 ~  d16 [ d c  bes ] c [ d e fis ] | % 4
    g8 [ fis ] g16 [ a bes8 ~ ] bes16 [ a g bes ] a [ g f e ] | % 5
    d8. \prall [ cis16 ] d [ e f8 ] e r8 r8 e8 | % 6
    f8 [ e f fis ] g [ a bes a ~ ] | % 7
    a8 [ g16 f ] e [ d e8 ] d4 r4 | % 8
 }
  
 \repeat volta 2 {
    r16 bes'16 [ a g ] fis [ g a fis ] d8 [ e16 f ] g8 [ c, ] | % 9
    r16 g'16 [ f es ] d [ f es g ] f8 g as4 ~  | % 10
    as16 [ g as bes ] es, [ d es g ] c, [ d es c ] f8 [ bes, ~ ] | % 11
    bes8 [ as16 g ] as8  [ f'8 ~ ] f [ es16 d ] es8 r8 | % 12
    r16 fis,16 [ g a ] g [ fis es d ] d' [ c d8 ] g, r8 | % 13
    r8 es'16 [ d ] c [ bes a g ] fis8  r8 r8 \TUp d'8 ~ | % 14
    d8 [ c ] b [ c16 d ] es8 [ g, fis d' ~ ] | % 15
    d16 [ c32 bes a bes g16 ] as [ g8 fis16 ] g4 r4 | % 16
 }
}

