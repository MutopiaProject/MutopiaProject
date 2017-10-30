\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 1 {
        g8. ~ [ g8 b16 ] e [ d cis ] b [ a g ] | % 1
        \TDno fis8. ~ [ fis8 e'16 ] d [ cis b ] a [ g fis ] | % 2
        e8 [ g16 b8 d16 ] cis [ b a ] g [ fis e ] | % 3
        d16 [ e fis ] g [ a b ] cis [ d e ] fis [ g a ] | % 4
        g4. ~ \prallprall g8 [ b,16 ] d8 [ g16 ] | % 5
        g4. ~ \upprall g8 [ cis,16 ] e8 [ g16 ] | % 6
        g4. ~ \upprall g16 [ a c ] fis, [ a c ] | % 7
        b8. ~ b16 [ g d ] b [ g b ] d [ g a ] | % 8
        b16 [ a g ] fis [ e d ] \TUpd cis8. ~ [ cis8 e16 ] | % 9
        a16 [ g fis ] e [ d cis ] \TDnb b8. ~ [ b8 a'16 ] | % 10
        g16 [ fis e ] d [ cis b ] e [ d cis ]  b [ a g ] | % 11
        cis16 [ b a ] g [ fis e ] a [ g fis ] e [ fis g ] | % 12
        fis16 [ a d ] fis [ a d ] a [ fis d ] c [ b a ] | % 13
        gis16 [ b d ] f [ b d ] b [ f e ] d [ cis b ] | % 14
        a16 [ d fis ] a [ d fis ] e [ cis a ] g [ fis e ] | % 15
        d16 [ a fis ] d [ a fis ] d [ fis a ] d8. | % 16

    }

  \pageBreak
 
    \repeat volta 1 {
         d,16 [ e fis ] g [ a b ] c [ d, c' ~ ] c [ b a ] | % 17
        g16 [ a b ] c [ d e ] f [ g, \TDnr f' ~ ] f [ e d ] | % 18
        c8. ~ c16 [ e' g ] c [ b a ] g [ fis e ] | % 19 
        dis16 [ cis b ] a [ g fis ] e [ dis cis ] b [ c a ] | % 20
        g8. ~ g16 [ b e ] g [ b dis ] e8 [ g,,16 ] | % 21
        a8. ~ a16 [ c f ] a [ c dis ] e8 [ ais,,16 ] | % 22
        b8. ~ b16 [ cis dis ] e [ fis g ] a [ g fis ] | % 23
        g16 [ e g ] b [ e dis ] e [ g e ] b [ g b ] | % 24
        c,8. ~ [ c8 e16 ] a [ g fis ] e [ d c ] | % 25
        b8. ~ [ b8 a'16 ] g [ fis e ] d [ c b ] | % 26
        a8. ~ a16 [ b c ] d [ e fis ] g [ fis e ] | % 27
        d8. ~ d16 [ e fis ] g [ a b ] c [ b a ] | % 28
        g8. ~ g16 [ a b ] c [ d e ] f [ e d ] | % 29
        \TUpd c8. ~ c16 [ e c ] a [ e c ] a [ c e ] | % 30
        a16 [ c a ] fis [ d a ] fis [ d fis ] a [ c fis, ] | % 31
        g16 [ b d ] g [ b d ] g [ d b ] g8.
    }
}

