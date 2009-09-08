#(set-global-staff-size 15.5) 

\version "2.12" 

global = { \key a \major \time 4/4 \tempo 4=60 } 

mv = \markup{\italic "mezza voce"} 

SGreis = \relative a'' { 
e4 \oneVoice r8 \voiceOne cis d b a gis 
a4 \oneVoice r r2 \voiceOne 
d4 \oneVoice r8 \voiceOne b cis4 \oneVoice r8 \voiceOne a 
b4 \oneVoice r r2 \voiceOne 
a8 a a a a8. gis16 gis4 
e'8 e e e e8. d16 d4 
d4. cis8 b[ a] b[ cis] 
a4 \oneVoice r r2 \voiceOne 
r2 d8 d d d 
d8. cis16 cis4 cis8 cis d d 
d4 cis8 cis b a b cis 
a4 r r2 
b4 \oneVoice r8 \voiceOne e8 dis e fis dis 
e4 \oneVoice r r \voiceOne fis8 e 
d8 cis b4 cis8 e cis a 
e4\oneVoice r r r8 \voiceOne e8\p
a2 a8 g f e 
f2 \oneVoice r4 \voiceOne f
e2 e8 e e e 
a2 \oneVoice r4 \voiceOne d8.\f d16 
d8 fis, g a8 d,4 \oneVoice r4 \voiceOne 
fis'4 d8 \oneVoice r8 r2 \voiceOne 
d8 d cis a e'2\fermata 
cis4.^\mv cis8 cis8. cis16 cis8 cis 
cis2. \oneVoice r4 \voiceOne 
d4. d8 d8. d16 d8 d 
d2 d~\< 
d4\sf cis b8[\p a] b[ cis] 
a4 r r2 
a4.\p a8 a8. a16 a8 a 
a2. r4 
fis'4.\f fis8 fis8. fis16 fis8 e8 
dis2 d~\p\< 
d4\sf cis b8[\p a] b[ cis] 
a4 r b8 cis d b 
a4 r b8 cis d b 
e1~ 
e4 e8\p e e8. e16 e8 e 
e2.\< d4~\! 
d4\sf cis \acciaccatura cis8\p b8[ a] b[ cis] 
a2\fermata \oneVoice r2 \voiceOne  
\bar "|." 
} 

AGreis = \relative a { 
cis4 s8 e fis d cis b 
a4 s2. 
gis'4 s8 gis a4 s8 a 
gis4 s2. 
r2 d8 d d d 
d8. cis16 cis4 fis8 fis fis fis 
gis8. gis16 a4 a8 a gis gis 
a4 s2. 
a8 a a a a8. gis16 gis4 
g8 g g g g8. fis16 fis4 
gis!4 a a gis 
a4 r8 e e4 e8[ a] 
gis4 s8 gis8 fis gis a fis 
gis4 s2 gis8 a 
b8 a gis4 a8 gis a a 
gis4 s2 s8 e8 
c2 cis8 cis cis cis 
d2 s4 d4 
c2 b8 b b b 
a2 s4 d'8. d16 
d8 fis, g a d,4 s 
d'4 b8 s s2 
b8 b a a gis2 
a4. a8 a8. a16 a8 a 
a2. s4 
fis4. fis8 fis8. fis16 fis8 fis 
fis2 b2~ 
b4 a a gis 
a4 r8 cis, d[ e] fis[ gis]
cis,4. cis8 cis8. cis16 cis8 cis 
cis2. s4 
a'4. a8 a8. a16 a8 a 
a2 b~ 
b4 a a gis 
a4 s gis4. gis8 
a8 b cis a gis2 
a8 b cis a gis a b gis 
a4 a8 a gis8. gis16 g8 g 
g2 fis4 fis 
gis4( a2) gis4\p
a2 s2 
\bar "|." 
} 

TGreis = \relative a { 
a4 \oneVoice r r2 \voiceOne 
e'4 \oneVoice r8 \voiceOne cis8 fis e d cis 
b4 \oneVoice r r2 \voiceOne 
b4 \oneVoice r8 \voiceOne cis8 d4 \oneVoice r8 \voiceOne e8 
cis4 \oneVoice r4 \voiceOne b8 b b b 
b8. a16 a4 a8 a b b 
b8. b16 a4 d8 cis d e 
cis4 \oneVoice r8 \voiceOne a8 gis[ a] gis[ fis] 
e4 cis'4 b8 b b b 
b8. ais16 ais4 ais8 ais b b
b4 a8 cis d cis d e 
cis4 \oneVoice r8 \voiceOne cis8 b[ cis] b[ dis] 
e4 \oneVoice r r2 \voiceOne 
gis,4. a8 b cis d e 
fis4 d8 d cis b cis4 
b8 gis a cis <b e>4 \oneVoice r8 \voiceOne e,8 
e2 e8 e f g 
f2 \oneVoice r4 \voiceOne a4 
a2 a8 a gis gis 
a2 \oneVoice r4 \voiceOne d8. d16 
d8 fis, g a8 d,4 \oneVoice r4 
r2 \voiceOne e'4 cis8 \oneVoice r8 \voiceOne 
e8 e e e e2 
e4. e8 e8. e16 e8 e 
e2. \oneVoice r4 \voiceOne 
d4. d8 d8. d16 d8 d 
d2 e~ 
e4 e d8[ cis] d[ e] 
cis4 r4 r2 
fis,4.^\markup {\large ein} fis8 fis8. fis16 fis8 fis 
fis2. r4 
d'4. d8 d8. d16 d8 d 
b2 e~ 
e4 e d8[ cis] d[ e] 
cis4 r4  d4. d8 
cis8 d e cis d2 
cis8 d e cis d cis b d 
e4 e8 e d8. d16 cis8 cis 
cis4 a2 b4 
b4 a8 cis d[\p cis] d[ e] 
cis2\fermata \oneVoice r2 \voiceOne 
\bar "|." 
} 

BGreis = \relative a, { 
a4 s2. 
cis'4 s8 a d cis b a 
e4 s2. 
e4 s8 a b4 s8 gis 
a4 s e8 e e e 
a,8. a16 a4 d8 d d d 
e8. e16 e4 e8 e e e 
a,4 s8 a'8 gis[ fis] e[ d] 
cis4 r4 r2 
e8 e e e e8.[ d16] d8 b 
e4. e8 e4. e8 
a,4 s8 a8 gis[ a] gis[ fis] 
e4 s2. 
e'4. fis8 gis a b cis 
d4 e,8 e e e e4 
e'8 d cis a <gis e>4 s8 e8\p 
a,2 a8 a a a 
d2 s4 d4 
e2 e8 e e e 
a,2 s4 d'8.\f d16 
d8 fis, g a d,4 s 
s2 cis'4 a8 s 
gis8 gis a a e2\fermata 
a4._\mv a8 a8. a16 a8 a 
a2. s4 
b4. b8 b8. b16 b8 b 
b2 gis\< 
a2\sf e4\p e 
a4 r8 a, b[ cis] d[ e] 
fis4\p r4 r2 
r1 
d4.\f d8 d8. d16 d8 d 
fis2 gis\p\< 
a2\sf e4\p e 
a1~ 
a1~ 
a4 a8 a b cis d b 
cis4 c8\p c b8. b16 bes8 bes 
a4 cis,8 cis d4 d8 d 
e2.\sf e4\p 
a2\fermata s2 
\bar "|." 
} 

LGreisSopran = \lyricmode { 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
we -- nig nur er -- qui -- cket mich, 
we -- nig nur er -- qui -- cket mich 
Scherz und Re -- ben -- saft, 
we -- nig nur er -- qui -- cket mich, 
we -- nig nur er -- qui -- cket mich 
Scherz und Re -- ben % -- saft. 
\skip 4 

\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 

\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 

\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 

Him -- mel ha -- be Dank, 
Him -- mel ha -- be Dank, __ 

ein har -- mo -- ni -- scher Ge -- sang 
war __ mein Le -- bens -- lauf. 
} 

LGreisAlt = \lyricmode { 
Hin ist al -- le mei -- ne Kraft, 
alt und schwach bin ich, 
we -- nig nur er -- qui -- cket mich, 
we -- nig nur er -- qui -- cket mich 
Scherz und Re -- ben -- saft, 
we -- nig nur er -- qui -- cket mich, 
we -- nig nur er -- qui -- cket mich 
Scherz und Re -- ben -- saft. 

Ach, hin, ach, hin ist al -- le mei -- ne Kraft, 
mei -- ner Wan -- gen Rot 
ist hin -- weg ge -- flohn; 
der Tod klopft an mei -- ner Tür, 
der Tod klopft an mei -- ner Tür, 

un -- er -- schreckt mach ich ihm auf, 
Him -- mel, Him -- mel ha -- be Dank! 
Ein har -- mo -- ni -- scher Ge -- sang, 
ein har -- mo -- ni -- scher Ge -- sang 
war __ mein Le -- bens -- lauf, 

mein Le -- bens -- lauf, 

har -- mo -- ni -- scher Ge -- sang 
ein har -- mo -- ni -- scher Ge -- sang 
war __ mein Le -- bens -- lauf, 

ein har -- mo -- ni -- scher Ge -- sang 
war mein Le -- bens-, 
war mein Le -- bens -- lauf, 

ein har -- mo -- ni -- scher Ge -- sang 
war mein Le -- bens -- lauf. 
} 

LGreisTenor = \lyricmode { 
\skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 
ach, we -- nig nur er -- qui -- cket mich, 
we -- nig nur er -- qui -- cket mich 
Scherz und Re -- ben % -- saft. 
\skip 4 

\skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 

\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
Him -- mel, 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 

\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 

\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 

\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
war mein Le -- bens-, mein Le -- bens -- lauf. 
} 

LGreisBass = \lyricmode { 
Hin, 
hin ist al -- le mei -- ne Kraft, 
alt und schwach bin ich, 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
ach, we -- nig nur, 
we -- nig nur er -- qui -- cket mich 
Scherz und Re -- ben -- saft. 

Ach, hin, ach, 
Hin, hin ist al -- le mei -- ne Kraft, 
mei -- ner Wan -- gen Rot 
ist hin -- weg ge -- flohn; 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 

\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
war mein Le -- bens -- lauf, 

mein Le -- bens -- lauf, 

\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
war mein Le -- bens -- lauf, __ 

ein har -- mo -- ni -- scher Ge -- sang, 
ein har -- mo -- ni -- scher Ge -- sang 
war mein Le -- bens-, mein Le -- bens -- lauf. 
} 

%--------------------

\header { 
kaisernumber = "385" 
comment = "" 
footnote = "" 
 
title = "Der Greis" 
subtitle = "" 
composer = "Joseph Haydn (1732–1809), 1803" 
opus = "" 
meter = \markup {Molto Adagio} 
arranger = "" 
poet = "Johann Wilhelm Ludwig Gleim (1719–1803), 1756" 
 
mutopiatitle = "Der Greis" 
mutopiacomposer = "HaydnFJ" 
mutopiapoet = "J. W. L. Gleim (1719–1803)" 
mutopiaopus = "" 
mutopiainstrument = "Choir (SATB)" 
date = "1803" 
source = "Leipzig : C. F. Peters, 1915" 
style = "Romantic" 
copyright = "Creative Commons Attribution 3.0" 
maintainer = "Klaus Rettinghaus" 
lastupdated = "2009/September/1" 
 
 footer = "Mutopia-2009/09/08-986"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
} 

\score {
{
\context ChoirStaff 
	<< 
	\context Lyrics = versesopran 
	\context Staff = women 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G" 
			\context Voice = Sopran { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \SGreis } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AGreis } 
				>> } 
			>> 
	\context Lyrics = versealt 
	\context Lyrics = versetenor 
	\context Staff = men 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TGreis } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BGreis } 
				>> } 
		>> 
	\context Lyrics = versebass 

	\context Lyrics = versesopran \lyricsto Sopran \LGreisSopran 
	\context Lyrics = versealt \lyricsto Alt \LGreisAlt 
	\context Lyrics = versetenor \lyricsto Tenor \LGreisTenor 
	\context Lyrics = versebass \lyricsto Bass \LGreisBass 
	>>
}

\layout {
indent = 0.0\cm
\context {\Score 
\remove "Bar_number_engraver"
\override MetronomeMark #'transparent = ##t 
\override DynamicTextSpanner #'dash-period = #-1.0 
}
\context {\Staff 
\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1) 
}
}

\midi {
}

}
