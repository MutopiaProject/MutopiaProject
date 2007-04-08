% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

violinPartIII = \relative g {
    \key a \major
    \time 4/4 

\set Staff.minimumVerticalExtent = #'(-7 . 7)
\once \override TextScript #'padding = #4

	\tag #'vllayout \pageBreak

	| cis4~^\markup { \hspace #-13 \large \bold "Adagio" } \set subdivideBeams = ##t \set Score.beatLength = #(ly:make-moment 1 8) cis16[ fis32 a cis d b32. a64] b4 r
	| cis,8. eis32 gis b[ d cis eis gis b a32. gis64] a4 r
	| fis,8. ais32 cis e [g fis16 d16. cis32] d8 [fis, eis cis'~]
	| \set Score.beatLength = #(ly:make-moment 1 4) cis fis16 d b gis a eis fis8 cis'16 d b8.^\trill cis16 
	| cis1 \bar "|."
}
