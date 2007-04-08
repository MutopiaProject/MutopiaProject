% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

violinPartIII = \relative c' {
    \key f \major
    \time 3/2 

% \set Staff.minimumVerticalExtent = #'(-7 . 7)
\once \override TextScript #'padding = #4
        
	\tag #'vllayout \pageBreak
	| d'4^\markup { \hspace #-13 \large \bold "Largo" } e f g a bes
	| cis,2 d~ d8 d e f 
	| g g a bes bes bes a g g g f e
	| e f a f d2 a'8 fis g a 
	| c,4 d8 es es4 d8 cis d d, d' c
	| bes1 a2
	| d8 cis d f e f g f e d cis! d 
	| cis1.\bar ":|:"
	| a4 b cis d e f
	| g2. f8 e f4 g8 a 
% Takt 10	
	| bes4 g a f e f
	| g2 c, a'4. \times 2/3 {g16 fis g}
	| fis4. d8 g4. d8 a'4. d,8 
	| bes'4. fis8 g a bes a g f e f 
	| e4. c8 f4. c8 g'4. c,8 
	| a'4. e8 f g a g f es d es 
	| es4. fis8 g4. a8 bes4. cis,8 
	| d4. e8 f4. g8 a4. a,8
	| bes4. cis8 d4. e8 f g a bes
	| cis, b a b cis d e g, bes4 a8 g 
% Takt 20	
	| f e f d' <a, e' d'>2 cis'4. d8
	| d1. \bar ":|"
}
