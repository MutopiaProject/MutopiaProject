 guitartwo = \relative c' {
 \clef "G_8"
 \override Staff.NoteCollision #'merge-differently-dotted = ##t
 \set Staff.instrumentName = "Gtr2 "
 \set harmonicDots = ##t
    << %1,2,3,4
	{ f4\rest f4\rest d4 | f4\rest f4\rest d4 | e4\rest e4\rest cis4 |  d4\rest d4\rest a4 } \\
	{ s4 \stemDown b2 |  s4 \stemDown a2 |  s4 \stemDown g2 | s4 \stemDown fis2 }  \\
	{ \stemDown g2. |\stemDown  fis2. |\stemDown  e2. |
	  \stemDown
	  \once \override Tie #'control-points = #'((1.5 . -3) (5.5 . -5.5) (16.5 . -5.7) (20.3 . -3.2))
	d2_~  d8 c8 }
    >>
 \break
    << %5,6
	{ b'4\rest b4\rest g4 | b4\rest b4\rest a4 } \\
	{ s4 \stemDown d,2 | s4 \stemDown e4. s8 } \\
	{ \stemDown b2. |
	  \once \override Tie #'control-points = #'(( 2 . -3.5) (6 . -6) (12 . -6) (15.4 . -3.7))
	c2_~ c8 d8 }
    >>
    << % 7,8
	{ c'8\rest \stemUp \TUp c8^~ c8[ b16 a16] g16 fis16 e16 fis16 | g8 a8 b2 } \\
	{ e,8 c8 d2 | \stemDown g,4.  d'8 [ e8.^\mordent fis16 ] }
    >>
 \break
    << %9,10
	{  f'4\rest f4\rest \stemUp e4 | s2. } \\
	{ s4 \stemDown b2 | \stemUp a4 s2 } \\
	{ \stemDown
	  \once \override Tie #'control-points = #'((1.5 . -1.5) (6 . -5.5) (16 . -5.5) (22.3 . -1.8))
	g2._~ | g4 fis8\prallprall e8 fis8 b,8 } 
    >>

    << %11
	{ < b' g' >2. } \\
	{ \stemUp e,8\rest b8 e4. d8 } \\
	{ \stemDown e,4. e8 fis8 g8 }
    >>
    << %12
	{ cis8 d8 e2 } \\
	{ a,4. b8 a8 g8 }
    >>
 \break
    << %13,14
	{ g'4\rest g4\rest  d4 | g4\rest s4 e4 } \\
	{ s4 \stemDown a,2 | s4 \stemDown b4 s4 }  \\
	{ \stemDown fis2. | g2. }
    >>
    << %15-16
	{ fis'4 e8. fis16 g4-~ | g4 fis2 } \\
	{ a,2. | d4~ d8 a8 d4 } \\
	{ s2. | s2. }
    >>

 \pageBreak

    << %17-20
	{ \mergeDifferentlyHeadedOn d8 e8 fis2^\mordent | b,8 c8 d2 | c8 e8 g4 fis8^\prallprall e8 | dis8 e8 fis2 } \\
	{ \stemDown d2 c4 | b4. a8 b4 | c4. b8 a4 | b4. a8 g8 fis8 |}
    >>
 \break
    %21-22
    << { g'8\rest a8 g8^\prallprall fis8 g4 | g8\rest a8 g8^\prallprall fis8 g4 } \\
       { e,2 d'4                            | c2 b4 }
    >>
    % 23-27
    <<
       { \stemUp fis'4. c'8 b \TUpa a~ | a4 g2 | < g e' >2 \TUpa a4~ | a8[ fis8] \slurDown \appoggiatura e16 d8 e16 fis16 g16 fis16 \TUpa g8~ | g8 e8 a8 \TUpr e'8~ e16 b' a g } \\
       { s4 s8 f,8\rest f8\rest dis8 | \stemUp \ignoreClash e4 s2 | s4 \stemDown e2 |  s2. | s2. } \\
       { \stemDown a,8 c b a b4 | e8 b e, b' e d | c2. | b2. | a4. g'8 fis e }
    >>
    
    << % 28-30
       { fis'4. d8\rest d4\rest | s2. | s2. } \\
       {d,8 a d c b a | g8 d' g f e d | c8 g' c b a g }
    >>

    << %31-32
       { s2. | s2. } \\
       { fis8 d8 g8 b8 d8 d,8 | g4. d8 g,4 }
    >> 
 }
