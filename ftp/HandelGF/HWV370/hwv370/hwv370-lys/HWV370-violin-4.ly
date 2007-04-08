% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

violinPartIV = \relative c' {
    \key f \major
    \time 4/4 

% 	\set Staff.minimumVerticalExtent = #'(-7 . 7)
	\once \override TextScript #'padding = #4
	\set tupletSpannerDuration = #(ly:make-moment 1 4)
	
	| \partial 8 c'8^\markup { \hspace #-13 \large \bold "Allegro" } 
	| \times 2/3 { f e f f e f g f g } c,8. c16
	| \noTupletNum \times 2/3 { g'8 f g g f g a g a } c,8. c16
	| \times 2/3 { a'8 g a  a g a } bes8. c,16 \times 2/3 { bes'8 a g }
	| \times 2/3 { a bes a g a f e f g } c,8. c16
	| \times 2/3 { f8 e f } c8. c16 \times 2/3 { f8 e f } f,8. f16
	| \times 2/3 { es'8 d es } f,8. f16 \times 2/3 { es'8 d c } d4
	| \times 2/3 { bes'8 a bes } c,8. a'16 \times 2/3 { bes,8 a bes } g'8. bes,16
	| \times 2/3 { a8 c f } g,8. e'16 f4 f,8. a'16
	| \times 2/3 { a8 g f f e d d c b } b8. g'16
	| \times 2/3 { g8 f e e d c c b a } a8. f'16
% Takt 10	
      	| \times 2/3 { f8 e d d c b b a g g f e }
	| e8. c'16 d,8. b'16 c4 c,8. g'16
	| \times 2/3 { c8 b c d c d e d c } g8. g16
	| \times 2/3 { d'8 c d e d e f e d } g,8. g16
	| \times 2/3 { e'8 d e f e f g f g } g,8. g16
	| \times 2/3 { f'8 e d e d c b c d } g,8. g'16
	| \times 2/3 { g8 f e e d c c b a } a8. a'16
	| \times 2/3 { a8 g f f e d d c b } b8. d16
	| \times 2/3 { d8 c b b a g g f e } e8. c'16
	| d,8. c'16 b8.^\trill a32 b c4 c,8 \bar ":|:" g'
% Takt 20
	| \times 2/3 { c b c c b c d c d } g,8. g16
	| \times 2/3 { d'8 c d d c d } e d c c   
	| \times 2/3 { f e f f e f g f g } c,8. c16
	| \times 2/3 { g'8 f g g f g } a g f a
	| d,8. d16 d8. bes'16 cis,4. e8
	| c!8. c16 c8. a'16 b,4. d8
	| bes8. bes16 bes8. g'16 a,8. a16 \times 2/3 { g'8 f e }
	| \times 2/3 { f e d e d cis } d,4 d'8. e16
	| \times 2/3 { f8 e d } a'8. c,16 b4 g8. a16
 	| \times 2/3 { b8 a g } d'8. f,16 e4 c'8. d16
% Takt 30
	| \times 2/3 { e8 d c } g'8. bes,16 a4 f8. g16
	| \times 2/3 { a8 g f } c'8. es,16 d4 bes'8. c16
	| \times 2/3 { d8 c bes } bes'8. bes16 c,8. c16 \times 2/3 { bes'8 a g }
	| \times 2/3 { a g f } bes8. bes16 c,8. c16 \times 2/3 { bes'8 a g }
	| \times 2/3 { a g f e f g } c,8. c16 \times 2/3 { bes'8 a g }
	| \times 2/3 { a g f e f g } c,4 r
	| \times 2/3 { c'8 a bes c a bes c a fis d fis a }
	| \times 2/3 { d a fis d fis a c bes a } bes4~
	| \times 2/3 { bes8 g a bes g a bes g e c e g }
	| \times 2/3 { c g e c e g bes a g } a4~
% Takt 40
	| \times 2/3 { a8 f g a f g a f c } bes'8. a16
	| \times 2/3 { g8 e f g e f g e c } bes'8. g16
	| \times 2/3 { a8 f g a f g a f c } bes'8. a16
	| \times 2/3 { g8 e f g e f g e c } bes'8. g16
	| \times 2/3 { a8 g f bes a g a g f bes a g }
	| \times 2/3 { as g f bes as g as g f bes as g }
	| \times 2/3 { a g f bes a g a g f bes a g }
	| \times 2/3 { a g f c f e } f4. c8
	| \times 2/3 { c bes a a g f f e d } d8. d'16 \tag #'vllayout \noPageBreak
	| \times 2/3 { d8 c bes bes a g g f e } e8. g'16 
% Takt 50
	| \times 2/3 { g8 f e e d c c bes a } a8. f'16
	| g,4 <g bes e> <f a f'>4. \bar ":|"

}