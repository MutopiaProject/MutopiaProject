\version "2.18.0"

 guitarone = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
  \repeat volta 2 {
	d8 d4 ~ | % 1
        d8 d4 ~ | % 2
        d8 [ d cis ] | % 3
        d4 r8 | % 4
        g16 [ fis g d b d ] | % 5
        e16 [ d e c a c ] | % 6
        d16 [ c d e d c ] | % 7
        b16 [ a b c b a ] | % 8
        g8 g'4 ~ | % 9
        g8 fis4 ~ | % 10
        fis8 [ e d ] | % 11
        cis16 [ d ] e4 ~ | % 12
        e8 d c ~ | % 13
        c8 [ b g' ~ ] | % 14
        g16 [ e fis d e cis ] | % 15
        d4. | % 16
    }
  
    \repeat volta 2 {
        fis16 [ e16 fis d a d ] | % 17
        g16 [ fis g d b d ] | % 18
        e16 [ dis e g fis e ] | % 19
        dis16 [ e fis dis b dis ] | % 20
        e8  e4 ~ | % 21
        e8 e4 ~ | % 22
        e8 [ e dis ] | % 23
        e4 r8 | % 24
        r8 e16 [ c a c ] | % 25
        d4. ~ | % 26
        d8 [ c16 b c8 ~ ] | % 27
        c8 [ d16 c b a ] | % 28
        d16 [ c d b g b ] | % 29
        e16 [ d e c a c ] | % 30
        fis16 [ e fis a d, fis ] | % 31
        g16 [ fis g d b g ] | % 32

    }
}
