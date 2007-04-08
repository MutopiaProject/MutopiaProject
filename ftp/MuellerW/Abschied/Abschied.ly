\include "deutsch.ly" 

#(set-global-staff-size 15.5) 

\version "2.10" 

global = { \key f \major \time 3/4 \tempo 4=72 } 

SHeimatAbschied = \relative f'' 
	{ 
	\partial 4. 
	c8\p h c d4. g,8 b e, f4 \oneVoice r8 \voiceOne 
	c'8 h c e4. d8 c b a4 \oneVoice r8 \voiceOne 
	c8 h c e4.\< c8 d e\! f4.\> 
	a,8\! g a d4. c8 b g f4 \oneVoice r8 
	\bar "|." 
	} 

AHeimatAbschied = \relative f' 
	{ 
	\partial 4. 
	f8 f f f4. f8 e c c4 s8 
	f8 f f g4. e8 f g f4 s8 
	a8 gis a g4. g8 g g f4. 
	es8 es es d4. d8 d e c4 s8 
	\bar "|." 
	} 

THeimatAbschied = \relative f 
	{ 
	\partial 4. 
	a8 gis a b4. b8 g b a4 \oneVoice r8 \voiceOne 
	a8 gis a b4. b8 a g c4 \oneVoice r8 \voiceOne 
	c8 d c b4. b8 b b a4. 
	f8 g f f4. fis8 g b a4 \oneVoice r8 
	\bar "|." 
	} 

BHeimatAbschied = \relative f 
	{ 
	\partial 4. 
	f8\p f f b,4. b8 c c f4 s8 
	f8 f f c4. c8 d e f4 s8 
	f8 f f g4.\< e8 d c\! d4.\> 
	c8\! c c b4. a8 g c f,4 s8 
	\bar "|." 
	} 


LHeimatAbschiedA = \lyricmode {
\set stanza = "1." 
So leb denn wohl, du stil -- les Haus! 
Ich zieh be -- trübt von dir hin -- aus; 
ich zieh be -- trübt und trau -- rig fort, 
noch un -- be -- stimmt, an wel -- chen Ort. 
} 

LHeimatAbschiedB = \lyricmode {
\set stanza = "2." 
So leb denn wohl, du schö -- nes Land, 
in dem ich ho -- he Freu -- de fand! 
Du zogst mich groß, du pfleg -- test mein, 
und nim -- mer -- mehr ver -- geß ich dein. 
} 

LHeimatAbschiedC = \lyricmode {
\set stanza = "3." 
So lebt denn, all ihr Lie -- ben, wohl, 
von de -- nen ich jetzt schei -- den soll! 
Und find ich drau -- ßen auch mein Glück, 
denk ich doch stets an euch zu -- rück. 
} 

%--------------------

\header {
 kaisernumber = "224"
 comment = ""
 footnote = ""
 
 title = \markup { "Abschied von der Heimat" }
 subtitle = ""
 composer = "Wenzel Müller (1767-1835), 1828"
 opus = ""
 meter = \markup {Einfach}
 arranger = "Arrangement by Robert Fuchs (1847-1927)"
 poet = "Ferdinand Raimund (1790-1836), 1828"
 
 mutopiatitle = "Abschied von der Heimat"
 mutopiacomposer = "MuellerW"
 mutopiapoet = "F. Raimund (1790-1836)"
 mutopiaopus = ""
 mutopiainstrument = "Choir (SATB)"
 date = "1910s"
 source = "Leipzig : C. F. Peters, 1915"
 style = "Romantic"
 copyright = "Creative Commons Attribution 2.5"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2006/November/15"
 
 footer = "Mutopia-2006/12/01-627"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
}

\score {
{
\context ChoirStaff 
	<< 
	\context Staff = women 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G" 
			\context Voice = Sopran { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \SHeimatAbschied } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AHeimatAbschied } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Staff = men 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \THeimatAbschied } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BHeimatAbschied } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Sopran \LHeimatAbschiedA 
	\context Lyrics = versetwo \lyricsto Sopran \LHeimatAbschiedB 
	\context Lyrics = versethree \lyricsto Sopran \LHeimatAbschiedC 
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
\context { \Voice 
\remove "Dynamic_performer" 
\remove "Span_dynamic_performer" 
}
}

}
