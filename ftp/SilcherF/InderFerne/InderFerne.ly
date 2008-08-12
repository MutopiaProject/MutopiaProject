#(set-global-staff-size 15.5) 
#(ly:set-option 'point-and-click #f) 

\version "2.10" 

global = { \key a \major \time 3/4 \tempo 4=66 } 

SFerne = \relative a' 
{ 
\partial 4 
a8\mp\< b\! cis4. a8 a fis fis8.[\> e16] e4\! 
e8\< a\! b4. a8 d8. cis16 b2 
b8.\mf fis16 a8.[ gis16] gis4 
b8. fis16 a8.[\> gis16] gis4\! \oneVoice r \voiceOne 
\set crescendoText = \markup { \italic " poco cresc." } 
\set crescendoSpanner = #'dashed-line 
a8.\p\< e16 \acciaccatura gis8 fis e a b\! cis4(\< e\> d)\! 
\setTextDim 
cis8.^\markup{\large\italic{dolce}} cis16 cis8\> a cis b\> a2\! 
\bar "|." 
} 

AFerne = \relative a' 
{ 
\partial 4 
a8 a a4. e8 fis d d8.[ cis16] cis4 
e8 e e4. e8 gis8. a16 gis2 
fis8. fis16 fis8.[ e16] e4 
dis8. fis16 fis8.[ e16] e4 s 
e8. e16 fis8 e cis e a2( fis4) 
e8. a16 a8 e gis gis e2 
\bar "|." 
} 

TFerne = \relative a 
{ 
\partial 4 
cis8 d e4. cis8 d a a4 a 
a8 a gis4. a8 e'8. e16 e2 
dis8. dis16 b4 b 
b8. dis16 b4 b 
d4( cis8.) a16 a8 a a gis a2( b4) 
cis8. e16 e8 cis e d cis2 
\bar "|." 
} 

BFerne = \relative a 
{ 
\partial 4 
a8\mp\< a\! a4. a8 d, fis a4\> a,\! 
cis8\< cis\! d4. cis8 b8. a16 e'2 
b'8.\mf b16 e,4 e 
b8. b'16 e,4\> e4\! r 
\set crescendoText = \markup { \italic " poco cresc." } 
\set crescendoSpanner = #'dashed-line 
a,8.\p\< cis16 d8 cis fis e\! a,4(\< cis\> d)\! 
\setTextDim 
e8._\markup{\large\italic{dolce}}  e16 e8\> e e e\> a2\! 
\bar "|." 
} 


LFerneA = \lyricmode {
\set stanza = "1." 
Nun leb wohl, du klei -- ne Gas -- se, 
nun a -- de du stil -- les Dach! 
Va -- ter, Mut -- ter sahn mir trau -- rig, 
und die Lieb -- ste sah mir nach, __ 
und die Lieb -- ste sah mir nach. 
}

LFerneB = \lyricmode {
\set stanza = "2." 
Hier in wei -- ter, wei -- ter Fer -- ne, 
wie's mich nach der Hei -- mat zieht! 
Lus -- tig sin -- gen die Ge -- sel -- len, 
doch es ist ein fal -- sches Lied, __ 
doch es ist ein fal -- sches Lied. 
}

LFerneC = \lyricmode {
\set stanza = "3." 
An -- dre Städt -- chen kom -- men frei -- lich, 
an -- dre Mäd -- chen zu Ge -- sicht; 
ach, wohl sind es an -- dre Mäd -- chen, 
doch die ei -- ne ist es nicht, __ 
doch die ei -- ne ist es nicht. 
}

LFerneD = \lyricmode {
\set stanza = "4." 
An -- dre Städt -- chen, an -- dre Mäd -- chen, 
ich da mit -- ten drin so stumm! 
An -- dre Mäd -- chen, an -- dre Städt -- chen, 
o, wie ger -- ne kehrt ich um, __ 
o, wie ger -- ne kehrt ich um. 
}

%--------------------

\header {
 kaisernumber = "225"
 comment = ""
 footnote = ""
 
 title = "In der Ferne"
 subtitle = ""
 composer = "Friedrich Silcher (1789–1860), 1855"
 opus = ""
 meter = \markup {Andante \italic {In gehender Bewegung}}
 arranger = "Arrangement by Friedrich Ernst Koch (1862–1927)"
 poet = "Albert Graf Schlippenbach (1800–1886), 1833"
 
 mutopiatitle = "In der Ferne"
 mutopiacomposer = "SilcherF"
 mutopiapoet = "A. Schlippenbach (1800-1886)"
 mutopiaopus = ""
 mutopiainstrument = "Choir (SATB)"
 date = "1855"
 source = "Leipzig : C. F. Peters, 1915"
 style = "Romantic"
 copyright = "Creative Commons Attribution 3.0"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2008/August/1"
 
 footer = "Mutopia-2008/08/12-732"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
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
				{ \global \SFerne } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AFerne } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Lyrics = versefour 
	\context Staff = men 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TFerne } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BFerne } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Sopran \LFerneA 
	\context Lyrics = versetwo \lyricsto Sopran \LFerneB 
	\context Lyrics = versethree \lyricsto Sopran \LFerneC 
	\context Lyrics = versefour \lyricsto Sopran \LFerneD 
	>> 
}

\layout {
indent = 0.0\cm
\context {\Score 
\remove "Bar_number_engraver"
\override MetronomeMark #'transparent = ##t 
\override DynamicTextSpanner #'dash-period = #-1.0 
\override BreathingSign #'text = #(make-musicglyph-markup "scripts.rvarcomma") 
}
\context {\Staff 
\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1) 
}
}

\midi {
\context { \Voice 
\remove "Dynamic_performer" 
}
}

}
