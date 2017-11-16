\version "2.18.0"

 sopranoOne = \relative c'' {
  \time 2/2
 \set Staff.connectArpeggios = ##t
 \repeat volta 2 {
    \stemDown
    r4 r32 g32 [ a b c d e fis ] g8. [ d16 b8. g16 ] | % 1
    d'4. \mordent e8 \once \override Script #'padding = #1
    c4 ~ \downprall
    c8. [ \times 2/3 {b32 c d ] } | % 2
    g,8. [ g'32 fis32 ] g8. [ e16 ] \grace d8 cis8. [ b'16 a8. g16 ] | % 3
    \stemUp \ignoreClash fis4. \downprall \stemDown g8 \grace g8 a2 ~ | % 4
    a8. [ \times 2/3 { a32 g fis ] } 
    g8. [ \TDnc d16 ] _~ d2 | % 5 
    \stemUp \grace f8 
    e8. [ \times 2/3 { d32 c b ] } 
    c8. [ \times 2/3 { b32 a g ] } a8. [ a16] \stemDown g'8. \mordent [ g16] | % 6
    <<
	{ \stemDown \ignoreClash b,4\arpeggio s4 s4 s4 } \\
	{ \tieUp <d g>4\arpeggio ~ \stemDown g32 [ b a g fis e d c ] a'8. [ c,16 ] a'8. [ c,16 ] | }
    >> % 7
    b4 ~ \downprall \stemUp 
    b8. [ \times 2/3 { a32 g fis ] } 
    \stemDown g16 [ d'-. e-. fis-. ] g-. [ fis-. g-. a-. ] | % 8
    b8. [ \times 2/3 {  a32 g fis ] } 
    g8. [ \times 2/3 {  fis32 e dis ] } \stemUp e8. [ b16 cis8. \mordent d16 ] | % 9
    \grace d8 cis8. [ \times 2/3 {  e32 fis g ] } a8. [ a16 ] a4 ~ a8. [ \times 2/3 { a32 g fis ] } | % 10
    g8. [ \times 2/3 { fis32 e dis ] } e8. [ b'16 ] d,4. \downprall cis16 [ b16 ] | % 11
    cis8. [ \times 2/3 { d32 cis d ] } d8. \prallprall [ cis32 d ] e4 ~ e32 [ d cis b a g fis e ] | % 12
    d8. [ fis16 a8. \mordent b16 ] <a c>4 ~ 
    c8. [ \times 2/3 {  c32 b a ] } | % 13
    \stemDown 
    b8. [ \times 2/3 {  cis32 d e ] }
    d8. \prallprall [ \times 2/3 { cis32 d e ] }
    a,8. [ \times 2/3 {  e'32 fis g ]} a8. [ cis,16 ] \stemUp| % 14
%    \once \override Voice.Script #'X-offset = #10
%    d4. \turn e8 e4. \downprall d8 |  % 15
    d4. e8 \turn e4. \downprall d8 |  % 15
    }
    \alternative {
    {<fis, a d>1 | } % 16
    { \stemDown \time 3/8 d'8 [ a16 g fis e ] |} % 16
 }
    
 \repeat volta 2  {
    \stemUp fis8 \turn [ g a ] | % 18
    d,16 [ fis e g fis a ]| % 19
    g8 [ fis g ] | % 20
    e8 [dis e ]| % 21
    a4. ~ | %22
    a8 [ g16 e fis dis ] |
    b'4. ~ |
    b16 [ c b a g fis ] |
    g16 [ e a e b' e, ] |
    c'16 [ b a g fis e ] |
    d16 [ fis e g fis a ] | % 28
    g16 [ a a8. \prallprall g32 a ] |
    b4 g8 |
    e8 [fis dis ] |
    e4 r8 |
    r8 e16 [ d c b ] |
    c8 [ d e ] |
    a,16 [ c b d cis e ] | % 35
    d32 [ e fis16 ] fis8. \downprall [e32 fis] | % 36
    g8 [ fis16 e d c ] |
    b16 [ d c e d f ] |
    \TUp e4. ~ | % 39
    e16 [ d c b c fis ] |
    a16 [ d, c b c a ] | %41
    b16 [ e d c d gis ] |
    b16 [ e, d c d b ] |
    \stemUp c4. ~|
    c16 [ b a b c a ] |
    d4 b8 |
    g8 [ a fis ] | % 47
    }
    \alternative {
	{g4 s8 | b8\rest a'16 [g fis e ] | }
	{ \time 2/2 g,1 |}
    }
}

sopranoTwo =   \relative c'' {
    \repeat volta 2 {
    \stemUp s1| % 1
    s1| % 2
    s1| % 3
    d4 s1*3/4 | % 4
    s2 \grace e8 f4. ^\mordent g8 | % 5
    \stemDown c,8 s1*7/8 | % 6
    s4 s1*3/4  | % 7
    s1 | % 8
    s1*15/16 b16| % 9
    a4 r8 r16 a'16 dis,8. [fis16] \tieDown b,4 ~ | % 10
    b4 r4 b2 | % 11
    a4 b cis s4 | % 12
    s2 fis,4 s4| % 13
    s1 | % 14
    s2 cis'2 | % 15
    }
   
    \alternative {
        {s1 | } % 16
        { s1*3/8 |} % 16
    } 

    \repeat volta 2 {
    \stemUp s1*3/8  |
    s1*3/8  |
    s1*3/8 |
    \stemDown c,4. ~ |
    c16 [ g' fis e dis e ]  |
    \TUps b4. ~  |
    b16 [ cis dis e fis dis ]  | % 24
    s1*3/8  | % 24
    s1*3/8  | % 25
    s1*3/8  | % 26
    s1*3/8  | % 27
    s1*3/8  | % 28
    s1*3/8  | % 29
    s1*3/8  | % 30
    s1*3/8  | % 31
    s1*3/8  | % 32
    s1*3/8  | % 33
    s1*3/8  | % 34
    s1*3/8  | % 35
    s1*3/8  | % 36
    s1*3/8  | % 37
    s1*3/8  | % 38
    s1*3/8  | % 39
    s1*3/8  | % 40
    s1*3/8  | % 41
    s1*3/8  | % 42
    s1*3/8  | % 43
    s1*3/8  | % 44
    s1*3/8  | % 45
    s1*3/8  | % 46
    }
    
    \alternative {
        {s1*3/8 | s1*3/8 } % 32
        { \time 2/2 s1|} % 32
    }
}

sopranoThree =   \relative c'' {
    \repeat volta 2 {
    s1 | % 1
    s1 | % 2
    s1 | % 3
    s1 | % 4
    s1 | % 5
    s1 | % 6
    s1 | % 7
    s1 | % 8
    s1 | % 9
    s1 | % 10
    s1 | % 11
    s1 | % 12
    s1 | % 13
    s1 | % 14
    s1 | % 15
    }
   
    \alternative {
        {s1 | } % 16
        { s1*3/8 |} % 16
    }

 \repeat volta 2  {
    s1*3/8
    s1*3/8
    s1*3/8
    s1*3/8
    s1*3/8
    s1*3/8
    s1*3/8
    \stemDown e,8 b8\rest b8\rest | % 24
    s1*3/8   | % 25
    s1*3/8   | % 26
    a8 [ b c ]  | % 27
    d8 [ e fis ]  | % 28
    g4 d8 | % 29
    g,8 [a fis ]   | % 30
    g8 [ gis8._\prallprall fis32 gis ]  | % 31
    a4 gis8  | % 32
    a8 g4  | %33
    fis8 [g e ]  | % 34
    fis16 f16\rest f8\rest f8\rest  | % 35
    s1*3/8   | % 36
    s1*3/8   | % 37
    f8\rest fis8 [ g ] _\markup \center-column { \musicglyph #"scripts.turn" }
    a8 f8\rest f8\rest  | % 39
    s1*3/8   | % 40
    s1*3/8   | % 41
    s1*3/8   | % 42
    f16\rest g16 [ fis g a fis ] | % 43
    \tieDown d4. ~   | % 44
    d16 [ fis e g fis8 ]   | % 45
    b,8 c a | % 46
}

    \alternative {
        {b4 b'8\rest |  % 47
        s1*3/8 | } % 48 
        { \time 2/2 b,1|} % 48
    }
}

guitarone = << \sopranoOne \\ \sopranoTwo  \\ \sopranoThree>>

