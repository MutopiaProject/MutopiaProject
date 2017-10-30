\version "2.18.0"

 guitartwo = \relative c {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
        g16 [ b a c ] b [ d c e ] d [ fis e g ] | % 1
        fis16 [ a g b ] a [ cis b d ] cis [ e d fis ] | % 2
        e16 [ g fis a ] g [ b a cis ] b [ d cis e ] | % 3
        d16 [ cis d cis ] d2 ~ | % 4
        d16 [ b c a ] b [ g a f ] g [ e f d ] | % 5
        e16 [ c d b ] c [ a b g ] a [ fis g e ] | % 6
        fis16 [ d e c ] d [ b c a ] b [ g a fis ] | % 7
        g16 [ fis g fis ] g4 ~ g16 [ d' g fis ] | % 8
        g16 [ b d fis ] g8. [ a16 ] b [ cis d b ] | % 9
        cis16 [ b a g ] fis [ e dis cis ] b [ a g fis ] | % 10
        e16 [ g b dis ] e8. [ fis16 ] g [ a b g ] | % 11
        a16 [ d, cis b ] cis [ e a b ] cis [ e g b, ] | % 12
        a16 [ fis' g, e' ] fis, [ d' e, c' ] d, [ b' c, a' ] | % 13
        b,16 [ g' a, fis' ] g, [ e' fis, d' ] e, [ cis' d, b' ] | % 14
        cis,16 [ a' b, g' ] a, [ fis' g, e' ] fis, [ d' e, cis' ] | % 15
        d16 [ cis d cis ] d [ a fis a ] d,8 r8 | % 16
    }

  \pageBreak

    \repeat volta 2 {
        d16 [ fis a cis ] d8. [ e16 ] fis [ g a fis ] | % 17
        g16 [ b, c d ] g,8. [ fis'16 ] g [ a b gis ] | % 18
        a16 [ c, d e ] a,8. [ gis'16 ] a [ b c ais ] | % 19
        b16 [ ais b ais ] b [ fis g a ] b,8 [ dis'8 ] | % 20
        e16 [ g fis a ] g [ fis e g ] fis [ dis e cis ] | % 21
        dis16 [ cis b d ] c [ a b gis ] a [ g fis a ] | % 22
        g16 [ e fis dis ] e [ dis cis e ] dis [ e fis dis ] | % 23
        e16 [ g, a b ] e, [ fis g a ] b [ c d b ] | % 24
        c16 [ e d f ] e [ g fis a ] gis [ b a c ] | % 25
        b16 [ d c e ] d [ f e gis ] fis [ a gis b ] | % 26
        a16 [ c b d ] c [ a b g ] a [ fis g e ] | % 27
        fis16 [ d e cis ] d [ b' c, a' ] b, [ g' a, fis' ] | % 28
        b,8 r32 d32 [ e fis ] g16 [ e f d ] e [ c d b ] | % 29
        g16 [ e f d ] e [ c' d, b' ] c, [ a' b, g' ] | % 30
        a,16 [ g' fis c ] b [ d g b ] d [ b c a ] | % 31
        b16 [ a b a ] b [ g d b ] g8 r8 | % 32
    }
}
