% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

violinPartI = \relative g {
    \key a \major
    \time 4/4 

	\once \override TextScript #'padding = #4 

	| cis'4.^\markup { \hspace #-13 \large \bold "Andante" } b16.^\trill a32 e'4. d16 cis 
	| fis4~ fis16. fis32 gis16. a32 gis8. fis16 e8 d16.^\trill cis32
 	| cis4. b16.\trill a32 a4. fis'16 a,
 	| gis8 e'16 gis, fis8 dis' e cis d4~ 
	| d8 cis16 b ais8 fis' d b cis4~
	| cis8 b32 cis d16 b8.\trill a32 b cis8 b16 a fis'8. cis16
	| b8 d16 cis a8. gis16 gis8 cis,8 cis'4~ 
	| cis8 fis16 a, b8. cis16 cis4 gis'~ 
	| gis8 cis, fis a bis, a' gis fis 
	| e8. dis16 dis8.\trill cis16 cis4 r
%10

	| cis4. b16.\trill a32 e'4. d16 cis
	| fis4~ fis16. fis32 gis16. a32 gis8 fis16 e b'4~ 
	| b8 a16 gis fis8 e dis8. e16 a8. b16
	| gis8. fis16 fis8.\trill e16 e4 e~ 
	| e8 d16 cis b8 a gis fis16 e a'4~
	| a8 gis16 fis e8 d cis b16 a fis'4~
	| fis8 e a d, d cis e4~
	| e8 d d cis fis b,4 gis'8 
	| a a,16. gis32 a8 fis' cis8. b16 b8.\trill a16 
	| a8 fis'16. e32 e4 r8 a16. gis32 gis4
	| r8 cis,16. b32 b8 e a^\markup{ \large \bold "Adagio" } cis, dis8. e16
	| e1 \bar "|."

}

