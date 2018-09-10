\version "2.11.52"
%\include "notes.lyi"

\include "articulate.ly"
\header {
	title = "Fuga V"
	opus = "BWV 850"
	composer = "Johann Sebastian Bach (1685-1750)"
	
	mutopiatitle = "Das Wohltemperierte Clavier I, Fuga V"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV 850"
	mutopiainstrument = "Harpsichord, Piano"
	source = "Breitkopf & Härtel, 1866, Plate XIV, p.20-21"

	style= "Baroque"
	copyright = "Creative Commons Share-Alike 4.0"
	maintainer = "Sven Reichard"
}

global = {\time 4/4 \key d \major}

roll = \relative{d32 e fis g fis e fis d}
theme = \relative{\roll b8. b16 a8. g16}
scale = \relative{d e fis g a b cis}


soprano=\new Voice{\voiceOne
  r1 | r1 | r1 | r1 |
  r4 \transpose d a' {\theme} | %5
  \relative c'' { 
    cis8.*5/6 e32 fis g a8. a16 a8.*5/6 d,32 e fis g8. g16 | %6
    g4 fis8. e16 d8. e16 cis8. cis16 | %7
    cis4
    \modalTranspose d b \scale {\theme}|
    d4 b'16 a b gis gis fis gis e e d e cis |
    cis4 a'16 g a fis fis e fis d d c d b | %10
    b4 \transpose d g' {\theme} |
    b8. cis16 d2 cis4 | %12
    d \transpose d d'' {\theme} | %13
    fis8.*5/6 d32 e fis g8. g16 g8. a16 fis8. fis16 |%14
    fis8. e32 dis e4~e8. dis16 e8. fis16 |%15
    b,8. c32 a b8. c16 g4 fis |%16
    \modalTranspose d e' \scale {\roll} g'8 r r2 |%17
    \modalTranspose d a' \scale {\roll} fis8 r r2 |%18
    \transpose d g' {\roll} e8 r r2 |%19
    \modalTranspose d fis' \scale {\roll} d8. d16 d8. e16 cis8. d32 e |%20
    fis4 b16 a b g g fis g e e d e cis |%21
    cis4 d8. d16 d8. e16 cis8. d16 |%22
    d4 \modalTranspose d b' \scale {\roll}
    e4 \modalTranspose d a' \scale {\roll} |
    d4
    \transpose d g' {\roll}
    \modalTranspose d cis'' \scale {\roll}
    \modalTranspose d fis'' \scale {\roll}|
    b'8. cis,16 d8. e16 fis8. fis,16 g8. a16 |
    b8. b16 cis8. d16 fis,4 e |
    d1

  }
  
}

alto= \new Voice{\voiceTwo
  r1 | r1 | r1 |
  r4 \transpose d d' {\theme}|
  \relative f' {
    fis8. gis16 a4~a gis | %5
    a cis d d | %6
    cis8.*5/6 e32 d cis d8. cis16 b4 a | %7
    a4 b~b ais | %8
    b r d8. b16 b8. a16 | %9
    a4 r c8. a16 a8. g16 |
    g4 r r2 | %11
    r4 \transpose d d'\theme | %12
    fis8. a16 d4~d c~| %13
    c4 b a2 | %14
    g4 b a2~ |%15
    a4 g8. e16 e4 dis |%16
    e r e8. cis16 cis8. a16 |%17
    a4 r d8. b16 b8. g16 |%18
    g4 r cis8. a16 a8. fis16 |%19
    fis4 \modalTranspose d b \scale {\roll} g'2 |%20 
    fis4 r4 d'8. b16 b8. a16 |%21
    a4 a8. a16 b8. b16 a4 |%22
    a r b r|%23
    a r r2 |%24
    r8. a16 a8. cis16 d8. d,16 d8. fis16 |%25
    g8. d16 e8. fis16 d4 cis |%26
    a1%27
    }
  }

tenor =  \new Voice {\voiceOne
  r1 | %1
  r4 \transpose d a {\theme} | %2
  \relative c' {
    cis4 fis8. fis16 b,8.*5/6 b32 cis d e16 d e cis |%3
    a4 d~d cis |%4
    d cis b2  | %5
  }

  r4 \modalTranspose d fis' \scale {\roll} b'4
  \modalTranspose d e' \scale {\roll} |
  
  a'4 a'8. g'16 fis'8. g'16 e'4 | %7
  \relative c' {
    d4 d cis2 | %8
    b4 r b'8. gis16 gis8. e16 |%9
    e4 r a8. fis16 fis8. d16 |%10
    d4 r r2 |%11
    s1 | %12
    s1 | %13
    r4 \transpose d g {\theme} |%14
    b4 g' fis2 ~ |%15
    fis4 e8. fis,16 g8. a16 b8. a16 |%16
    g4 r b8. g16 g8. e16 |%17
    e4 r a8. fis16 fis8. d16 |%18
    d4 r g8. e16 e8. cis16 |%19
    cis4 r4 r4 \modalTranspose d a \scale {\roll} |%20
    d'4 r b'8. g16 g8. e16 |
    e4 fis8. fis16 fis8. g16 e4 |
    fis r e r |
    d r r2 |
    r8. e16 fis8. g16 a8. a,16 b8. c16|
    d8. g16 g8. a16 a,4 g |
    fis1

  }
  
}

bass = \new Voice
{|\voiceTwo
 r4 \theme  |                            %1
 \relative c {
 fis8. g16 fis8. e16 d4 e |              %2
 a,8. * 5/6 e'32 fis g a2 g4~ |               %3
 g8. fis32 e fis8. d16 g8. e16 a8. a,16| %4
 d8. e16 fis8. e16 d8. b16 e4 | %5
 a,4 r r2 |%6
}
 r4 \transpose d d, {\theme}%7
 \relative f, {
   fis8.*5/6 d'32 e fis g8. fis16 e8. cis16 fis4  %8
 
 \modalTranspose d b, \scale {\roll } gis8 r r2 | %9
 \modalTranspose d a, \scale {\roll } fis8 r r2 |
				%10
 \transpose d g,  {\roll} e8. d16 c4 d |
				%11
 g8. a16 b8. a16 g8. e16 a8. a,16 |
				%12
 \modalTranspose d b, \scale {\roll} b'8. a16 g8. e16 a8. a,16 |
				%13
 d4 e c'8. a16 d8. d,16 | %14
 g4 \transpose b e, {\modalTranspose d b \scale {\theme }} |
 g,8. fis16 g8. a16 b2 | %16
   e4  b'16 a b g g fis g e e d e cis | %17
   cis4 a'16 g a fis fis e fis d d cis d b %18
   b4  g'16 fis g e e d e cis cis b cis a | %19
 a4 r \modalTranspose d e \scale {\roll} a'4| %20
 \roll g8 r r2 |%21
 <g g,>4 fis32 g a g fis e d cis b cis d cis b a b g a8. a16 | %22
 d,8.*5/6 d'32 e fis g4 \modalTranspose d cis \scale {\roll} fis4 | %23
 \modalTranspose d b, \scale {\roll}
 \modalTranspose d e \scale {\roll}
 \modalTranspose d a \scale {\roll}
 \modalTranspose d d' \scale {\roll}| %24
 g'8. g,16 fis8. e16 d8. c16 b8. a16 |%25
 g8. fis16 e8. d16 a'2 |%26
 d,1\fermata %27
 
 }
}

