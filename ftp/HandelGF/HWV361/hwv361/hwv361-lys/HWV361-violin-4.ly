% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

violinPartIV = \relative g' {
    \key a \major
    \time 12/8 

	\set Staff.minimumVerticalExtent = #'(-7 . 7)
	\once \override TextScript #'padding = #4

	| e'4^\markup { \hspace #-14 \large \bold "Allegro" } (a,8) gis4 (fis'8) e4 (a,8) gis4 (fis'8)
	| e d cis b cis a gis4. r8 r e'
	| fis gis a e4 (e,8) fis gis a e4 (a8)
	| b cis d fis,4 (d'8) e,4 (d'8) b'4 (d,8) 
	| cis e a b, a' gis a, cis fis b, e d
	| cis b a e a gis a4. r8 r cis 
	| b4. r8 r e a,4. r8 r a'
	| gis a gis fis gis e dis4. r8 r b'
	| b,4.~ b8 e16 (fis gis8) b,4.~ b8 gis16 (a b8)
	| b4.~ b8 e16 (fis gis8) b,4.~ b4 b'8	
% 10	
	| cis,8 dis e fis gis a b, cis dis e fis gis
	| a, b gis a b gis a4.~ a4 fis'8
	| gis, b e dis cis b 
	<< { e e e e e e | e e e e e e } \\ { e e e e e e | e e e e e e } >> cis'4.~ cis4 b8 
	| a gis fis e dis cis b a gis a gis fis
	| gis b e fis, e' dis e4. r4 r8 \bar ":|:" 
	| \repeat volta 2 {  b'4 (e,8) dis4 (cis'8) b4 (e,8) dis4 (cis'8)
	| b a gis fis gis e dis4. r4 r8
	| cis'4 (fis,8) eis4 (d'8) cis4 (fis,8) eis4 (d'8)
	| cis b a gis a fis eis4. r8 r cis8
% 20
	| fis gis a gis cis, b a gis fis eis gis cis
	| fis gis a gis cis, b a gis fis eis gis cis
	| d fis d cis fis cis b fis' b, a fis' a,  
	| d fis, d' cis fis, cis' b cis d cis gis' b
	| a gis fis cis fis eis fis4.~ fis8 g a
	| g fis e b e dis e4.~ e8 fis g
	| fis e d a d cis d 
	<< { d, d d d d | d d d d d d } \\ { d d d d d | d d d d d d } >> d d' b' d, cis b
	| cis d e b cis a gis4. r8 r a' 
	| e4.~ e8 a16 (b cis8) e,4.~ e8 cis16 (d e8)
% 30	
	| e,4.~ e8 a16 (b cis8) e,4.~ \stemUp e8 cis'16 (d e8)
	| fis a, fis' e a, e' d gis b d, cis b 
	| cis b a gis fis e 
	<< { a a a a a a | a a a a a a } \\ { a a a a a a | a a a a a a } >> fis'4.~ fis8 gis a 
	| e d cis b cis a gis fis e d cis b 
	| } \alternative { {cis e a b, a' gis a4. r4 r8 \bar ":|" | }  { cis,8 e a b, a' gis a2. \bar "|." } }

}