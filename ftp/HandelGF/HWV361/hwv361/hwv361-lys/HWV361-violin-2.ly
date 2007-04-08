% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

violinPartII = \relative g {
    \key a \major
    \time 4/4 

	\once \override TextScript #'padding = #3

	| a''2^\markup { \hspace #-13 \large \bold "Allegro" } e
	| d4 cis b8 cis16 d e8 d 
	| cis a cis d e a, a'4~
	| a8[ gis] gis fis16 e dis8 b b b \tag #'vllayout \noPageBreak
	| cis dis e2 dis4 \tag #'vllayout \break
	| e r8 e, fis gis16 a b8 a 
	| gis8[ e]  a b16 cis d8 fis, gis d' 
	| cis( a') a,( a') b,( g') cis,( g') \tag #'vllayout \noPageBreak
	| fis gis!16 a b8 a gis [e] d cis16 b
	| cis8 d16 cis b8 a gis e' e e 
% 10
	| fis gis a2 gis4~ 	
	| gis  fis2 eis4 \tag #'vllayout \noPageBreak
	| fis8 gis a cis, dis( a')  b,( a') \tag #'vllayout \pageBreak
	| g e16 fis g8 b, cis( g') a,( g')
	| fis e16 d cis8 b ais [fis'] e dis16 cis
	| dis8 [b] a gis16 fis <gis e'>2 
	| b a4 gis  
	| fis8 gis16 a b8 a gis b16 a gis b fis b 
	| gis b fis b gis b fis b gis8 e'16 d cis e b e 
	| cis e b e cis e b e cis8 a'16 gis fis a, e' a, \tag #'vllayout \break
% 20
	| fis' a, e' a, fis' a, e' a, fis'8 b16 a gis b, fis' b, 
	| gis' b, fis' b, gis' b, fis' b, gis'8 cis16 b a cis, gis' cis
	| a cis, gis' cis, a' cis, gis' cis, a' a b cis d8 cis 
	| b16 b cis d e8 d cis16 e, b' e, cis' e, b' e,
	| cis'8 d16 cis b8 a gis gis16 e' gis, e' gis, e'
	| fis, e' fis, e' fis, e' fis, e' fis, d' fis, d' fis, d' fis, d'
	| e, d' e, d' e, d' e, d' e, cis' e, cis' e, cis' e, cis'
	| d, cis' d, cis' d, cis' d, cis' d, b' d, b' d, b' d, b' 
	| cis, b' cis, b' cis, b' cis, b' cis, a' cis, a' cis, a' cis, a' \tag #'vllayout \break
	| b, a' b, a' b, a' b, a' gis a b a gis fis e d 
% 30	
	| cis d e d cis b a gis fis cis' a' gis fis e d cis 
	| b cis d cis b a gis fis gis8 e r4 \tag #'vllayout \break
	| << 
	  { a'2 e 	| d8 r cis4 b8 cis16 d e8 d | cis a r4 e'2               | b a4 } \\
	  { r2 r8 e e e | fis gis a4~ a gis8 r      | a r d4~ d8 cis16 b cis8 a~ | a gis16 fis gis8 fis e[ fis] }
	  >> <b, gis'>4 \tag #'vllayout \break
	| fis'8 gis16 a b8 a gis e'16 d cis e b e
	| cis e b e cis e gis, e' a,8 b cis b16 a
	| b8 cis16 d e8 fis16 gis a8 b16 cis d8 d 
	| e,16 d' e, d' e, cis' e, cis' d, cis' d, cis' d, b' d, b'
% 40 
	| cis, b' cis, b' cis, a' cis, a' b, a' b a gis fis gis e
	| fis8 gis <<
	  { a4~ a g~       | g  fis e2 \tag #'vllayout \break   | e8 r b'4~ b ais  | b8 a16 gis a8 fis gis e, e e  | r4 r8 a b cis d4 } \\
	  { r8 a b cis d b | cis a d4~ d cis8 b | ais fis d'4 cis2 | b4 r r2 			   | fis8 gis a4 a4. gis8 } 
	  >>
	| <a cis a'>2 <gis b e> 
	| << { d'4 r8 a'~a4 gis8.^\trill fis32 gis } \\ { r4 cis,4 b b8 r  } >>
	| a'16 a, gis' a, fis' a, e' a, d a cis a b d, a' d,  
	| e d' gis d e, d' b' d, e, d' gis d e, d' b' d,
	| gis4.^\trill fis16 gis a8 gis16 fis e8 d 
	| cis4 b8.^\trill a16 a2 \bar "|."
	
}
