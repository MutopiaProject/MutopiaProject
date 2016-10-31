\version "2.18.0"

guitarthree = \relative c'  {
 \set Staff.instrumentName = "Gtr3 "
 \repeat volta 2 {
       g8  [ g, g' ] | % 1
       fis8 [ fis, fis' ] | % 2
       e8 [ e, e' ] | % 3
       d8 [ d, c' ] | % 4
       b8 [ b' g ] | % 5
       c8 [ c, c' ] | % 6
       b16 [ a b c d8 ] | % 7
       g,8 [ g,16 d' g a ] | % 8
       b16 [ a b g e g ] | % 9
       a16 [ g a fis d fis ] | % 10
       g16 [ fis g e b e ] | % 11
       g16 [ fis g e cis e ] | % 12
       a16 [ g a fis d fis ] | % 13
       b16 [ a b g e g ] | % 14
       a8 [ a, a' ] | % 15
       d16 [ cis d a fis d16 ] | % 16
    }

    \repeat volta 2 {
       d'8  d, c' | % 17
       b8 g b | % 18
       c8 [ b a ] | % 19
       b8 [ a16 g a fis ] | % 20
       g8 [ e g ] | % 21
       a8 [ a, a' ] | % 22
       g16 [ fis g a b8 ] | % 23
       e,8 [ e' d ] | % 24
       c16 [ b c a fis a ] | % 25
       b16 [ a b g e g ] | % 26
       a16 [ g a c e, g ] | % 27
       fis16 [ e fis a d, fis ] | % 28
       b,8 [ g b ] | %29
       c8 [ a c ] | % 30
       d8 [ c d ] | % 31
       g4.
    }
}

