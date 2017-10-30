\version "2.18.0"

 guitarone = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    r16 b16 r16 g16 r16 d16 r16 b16 r16 g16 fis e | % 1
    fis8 [ a d fis a d ]  | % 2
    r16 g,16 r16 e16 r16 cis16 r16 a16 r16 g16 fis e | % 3
    d8 [ fis a d fis a ]  | % 4
    r16 fis16 r16 d16 r16 b16 r16 g16 r16 f16 e d | % 5
    c8 [ e g c e g ]  | % 6
    r16 fis16 r16 d16 r16 a16 r16 fis16 r16  d16 [ c d ]  | % 7
    g,8 [ b d g fis c' ] | % 8
    \times 2/3 { b16 [ a b ] }
    \scaleDurations #'(2 . 3) {
         cis[ b cis ]
        d16 [ cis d] e[ d e ]
        fis16 [ e fis] g[ fis g ] | % 9
        a16 [ g a] b[ a b ]
        cis16 [ b cis] d[ cis d ]
        e16 [ d e] fis[ e fis ] | % 10
    }
    g8 r8 e,,4 \mordent r8 b''8 | % 11
    g'8 r8 cis,,,4 \mordent r8 g'''8 | % 12
    \times 2/3  { fis16 [ a d, ] }
    \scaleDurations #'(2 . 3) {
        e16[ g cis, ]
        d [ fis b,] c[ e a, ]
        b [ d g,] a[ c fis, ] | % 13
    }
    g8 [ g, fis a fis d'] | % 14
    \times 2/3  { cis16 [ a b ] }
    \scaleDurations #' ( 2 . 3 ) { cis16[ d e ] }
    fis8 ~ \scaleDurations #' ( 2 . 3 ) { fis16 [ e d ] } 
    b'8 [ cis \turn ] | % 15
    \times 2/3  { d16 [ a fis ] }
    \scaleDurations #' ( 2 . 3 ) { d16[ a fis ] } 
    d8 r8 r4 | % 16
 }
    
 \repeat volta 2 {
    r16  a'''16 r16 fis16  r16 d16 r16 a16 r16 fis16 r16 d16 | % 17
    r16  b16 r16 g16 r16 d16 r16 b16 r16  g16 [ a b ] | % 18
    c8 [ g' c e a, c ] | % 19 
    \times 2/3  { c16 [ b ais ] }    
    \scaleDurations #'(2 . 3) {
        b16 [ cis dis ]
        e16 [ dis cis ] dis [ e fis ]
        g16 [ fis e ] fis [ g a ] | % 20
        b16 [ a g ] a [ b c ]
    }
    dis,8 [ c'  b  \TInb d, ~ ] | % 21
    \times 2/3  { d16 [ cis dis ] }
    \scaleDurations #'(2 . 3) { e [ fis g ] } 
    ais,8 [ g'  fis  a, ] | % 22
    g8 [ dis  e8  c  dis dis'' ] | % 23
    e8 [ e, ] 
    \times 2/3 {r16 g [ b ] }
    \scaleDurations #'(2 . 3) { e16 [ g dis ] }
    \scaleDurations #'(2 . 3) { e16 [ b g ] r gis [ f' ] | } % 24
    \times 2/3 { e16 [ c a ] }
    \scaleDurations #'(2 . 3) {
        r d, [ b' ]
        r16 c, [ a' ] r b, [ g' ]
        r16 c, [ a' ] r fis [ es' ] | % 25
        d16 [ b g ] r c, [ a' ]
        r16 b, [ g' ] r a, [ fis' ]
        r16 b, [ g' ] r e [ d' ] | % 26
    }
    \times 2/3 { c16 [ a e }  c8-. ] c8-. [ c-. c-. c'-.] | % 27 
    \times 2/3 { c16 [ a fis }  c8-. ] c8-. [c-. c-. c'-.] | % 28 
    \times 2/3 { b16 [ g d' ] }
    \scaleDurations #' ( 2 . 3  ) { c16 [ a e' ] }
    d8 b, g  f'' | % 29
    \times 2/3 { e16 [ g c, ] }
    \scaleDurations #'(2 . 3) {
        d16 [  f b, ]
        c16 [ e a, ] b [ d g, ]
        a16 [ c fis, ] g [ b e, ] | % 30
        fis16 [ d e ] fis [ g a ]
    }
    \TUpc b,8 ~ \scaleDurations #' ( 2 . 3 ) { b16 [ a g ] }
    e'8 [ fis \turn] | % 31
    \times 2/3 { g16 [ d b ] }
    \scaleDurations #'(2 . 3) { g [ d b ] }
    g8 r8 r4 | % 32
  }
}
