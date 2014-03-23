\include "deutsch.ly" 

#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key b \major \time 3/4 \tempo "Lebendig" } 

SAvTharau = \relative b' { 
f4.\f g8 f4 f b b c4. d8 c4 b2. 
a4 a a c4. b8 a4 g4. a8 g4 f2. 
f4. g8 f4 f b b c4. d8 c4 b2. 
a4\< a a\! c4. b8 a4 g4.\> a8 g4\! f2 \oneVoice r4 \voiceOne 
f4.\p f8 g4 a f g a\< a b\! c2.\< 
b4 c d\! es4. d8 c4 b\> c a4 b2\! \oneVoice r4 \voiceOne 
\bar "|." 
} 

AAvTharau = \relative b { 
d4. es8 d4 d f g a4. a8 a4 b2. 
f4 f f f4. f8 f4 d4. d8 e4 f( e es) 
d4. es8 d4 d f g g4. g8 a4 b( a g) 
f4 f f f4. f8 f4 d4. d8 e4 f2 s4 
f4. f8 f4 f c d8[ e] f4 f f f( g a) 
b4 a as g4. g8 g4 g g f f2 s4 
\bar "|." 
} 

TAvTharau = \relative b { 
b4. b8 b4 b d d es4. f8 es4 d2. 
f4 e d c4. c8 c4 b4. c8 b4 a( b c) 
b4. b8 b4 b d d es4. f8 es4 d2( e4) 
f4 e d c4. c8 c4 b4. c8 b4 a2 \oneVoice r4 \voiceOne 
a4. a8 b4 c c b c es es es2. 
d4 es f g4. f8 es4 d es c d2 \oneVoice r4 \voiceOne 
\bar "|." 
} 

BAvTharau = \relative b, { 
b4.\f es8 b4 b' b g f4. f8 f4 b2. 
d4 c b a4. g8 f4 b,4. b8 c4 f( g a) 
b4. es,8 b4 b' b g es4. es8 f4 b2( c4) 
d4\< c b\! a4. g8 f4 b,4.\> b8 c4\! f2 s4 
f4.\p f8 f4 f a g f\< c' b\! a(\< g f) 
b4 b b\! es,4. es8 es4 g\> es f b,2\! s4 
\bar "|." 
} 


LAvTharauA = \lyricmode { 
\set stanza = "1." 
Änn -- chen von Tha -- rau ist, die mir ge -- fällt, 
sie ist mein Le -- ben, mein Gut und mein Geld. 
Änn -- chen von Tha -- rau hat wie -- der ihr Herz 
auf mich ge -- rich -- tet in Lie -- be und Schmerz. 
Änn -- chen von Tha -- rau mein Reich -- tum, mein Gut, 
du mei -- ne See -- le, mein Fleisch und mein Blut. 
} 

LAvTharauB = \lyricmode { 
\set stanza = "2." 
Käm al -- les Wet -- ter gleich auf uns zu schlahn, 
wir sind ge -- sinnt, bei ei -- nan -- der zu stahn. 
Krank -- heit Ver -- fol -- gung, Be -- trüb -- nis und Pein 
soll uns -- rer Lie -- be Ver -- kno  -- ti -- gung sein. 
Änn -- chen von Tha -- rau mein Reich -- tum, mein Gut, 
du mei -- ne See -- le, mein Fleisch und mein Blut. 
} 

LAvTharauC = \lyricmode { 
\set stanza = "3." 
Recht als ein Pal -- men -- baum ü -- ber sich steigt, 
hat ihn erst Re -- gen und Sturm -- wind ge -- beugt, 
so wird die Lieb in uns mäch -- tig und groß 
nach man -- chem Lei -- den und trau -- ri -- gem Los. 
Änn -- chen von Tha -- rau mein Reich -- tum, mein Gut, 
du mei -- ne See -- le, mein Fleisch und mein Blut. 
} 

LAvTharauD = \lyricmode { 
\set stanza = "4." 
Wür -- dest du gleich ein -- mal von mir ge -- trennt, 
leb -- test da, wo man die Son -- ne kaum kennt, 
ich will dir fol -- gen  durch Wäl -- der und Meer, 
Ei -- sen und Ker -- ker und feind -- li -- ches Heer.
Änn -- chen von Tha -- rau mein Licht, mei -- ne Sonn, 
mein Le -- ben schließt sich um dei -- nes her -- um. 
} 

%--------------------

\header { 
 kaisernumber = "391" 
 comment = "" 
 footnote = "" 
 
 title = "Ännchen von Tharau" 
 subtitle = "" 
 composer = "Friedrich Silcher (1789–1860), 1825" 
 opus = "" 
 arranger = "Ernst Eduard Taubert (1838–1934)" 
 poet = "Simon Dach (1605–1659), 1637" 
 
 mutopiatitle = "Ännchen von Tharau" 
 mutopiacomposer = "SilcherF" 
 mutopiapoet = "S. Dach (1605–1659)" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1825" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/21-629"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat{ \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
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
				{ \global \SAvTharau } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AAvTharau } 
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
				{ \global \TAvTharau } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BAvTharau } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Sopran \LAvTharauA 
	\context Lyrics = versetwo \lyricsto Sopran \LAvTharauB 
	\context Lyrics = versethree \lyricsto Sopran \LAvTharauC 
	\context Lyrics = versefour \lyricsto Sopran \LAvTharauD 
	>> 
}

\layout {
indent = 0.0\cm
\context {\Score 
\remove "Bar_number_engraver"
\override DynamicTextSpanner.style = #'none 
}
}

\midi {
\tempo 4=132
}

}
