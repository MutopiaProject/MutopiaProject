#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key c \major \time 3/4 \tempo "Andante" } 

TAFerne = \relative c' { 
\partial 4 
a'8\< b cis4.\! a8\> a fis\! fis8.[ e16] e4 
e8\< a b4.\! a8 d8.\> cis16 b2\!
b8.\mf fis16 a8.[ gis16] gis4 
b8. fis16 a8.[ gis16] gis4 \oneVoice r \voiceOne 
a8.\p e16 \acciaccatura gis8 fis e a b cis4(\< e\> d) 
cis8.\! cis16 cis8 a cis\dim b a2\! 
\bar "|." 
} 

TBFerne = \relative c' { 
\partial 4 
c8 c c4. g8 a f f8.[ e16] e4 
g8 c b4. c8 b8. c16 b2 
a8. a16 a8.[ g16] g4 
a8. a16 a8.[ g16] g4 s 
g8. g16 a8 g c b c4( e d) 
c8. c16 c8 g b b g2 
\bar "|." 
} 

BAFerne = \relative c { 
\partial 4 
e8 f g4. e8 f c c4 c 
e8 g g4. g8 g8. g16 g2 
fis8. fis16 g4 d 
fis8. fis16 g4 d \oneVoice r \voiceOne 
e8. e16 f!8 e g g g4( c a) 
g8. g16 g8 e g f e2 
\bar "|." 
} 

BBFerne = \relative c { 
\partial 4 
c8\< c c4.\! c8\> f, a\! c4 c 
c8\< e f4.\! e8 d8.\> c16 g2\!
d'8.\mf d16 g4 g, 
d'8. d16 g4 g, s
c8.\p c16 c8 c e g <<c,2(\< {s4 s\>}>> f) 
g8.\! g16 g8 g, g\dim g c2\! 
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
And -- re Städt -- chen kom -- men frei -- lich, 
and -- re Mäd -- chen zu Ge -- sicht; 
ach, wohl sind es and -- re Mäd -- chen, 
doch die ei -- ne ist es nicht, __ 
doch die ei -- ne ist es nicht. 
} 

LFerneD = \lyricmode { 
\set stanza = "4." 
And -- re Städt -- chen, and -- re Mäd -- chen, 
ich da mit -- ten drin so stumm! 
And -- re Mäd -- chen, and -- re Städt -- chen, 
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
 arranger = "" 
 poet = "Albert Graf Schlippenbach (1800–1886), 1833" 
 
 mutopiatitle = "In der Ferne" 
 mutopiacomposer = "SilcherF" 
 mutopiapoet = "A. Schlippenbach (1800–1886)" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (TTBB)" 
 date = "1850s" 
 source = "Leipzig : C. F. Peters, 1907" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
  
 footer = "Mutopia-2014/03/23-800"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat{ \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
} 

\score {
{
\context ChoirStaff 
	<< 
	\context Staff = TenorStaff 
	<< 
	\accidentalStyle voice 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G_8" 
			\context Voice = TenorA { \voiceOne 
				<< 
				\set hairpinToBarline = ##f 
				\autoBeamOff 
				\dynamicUp 
				\global \transpose a c \TAFerne 
				>> } 
			\context Voice = TenorB { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				\global \TBFerne 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Lyrics = versefour 
	\context Staff = BassStaff 
	<< 
	\accidentalStyle voice 
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
				\set hairpinToBarline = ##f 
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
}

\layout {
indent = 0.0\cm
\context {\Score 
\remove "Bar_number_engraver"
\override DynamicTextSpanner.style = #'none 
\override BreathingSign.text = #(make-musicglyph-markup "scripts.rvarcomma") 
}
}

\midi {
\tempo 4=66
}

}
