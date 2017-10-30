\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
    g8 r8 b'8 r8  g,4 | % 1
    fis8 r8 a'8 r8 fis,4 | % 2
    e8 r8 g'8 r8 e,4 | % 3
    d8 r8 fis'8 r8 d,8 [ c8 ] | % 4
    b8 r8 d''8 r8 b,,4 | % 5
    c8 r8 e''8 r8 c,,4 | % 6
    d8 r8 a''8 r8 d,,4 | % 7
    g,8 r8 b''4 ~ b16 [ a g fis ] | % 8
    g16 b cis d ] e [ fis e d ] cis [b a g ] | % 9
    fis [ a b cis ] d [ e d cis ] b [ a g fis ] | % 10
    e8 [ fis g b] 
    \once \override Script #'padding = #1 e4\mordent ~ | % 11
    e8 [ d ] cis16 [e b e ] a, [ e' g, e'] | % 12
    fis,16 [ e' d cis ] d [ a d, d' ] e, [d' fis, d' ] | % 13
    g,16 [ e' d cis ] d [ b e, d'] fis, [d' g, d'] | % 14
    a [ d cis b ] cis [e a, cis ] e, [ g fis e ] | % 15
	fis [a d, fis ] a, [ d fis, a ] d,4 | % 16
    }

\pageBreak

    \repeat volta 2 {
    r16 d''16 [ c b ] a [ g fis e ] d [ c' b a ] | % 17
    b16 [ g fis e ] d [ c b a ] g [ g' a b ] | % 18
    c16 [ d e d ] c [ b a g ] a [ b c a ] | % 319
    b16 [ a b fis ] b, [ cis dis e ] fis [ g a fis] | % 20
    g16 [ b g e ] g [ b g e ] g [ b g e ] | % 21
    a16 [ c a e ] g [ c g e ] fis [ c' fis, e ] | % 22
    g16 [ b g e ] b [ b' a b ] g [ b fis b ] | % 23
    g16 [ e g b ] e [ b g b ] e,8 r8 | % 24
    e8 r8 c,8 r8 e'4 | % 25
    d8 r8 b,8 r8 d'4 | % 26
    c8 b a g fis e | % 27
    fis8 [g16 a ] d,4 ~ d16 [c' b a ] | % 28
    b16 [ g fis g ] a [ g b g ] c [g d' g, ]  | % 29
    e'8 [ g, ] r8 b8 [ a  g ] | % 30
    fis16 [ d' e fis ] g [ d b g ] a [ c g' fis ] | % 31
    g8 [ g, d b ] g4
    }
}
