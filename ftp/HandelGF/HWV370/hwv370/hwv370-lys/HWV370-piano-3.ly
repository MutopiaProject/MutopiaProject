% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

afterGraceFraction = #(cons 15 16)

pianoRightPartIII = \relative c' {
    \key f \major
    \time 3/2
  \noTupletBracket

    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Staff.Rest #'staff-position = #0

% 1st Voice

	\pageBreak
	
        \voiceOne
	| << { f4 g a2. e4
	| e2 a4 g a f
	| g1 a2
	| g4 f g a a <es g>~
	| <es g>2 a fis4 g8 a~
	| a2 g g
	| f e e  
	| e1. \bar ":|:"
	| a2. gis4 g f
	| cis d e a~ a g8 f
% Takt 10	
	| e4 g f c' bes a
	| g1  g4 c
	| c a g bes a c
	| bes c d bes r g
	| bes g f a g bes
	| a bes c a r <a, f'>
	| es'2 d4 fis g2
	| a4 g f cis d c'
	| bes g f a~ a d
	| g,4. f8 e4 e g f8 e
% Takt 20
	| f2 e <e g>4. <d f>8
	| <a d f>1. \bar ":|"
	} 
	
% 2nd Voice
	\context Voice="1" { \voiceTwo
	
	| d2. cis4 d2 
	| cis d1
	| cis4 f e1
	| cis4 d e f c2
	| s s d
	| d1 cis2 
	| d1 d2
	| cis1.
	| a1.
	| a2. cis4 a2
% Takt 10	
	| c1.
	| e1 es2
	| fis g4 d2 fis4
	| g1 s2
	| e2 f4 c2 e4
	| f1 s2	
	| bes,4 c d c bes2
	| a2. cis4 d2
	| d4 cis d g f e
	| e4. d8 cis4 a2 a4
% Takt 20	
	| a b d2 a
	| s1
	
        \oneVoice
	}
% % 3rd Voice
%        \new Voice { \voiceThree
%            s1 s s s s s s s s s s s s s e4
%        \oneVoice
%        } 
>>
 \oneVoice
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoLeftPartIII = \relative c {
    \key f \major
    \clef bass
    \time 3/2
     \noTupletBracket

	| d2. e4 f g 
	| a g f e f d
	| e d cis2. cis4
	| d1.
	| a'4 g fis g8 a d,4 e8 fis
	| g4 d bes g r a'
	| bes a g2 gis
	| a4 e cis a a' a, \bar ":|:"
	| a2. b4 cis d
	| e d cis a d2
% Takt 10	
	| g4 e f a g f
	| c2. c4 c' c, 
	| d c' bes g fis d'
	| g, a bes g r bes
	| c, bes' a f e c'
	| f, g a f r f
	| g a bes a g e
	| f cis d e f fis
	| g e f cis d g,
	| a2. cis2 cis4
% Takt 20
	| d gis, a1
	| d1. \bar ":|"
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynamicsIII = {
  s2-\f

}
