\version "2.18.0"

guitartwo = \relative c {
 \time 2/2
 \repeat volta 2 {
    <<
	{ \stemUp <b d g>4 s4 s4 s8 s16 b'16  | } \\
	{\stemDown g,4 a'4\rest a4\rest b8\rest b16\rest g16 | }
    >>
    <<
	{ a4 c4\rest s2 | } \\
	{ \TDnl fis,4 ~ fis32 [ d e fis g a b c ] d8. [ a16 fis8. d16 ] | }
    >>
   \break
    e4. g8 e4 ~ ^\downprall e8. [ \times 2/3 { d32 e fis ] } | % 3
    d8. [ c'32 b ] c8. [ a16 ] fis8. [ e'16 d8. c16 ] | % 4
   \break
    b4. ^\downprall b8 
    b8. [ \times 2/3 { c32  b a ] } 
    b8. [ g16 ] | % 5
    c4 ~ 
    c8. [ \times 2/3 { d32 c b ] }
    c8. [ \times 2/3 { b32 a g ] }
    a8. [ \times 2/3 { g32 fis e ] }| % 6
   \break
    d2 ~ \stemUp d16  [ c32 b a g fis e ] d16 [ fis a d ] | % 7
    g,16-. [ d'-. e-. fis-. ] \stemDown g-. [ fis-. g-. a-. ] b4 ~ \prallprall 
    b8. [ \times 2/3 {  a32 g fis ] } | % 8
   \pageBreak
    g16-. [ b-. cis-. dis-. ] e-. dis-. e-. fis-. g8. [ g,16 g'8. g16 ] | % 9
    g4 ~ 
    g8. [ \times 2/3 { g32  fis e ] }
    fis8. [ \times 2/3 {  b,32  cis dis ] } e8. [ e16 ] | % 10
   \break
    \TUpo e4 ~ 
    e8. [ \times 2/3 {  c32 b a ] } \stemUp gis8. [ b16 e,8. gis16 ] | % 11
    a4 ~ a16 [ a,32 b cis d e fis ] g8. [ e16 ] cis8. [ a16 ] | % 12
   \break
    \TDno fis'4 ~ 
    fis8. [ \times 2/3 {  g32 fis e ] } \stemUp 
    d8. [ \times 2/3 { c32 b a ] } 
    g8. [ \times 2/3 { d'32 e fis ] } \stemDown | % 13
    <<
	{ s4 r8 r16 b16 cis4 s4   | } \\
	{ g8. \mordent [ g,16  g'8.  g16 ] g4 ~ g8. [ \times 2/3 {  g32 fis e ] } | }
    >>
   \break
        
    \stemUp fis16. [ d32 e fis g a ] b8. [ g16 ] a4 a, | % 15
}    
    \alternative {
	{ d,4 ~ d16 [ d'32 e fis g a b ] c8. [ a16 fis8. d16 ] | } % 16
	{d,4 r8 \time 3/8 |} % 17
    }

   \pageBreak

    \repeat volta 2 {
    \stemDown r8 d''16 [ c b a ] | % 18
    b8 [ c d ] | % 19
    g,16 [ b a c b d ] | % 20
    \stemUp r8 a16 [ g fis e ]    | % 21
   \break
    fis8 [ g a ]   | % 22
    dis,16 [ fis e g fis a ]   | % 23
    <<
	{ g8 [ fis] b8\rest |} \\ 
	{ \stemDown b,8\rest b16 [a g fis ] | } % 24
    >>
    <<
	{ b'8\rest e,8 [ dis ] | }  \\
	{ g,8 [ a b ] | }
    >>
   \break
    <<
	{ e4. ~ | e4 a8\rest  | } \\
	{e,16 [ g fis a g b ] | a8 [ b c ] | }
    >>
    \stemUp fis,16 [ a g b a c ] | % 28
    b8 [ c d ] | % 29
   \break
    g,16 [ b a c a d ]| % 30
    c8 [ a b ] | % 31
    e,8 e'16 [d c b ] | % 32
    c8 [ d e ] | % 33
   \pageBreak
    a,16 [ c b d cis e ]| % 34
    <<
	{ \tieDown d4. ~ | d8 s8 s8 | \stemUp a'8\rest g8 [fis] | } \\
	{ s4. |s8 \stemDown d16 [ c b a ] | b8 [c d] | }
    >> 
   \break
    <<
	{ \tieUp g4. ~ | g8 b8\rest b8\rest | } \\
	{ g,16 [ b a c b d ] | c16 [b a g fis e ]  | }
    >>
    fis8 [g \turn a ] | % 39
    \stemUp d,16 [ fis e g fis a ] | % 40
   \break
    g8 [ a \turn  b ] | % 41
    e,16 [ gis fis a gis b ] | % 42
    a16 [ e' a g fis e ] | % 43
    fis16 [ g fis e d c ] | % 44
   \break
    b16 [ d c e d fis ]| % 45
    e8 [ c d ] | % 46
    }
    \alternative {
	<<
	    { s4 s8 | s4. } \\
	    { \stemUp g,16 [ fis g a b c ] |  d8 [d,] r8 | }
	>>

        { \time 2/2 <g d'>1 \bar "|." |}
    }
}

