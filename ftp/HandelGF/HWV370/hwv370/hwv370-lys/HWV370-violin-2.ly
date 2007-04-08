% -*- mode: LilyPond; coding: utf-8; -*-

% \tag #'vllayout \noPageBreak

\version "2.6.4"

violinPartII = \relative c' {
    \key f \major
    \time 4/4 

	\once \override TextScript #'padding = #3

	| \partial 8 c'8^\markup { \hspace #-13 \large \bold "Allegro" } 
	| f16 g a g f8 c g'16 a bes a g8 c,  
	| a' g16 f e8 f g16 f e d c8 c 
	| f16 e f g a8 c, d e f f,
	| bes g'16 f e d c bes a4 r8 c
	| f16 e f g a8 c, b a' g f
	| e c16 d e f g a b,8 a' g f
	| e f16 e d8 c fis g16 fis g8 b,
	| c e, d b' c c, r \bar ":|:" c'
	| c16 f e f c f e f d f e f d f e f 
	| c f a, f' c f a, f' d es d c bes8 d
% Takt 10	
	| d16 g f g d g f g e g f g e g f g 
	| d g b, g' d g b, g' e f e d c8 e
	| e16 a g a e a g a f a g a f a g a
	| e a cis, a' e a cis, a' f g f e d8 a
	| d16 e f g a8 d, cis bes' a g 
	| f d16 e f g a bes cis,8 bes' a g 
	| f16 e d c! bes8 a gis f' e d
	| c16 b c a' b, a b gis' a,4~ a16 g! f e
	| f8 a~ a16 g f e d8 b' r d, 
	| c a' b, gis' a,4 r8 e''
% Takt 20
	| << {s16 e[ s e] s e[ s e] s e[ s e] s e[ s e] } \\ { c16[ s e] s b[ s e] s c[ s e] s b[ s e] s } >>
	| c a cis e a g f e f8 d r a
	| << { f16[ s a] s e[ s a] s f[ s a] s e[ s a] s } \\ { s16 a[ s a] s a[ s a] s a[ s a] s a[ s a] } >>
	| f d fis a d c bes a bes8 g r d 
	| g16 a bes c d8 g, fis es' d c 
	| bes g16 a bes c d es fis,8 es' d c
	| bes d16 c bes a g f! e!8 d' c bes
	| a f16 g a bes c d e,8 d' c bes
	| a16 f' e f c f e f d f e f c f e f 
	| d f e f c f e f bes, f' e f a, f' e f 
% Takt 30	
	| d f e f c f e f bes, f' e f a, f' e f 
	| bes, f' e f c8 e f f, r c'
	| f16 g a g f8 c g'16 a bes a g8 c,
	| a' g16 f e8 f g16 f e d c8 c 
	| f16 g as g f8 c g'16 as bes as g8 c,
	| as' g16 f e8 f g16 f e d c8 c16 bes
	| as8 c f, des' e,! des' c bes 
	| as f16 g as bes c des e,!8 des' c bes
	| as f16 g as8 b c e, f b,
	| c4 e f r16 f' e f 
% Takt 40	
	| d f e f d f e f c f e f c f e f 
	| d f e f d f e f c f e f c f e f
	| d8 bes' c, a' bes, g' a, f' 
	| g,4 e' f,4. \bar ":|"
	
}
