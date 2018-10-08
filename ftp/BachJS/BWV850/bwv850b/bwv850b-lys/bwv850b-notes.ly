\version "2.18.2"
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
#(set-global-staff-size 17)
global = {\time 4/4 \key d \major}

roll = \relative{d32 e fis g fis e fis d}
theme = \relative{\roll b8. b16 a8. g16}
scale = \relative{d e fis g a b cis}


soprano=\new Voice{\voiceOne
  s1 | s1 | s1 | s1 |
  r4 \transpose d a' {\theme} | %5
  \relative c'' { 
    cis8.*5/6 e32 fis g a8. a16 a8.*5/6 d,32 e fis g8. g16 | %6
    g4 <fis d>8. <e cis>16 d8. e16 cis8. cis16 | %7
    cis4
    \modalTranspose d b' \scale {\theme}|
    d4 b'16 a b gis gis fis gis e e d e cis |
    cis4 a'16 g a fis fis e fis d d c d b | %10
    b4 \transpose d g' {\theme} |
    b8. cis16 d2 cis4 | %12
    d \transpose d d'' {\theme} | %13
    fis8.*5/6 d32 e fis g8. g16 g8. a16 fis8. fis16 |%14
    fis8. e32 dis e4~e8. dis16 e8. fis16 |%15
    b,8. c32 a <b g>8. <c e,>16 g4 fis |%16
    \modalTranspose d e' \scale {\roll} g'8 r r2 |%17
    \modalTranspose d a' \scale {\roll} fis8 r r2 |%18
    \transpose d g' {\roll} e8 r r2 |%19
    \modalTranspose d fis' \scale {\roll} d8. d16 d8. e16 cis8. d32 e |%20
    fis4 b16 a b g g fis g e e d e cis |%21
    cis4 d8. d16 d8. e16 cis8. d16 |%22
    d4 \modalTranspose d b' \scale {\roll}
    e4 \modalTranspose d a' \scale {\roll} | %23
    d4
    \transpose d g' {\roll}
    \modalTranspose d cis'' \scale {\roll}
    \modalTranspose d fis'' \scale {\roll}| %24
    b'8. <cis, a>16 <d a>8. <e cis>16 <fis d>8. <fis, d>16 <g d>8. <a fis> 16 |%25
%    a16 a8. cis16 d8. d,16 d8. fis16 |%25
    <b g>8. <b d,>16 <cis e,>8. <d fis,>16 <fis, d>4 <e cis> |%26
    <d a>1 \fermata
    \bar "|."
  }
  
}

alto= \new Voice{\voiceOne
  s1 | s1 | s1 |
  r4 \transpose d d' {\theme}|
  \relative f' {
    fis8. gis16 \voiceTwo a4~a gis | %5
    \voiceThree
    a cis d d | %6
    cis8.*5/6 e32 d cis  s4  b4 e, | %7 % notes moved to soprano for readability
    a4 \voiceTwo b~b ais | %8
    b r <d b>8. <b gis>16 <b gis>8. <a e>16 | %9
    <a e>4 r <c a>8. <a fis>16 <a fis>8. <g d>16 |
    <g d>4 r r2 | %11
    r4 \transpose d d'\theme | %12
    fis8. a16 d4~d c~| %13
    c4 b a2 | %14
    g4 \voiceThree b s2 |%15
    s4 s4 \voiceTwo e,4 dis |%16
    e r s2 | %e8. cis16 cis8. a16 |%17
    s4 r s2 |  %d8. b16 b8. g16 |%18
    s4 r s2 | %cis8. a16 a8. fis16 |%19
    fis4 \modalTranspose d b \scale {\roll} g2 |%20 
    fis4 r4 <d' b>8. <b g>16 <b g>8. <a e>16 |%21
    <a e>4 <a fis>8. <a fis>16 <b fis>8. <b g>16 <a e>4 |%22
    <a fis> r b r|%23
    a r r2 |%24
    r8. s16 s2.% \voiceThree a16 a8. cis16 d8. d,16 d8. fis16 |%25
    s1 % g8. d16 e8. fis16 d4 cis |%26
    s1%27
    }
  }

tenor =  \new Voice
{\oneVoice
 \change Staff = "up"

 r1 | %1
 r4 \transpose d a {\theme} | %2
 \relative c' {
   cis4

   fis8. fis16 b,8.*5/6 b32 cis d e16 d e cis |%3
   \voiceTwo
    a4 d~d cis |%4
   d
   \change Staff="down" \voiceOne
   cis b2  | %5
  }

 a4
 \change Staff="up" \voiceTwo
 \modalTranspose d fis' \scale {\roll} b'4
  \modalTranspose d e' \scale {\roll} |
  
  a'4 a'8. g'16 fis'8. g'16 a'4 | %7
  \relative c' {
    d4 \change Staff="down" \voiceOne d cis2 | %8
    b4 r s2 | % b'8. gis16 gis8. e16 |%9
    s1 | % e4 r a8. fis16 fis8. d16 |%10
    s4 r r2 |%11
    s1 | %12
    s1 | %13
    r4 \transpose d g {\theme} |%14
    b4 \change Staff="up" \voiceTwo g' <fis a>2 ~ |%15
    <fis a>4 e8. \change Staff="down" \voiceOne fis,16 g8. a16 b8. a16 |%16
    g4 r <b e>8. <g cis>16 <g cis>8. <e a>16 |%17
    <e a>4 r <a d>8. <fis b>16 <fis b>8. <d g>16 |%18
    <d g>4 r <g cis>8. <e a>16 <e a>8. <cis fis>16 |%19
    <cis fis>4 r4 r4 \modalTranspose d a \scale {\roll} |%20
    d'4 r s2 | %21
    s1 | %e4 fis8. fis16 fis8. g16 e4 | %22
    s4 r e r | %23
    d r r2 | %24
    r8. \change Staff="up" \voiceTwo e16 fis8. g16 a8. a,16 b8. c16| %25
    d8. g16 g8. a16 a,4 g | %26
    fis1 | %27

  }
  
}

bass = \new Voice
{|\oneVoice
 r4 \theme  |                            %1
 \relative c {
 fis8. g16 fis8. e16 d4 e |              %2
 a,8. * 5/6 e'32 fis g a2 g4~ |               %3
 g8. fis32 e fis8. d16 g8. e16 a8. a,16| %4
 \voiceTwo
 d8. e16 fis8. e16 d8. b16 e4 | %5
 a,4 r r2 |%6
}

 \oneVoice
 r4 \transpose d d, {\theme}%7
 \relative f, {
   fis8.*5/6 d'32 e fis \voiceTwo g8. fis16 e8. cis16 fis4  %8
 
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
 g4 \oneVoice \transpose b e, {\modalTranspose d b \scale {\theme }} |
 g,8. fis16 \voiceTwo g8. a16 b2 | %16
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
 g'8. \oneVoice g,16 fis8. e16 d8. c16 b8. a16 |%25
 g8. fis16 e8. d16 a'2 |%26
   \voiceTwo d,1\fermata %27
 
 }
}

