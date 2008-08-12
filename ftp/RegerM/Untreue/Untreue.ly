#(set-global-staff-size 15.5) 
#(ly:set-option 'point-and-click #f) 

\version "2.10" 

global = { \key g \major \time 6/8 \tempo 4.=48 } 

SUntreue = \relative c' 
	{ 
	\partial 8 
	d8\mp b'4 b8 b[ a] b c4( a8) fis4 
	d8 g4 g8 g[ fis] g a4.~ a8 \oneVoice r \voiceOne 
	a8 a4 a8 a[ b] c d4. e,4 
	a8 g4 g8 a[ g] a b4.~ b8 \oneVoice r \voiceOne 
	b8 b[ a] a\< a[ b] c d4(\! g8) e[ c] 
	a8 g4 g8 b4\> a8 g4.~ g8\! \oneVoice r \voiceOne 
	\bar "|." 
	} 

AUntreue = \relative c' 
	{ 
	\partial 8 
	d8 g4 g8 g[ fis] f e4. d4 
	a8 d4 d8 b4 b8 d4.~ d8 s 
	fis8 e4 e8 e4 e8 fis4( f8) e4 
	e8 d4 d8 fis[ e] fis g4.~ g8 s 
	g8 g[ fis] fis fis4 fis8 fis8( g4) g 
	e8 d4 d8 g4 fis8 d4.~ d8 s 
	\bar "|." 
	} 

TUntreue = \relative c' 
	{ 
	\partial 8 
	d8 d4 d8 d[ c] d c4. a4 
	fis8 g4 g8 g4 g8 fis4.~ fis8 \oneVoice r \voiceOne 
	d'8 a4 a8 a[ gis] a a4( as8) g4 
	c8 b4 b8 d4 d8 d4.~ d8 \oneVoice r \voiceOne 
	d8 d4 d8 d4 d8 d4. c8[ e] 
	c8 b4 b8 cis4 c8 b4.~ b8 \oneVoice r \voiceOne 
	\bar "|." 
	} 

BUntreue = \relative c 
	{ 
	\partial 8 
	d8\mp g4 g8 g4 gis8 a4. d,4 
	c8 b4 b8 e4 e8 d4.~ d8 s 
	d8 cis4 cis8 c[ b] a d[ c b] c4 
	a8 d4 d8 d4 d8 g4.~ g8 s 
	g8 d4 d8\< c[ b] a b4.\! c4 
	c8 d4 d8 d4\> d8 g4.~ g8\! s 
	\bar "|." 
	} 


LUA = \lyricmode { 
\set stanza = "1." 
In ei -- nem küh -- len Grun -- de 
da geht ein Müh -- len -- rad; __ 
mein Lieb -- chen ist __ ver -- schwun -- den, 
das dort ge -- woh -- net hat, __ 
mein Lieb -- chen ist __ ver -- schwun -- den, 
das dort ge -- woh -- net hat. __ 
} 

LUB = \lyricmode { 
\set stanza = "2." 
Sie hat mir Treu ver -- spro -- chen, 
gab mir ein Ring da -- bei; __ 
sie hat die Treu ge -- bro -- chen, 
das Ring -- lein sprang ent -- zwei, __ 
sie hat __ die Treu ge -- bro -- chen, 
das Ring -- lein sprang ent -- zwei. __ 
} 

LUC = \lyricmode { 
\set stanza = "3." 
Ich möcht als Spiel -- mann rei -- sen 
weit in die Welt hin -- aus __ 
und sin -- gen mei -- ne Wei -- sen 
und gehn von Haus zu Haus, __ 
und sin -- gen mei -- ne Wei -- sen 
und gehn von Haus zu Haus. __ 
} 

LUD = \lyricmode { 
\set stanza = "4." 
Ich möcht als Rei -- ter flie -- gen 
wohl in die blut -- ge Schlacht, 
um stil -- le Feu -- er lie -- gen 
im Feld bei dunk -- ler Nacht, __ 
um stil -- le Feu -- er lie -- gen 
im Feld bei dunk -- ler Nacht. __
} 

LUE = \lyricmode { 
\set stanza = "5." 
Hör ich das Mühl -- rad ge -- hen, 
ich weiß nicht, was ich will, __ 
ich möcht am lieb -- sten ster -- ben, 
da wärs auf ein -- mal still, __ 
ich möcht am lieb -- sten ster -- ben, 
da wärs auf ein -- mal still. __
} 

%--------------------

\header {
 kaisernumber = "385"
 comment = ""
 footnote = ""
 
 title = "Untreue"
% subtitle = "Das zerbrochene Ringlein"
 composer = "Friedrich Glück (1793–1840), 1814"
 opus = ""
 meter = \markup {Ruhig}
 arranger = "Arrangement by Max Reger (1873–1916), 1913"
 poet = "Joseph Freiherr von Eichendorff (1788–1857), 1810"
 
 mutopiatitle = "Untreue"
 mutopiacomposer = "RegerM"
 mutopiapoet = "J. von Eichendorff (1788-1857)"
 mutopiaopus = ""
 mutopiainstrument = "Voice, (SATB)"
 date = "1913"
 source = "Leipzig : C. F. Peters, 1915"
 style = "Romantic" 
 copyright = "Creative Commons Attribution 3.0"
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2008/August/1"
 
 footer = "Mutopia-2008/08/12-621"
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
				{ \global \SUntreue } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AUntreue } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Lyrics = versefour 
	\context Lyrics = versefive 
	\context Staff = men 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TUntreue } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BUntreue } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Sopran \LUA 
	\context Lyrics = versetwo \lyricsto Sopran \LUB 
	\context Lyrics = versethree \lyricsto Sopran \LUC 
	\context Lyrics = versefour \lyricsto Sopran \LUD 
	\context Lyrics = versefive \lyricsto Sopran \LUE 
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
