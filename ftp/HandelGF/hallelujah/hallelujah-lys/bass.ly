\version "2.19.15"
% Note - Character set converted to UTF-8 for source repository consistency
% For correct compilation with LilyPond 2.2 this change may need to be reverted

\include "header.ly"


BassNotes = \relative c {

  \autoBeamOff
  \key d \major
  \time 4/4 
  \clef bass	
  
  R1*3 |
  d4. fis8 g d r4 |
  % 5
  d4. fis8 g d r8 fis16 fis |
  % 6
  g8 d r8 fis16 fis g8 d r8 fis |
  % 7
  e([ d] a') a d,4 r |
  % 8
  a'4. cis8 d a r4 |
  % 9
  a4. cis8 d a r8 cis16 cis |
  % 10
  d8 a r8 cis16 cis d8 a r8 cis |
  % 11
  d[ cis] b4 a4 r |
  % 12
  a2 b4 cis4 |
  % 13
  d8 d, d'4. d8 cis4 |
  % 14
  b2 a4 r8 cis16 cis |
  % 15
  d8 a r8 cis16 cis d8 a r8 cis16 cis |
  % 16
  d8 a r8 cis16 cis d8 a r4 |
  % 17
  d,2 e4 fis4 |
  % 18
  g8 g, g'4. g8 fis4 |
  % 19
  e2 d4 r8 fis16 fis |
  % 20
  g8 d r8 fis16 fis g8 d r8 fis16 fis |
  % 21
  g8 d r8 fis16 fis g8 d r4 |
  R1 * 2 | r4 r8 a'16 a fis8 d r4 |
  % 25
  a'2 b4 cis4 |
  % 26
  d8 d, d'4. d8 cis4 |
  % 27
  b2 a4 r8 a16 a |
  % 28
  fis8 d r8 d'16 d cis8 a r4 |
  r4 r8 d16 d cis8 a r8 d16 d |
  % 30
  b8 g r8 e16 e a8 a r8 b16 b |
  % 31
  g8 e16 e a8. g16 fis4 r8 d'16 d |
  % 32
  b8 g16 g b8 cis d2 |
  r2 r4 d,4 |
  % 34
  cis4 b4 a4 g'8.[ fis16] |
  % 35
  fis1 |
  r2 a,4. a8 |
  % 37
  d2. d'4 |
  % 38
  cis4 b4 a4 g8.[ fis16] |
  % 39
  fis4. e8 d4 b'4 |
  % 40
  a4. fis8 g4 e4 |
  % 41
  d4. a'8 d4 fis,4 |
  % 42
  b4 d,4 g4 fis8 e |
  % 43
  e2 d4 r |
  r4 r8 a'8 d d, r8 fis |
  % 45
  b[ gis] a4 r8 e8 d e |
  % 46
  cis a' g a fis4 r8 fis8 |
  % 47
  g d r4 r r8 g |
  % 48
  a a, r8 a' fis d r8 d' |
  % 49
  cis a r8 cis d d, r8 fis |
  % 50
  b[ gis] a d, e e r8 e |
  % 51
  cis4 a4 r2 | 
  r4 r8 cis'8 d a r8 cis |
  % 53
  d a r8 cis16 cis d8 a r8 cis16 cis |
  % 54
  d8 a r4 r2 | r4 r8 cis8 d a r8 cis |
  % 56
  d a r8 cis16 cis d8 a r8 cis16 cis |
  % 57
  d8 a r4 r2 | r4 r8 fis8 g d r8 fis |
  % 59
  g d r8 fis16 fis g8 d r8 fis16 fis |
  % 60
  g8 d r4 r2 | r4 r8 gis8 a e r8 gis |
  % 62
  a e r8 gis16 gis a8 e r8 gis16 gis |
  % 63
  a8 e r4 r2 | r4 r8 ais8 b fis r8 ais |
  % 65
  b fis r8 ais16 ais b8 fis r8 ais16 ais |
  % 66
  b4 b, r2 | 
  r2 b'4 b4 |
  % 68
  cis4. cis8 d4 d,4 |
  % 69
  a'4. a,8 a'4 cis,4 |
  % 70
  fis4 a,4 d4 cis8 cis |
  % 71
  b2 a4 r4 |
  r2 r8 d8 g fis |
  % 73
  e4 fis8[ g] a4 g8 a |
  % 74
  fis4 d4 d'4 d4 |
  % 75
  d4 r8 fis, g d r8 fis |
  % 76
  g d r8 d' d4 d4 |
  % 77
  d4 r8 fis,16 fis g8 d r8 fis16 fis |
  % 78
  g8 d r8 d d'4 fis,4 |
  % 79
  b4 d,4 g4 fis8 fis |
  % 80
  e4 d8 d a'2 |
  % 81
  d,4 r d4 d4 |
  % 82
  d'4 r8 d,8 d4 d4 |
  % 83
  d'4 r d,4 d4 |
  % 84
  d'4 r8 d,8 d4 d4 |
  % 85
  d'4 r8 d,8 d'4 fis,4 |
  % 86
  b4 d,4 g4 fis8 fis |
  % 87
  e4 d8 d a'2 |
  % 88
  d,4 r8 fis g d r8 fis |
  % 89
  g d r8 fis g d r8 fis |
  % 90
  g d r8 fis16 fis g8 d r8 fis16 fis |
  % 91
  g8 d r8 fis16 fis g8 d r8 fis16 fis |
  % 92
  g8 d r4 r d4 |
  % 93
  g2. g4 |
  % 94
  d1-\fermata \bar "|." 
}

BassLyrics = \lyricmode {
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	For the Lord God Om -- ni -- po -- tent reign -- eth!
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	For the Lord God Om -- ni -- po -- tent reign -- eth!
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah!
	For the Lord God Om -- ni -- po -- tent reign -- eth!
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah!
	The king -- dom of this world is be -- come
	the king -- dom of our Lord and of His Christ, and of His Christ.
	And He shall reign for -- ev -- er and ev -- er, for -- ev -- er and ev -- er.
	And He shall reign, and He shall reign for -- ev -- er, for -- ev -- er, for -- ev -- er,
	for -- ev -- er and ev -- er,
	for -- ev -- er, for -- ev -- er and ev -- er.
	For -- ev -- er and ev -- er. Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	For -- ev -- er and ev -- er. Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	For -- ev -- er and ev -- er. Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	For -- ev -- er and ev -- er. Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	For -- ev -- er and ev -- er. Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	King of Kings, and Lord of Lords.
	And He shall reign for -- ev -- er and ev -- er.
	And He shall reign for -- ev -- er and ev -- er.
	King of Kings, for -- ev -- er and ev -- er, and Lord of Lords.
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
	And He shall reign for -- ev -- er, for -- ev -- er and ev -- er.
	King of Kings, and Lord of Lords.
	King of Kings, and Lord of Lords.
	And He shall reign for -- ev -- er, for -- ev -- er and ev -- er,
	for -- ev -- er and ev -- er, for -- ev -- er and ev -- er.
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! 
	Hal -- le -- lu -- jah! Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!

}

BassGermanLyrics = \lyricmode {
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
	
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	
	
	denn Gott der Herr re -- gie -- ret all -- mäch -- tig,
	
	Hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah!
	
	%25
	denn Gott der Herr re -- gie -- ret all -- mäch -- tig,
	Hal -- le -- lu -- jah, hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
	Hal -- le -- lu -- jah, hal -- le -- lu -- jah!
	
	%33
	Das Kö -- nig -- reich der Welt
	ist fort -- an
	das Kö -- nig -- reich des Herrn
	und sei -- nes Christ,
	und sei -- nes Christ,
	und er re -- giert auf im -- mer und e -- wig,
	
	
	auf im -- mer und e -- wig,
	%45
	und er re -- giert, und er re -- giert 
	auf e -- wig, auf im -- mer und e -- wig,
	auf im -- mer und e -- wig,
	auf e -- wig, auf im -- mer und e -- wig,
	
	auf e -- wig
	und e -- wig,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	
	%58
	auf e -- wig
	und e -- wig,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	
	%61
	auf e -- wig
	und e -- wig,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	
	%64
	auf e -- wig
	und e -- wig,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	
	auf e -- wig
	und e -- wig,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	
	Herr der Herrn,
	der Wel -- ten Gott,
	
	und er re -- giert 
	auf im -- mer und e -- wig,
	

	und er re -- giert 
	auf im -- mer und e -- wig,
	
	Herr der Herrn,
	auf e -- wig
	und e -- wig
	
	der Wel -- ten Gott,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	
	und er re -- giert auf e -- wig, auf im -- mer und e -- wig,
	
	Herr der Herrn,
	der Wel -- ten Gott,
	Herr der Herrn,
	der Wel -- ten Gott,
	
	und er re -- giert 
	auf e -- wig, 
	auf im -- mer und e -- wig,
	
	auf e -- wig
	und e -- wig
	auf e -- wig
	und e -- wig
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja,
	Hal -- le -- lu -- ja!
	Hal -- le -- lu -- ja!
}

Bass = <<
 
  \context Voice = Bass \BassNotes
  \new Lyrics  \lyricsto Bass  {  \BassLyrics } %\set stanza = "English"
  \new Lyrics  \lyricsto Bass  { \BassGermanLyrics } %\set stanza = "German"  
>>

