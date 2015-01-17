\version "2.19.15"

% Note - Character set converted to UTF-8 for source repository consistency
% For correct compilation with LilyPond 2.2 this change may need to be reverted

\include "header.ly"

SopNotes = \relative c {
  
  \autoBeamOff
  \key d \major
  \time 4/4 
  
  %-\fb
  R1 | 
  R1*2 | 
  d''4. a8 b a r4 |
  % 5
  d4. a8 b a r8 d16 d |
  % 6
  d8 d r8 d16 d d8 d r8 d |
  % 7
  cis( d4) cis8 d4 r |
  % 8
  e4. a,8 fis' e r4 |
  % 9
  e4. a,8 fis' e r8 e16 e |
  % 10
  fis8 e r8 e16 e fis8 e r8 e |
  % 11
  fis[ e] d4 cis4 r |
  % 12
  a2 b4 cis4 |
  % 13
  d8 d, d'4. d8 cis4 |
  % 14
  b2 a4 r8 e'16 e |
  % 15
  d8 cis r8 e16 e d8 cis r8 e16 e |
  % 16
  fis8 e r8 e16 e fis8 e r4 | R1 | R1 | r2 r4 r8 d16 d |
  % 20
  d8 d r8 d16 d d8 d r8 d16 d |
  % 21
  d8 d r8 d16 d d8 d r4 |
  % 22
  d2 e4 fis4 |
  % 23
  g8 g, g'4. g8 fis4 |
  % 24
  e2 d4 r8 d16 d |
  % 25
  cis8 a r8 cis16 cis d8 d16 d e8 e |
  % 26
  a,4 r8 d16 cis b8 b r8 e |
  % 27
  d[ cis] d[ e16 d] cis8 cis16 cis e8 cis |
  % 28
  r8 a16 a d8 a r8 cis16 cis e8 cis |
  % 29
  r8 a16 a fis'8 d r8 cis16 cis d8 a |
  % 30
  r8 b16 b e8 e r8 cis16 cis d8 d16 d |
  % 31
  d4 cis4 d4 d4 |
  % 32
  d4 d4 d2 | r r4 a4 |
  % 34
  a4 g4 fis4 e8.[ d16] |
  % 35
  d1 | r2 fis4 e8.[ d16] |
  % 37
  d2. fis'4 |
  % 38
  e4 d4 d4 cis4 |
  % 39
  d4. cis8 d4 d4 |
  % 40
  cis4. a8 b4 cis4 |
  % 41
  d2 r |
  R1 * 6 |
  r2 r4 d4 |
  % 49
  a'4 cis,4 fis4 a,4 |
  % 50
  d4 cis8 b cis4( b8.[ a16]) |
  % 51
  a2 a4 a4 |
  % 52
  a1 ~| a  |r4 a4 a4 a4 |
  % 55
  a1 ~ | a |r 2 d4 d4 |
  % 58
  d1 ~ |d1 ~ |d4 d4 e4 e4 |
  % 61
  e1 ~ | e~ | e2 fis4 fis4 |
  % 64
  fis1 ~ | fis ~| fis4. fis8 g4 g4 |
  % 67
  g1 ~|  g4. g8 fis[ e] fis[ g] |
  % 69
  e2 r8 cis8 d e |
  % 70
  a,4 r4 r2 | r2 r4 a4 |
  % 72
  d4 fis,4 b4 d,4 |
  % 73
  g4 fis8 e fis4( e8.[ d16]) |
  % 74
  d2 r2 | r4 r8 d'8 g fis r8 d |
  % 76
  g fis r4 r2 | r4 r8 d16 d g8 fis r8 d16 d |
  % 78
  g8 fis r8 a, a4 d4 |
  % 79
  fis4 d4 d4 a8 a |
  % 80
  cis4 d8 d d4( cis4) |
  % 81
  d4 r a4 a4 |
  % 82
  d4 r8 a8 a4 a4 |
  % 83
  d4 r a4 a4 |
  % 84
  d4 r8 a8 a4 a4 |
  % 85
  d4 r4 r a4 |
  % 86
  d4 fis4 b,4 d4 |
  % 87
  g4 fis8 e e2 |
  % 88
  d4 r d4 d4 |
  % 89
  d4 r8 d8 d4 d4 |
  % 90
  d4 r8 d16 d d8 d r8 d16 d |
  % 91
  d8 d r8 d16 d d8 d r8 d16 d |
  % 92
  d8 d r2 d4 |
  % 93
  d2. d4 |
  % 94
  d1-\fermata \bar "|." 
}

SopLyrics = \lyricmode { 
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	For the Lord God Om -- ni -- po -- tent reign -- eth!
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	For the Lord God Om -- ni -- po -- tent reign -- eth!
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	The king -- dom of this world is be -- come
	the king -- dom of our Lord and of His Christ, and of His Christ.
	And He shall reign for -- ev -- er and ev -- er.
	King of Kings, __ and Lord of Lords. __
	King of Kings, __ and Lord of Lords. __
	King of Kings, __ and Lord of Lords, __ and Lord of Lords.
	And He shall reign,
	and He shall reign for -- ev -- er and ev -- er, for -- ev -- er and ev -- er.
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	And He shall reign for -- ev -- er, for -- ev -- er and ev -- er.
	King of Kings, and Lord of Lords.
	King of Kings, and Lord of Lords.
	And He shall reign for -- ev -- er and ev -- er.
	King of Kings, and Lord of Lords.
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!

}

SopGermanLyrics = \lyricmode { 
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	
	denn Gott der Herr re -- gie -- ret all -- mäch -- tig,
	
	%15
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	
	%20
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	
	denn Gott der Herr re -- gie -- ret all -- mäch -- tig,

	
	%25
	Hal -- le -- lu -- ja, Hal -- le -- lu -- ja, Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja, Hal -- le -- lu -- ja, Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja, Hal -- le -- lu -- ja, Hal -- le -- lu -- ja, Hal -- le -- lu -- ja, Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja, Hal -- le -- lu -- ja, Hal -- le -- lu -- ja!
	
	%34
	Das Kö -- nig -- reich der Welt
	ist fort -- an 
	das Kö -- nig -- reich des Herrn 
	und sei -- nes Christ, 
	und sei -- nes Christ,
	
	%49
	und er re -- giert auf im -- mer und e -- wig, 
	
	Herr der Herrn, __
	der Wel -- ten Gott, __
	Herr der Herrn, __
	der Wel -- ten Gott, __
	Herr der Herrn, __
	der Wel -- ten Gott, __
	der Wel -- ten Gott,
	und er reg -- giert,
	
	%78
	und er re -- giert auf im -- mer und e -- wig,
	auf im -- mer und e -- wig,
	
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	
	und er re -- giert
	auf e -- wig, auf im -- mer und e -- wig,
	
	
	%81
	Herr der Herrn,
	der Wel -- ten Gott,
	Herr der Herrn,
	der Wel -- ten Gott,
	
	%85
	und er re -- giert 
	auf im -- mer und e -- wig,
	
	Herr der Herrn,
	der Wel -- ten Gott,
	%90
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja!

	%{
	Translate::
	Hal -- le -- lu -- jah! => Hal -- le -- lu -- ja,
	And Lord of Lords! => der Wel-ten Gott,
	King of Kings! => Herr der Herrn,
	For e -- ver and e -- ver! => auf im -- mer und e -- wig
	And He shall reign, => und er re -- giert
For the Lord God om -- ni -- po -- tent reign -- eth, => denn Gott der Herr re -- gie -- ret all -- mäch -- tig,
	The king -- dom of this -- earth, ==> Das Kö -- nig -- reich der Welt
	Is be -- come. ==> ist fort -- an das
	The king -- dom of our Lord,=> Kö -- nig -- reich des Herrn 
	And of His Christ, and of His Christ! => und seines Christ, und seines Christ
	%}
}

Soprano = <<
 
  \context Voice = Sop \SopNotes
  \new Lyrics  \lyricsto Sop  {  \SopLyrics }
  \new Lyrics  \lyricsto Sop  { \SopGermanLyrics } %\set stanza = "German" 
>>

