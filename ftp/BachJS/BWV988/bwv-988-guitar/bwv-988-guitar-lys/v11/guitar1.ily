\version "2.18.0"

 guitarone = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    b16 [ a g ] fis [ e d ] \TUpd cis8. ~ [ cis8 e16 ] | % 1
    a16 [ g fis ] e [ d cis ] \TDnb b8. ~ [ b8 a'16 ] |
    g16 [ fis e ] d [ cis b ] a8 [ cis16 e8 g16 ] |
    fis16 [ e d ] cis [ b a ] g [ fis e ] d [ e c ] | % 4
    b16 [ d g ] b [ d g ] d [ b g ] f [ e d ] |
    cis16 [ e g ] bes [ e g ] e [ bes a ] g [ fis e ] |
    d16 [ g b ]  d [ g b ] a [ fis d ] c [ b a ] | % 7
    g16 [ b d ] g [ b d ] g8 [ d16 ] b8 [ fis16 ] |
    g8. ~ [ g8 b16 ] e [ d cis ] b [ a g ] |
    fis8. ~ [ fis8 e'16 ] d [ cis b ] a [ g fis ] | % 10
    \TUpo e8. ~ e16 [ fis g ] cis, [ b' a ] g [ a b ] |
    e,16 [ d' cis ] b [ cis d ] cis [ e fis ] g [ fis e ] |
    d4. ~ \downprall d8 [ fis,16 ] a8 [ d16 ] | % 13
    d4. ~ \upprall d8 [ gis,16 ] b8 [ d16 ] |
    d4. ~ \upprall d16 [ e g ] cis, [ e g ] |
    fis8. ~ fis16 [ d a ] fis [ d fis ] a [ cis d] | % 16
 }
  
 \repeat volta 2 {
    r4. a16 [ g fis ] e [ d c ] | % 17
    b16 [ a g ] r8. d''16 [ c b ] a [ g f ] | % 18
    e16 [ d c ] b [ a g ] fis8 [ dis'16 ] e8 [ ais,16 ] | % 19
    b8 [ dis,16 ] fis8 [ a16 ] c [ b a ] g [ a fis ] | % 20
    e16 [ g b ] e [ g b ] g [ e b ] g [ fis e ] | % 21
    f16 [ a c ] f [ a c ] a [ f c ] a [ g fis ] | % 22
    g16 [ b e ] g [ e c' ] b [ a g ] fis [ e dis ] | % 23
    e16 [ g e ] b [ g fis ] g [ e g ] b [ e dis ] | % 24
    e16 [ d c ] b [ a g ] \TUpd fis8. ~ [ fis8 a'16 ] | % 25
    d16 [ c b ] a [ g fis ] \TUpo e8. ~ [ e8 d'16 ] | % 26
    c16 [ b a ] g [ fis e ] fis [ e d ] cis [ d e ] | % 27
    fis16 [ e d ] c [ b a ] b [ a g ] fis [ g a ] | % 28
    b16 [ a g ] f [ e d ] e [ d c ] b [ c d ] | % 29
    e16 [ c e, ] g [ c e ] c [ a c ] e [ a c ] | % 30
    fis,16 [ d fis ] a [ d fis ] d [ a d ] fis [ a c ] | % 31
    b16 [ g d ] b [ g fis ] g [ b d ] g8. |% 32
 }
}

