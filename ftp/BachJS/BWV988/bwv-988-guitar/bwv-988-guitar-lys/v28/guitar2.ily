\version "2.18.0"

 bassOne = \relative c {
 \set Staff.instrumentName = "Gtr2 "
	\repeat volta 1 {
	\stemDown
        g8 [ b'8 ] a8 [ fis,8 ] e8 [ g'8 ] | % 1
        fis,8 [ a'8 ] g8 [ e,8 ] d8 [ fis'8 ] | % 2
        e,8 [ g'8 ] fis8 [ g,8 ] a8 [ e'8 ] | % 3
        d,8 [ fis'8 ] e8 [ g,8 ] fis8 [ c'8 ] | % 4
	\stemUp
        r32 g'32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] | % 5
        r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] | % 6
        r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] 
	r32 fis32 [ g fis g fis g fis ] | % 7
        r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] r g [ a g a g a g ] | % 8
        g,16 [ b a b ] e [ g fis g ] b [ g e cis ] | % 9
        fis,16 [ a g a ] d [ fis e fis ] a [ fis d b ] | % 10
        e,16 [ g fis g ] b [ e dis e ] g [ e b g ] | % 11
        a16 [ e' d e ] g [ a g a ] g [ e cis a ] | % 12
        r32 fis'32 [ g fis g fis g fis ] 
	r32 fis32 [ g fis g fis g fis ] 
	r32 fis32 [ g fis g fis g fis ] | % 13
        r32 fis32 [ g fis g fis g fis ] 
	r32 fis32 [ g fis g fis g fis ] 
	r32 fis32 [ g fis g fis g fis ] | % 14
        r32 fis32 [ g fis g fis g fis ] 
	r32 fis32 [ g fis g fis g fis ] 
	r32 e32 [ fis e fis e fis e ] | % 15
        d,16 [ fis e fis ] a [ d cis d ] fis4 | % 16
    }

    \repeat volta 1 {
        d8 [ e,8 ] fis [ c' ] d, [ fis' ] | % 17
        g8 [ a,8 ] b [ f' ] g, [ b' ] | % 18
        c16 [ g f g ] e [ c b c ] a [ c e a ]  | % 19
        dis,16 [b ais b ] fis' [ dis cis dis ] b [ dis, fis a ] | % 20
        r32 e'32 [ fis e fis e fis e ] 
	r32 e32 [ fis e fis e fis e ] 
	r32 e32 [ fis e fis e fis e ]  | % 21
        r32 e32 [ fis e fis e fis e ] 
	r32 e32 [ fis e fis e fis e ] 
	r32 e32 [ fis e fis e fis e ] | % 22
        r32 e32 [ fis e fis e fis e ] 
	r32 e32 [ fis e fis e fis e ] 
	r32 dis32 [ e dis e dis e dis ] | % 23
        e,16 [ e' dis e ] b [ g fis g ] e [ g b d ] | % 24
        r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] | % 25
        r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ]  | % 26
        a,8 [ e''8 ] 
	\stemDown f8 [ fis ] g [ a, ]| % 27
        d,8 [ fis' ] g [ gis ] a [ d, ] 
	\stemUp | % 28
        g,8 [ g, ] as [ a ] bes [ b ] | % 29
        r32 c'32 [ d c d c d c ] 
	r32 b32 [ c b c b c b ] 
	r32 bes32 [ c bes c bes c bes ] | % 30
	\stemDown 
        fis16 [ d' c d ] b [ g fis g ] d [ fis a c ] | % 31
        b16 [ g fis g ] 
	\stemUp d [ b a b ] g4 | % 32
     }
}

bassTwo = \relative c {
    \repeat volta 1 {
	\stemDown	    
	s1*3/4 | % 1
	s1*3/4 | % 2
	s1*3/4 | % 3
        s1*3/4 | % 4
        b16 r16 r8 c16 r16 r8 d16 r16 r8 | % 5
        c16 r16 r8 d16 r16 r8 e16 r16 r8 | % 6
        d16 r16 r8 e16 r16 r8 a,16 r16 r8 | % 7
        b16 r16 r8 c16 r16 r8 d16 r16 r8 | % 8
	s1*3/4 | % 9
	s1*3/4 | % 10
	s1*3/4 | % 11
	s1*3/4 | % 12
        d16 r16 r8 b16 r16 r8 a16 r16 r8 | % 13
        g16 r16 r8 a16 r16 r8 b16 r16 r8 | % 14
        a16 r16 r8 g16 r16 r8 a16 r16 r8 | % 15
	s1*3/4 | % 16
    }
  
    \repeat volta 1 {
	s1*3/4 | % 17
        s1*3/4 | % 18
        s1*3/4 | % 19
        s1*3/4 | % 20
        g16 r16 r8 a16 r16 r8 b16 r16 r8 | % 21
        c16 r16 r8 b16 r16 r8 c16 r16 r8 | % 22
        ais16 r16 r8 b16 r16 r8 b16 r16 r8 | % 23
	s1*3/4 | % 24
        c16 r16 r8 b16 r16 r8 a16 r16 r8 | % 25
        b16 r16 r8 a16 r16 r8 g16 r16 r8 | % 26
	s1*3/4 | % 27
        s1*3/4 | % 28
        s1*3/4 | % 29
        c16 r16 r8 d16 r16 r8 e16 r16 r8 | % 30
	s1*3/4 | % 31
	s1*3/4 | % 32
    } 
}

guitartwo = << \bassOne \\ \bassTwo >>


