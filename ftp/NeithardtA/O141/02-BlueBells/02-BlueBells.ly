\include "deutsch.ly" 

\version "2.6.0" 

global = { \key es \major \time 2/4 } 

SBells = \relative c'' 
	{ 
	\partial 8 
	b8\p es4 f16[ es] d16[ c] b4 c8[ d16 es] g,8 g as f es4 \oneVoice r8 
	\voiceOne b'16\f as g8 es g b es4 c8 d16 es d8 b c a b4.\> 
	c16[\! d] es4\p d8 c b4 c8 d16[ es] g,8 g as f es4 \oneVoice r8^\fermata 
	\bar "|." 
	} 

ABells = \relative c' 
	{ 
	\partial 8 
	b'8 g4 as8 as g4 as8[ ges] g! es d d es4 s8 
	f16 f es8 es es f f4 f8 f16 f f8 g g f16[ es] d4 
	es8[ f] es4 es8 es es4 es8 es es es es d b4 s8 
	\bar "|." 
	} 

TBells = \relative c' 
	{ 
	\partial 8 
	b8 b4 c8 d es[ des] c4 b8 b f as g4 s8 
	b16 b b8 g b b a4 a8 b16 c b8 d c c b[ f] 
	g[ as] g4 b8 as g4 as8 b16[ c] b8 g c b16[ as] g4 s8 
	\bar "|." 
	} 

BBells = \relative c 
	{ 
	\partial 8
	b'8\p es,4 es8 es es4 as,8[ a] b b b b es4 \oneVoice r8 
	\voiceTwo d16\f d es8 es es d c4 f8 f16 f b8 g es f b,4.\> 
	b8\! es4\p es8 es es4 as,8 as b c f, b es,4 \oneVoice r8_\fermata 
	\bar "|." 
	} 

LBells = \lyricmode {
	„Wo -- hin zog, o zog dein Hoch -- lands -- bursch da -- von?”  	In den Kampf mit Frank -- reichs Sohn für Kö -- nig George auf sei -- nem Thron. 
	Und o, wünscht mein Herz, wär' er doch zu Hau -- se schon!
}

%--------------------

\header
	{
 dedication = "" 
 title = "Die blauen Glöckchen von Schottland" 
 subtitle = "" 
 subsubtitle = "" 
 composer = "" 
 opus = "op. 141, Nr. 2" 
% piece = "Nr. 2" 
 meter = "Andante" 
 instrument = "" 
 arranger = "August Neithardt (1793-1861)" 
 poet = "" 
% texttranslator = "Johann Christoph Grünbaum (1785-1870)" 

 mutopiatitle = "Die blauen Glöckchen von Schottland"
 mutopiacomposer = "NeithardtA"
 mutopiapoet = ""
 mutopiaopus = "O 141, 2"
 mutopiainstrument = "Voice, (SATB)"
 date = "1850"
 source = "Schlesinger"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2005/August/3"

 footer = "Mutopia-2005/08/06-576"
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
				\global \SBells 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\global \ABells 
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
				\global \TBells 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				\global \BBells 
				>> } 
		>> 
	\context Lyrics = verse \lyricsto Sopran \LBells 
	>> 

\midi { 
 \tempo 4=76 
} 

\layout { 
	\context { 
		} 
	} 
} 

