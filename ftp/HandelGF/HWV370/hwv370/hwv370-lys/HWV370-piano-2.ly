% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

afterGraceFraction = #(cons 15 16)

pianoRightPartII = \relative c' {
    \key f \major
    \time 4/4
    \noTupletBracket

    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Staff.Rest #'staff-position = #0

% 1st Voice
	\pageBreak

        \voiceOne
	<< { \partial 8 r8
	| <a c f>2 <c g'>
	| <c a'>8 <c f> <c bes'> <c a'> <e g>4 r8 g
	| c bes a f f e f c'
	| <c, e bes'> r <g' bes> r <f a>4 r8 f16 g
	| a8 f c f f4. f8
	| e g f e f4. f8
	| <c e> g'4 g8 <c, c'> <c c'> <d g> <d f>
	| <c g'> c d f e16 f g f e8 \bar ":|:" r
	| f4. f8 d e f d
	| <c f> <a c> <g bes> <a c> d es f d
% Takt 10	
	| g4. g8 e f g e
	| <d g> <b d> <a c> <b d> e f g e
	| a4. a8 f g a f 
	| <e a> <cis e> <b d> <cis e> f g a f 
	| <d f a>4 <d a' d>8 <d g d'> <e g cis> g f <e a>
	| <d f>4. <bes d g>8 e g f a
	| <f a>4~ f8 d d4. e8
	| e a4 gis8 <c, a'>4 r8 <a a'>
	| <a f'>4 r8 b gis4. b8 
	| c f4 e16 d c4 <gis e'>
% Takt 20	
	| e'8 c' b gis r c b gis
	| r cis a cis a4 r8 cis,
	| d f' e cis r f e cis
	| r fis d fis g4 r8 <fis, d'>
	| <d bes' d>4. g8 a fis g a
	| bes g bes a~ a fis g a
	| g4 bes8 d c bes a g
	| a f a g e bes' a g
	| a4. f8 f2
	| f bes4 a
% Takt 30
	| f2 bes4 a
	| g~ g8 bes a4 r8 c,
	| <a c f>2 <c g'>
	| <c a'>8 <c f> <c bes'> <c a'> <e g>4 r8 <e bes'>8 \break
	| <c f as>2 <c g'>
	| <c as'>8 <c f> <c bes'> <c as'> <e g>4 c8 g'	
	| as4. g8 g bes as g 
	| <c, as'>4. g'8 g bes as g
	| as f16 e f8 g g g f4
	| <a, c> <bes! d>8 <a c>16 <g bes> <f a>4 <a c>8 f'
% Takt 40	
	| <bes, d f>2 f'4. c'8
	| <d, f d'>2 <c f c'> 	
	| d'4 c bes a8 f 
	| f d' bes e s4.
	} 
	
% 2nd Voice
	\context Voice="1" { \voiceTwo
	\partial 8 s8
	| s1
	| s2. s8 e,
	| f4. c8 d c c4
	| s2. s8 c
	| c4. c8 d c d b
	| c4. c8 b c d b
	| s1
	| s8 c4 d8 c4 c8 r
	| c bes c a bes4. bes8
	| s2 bes4. bes8
% Takt 10	
	| d c d b c4. c8
	| s2 c4. c8
	| e d e cis d4. d8
	| s2 d4. d8
	| s1	
	| s2 cis4. <a e'>8
	| a2 b4. b8
	| c4 b s2
	| s1
	| c4 b c s
% Takt 20	
	| c8 e4 e8 s e4 e8
	| s e4 e8 f4 s4
	| s8 a4 a8 s a4 a8
	| s8 a4 a8 bes4 s4
	| s4. c,8 c4 bes8 d
	| d4. g8 c,4 bes8 <a d>
	| <bes d>4. <d g>8 e4. c8
	| c4. d8 e4. c8
	| <c f>4. c8 d4 c 
	| d c c2
% Takt 30	
	| d4 c c2
	| f4 e f s	
	| s1
	| s1	
	| s1
	| s1
	| c4. f8 e4. c8
	| s4. f8 e4. c8
	| c4. d8 c bes a! b
	| s1
% Takt 40	
	| s2 <c f>
	| s1
	| f8 e4 d8~ d c4 d8
	| f4 e8 <g bes> <a c f>4. 

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

pianoLeftPartII = \relative c {
    \key f \major
    \clef bass
    \time 4/4
    \noTupletBracket
	
	\partial 8 r8
	| r f, a f r e c' e,
	| f a g f c' c, r bes'' 
	| a g f a bes4 a
	| g8 e c' e, f e16 d c bes a g
	| f4. a'8 g a b g
	| c, e d c g' a b g
	| c, c' b a~ a g16 a b8 g
	| e a16 g f8 g c,16 d e d c8 \bar ":|:" r
	| a' g a f bes, c d bes
	| a f' r f bes, c d bes
% Takt 10	
	| b a b g c d e c
	| b g' r g c, d e c 
	| cis b cis a d e f d
	| cis a' r a d, e f d
	| r d f bes a4. cis,8
	| d16 e f e d8 g, a4. cis8
	| d4~ d8 f e4. gis,8
	| a f d e a16 b c b a8 c
	| d16 e f e d8 a b16 c d c b8 gis'
	| a16 g f e d8 e a,16 a' g f e d c b
% Takt 20	
	| a8 a' gis e r a gis e
	| r a, cis a d16 d' c! bes a g f e
	| d8 d' cis a r d cis a
	| r d, fis d g,16 g' fis es d c bes a
	| g4. es8 d4. fis8
	| g16 a bes a g8 c d4. fis,8
	| g16 a bes a g8 bes c4. e,8
	| f16 g a g f8 bes c4. e8
	| f a, f' a, r bes4 a8
	| r bes4 a8 g c f, a
% Takt 30	
	| r bes4 a8 g c f, c'
	| d bes c c, f16 g a g f8 f'
	| r f, a f r e c' c,
	| f a g f c c'16 d e8 c
	| r f, as f r e c' e,
	| f as g f c c'16 d e8 c
	| f16 g as g f8 bes, c4. e8 
	| f16 g as g f8 bes, c4. e8
	| f16 g as g f as g f e8 c d g,
	| c, c' r c, f16 g a g f8 a
% Takt 40	
	| bes bes f' bes, r a f' a,
	| r bes f' bes, r a f' a,
	| bes g a f g e f bes 
	| c bes c c, f4. \bar ":|"
	
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynamicsII = {
  s2-\f

}
