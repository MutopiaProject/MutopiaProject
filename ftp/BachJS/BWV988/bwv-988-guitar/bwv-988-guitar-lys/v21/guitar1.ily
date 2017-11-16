\version "2.18.0"

 guitarone = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    r2 r16 a16 [ bes c ] d [ c bes a ] | % 1
    g8 [ d' g, c ~ ] c16 [ fis, g a ] bes [ a g fis ] | % 2
    g8 r8 r8 g8 as [ g as a ] | % 3
    bes16 [ c d c ] bes [ a g fis ] es'8 r8 r8 c8 ~  | % 4
    c16 [ c bes a ] bes [ c d e ] f8 [ e ] f16 [ g a8 ~ ] | % 5
    a16 [ g f a ] g [ f e d ] cis8.\downprall [ b16 ] cis [ d e8 ] | % 6
    d8 r8 r8 d8 es [ d8 es e ] | % 7
    f8 [ g a g ~ ] g8 [ fis16 e ] d [ cis d8 ]	| % 8
 }
  
 \repeat volta 2 {
    r2 r16 as'16 [ g16 f ] e [ f g e ] | % 9
    c8 [ d16 es ] f8 [ bes,8 ] r16 f'16 [ es d ] c [ es d f ] | % 10
    es8 [ f ] g4 ~ g16 [ f g as ] d, [ c d f ] | % 11
    bes,16 [ c d bes ] es8 [ as, ~ ] as [ g16 f ] g8 [ es'8 ~ ] | % 12
    es8 [ d16 c ] r4 r16 e,16 [ f g ] f [ e d c ] | % 13
    c'16 [ bes c8 ] fis,8 r8 r8 d'16 [ c ] bes [ a g f ] | % 14
    es8  r8 r8 c'8 ~ c [ bes ] a [ bes16 c ] | % 15
    d8 [ f, ] es [ c' ~ ] c16 [ bes32 a g a fis16 ] g4 | % 16
 }
}
