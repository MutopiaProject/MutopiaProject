\include "deutsch.ly" 

#(set-global-staff-size 17) 

\version "2.8" 

global = { \key c \major \time 3/4 } 

TAFerne = \relative c' 
	{ 
	\override DynamicTextSpanner #'dash-period = #-1.0
	\partial 4 
	a'8\< h cis4.\! a8\> a fis\! fis8.[ e16] e4 
	e8\< a h4.\! a8 d8.\> cis16 h2\!
	h8.\mf fis16 a8.[ gis16] gis4 
	h8. fis16 a8.[ gis16] gis4 \oneVoice r \voiceOne 
	a8.\p e16 \acciaccatura gis8 fis e a h cis4(\< e\> d) 
	\setTextDim 
	cis8.\! cis16 cis8 a cis\> h a2\! 
	\bar "|." 
	} 

TBFerne = \relative c' 
	{ 
	\partial 4 
	c8 c c4. g8 a g f8.[ e16] e4 
	g8 c h4. c8 h8. c16 h2 
	a8. a16 a8.[ g16] g4 
	a8. a16 a8.[ g16] g4 s 
	g8. g16 a8 g c h c4( e d) 
	c8. c16 c8 g h h g2 
	\bar "|." 
	} 

BAFerne = \relative c 
	{ 
	\partial 4 
	e8 f g4. e8 f c c4 c 
	e8 g g4. g8 g8. g16 g2 
	fis8. fis16 g4 d 
	fis8. fis16 g4 d \oneVoice r \voiceOne 
	e8. e16 f8 e g a g4( c a) 
	g8. g16 g8 e g f e2 
	\bar "|." 
	} 

BBFerne = \relative c 
	{ 
	\override DynamicTextSpanner #'dash-period = #-1.0
	\partial 4 
	c8\< c c4.\! c8\> f, a\! c4 c 
	c8\< e f4.\! e8 d8.\> c16 g2\!
	d'8.\mf d16 g4 g, 
	d'8. d16 g4 g, s
	c8.\p c16 c8 c e g <<c,2(\< {s4 s\>}>> f) 
	\setTextDim 
	g8.\! g16 g8 g, g\> g c2\! 
	\bar "|." 
	} 


LFerneA = \lyricmode {
\set stanza = "1. "
Nun leb wohl, du klei -- ne Gas -- se, 
nun a -- de du stil -- les Dach! 
Va -- ter, Mut -- ter sahn mir trau -- rig, 
und die Lieb -- ste sah mir nach, 
und die Lieb -- ste sah mir nach. 
}

LFerneB = \lyricmode {
\set stanza = "2. "
Hier in wei -- ter, wei -- ter Fer -- ne, 
wie's mich nach der Hei -- mat zieht! 
Lus -- tig sin -- gen die Ge -- sel -- len, 
doch es ist ein fal -- sches Lied, 
doch es ist ein fal -- sches Lied. 
}

LFerneC = \lyricmode {
\set stanza = "3. "
An -- dre Städt -- chen kom -- men frei -- lich, 
an -- dre Mäd -- chen zu Ge -- sicht; 
ach, wohl sind es an -- dre Mäd -- chen, 
doch die ei -- ne ist es nicht, 
doch die ei -- ne ist es nicht. 
}

LFerneD = \lyricmode {
\set stanza = "4. "
An -- dre Städt -- chen, an -- dre Mäd -- chen, 
ich da mit -- ten drin so stumm! 
An -- dre Mäd -- chen, an -- dre Städt -- chen, 
o, wie ger -- ne kehrt ich um, 
o, wie ger -- ne kehrt ich um. 
}

%--------------------

\header {
 kaisernumber = "222"
 comment = ""
 
 title = "In der Ferne"
 subtitle = ""
 composer = "Friedrich Silcher (1789-1860), 1853-55"
 opus = ""
 meter = "Andante"
 arranger = ""
 poet = "Albert Graf Schlippenbach (1800-1886), 1833"
 
 mutopiatitle = "In der Ferne"
 mutopiacomposer = "SilcherF"
 mutopiapoet = "A. Schlippenbach (1800-1886)"
 mutopiaopus = ""
 mutopiainstrument = "Voice (TTBB)"
 date = "1850s"
 source = "Leipzig : C. F. Peters, 1907"
 style = "Romantic"
 copyright = "Creative Commons Attribution 2.5"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2006/August/1"
 
 footer = "Mutopia-2006/08/07-800"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
} 

\score { 
\context ChoirStaff 
	<< 
	\context Staff = TenorStaff 
		<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G_8" 
			\context Voice = TenorA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \transpose a c \TAFerne 
				>> } 
			\context Voice = TenorB { \voiceTwo 
 				<< 
				\autoBeamOff 
				\global \TBFerne 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Lyrics = versefour 
	\context Staff = BassStaff 
		<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = BassA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \BAFerne 
				>> } 
			\context Voice = BassB { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				\global \BBFerne 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto TenorA \LFerneA 
	\context Lyrics = versetwo \lyricsto TenorA \LFerneB 
	\context Lyrics = versethree \lyricsto TenorA \LFerneC 
	\context Lyrics = versefour \lyricsto TenorA \LFerneD 
	>> 

\layout {
\context {\Score \remove "Bar_number_engraver"}
\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3) }
}

\midi {
\tempo 4 = 90
\context {
\Voice
\remove "Dynamic_performer"
\remove "Span_dynamic_performer"}
}

}
