\version "2.18.0"

 guitarfour = \relative c'  {
 \set Staff.instrumentName = "Gtr4 "
 \repeat volta 2 {
    g4. | % 1
    fis4. | % 2
    e4. | % 3
    r8 d8 [ fis ] | % 4
    b,4. | % 5
    c4. | % 6
 \break
    d4. | % 7
    r8 b8 [ d ] | %8
    g,8 g'4 ~ | % 9
    g8 fis4 ~ | % 10
    fis8 [ e g ] | % 11
    cis,8 [ a' cis ] | % 12
 \break
    fis,4. | % 13
    g8 g,4 ~ | % 14
    g8 [ fis8 a8 ]
    }
    \alternative {
	 { d,8. [ d'16 e fis ] | } % 16
	 { d,8. [ a''16  b cis ] | } % 16
    }

 \pageBreak

 \repeat volta 2 {
    d4 c8 | % 17 
    b4 g8 | % 18
    c8 [ fis, a ] | % 19
    b8 [ dis, b ] | % 20
    e8 [ g e ] | %21 
    a8 [ fis e ] | % 22
 \break
    a8 [ b b, ] | % 23
    e4 d8 | % 24
    c4. ~ | % 25
    c8  b4 ~ | % 26
    b8 [ a c ] | % 27 
    fis,8 [ d fis ] | % 28
 \break
    g8 [ b g ] | % 29
    c4. ~ | % 30
    c8  [ b d ]
    }
    \alternative {
	 { g,8. a'16 b c | } % 32
	 { g,4 r8 \bar "|." | } % 32
    }
}
