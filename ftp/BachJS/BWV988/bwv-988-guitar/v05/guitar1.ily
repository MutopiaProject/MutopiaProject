\version "2.18.0"

 guitarone = \relative c' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    r16 d16 [ e fis ] g [ fis g a ] b [ a g b ] | % 1
    a16 [ g fis e ] d [ e fis g ] a [ fis e d ] | % 2
    g16 [ fis e d ] cis [ d e fis ] g [ b a g ] | % 3
    fis16 [ e d cis ] d [ a d e ] fis [ d fis a ] | % 4
    d16 [ b a b ] g [ b a b ] d, [ g fis g ] | % 5
    e16 [ g d g ] c, [ g' b, g' ] a, [ g' b, g' ] | % 6
    c,16 [ g' b, g' ] c, [ fis e fis ] d [ fis c fis] | % 7
    b,16 [ g' fis e ] d [ c b a ] g8 r8 | % 8
    b''8 r8 g,8 r8 b'4 | % 9
    a8 r8 fis,8 r8 a'4 | % 10
    g16 [ fis e dis ] e [ g d g ] cis, [ g' b, g' ] | % 11
    cis,16 [ g' e g ] a,8 [ g' fis g \turn ] | % 12
    a8 [ e, fis fis' g  a ] | % 13
    b8 [ fis, e g' a  b8 ] | % 14
    e,8 [ g,8 a, e' cis a ] | % 15
    fis8 [ d'8 fis8  a8 ] d4 | % 16
    }
  
    \repeat volta 2 {
  fis8 r8 d,8 r8 fis'4 \downmordent | % 17
  g8 [ d16 g a8 d,16 a' ] b8 ( [g ] ) | % 18
  e8 [ c a g' ] fis32 [ e dis16 e8 ~ ] | % 19
  e8 [ dis \prall ] r8 a,8 [ g \prallprall fis ] | % 20
  e8 r8 e''8 r8 d,,4 \prallmordent | % 21
  c8 r8 e''8 r8 a,,,4 \prallmordent | % 22
  b8 r8 g''' [ fis e dis ] | % 23
  e8 r8 e,,4 ~ e16 [ d c b ] | % 24
  c16 [e d e ] g [ e d e ] c' [ a g a] | % 25
  fis'16 [ a, g a ] g' [ d c d ] b' [ g fis g ] | % 26
  e'16 [ d c d ] fis [ d c d ] g [ d c d ] | % 27
  a'16 [ d, c b ] c [ b a g ] fis [ a' g fis ] | % 28
  g8 [ b, ] r8 f,8 [ e d ] | % 29
  c16 [c' b c ] d [ c e c ] fis [ c g' c, ]| % 30
  a'16 [ c, b a ] b8 [ d' d,, c'' ] | % 31
  b16 [ g d g ] b [ g d' b ] g'4 | % 32

    }
}

