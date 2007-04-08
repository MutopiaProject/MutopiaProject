% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

violinPartI = \relative g {
    \key f \major
    \time 3/4 

	\once \override TextScript #'padding = #4 

	| f''4^\markup { \hspace #-13 \large \bold "Adagio" } c a 
	| f2 c'4 
	| d bes g 
	| e2 f4 
	| bes16 c a c bes8 e16 f g8 bes, 
	| a a'16 g f e d c b d f, b 
	| e, g a b c8 e,16 d g,8 b' 
	| bes8. c32 d c8 c d e 
	| f16 e f g f8[ f,] f es' 
	| es d16 c d8 f16 e f4 
% Takt 10
	| g16 a a bes bes a a g g f f e 
	| e4~ e16 c b c f c b c 
	| g'4~ g16 c, b c a' c, b c 
	| bes'4~ bes16 a g a a g f g 
	| g f e f f8 bes16 a g f e d 
	| c8 e16 f g8 e f c 
	| d16 c bes a g f e d c8 e' 
	| f e16 f c8 bes16 c a bes c a 
	| f2 c'4 
	| d16 e f d bes c d bes g a bes g 
% Takt 20
	| e2 f16 a g f 
	| bes d c bes g' f e d c d bes c 
	| a bes c d e f g a b,8 a16 g 
	| c8 [e,] e f16 d c'8 d16 b 
	| c4. c8 d e 
	| f16 e f g a f e f a g f e 
	| d cis d e d8 d e f 
	| e16 f g a bes8 g e d 
	| cis4~ cis16 a b cis d a cis d 
	| e4~ e16 a, d e f a, e' f 
% Takt 30
	| g4~ g16 a bes g e f g e 
	| cis4 e16 f g e cis d e cis 
	| g4 e'8 [cis] bes! a16 g 
	| f8 d' e,4 cis'8.^\trill b32 cis 
	| d4 r d16 c b c 
	| b8. a16 g a b c d e f g 
	| e8. d16 c4 c16 bes! a bes 
	| a8. g16 f g a bes c d es f 
	| d4 bes'16 a g a bes g a bes 
	| bes8 c, bes'16 a g a bes g a bes 
% Takt 40
	| bes8 c, bes'16 as g as bes g as bes 
	| as8 c, as'16 g f g as f g as 
	| as8 b, as'16 g f g g f e f 
	| e8 c16 b c d e f e f g a 
	| bes8 c,16 b c bes' a g a g f e 
	| f e f g f e f g c,8 e 
	| f4 c a 
	| f2 c'4 
	| d16 e f d bes c d bes g a bes g 
	| e f g e c2 
% Takt 50	
	| g''16 a bes g e f g e bes c d bes 
	| g a bes g e d' c bes a f' e d 
	| c8 bes16 a g4. f8 
	| f2.\bar "|." 

}

