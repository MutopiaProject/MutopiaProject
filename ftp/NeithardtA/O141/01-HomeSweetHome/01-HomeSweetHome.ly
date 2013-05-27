\include "deutsch.ly" 

\version "2.6.0" 

global = { \key f \major \time 2/4 } 

SHome = \relative c'' 
	{ 
	\partial 8 
	f,8 a8.[ b16] b8. c16 c4 a8 
	a b8.[ a16] b8 g a4. 
	f8 a8.[ b16] b8. c16 c4 a8 
	c b8.[ a16] b8 g f4. 
	c'8 f8.[ e16] d8. c16 c4 a8 
	c b8.[ a16] b8 g a4. 
	c8\< f8.[\! e16] d8. c16 c4 a8 
	c c8 b4 g8 f2 
	\once \override TextScript #'extra-offset = #'( 3 . -0.5 ) 
	c'2^\markup {\italic espress.}\pp b4 g f8^. r g^. r a4. 
	c16[\< f] f8.\! e16 d8. c16 c4(\> a8) 
	c\pp c^\markup {\italic ritard.} d b g f4. 
	\bar "|." 
	} 

AHome = \relative c' 
	{ 
	\partial 8 
	f8 f4 f8. f16 f4 f8 
	f f4 e8 e f4. 
	f8 f4 f8. f16 f4 fis8 
	a g8.[ fis16] g8 e f4. 
	f8 f4 f8. f16 f4 f8 
	a g8.[ fis16] g8 e f4. 
	f8 f4 f8. f16 f4 f8 
	fis g8 g4 e8 c2 
	c d4 d c8 r e r f4. 
	f8 f f f8. f16 f4( f8) 
	f e e e e f4. 
	\bar "|." 
	} 

THome = \relative c' 
	{ 
	\partial 8 
	a8 c8.[ d16] d8. a16 a4 c8 
	cis d4 c!8 c c4. 
	a8 c8.[ b16] b8. a16 a4 a8 
	d d4 c8 b a4. 
	a8 d8.[ c16] b8. a16 a4 c8 
	c c4 c8 c c4. 
	a8 d8.[ c16] b8. a16 a4 c8 
	es d8 d4 c16[ b] a2 
	a g4 b a8 r c r c4. 
	a8 d8. c16 b8. a16 a4( c8) 
	a g g g b a4. 
	\bar "|." 
	} 

BHome = \relative c 
	{ 
	\partial 8 
	f8 f4 f8. f16 f4 f8 
	f b,4 c8 c f4. 
	f8 f8.[ d16] d8. a16 a4 d8 
	fis, g4 c8 c f4. 
	f8 f4 f8. f16 f4 f8 
	f c4 c8 c f4. 
	f8\< f4\! f8. f16 f4 f8 
	a, b8 g4 c8 << f2 f, >>
	f'\pp b,4 b c8_. r c_. r f4. 
	f8\< f\! f f8. f16 f4(\> f8) 
	f\pp c c c c << c4. f, >> 
	\bar "|." 
	} 


LHome = \lyricmode {
	Be -- rau -- schen auch Freu -- den und Glanz un -- sern Sinn, 
	doch stets zieht die Sehn -- sucht zur Hei -- mat uns hin; 
	den Reiz, den die Hüt -- te der Hei -- mat ent -- hält, 
	ihn beut so ent -- zü -- ckend kein Ort auf der Welt. 
	O Hei -- mat, sü -- ßer Ort, 
	o wär' ich wie -- der dort, 
	o wär' ich wie -- der dort! 
}

%--------------------

\header {
 dedication = "" 
 title = "Heimat, süßer Ort" 
 subtitle = "" 
 subsubtitle = "" 
 composer = "Sir Henry Rowley Bishop (1786-1855)" 
 opus = "op. 141, Nr. 1" 
% piece = "Nr. 1" 
 meter = "Andante Larghetto" 
 instrument = "" 
 arranger = "August Neithardt (1793-1861)" 
 poet = "John Howard Payne (1791-1852)" 
 texttranslator = "Johann Christoph Grünbaum (1785-1870)" 

 mutopiatitle = "Heimat, süßer Ort"
 mutopiacomposer = "NeithardtA"
 mutopiapoet = "J. H. Payne (1791-1852)"
 mutopiaopus = "O 141, 1"
 mutopiainstrument = "Voice, (SATB)"
 date = "1850"
 source = "Schlesinger"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2005/August/3"

 footer = "Mutopia-2005/08/06-577"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
  
\score { 
\context ChoirStaff 
	<< 
	\context Staff = boys 
		<< 
			\clef "G" 
			\context Voice = Sopran { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \SHome 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\global \AHome 
				>> } 
			>> 
	\context Lyrics = verse 
	\context Staff = men 
		<< 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \THome 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				\global \BHome 
				>> } 
		>> 
	\context Lyrics = verse \lyricsto Sopran \LHome 
	>> 

\midi { 
 \tempo 4=48 
} 

\layout { 
	\context { 
		} 
	} 
} 
