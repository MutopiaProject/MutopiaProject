#(set-global-staff-size 15.5) 
#(ly:set-option 'point-and-click #f) 

\version "2.10" 

global = { \key bes \major \time 3/4 \tempo 4=132 } 

SAvTharau = \relative bes' 
{ 
f4.\f g8 f4 f bes bes c4. d8 c4 bes2. 
a4 a a c4. bes8 a4 g4. a8 g4 f2. 
f4. g8 f4 f bes bes c4. d8 c4 bes2. 
a4\< a a\! c4. bes8 a4 g4.\> a8 g4\! f2 \oneVoice r4 \voiceOne 
f4.\p f8 g4 a f g a\< a bes\! c2.\< 
bes4 c d\! es4. d8 c4 bes\> c a4 bes2\! \oneVoice r4 \voiceOne 
\bar "|." 
} 

AAvTharau = \relative bes 
{ 
d4. es8 d4 d f g a4. a8 a4 bes2. 
f4 f f f4. f8 f4 d4. d8 e4 f( e es) 
d4. es8 d4 d f g g4. g8 a4 bes( a g) 
f4 f f f4. f8 f4 d4. d8 e4 f2 s4 
f4. f8 f4 f c d8[ e] f4 f f f( g a) 
bes4 a as g4. g8 g4 g g f f2 s4 
\bar "|." 
} 

TAvTharau = \relative bes 
{ 
bes4. bes8 bes4 bes d d es4. f8 es4 d2. 
f4 e d c4. c8 c4 bes4. c8 bes4 a( bes c) 
bes4. bes8 bes4 bes d d es4. f8 es4 d2( e4) 
f4 e d c4. c8 c4 bes4. c8 bes4 a2 \oneVoice r4 \voiceOne 
a4. a8 bes4 c c bes c es es es2. 
d4 es f g4. f8 es4 d es c d2 \oneVoice r4 \voiceOne 
\bar "|." 
} 

BAvTharau = \relative bes, 
{ 
bes4.\f es8 bes4 bes' bes g f4. f8 f4 bes2. 
d4 c bes a4. g8 f4 bes,4. bes8 c4 f( g a) 
bes4. es,8 bes4 bes' bes g es4. es8 f4 bes2( c4) 
d4\< c bes\! a4. g8 f4 bes,4.\> bes8 c4\! f2 s4 
f4.\p f8 f4 f a g f\< c' bes\! a(\< g f) 
bes4 bes bes\! es,4. es8 es4 g\> es f bes,2\! s4 
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
 composer = "Friedrich Silcher (1789–1860), 1825"
 opus = ""
 meter = \markup {Lebendig}
 arranger = "Arrangement by Ernst Eduard Taubert (1838–1934)"
 poet = "Simon Dach (1605–1659), 1637"
 
 mutopiatitle = "Ännchen von Tharau"
 mutopiacomposer = "SilcherF"
 mutopiapoet = "S. Dach (1605-1659)"
 mutopiaopus = ""
 mutopiainstrument = "Choir (SATB)"
 date = "1825"
 source = "Leipzig : C. F. Peters, 1915"
 style = "Romantic"
 copyright = "Creative Commons Attribution 3.0"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2008/August/1"
 
 footer = "Mutopia-2008/08/12-629"
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
