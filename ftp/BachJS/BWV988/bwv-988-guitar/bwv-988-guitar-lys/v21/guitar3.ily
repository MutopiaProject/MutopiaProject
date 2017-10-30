\version "2.18.0"

 guitarthree = \relative c {
 \set Staff.instrumentName = "Gtr3 "
 \repeat volta 2 {
    g4 g' fis f | % 1
    e4 es d16 [ a bes c ] d8 [ d, ] | % 2
    g16 [ d' e fis ] g [ f es d ] c8 [ b c cis ] | % 3
    d8 [ bes c d ] g4 ~ g16 [ fis g a ] | % 4
    bes16 [ c d8 ] g, [ g' ] d4. c8 | % 5
    bes8 [ a bes g ] a16 [ e f g ] a [ b cis a ] | % 6
    d16 [ f, g a ] d, [ c' bes a ] g [ bes, c d ] g, [ g'8 cis,16 ] | % 7
    d16 [ a' \TUpa d8 ~ ] d8. [ cis16 ] d [ bes a g ] fis [ a fis d ] | % 8
 }

 \pageBreak
  
 \repeat volta 2 {
    d8 d'4 c8 b bes4 a16 [ g ] | % 9
    a8 as4 g8 d [ es f bes, ] | % 10
    es8  r8 r8 es8  as4. g16 [ f ] | % 11
    g4 ~ g16 [ f es d ] es [ g, as bes ] es, [ g a b ] | % 12
    c4 r8 c8 bes4 r8 bes8 | % 13
    a16 [ g a bes ] a [ g fis e ] d [ c' d es ] d [ c bes a ] | % 14
    g16 [ f' g as ] g [ f es d ] c [ b c cis ] d16 [ es d c ] | % 15
    bes16 [ a bes b ] c8 [ d ] g,16 [ d' bes d ] g [ d bes g ]
 }
}

