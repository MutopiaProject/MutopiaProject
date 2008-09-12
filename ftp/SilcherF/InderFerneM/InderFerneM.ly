#(set-global-staff-size 15.5) 
#(ly:set-option 'point-and-click #f) 

\version "2.10" 

global = { \key c \major \time 3/4 \tempo 4=66 } 

TAFerne = \relative c' 
{ 
\partial 4 
a'8\< b cis4.\! a8\> a fis\! fis8.[ e16] e4 
e8\< a b4.\! a8 d8.\> cis16 b2\!
b8.\mf fis16 a8.[ gis16] gis4 
b8. fis16 a8.[ gis16] gis4 \oneVoice r \voiceOne 
a8.\p e16 \acciaccatura gis8 fis e a b cis4(\< e\> d) 
\setTextDim 
cis8.\! cis16 cis8 a cis\> b a2\! 
\bar "|." 
} 

TBFerne = \relative c' 
{ 
\partial 4 
c8 c c4. g8 a f f8.[ e16] e4 
g8 c b4. c8 b8. c16 b2 
a8. a16 a8.[ g16] g4 
a8. a16 a8.[ g16] g4 s 
g8. g16 a8 g c b c4( e d) 
c8. c16 c8 g b b g2 
\bar "|." 
} 

BAFerne = \relative c 
{ 
\partial 4 
e8 f g4. e8 f c c4 c 
e8 g g4. g8 g8. g16 g2 
fis8. fis16 g4 d 
fis8. fis16 g4 d \oneVoice r \voiceOne 
e8. e16 f!8 e g g g4( c a) 
g8. g16 g8 e g f e2 
\bar "|." 
} 

BBFerne = \relative c 
{ 
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
 kaisernumber = "222"
 comment = ""
 footnote = ""
 
 title = "In der Ferne"
 subtitle = ""
 composer = "Friedrich Silcher (1789–1860), 1853–55"
 opus = ""
 meter = \markup {Andante}
 arranger = ""
 poet = "Albert Graf Schlippenbach (1800–1886), 1833"
 
 mutopiatitle = "In der Ferne"
 mutopiacomposer = "SilcherF"
 mutopiapoet = "A. Schlippenbach (1800-1886)"
 mutopiaopus = ""
 mutopiainstrument = "Choir (TTBB)"
 date = "1850s"
 source = "Leipzig : C. F. Peters, 1907"
 style = "Romantic"
 copyright = "Creative Commons Attribution 3.0"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2008/August/20"
 
 footer = "Mutopia-2008/09/12-800"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
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
