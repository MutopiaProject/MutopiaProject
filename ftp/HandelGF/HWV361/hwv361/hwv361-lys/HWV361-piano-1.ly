% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

afterGraceFraction = #(cons 15 16)

pianoRightPartI = \relative c' {
    \key a \major
    \time 4/4
    \noTupletBracket

    \override Score.RehearsalMark
    #'break-visibility = #begin-of-line-invisible

% 1st Voice
        \voiceOne
	| << { e4. cis8 a'4 b8 a 
	| a4. d8 gis, a b gis 
 	| a4 cis8 gis a4. a8 \break
	| gis4 fis8 fis e4 r8 gis 
	| fis4. cis'8 d b a! gis
	| a4. gis8 <e a>4 r8 fis \break
	| eis b' a fis eis r fis a~
	| a4 r8 fis eis fis gis eis 
	| eis4 fis8 fis dis4 gis8 a \break
	| e4 dis8 fis e2
% 10
	| e4. cis8 a'4 b8 a 
	| a4. d8 d4. gis,8 \pageBreak
	| e4 fis8 cis' b4 a 
	| gis8 fis4 a8 gis4 a8 cis
	| b a fis d~ d r a' cis \break
	| cis4 b8 gis a r r cis 
	| b4 a gis8 a r b
	| a4 gis fis4. e8~ \break
	| e4 a~ a <e gis> 
	| <e a> r8 <b e b'>16. <cis a'>32 <cis e a>4 r8 <d e gis>
% 20
	| <cis e cis'>4 r8 <b e b'> <a a'>2
	| <b e gis>1 \bar "|." \break
	} 
	
% 2nd Voice
	\context Voice="1" { \voiceTwo
	| cis4 gis8 a e'2
	| fis d
	| e4 r8 gis fis cis b fis'
	| e4. a,8 g ais b4~
	| b8 ais e'!4 d8 e4 cis8
	| cis fis e8. d16 cis4 s8 cis
	| cis4. d8 eis s cis4
	| fis s8 b,~ b2 
	| cis4~ cis8 b\rest dis bis cis4
	| cis bis cis8 gis a d
% 	10
	| cis4 gis8 a e'2 
	| fis gis8 a b d,
	| e4 <cis fis> <dis fis>8[ e~] e fis
	| e4 dis e4. e8 
	| d! a~ a[ b~] b s e4
	| a e e8 s s fis~
	| fis e4 d8 e4 s8 e~
	| e d4 cis8 d r r d
	| e4 d8 fis e fis e d 
	| cis4 s2.
% 20	
	| s2 e4 dis 
	
        \oneVoice
	}
% 3rd Voice
       \new Voice { \voiceThree
           s1 s s s s s s s s s s s s s e4
       \oneVoice
       } >>
 \oneVoice
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoLeftPartI = \relative c {
    \key a \major
    \clef bass
    \time 4/4
    \noTupletBracket
	
	| a8 a' e fis cis cis' gis a
	| d, cis d b e fis gis e
	| a cis16. d32 e8 e, fis a dis, b
	| e  cis a b e,4 r8 eis'
	| fis4 r8 ais b gis a e
	| fis d e e, a4 r8 a'
	| gis eis fis b, cis cis' a fis
	| d'4 r8 d, cis dis eis cis 
	| a'4 r8 fis gis fis e! fis
   	| gis fis gis gis, cis e16 d cis8 b
% 	10
	| a a' e fis cis cis' gis a
	| d, cis d b e fis gis e
	| cis' cis, a a' b gis cis dis
	| e a, b b, e d cis b16 a
	| gis8 a d fis e d cis b16 a
	| fis'8 a gis e a a, r a' 
	| gis cis fis, b e, a r gis
	| fis b e, a d, d'16 cis d8 b
	| cis cis, fis d e d e e,
	| a4 r8 gis'16. fis32 fis4 r8 e 
% 	20
	| a,4 r8 gis fis2 
	| e1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynamicsI = {
  s2-\f

}
