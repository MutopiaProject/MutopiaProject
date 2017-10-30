\version "2.18.0"

 sopranoOne = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
    \repeat volta 1 {
    \stemUp
        b16 r16 r8 d16 r16 r8 g,16 r16 r8 | % 1
        a16 r16 r8 d16 r16 r8 fis,16 r16 r8 | % 2
        g16 r16 r8 b16 r16 r8 a16 r16 r8 | % 3
        fis16 r16 r8 cis'16 r16 r8 d16 r16 r8 | % 4
        g,8 [ g,, ] a [ e'' ] f [ d ] | % 5
        e8 [ a,, ] b [ fis'' ] s8 a8 | % 6
        b8 [ a,8 ] b [ e, ] fis b8\rest | % 7
        b8\rest c'8 b [ a ] g [ fis ] | % 8
        <b, d g b>16 [ g'16 fis g ] 
	\stemDown e [ b a b ] g [ b e g ] | % 9
        a16 [ fis e fis ] d [ a g a ] fis [ a d fis ] | % 10
        g16 [ e dis e ] 
	\stemUp b [ g fis g ] e [ g b d ] | % 11
        cis16 [ g' fis g ] e [ cis b cis ] a [ cis e g ] | % 12
        fis16 r16 r8 g16 r16 r8 a16 r16 r8 | % 13
        b16 r16 r8 a16 r16 r8 g16 r16 r8 | % 14
        a16 r16 r8 b16 r16 r8 a16 r16 r8 | % 15
        fis16 [ d cis d ] a16 [ fis e fis ] d4 | % 16
    }
     \repeat volta 1 {
        fis16 [ a g a ] 
	\stemDown d [ fis e fis ] a [ fis c a ] | % 17
        b16 [ d c d ] g [ b a b ] d [ b f d ] | % 18
        e8 [ b8 ] 
	\stemUp c8 [ dis,8 ] e8 [ g,8 ] | % 19
        fis8 [ e''8 ] 
	\stemDown dis16 [ fis e fis ] a [ fis dis fis] | % 20
        \stemUp r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] | % 21
        r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] | % 22
        r32 g32 [ a g a g a g ] 
	r32 g32 [ a g a g a g ] 
	r32 fis32 [ g fis g fis g fis ] | % 23
	\stemDown
        e16 [ g, fis g ] b [ e dis e ] g32 [  (f e16 ) f32 ( e d16 ) ] 
	\stemUp| % 24
        e8 [ e,8 ] dis8 [ d8 ] cis8 [ e'8 ] | % 25
        d8 [ d,8 ] cis8 [ c8 ] b8 [ d'8 ] | % 26
        r32 c32 [ d c d c d c ] 
	r32 c32 [ d c d c d c ] 
	r32 c32 [ d c d c d c ] | % 27
        r32 c32 [ d c d c d c ] 
	r32 c32 [ d c d c d c ] 
	r32 c32 [ d c d c d c ] | % 28
        b16 r16 r8 c16 r16 r8 d16 r16 r8 | % 29
        e,8 [ e'8 ] 
	\stemDown f8 [ fis8 ] g8 [ gis8 ] | % 30
        a16 [ fis, e fis ] 
	\stemUp g [ b a b ] c [ a fis d ] | % 31
        g16 [ b a b ] 
	\stemDown d [ g fis g ] b4 | % 32
    }
}

sopranoTwo =   \relative c {
  \repeat volta 1 {
  \stemDown
        r32 d'32 [ e d e d e d ] 
	r32 d32 [ e d e d e d ] 
	r32 d32 [ e d e d e d ] | % 1
        r32 d32 [ e d e d e d ] 
	r32 d32 [ e d e d e d ] 
	r32 d32 [ e d e d e d ] | % 2
        r32 d32 [ e d e d e d ] 
	r32 d32 [ e d e d e d ] 
	r32 cis32 [ d cis d cis d cis ] | % 3
        r32 d32 [ e d e d e d ] 
	r32 d32 [ e d e d e d ] 
	r32 d32 [ e d e d e d ]  | % 4
	s4 s4 s8 b8 | % 5
        c8 s8*3 g'8  [ cis,8 ]  | % 6
	d8 [ fis,8 ]  g8 [cis,] d [d,] | % 7
        g8 [ e''8 ] d [ c ] b [ < a c >8] | % 8
        b16 s16 s8 s2 | % 9
	s1*3/4 | % 10
	s1*3/4 | % 11
	s1*3/4 | % 12		
        r32 d32 [ e d e d e d ] 
	r32 d32 [ e d e d e d ] 
	r32 d32 [ e d e d e d ] | % 13
        r32 d32 [ e d e d e d ] 
	r32 d32 [ e d e d e d ] 
	r32 d32 [ e d e d e d ] | % 14
        r32 d32 [ e d e d e d ] 
	r32 d32 [ e d e d e d ] 
	r32 cis32 [ d cis d cis d cis ] | % 15
	s4 s2 | % 16 
     }

    \repeat volta 1 {
        s1*3/4 | % 17
        s1*3/4 | % 18
        s1*3/4 | % 19
        s1*3/4 | % 20
        b16 r16 r8 cis16 r16 r8 dis16 r16 r8 | % 21
        e16 r16 r8 dis16 r16 r8 e16 r16 r8 | % 22
        cis16 r16 r8 b16 r16 r8 a16 r16 r8 | % 23
	s1*3/4 | % 24
        s1*3/4 | % 25
        s1*3/4 | % 26
        e16 r16 r8 d16 r16 r8 e16 r16 r8  | % 27
        fis16 r16 r8 e16 r16 r8 fis16 r16 r8 | % 28
        r32 g32 [ a g a g a g ] 
	r32 fis32 [ g fis g fis g fis ] 
	r32 f32 [ g f g f g f ] | % 29
        s1*3/4 | % 30
        s1*3/4 | % 31
        s1*3/4 | % 32
   }
 }

guitarone = << \sopranoOne \\ \sopranoTwo >>

