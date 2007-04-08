\include "deutsch.ly" 

#(set-global-staff-size 15.5) 

\version "2.10" 

global = { \key b \major \time 3/4 \tempo 4=132 } 

SAvTharau = \relative b' 
	{ 
	f4.\f g8 f4 f b b c4. d8 c4 b2. 
	a4 a a c4. b8 a4 g4. a8 g4 f2. 
	f4. g8 f4 f b b c4. d8 c4 b2. 
	a4\< a a\! c4. b8 a4 g4.\> a8 g4\! f2 \oneVoice r4 \voiceOne 
	f4.\p f8 g4 a f g a\< a b\! c2.\< 
	b4 c d\! es4. d8 c4 b\> c a4 b2\! \oneVoice r4 \voiceOne 
	\bar "|." 
	} 

AAvTharau = \relative b 
	{ 
	d4. es8 d4 d f g a4. a8 a4 b2. 
	f4 f f f4. f8 f4 d4. d8 e4 f( e es) 
	d4. es8 d4 d f g g4. g8 a4 b( a g) 
	f4 f f f4. f8 f4 d4. d8 e4 f2 s4 
	f4. f8 f4 f c d8[ e] f4 f f f( g a) 
	b4 a as g4. g8 g4 g g f f2 s4 
	\bar "|." 
	} 

TAvTharau = \relative b 
	{ 
	b4. b8 b4 b d d es4. f8 es4 d2. 
	f4 e d c4. c8 c4 b4. c8 b4 a( b c) 
	b4. b8 b4 b d d es4. f8 es4 d2( e4) 
	f4 e d c4. c8 c4 b4. c8 b4 a2 \oneVoice r4 \voiceOne 
	a4. a8 b4 c c b c es es es2. 
	d4 es f g4. f8 es4 d es c d2 \oneVoice r4 \voiceOne 
	\bar "|." 
	} 

BAvTharau = \relative b, 
	{ 
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
wir sind ge -- sinnt, bei ein -- an -- der zu stahn. 
Krank -- heit Ver -- folg -- ung, Be -- trüb -- nis und Pein 
soll un -- srer Lie -- be Ver -- kno  -- ti -- gung sein. 
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
 composer = "Friedrich Silcher (1789-1860), 1825"
 opus = ""
 meter = \markup {Lebendig}
 arranger = "Arrangement by Ernst Eduard Taubert (1838-1934)"
 poet = "Simon Dach (1605-1659), 1637"
 
 mutopiatitle = "Ännchen von Tharau"
 mutopiacomposer = "SilcherF"
 mutopiapoet = "S. Dach (1605-1659)"
 mutopiaopus = ""
 mutopiainstrument = "Choir (SATB)"
 date = "1825"
 source = "Leipzig : C. F. Peters, 1915"
 style = "Romantic"
 copyright = "Creative Commons Attribution 2.5"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2006/November/15"
 
 footer = "Mutopia-2006/12/01-629"
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
