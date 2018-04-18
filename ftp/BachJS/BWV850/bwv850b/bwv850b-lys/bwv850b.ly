\version "2.11.52"
%\include "notes.lyi"


\header {
	title = "Fuga V"
	opus = "BWV 850"
	composer = "Johann Sebastian Bach (1685-1750)"
	
	mutopiatitle = "Das Wohltemperierte Clavier I, Fuga V"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV 850"
	mutopiainstrument = "Harpsichord, Piano"
	source = "Breitkopf & Härtel, 1866"

	style= "Baroque"
	copyright = "Creative Commons Share-Alike 4.0"
	maintainer = "Sven Reichard"
}

global = {\time 4/4 \key d \major}

roll = \relative{d32 e fis g fis e fis d}
theme = \relative{\roll b8. b16 a8. g16}
scale = \relative{d e fis g a b cis}
soprano={
  r1 | r1 | r1 | r1 |
  r4 \transpose d a' {\theme} | %5
  \relative c'' {
    cis8~cis32 e fis g a8. a16 a8~a32 d, e fis g8. g16 | %6
    g4 fis8. e16 d8. e16 cis8. cis16 | %7
    cis4
    \modalTranspose d b \scale {\theme}|
    d4 b'16 a b gis gis fis gis e e d e cis |
    cis4 a'16 g a fis fis e fis d d c d b | %10
    b4 \transpose d g' {\theme} |
    b8. cis16 d2 cis4 | %12
    d \transpose d d' {\theme} | %13
  }
  
}

alto= {
  r1 | r1 | r1 |
  r4 \transpose d d' {\theme}|
  \relative f' {
    fis8. gis16 a4~a gis | %5
    a cis d d | %6
    cis8~cis32 e d cis d8. cis16 b4 a | %7
    a4 b~b ais | %8
    b r d8. b16 b8. a16 | %9
    a4 r c8. a16 a8. g16 |
    g4 r r2 | %11
    r4 \theme | %12
    fis8. a16 d4~d c~| %13
    c4
    }
  }

tenor =  {
  r1 | %1
  r4 \transpose d a {\theme} | %2
  \relative c' {
    cis4 fis8. fis16 b,8~b32 b cis d e16 d e cis |%3
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
    }
  
}

bass = 
{|
 r4 \theme  |                            %1
 \relative c {
 fis8. g16 fis8. e16 d4 e |              %2
 a,8~a32 e' fis g a2 g4~ |               %3
 g8. fis32 e fis8. d16 g8. e16 a8. a,16| %4
 d8. e16 fis8. e16 d8. b16 e4 | %5
 a,4 r r2 |%6
}
 r4 \transpose d d, {\theme}%7
 \relative f, {
   fis8~fis32 d' e fis g8. fis16 e8. cis16 fis4  %8
 }
 \modalTranspose d b, \scale {\roll } gis8 r r2 | %9
 \modalTranspose d a, \scale {\roll } fis8 r r2 | %10
 \transpose d g,  {\roll} e8. d16 c4 d | %11
 g8. a16 b8. a16 g8. e16 a8. a,16 |
 \modalTranspose d b \scale {\roll} b'8. a16 g8. e16 a8. a,16 |
}

\score {
  \new GrandStaff <<
    \new Staff {\global \clef treble \soprano}
    \new Staff {\global \clef alto \alto}
    \new Staff {\global \clef tenor \tenor}
    \new Staff {\global \clef bass \bass}
  >>
  \midi{\tempo 4=88}
  \layout{}
  }

%\score {
%		\new PianoStaff <<
%			#(set-accidental-style 'piano)
%			\set PianoStaff.connectArpeggios = ##t
%			\new Staff = "RH" %\rightHand
%			\new Staff = "LH" %\leftHand 
%		>>
%		\midi{}
%		\layout{}
%}
