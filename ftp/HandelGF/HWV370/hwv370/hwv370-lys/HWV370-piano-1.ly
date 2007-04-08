% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

afterGraceFraction = #(cons 15 16)

pianoRightPartI = \relative c' {
    \key f \major
    \time 3/4
    \noTupletBracket
  
  \override Score.RehearsalMark
    #'break-visibility = #begin-of-line-invisible
    
% 1st Voice
        \voiceOne
	| << { \clef bass f2.
	| f2.
	| d2.
	| c2 c4
	| \clef treble e8 f g4 bes8 g \break
	| a2 f4 
	| e a f 
	| e g4. c8
	| c4. c16 bes c8 a 
	| bes4~ bes8 d c[ d16 c] \break
% Takt 10
	| bes4 c d8 g,
	| <e g>4 <c e>8 <c e> <c d f> <c d f>
	| <c e g>4 <c e g>8 <c e g> <c f a> <c f a> 
	| <c g' bes>4 e8. f16 f8. bes16 \break
	| bes8. a16 a8 bes16 c d8 g, 
	| g4 c f,
	| f4. g8 e4
	| \clef bass f2.
	| f2. \break
	| d2. 
% Takt 20
	| c2 c4 
	| bes c \clef treble <c g' bes>
	| a'2 g4
	| g a g \break
	| g g4. c8 
	| c bes a4. c8
	| bes4 d c 
	| bes g e \break
	| <a, cis e>4 <a cis>8 <a cis> <a b d> <a b d> 
	| <a cis e>4 <a cis e>8 <a cis e> <a d f> <a d f> 
%  Takt 30	
	| <a e' g>4 \clef bass cis, e
	| g e g \break
	| bes g8 bes cis e 
	| f4 \clef treble <d bes'> <e g a>
	| a2 <a, f'>4 
	| f'2.
	| e8 f g4 e \break
	| f2. 
	| f8 fis g4 bes
	| <c, g' bes> <c bes'>2 
% Takt 40
	| <c e bes'>4 <g bes e> <bes e g > 
	| <c f as> <as c f> <c f as>
	| <d f as> <f as d> <f g d'>
	| <e g c> a\rest a\rest 
	| <e g>4. <c bes'>8 <c a'> <bes g'> 
	| <a f'> <c f> <d f> <d f bes> <c f a> <bes c g'> \clef bass
	| f'2 f4 
	| c f es
	| d2 d4 
	| e c,8\rest \clef treble e' g c
% Takt 50	
	| c2 bes4
	| g4. <c, g'>8 <c a'> <bes e bes'>
	| <c f c'> <d f d'> <bes f'>4 <bes c e>
	| <a c f>2. \bar "|."
	} 
	
% 2nd Voice
	\context Voice="1" { \voiceTwo
	| <f a>4 <g bes> <a c>
	| a8 bes c4 a 
	| f g bes
	| g2 f4
	| c'2.
	| c4 d~ d8 b
	| c2 b4
	| c <e g>2
	| f2 f4
	| f2 f4
% Takt 10	
	| f e8[ f~] f d 
	| s2.
	| s2.
	| s4 c4.. e16
	| e8 g16 a a8 f4 f8
	| <e g>2 c4
	| d bes bes
	| <f a>4 <g bes> <a c>
	| a8 bes c4 a 
	| f g bes
% Takt 20
	| g2 f4
	| d <e bes'> \clef treble s
	| <c' f> <a c> <b d>
	| c2 e8 f
	| e4 <e g>2
	| f4. c8 f4
	| f8 d d2
	| <bes e> <bes d>4
	| s2.
	| s2.
% Takt 30	
	| s4 \clef bass cis,2
	| cis4 e2 
	| e4 g4. a8
	| a d \clef treble s2
	| f8 e d4 s
	| b8 c d4 b
	| c2.
	| a8 bes c4 a
	| d4 d <d g>
	| s g f
% Takt 40	
	| s2.
	| s2.
	| s2.
	| s2.
	| s2.
	| s2.	
	| <f, a>4 <g bes> <a c>
	| a2 a16 g f a
	| f4 g bes
	| bes s8 \clef treble e4.
% Takt 50	
	| <e g>2.
	| e8 d c s4.
	| s2.
	| s2.

        \oneVoice
	}
% 3rd Voice
       \new Voice { \voiceThree

       \oneVoice
       } 
	>>
 \oneVoice
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoLeftPartI = \relative c {
    \key f \major
    \clef bass
    \time 3/4
    \noTupletBracket
	
	| f,2.
	| f8 g a4 f
	| bes2.~
	| bes8 d c bes a4
	| g'8 f e d c e
	| f4. f8 g4
	| a8 g f4 g
	| c, c' bes
	| a4. a16 g a8 f
	| bes,4 bes'8 bes, a a'	
% Takt 10	
	| g4. a8 bes b
	| c c, r4 r
	| c8 c, r4 r
	| c8 c' c c c c 
	| c4 d8 d16 c bes8 bes'
	| bes4 bes, a 
	| bes8 c d bes c c,
	| f2.
	| f8 g a4 f
	| bes2.~
% Takt 20
	| bes8 d c bes a4
	| g' c, e
	| f2 f4
	| e f g 
	| c, c' bes
	| a8 g f4. a8
	| bes4 bes, a
	| g2.
	| a8 a, a4 r
	| a'8 a, a4 r
% Takt 30	
	| << { a'8 a a a a a~ | a a a a a a~ | a a a4. cis8 } 
	\\ 
	{ a,2. | a | a4 s s } >>
	| d'8 bes16 a g8 e' a, a'
	| d, e f4 d
	| g8 a b4 g
	| c,8 d e4 c
	| f,8 g a4 f
	| bes8 a g4 f
	| e e d
% Takt 40	
	| << { c'8 c c c c c | c c c c c c | b b b b b b  } 
	\\ 
	{ c,2. | c | b } >>
	| c4 r r 
	| c4. e8 f c'
	| d a bes g c c,
	| f2.
	| f8 e'16 d c bes a g f g a f
	| bes2.
	| c4 c'8 bes16 a g f e d
% Takt 50
	| c2.
	| c,4. e8 f g 
	| a bes c4 c,
	| f2. \bar "|." 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
