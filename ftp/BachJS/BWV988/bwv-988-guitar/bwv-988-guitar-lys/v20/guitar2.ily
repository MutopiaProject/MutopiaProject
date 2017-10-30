\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
    g8 [ b d g b cis ] | % 1
    r16 d16 r16 a16 r16 fis16 r16 d16 r16 a16 [ g fis ] | % 2
    e8 [ g a cis e g ]  | % 3
    r16 fis16 r16 d16 r16 a16 r16 fis16 r16 e [ d c]  | % 4
    b8 [ d  g  b  d  f ] | % 5
    r16 e16 r16 c16 r16 g16 r16 e16 r16 c16 [ b a] | % 6
    d8 fis a d  fis a ] | % 7
    r16 b16 r16 g16 r16 d16 r16 b16 r16 a16 [ g fis]  | % 8
    g8 r8 b'4 \mordent r8  e,8 | % 9
    fis,8 r8 a'4 r8 d,8 | % 10
    \times 2/3  { b'16 [ c b ] }
    \scaleDurations #'(2 . 3) {
        a16 [ b a ]
        g16 [ a g ] fis [ g fis]
        e16 [ fis e ] d [ e d ] | % 11
        cis16 [ d cis ] b [ cis b ]
        a16 [ b a ] g [  a g ]
        fis16 [ g fis ] e [ fis e ] | % 12
    }
    d8 [ a' fis' a, d, c' ] | % 13
    \times 2/3  { b16 [ g d' ] }
    \scaleDurations #'(2 . 3) {
        cis16 [ a e' ]
        d16 [ b fis' ] e [ cis g' ]
        fis16 [ d a' ] g [ e b' ] | % 14
    }
    a8 ~ 
    \scaleDurations #' ( 2 . 3 ) { a16 [  b cis ] d [ cis b ] }
    a8 ~ 
    \scaleDurations #'(2 . 3) { a16 [ g fis ] e [ fis g ] | } % 15
    fis8 r8 
    \times 2/3  {r16 fis,16 [ a] } 
    \scaleDurations #'(2 . 3) { d16 [ fis a] }
    d8 r8 | % 16
    }

 \repeat volta 2 {
    d,,8 [ d, fis a d fis ] | % 17
    g8 [ b d g ] b4 \mordent ~ | % 18
    \times 2/3  { b16 [ e,, dis ] }
    \scaleDurations #'(2 . 3) {
         e16 [ fis g ]
         a16 [ g fis ] g [ a b ]
         c16 [ b a ] g [ fis e ] | % 19
    }
    dis8 ~ 
    \scaleDurations #'(2 . 3) {
        dis16 [ e fis ]
        g16 [ fis e ] fis16 [ g a ]
    }
    b,8 [ a ] | % 20
    \times 2/3 { g16 [ fis e ] }
    \scaleDurations #'(2 . 3) {
        e16 [ dis e ]
        f16 [ e f ] fis [ e fis ]
        g16 [ fis g ] gis [ fis gis ] | % 21
    }
    a8 ~ 
    \scaleDurations #'(2 . 3) {
        a16 [  ais b ]
        c16 [ b c ] cis [ b cis ]
        d16 [ cis d ] dis [ cis dis ] | % 22
        e16 [ dis e ] fis [ e fis ]
        g16 [ fis g ] a [ g a ]
        b16 [ a b ] c [ b a ] | % 23
        g16 [ fis g ] a [ g fis ]
    }
    e4. d8 | % 24
    c8 [ e'-. e-. e-. e-. c, ] | % 25
    b8 [ d'-. d-. d-. d-. b, ] | % 26
    a8
    \times 2/3 { r16 b'16 [ g' ]}
    \scaleDurations #'(2 . 3) {
        r16 a,16 [ fis' ]
        r16 g,16 [ e' ]
        r16 fis,16 [ d' ]
        r16 g,16 [ e' ] | % 27
    }
    d,8
    \scaleDurations #'(2 . 3) {
        r16 a'16 [ fis' ]
        r16 b,16 [ g' ]
        r16 c,16 [ a' ]
        r16 b,16 [ g' ]
        r16 a,16 [ fis' ] | % 28
    }
    g,,8 [ g' ~ ]  
    \times 2/3 { g16 [ b e, ] }
    \scaleDurations #'(2 . 3) {
        f [ a d, ]
        e16 [ g c, ] d [ fis b, ] | % 29
        a16 [ g e' ] d [ b f' ]
    }
    e8 g' c e,  | % 30
    d8 ~ \times 2/3 { d16 [  e fis ] }
    \scaleDurations #' ( 2 . 3 ) { g16 [ fis e ] }
    d8 ~ 
    \scaleDurations #' ( 2 . 3 ) { d16 [ c b ] }
    \scaleDurations #' ( 2 . 3 ) { a [ b c ] | } % 31
    b8 r8 
    \times 2/3 { r16 b, [ d ]  }
    \scaleDurations #'(2 . 3) { g16 [ b d ] }
    g,8 r8 | % 32
 }
}

