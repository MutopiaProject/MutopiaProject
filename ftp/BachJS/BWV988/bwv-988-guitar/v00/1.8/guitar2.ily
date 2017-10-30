\version "2.12.3"

 guitartwo = {
 \set Staff.instrumentName = "Gtr2 "
 \clef "G_8"
 \override Script #'padding = #1.0
    << %1,2,3
	{ f'4\rest f'4\rest d'4 | f'4\rest f'4\rest d'4 | e'4\rest e'4\rest cis'4 } \\
	{ s4 \stemDown b2 |  s4 \stemDown a2 |  s4 \stemDown g2 } \\
	{ \stemDown g2. |\stemDown  fis2. |\stemDown  e2. }
    >>
    <<% 4
	{ d'4\rest d'4\rest a4 } \\
	{ d4 \stemDown fis2 }
    >>
    << %5
	{ b4\rest b4\rest g4 } \\
	{ s4 \stemDown d2 } \\
	{ \stemDown b,2. }
    >>
    << %6
	{ b4\rest b4\rest a4 } \\
	{ c4 \stemDown e4. d8 }  
    >>
    e8 c'8^~ c'8[ b16 a16] g16 fis16 e16 fis16
    g8 a8 b2
    << %9
	{  f'4\rest f'4\rest \stemUp e'4 } \\
	{ s4 \stemDown b2 } \\
	{ \stemDown g2. }
    >>
    << %10
	{\set harmonicDots = ##t \stemUp  g'4.\rest < a'\harmonic >4. } \\
	{ \set harmonicDots = ##t \stemDown < a\harmonic >2. }
    >>
    << %11
	{ < e''\harmonic b'\harmonic g'\harmonic >2. } \\
	{ \stemUp \ignoreClash < e\harmonic >8 b,8 e4. d8 } \\
	{ \set harmonicDots = ##t \stemDown < e\harmonic >2. }
    >>
    cis8 d8 e2
    << %13,14
	{ fis2  d4 | \stemUp g2 e4 } \\
	{ g,4\rest \stemDown a,2 | g,4\rest \stemDown b,2 }  
    >>
    << %15-16
	{ fis4 e8. fis16 g4~ | g4 fis2 } \\
	{ a,2.~ | a,4. a,8 d4 }
    >>
    d8 e8 fis2^\mordent
    b,8 c8 d2
    c8 e8 g4 fis8^\prallprall e8
    dis8 e8 fis2

    %21-24
    g8\rest a8 g8^\prallprall fis8 g4
    g8\rest a8 g8^\prallprall fis8 g4
    fis4. c'8 b8 a8 ~
    a4 g2
    << %25
	{ \stemUp g2 a4 ~ a8[ fis8] } \\
	{ b,4\rest \stemDown e2 s8 s8 }  
    >>
    \appoggiatura e16 d8 e16 fis16 g16 fis16 g8~
    g8 e8 a8 \TUpq e'8~ e'16 b' a' g'
    \relative c''
	 \stemDown fis'4. fis'4. 
	 g'4. d'8. g'8.~
	 g'4. g'8. c''8.

    %31-32
    a'4. d'8. a8.
    g2.
 }
