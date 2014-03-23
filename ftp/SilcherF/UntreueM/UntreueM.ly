\include "deutsch.ly" 

#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key b \major \time 6/8 \tempo "In ruhiger Bewegung" } 

TAUntreue = \relative c { 
\revert Rest.direction 
\partial 8 
d8 h'4 h8 h[ a] h c4( a8) fis4 
d8 g4 g8 g[ fis] g a4.~ a8 r 
a8 a4 a8 a[ h] c d4. e,4 
a8 g4 g8 a[ g] a h4.~ h8 r 
h8 h[ a] a a[ h] c d4( g8) e[ c] 
a8 g4 g8 h4 a8 g4.~ g8 r 
\bar "|." 
} 

TBUntreue = \relative c { 
\partial 8 
f8 b4 b8 b[ a] b c4( a8) f4 
f8 f4 f8 g4 b8 a4.~ a8 s 
a8 a4 a8 a[ b] c d4( b8) g4 
g8 f4 f8 a[ g] a b4.~ b8 s 
b8 b[ a] a a[ b] c d4( b8) b4 
g8 f4 f8 b4 a8 f4.~ f8 s 
\bar "|." 
} 

BAUntreue = \relative c { 
\partial 8 
f8 f4 f8 f4 f8 f4. f4 
f8 f4 d8 d4 e8 f4.~ f8 s 
f8 f4 f8 f4 f8 f4. es4 
es8 d4 d8 f4 f8 f4.~ f8 s 
f8 f4 f8 f4 f8 f4. es8[ g] 
es8 d4 d8 f4 es8 d4.~ d8 s 
\bar "|." 
} 

BBUntreue = \relative c { 
\revert Rest.direction 
f8 b,4 b8 b4 b8 a4( c8) f4 
es8 d4 b8 g4 g8 f4.~ f8 r 
f'8 f4 f8 es[ d] c b4( d8) es4 
es8 f4 f8 f4 f8 b,4.~ b8 r 
b8 f'4 f8 es[ d] c b4( d8) es4 
es8 f4 f8 f,4 f8 b4.~ b8 r 
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
und gehn von Haus zu Haus, 
und sin -- gen mei -- ne Wei -- sen 
und gehn von Haus zu Haus. 
} 

LUD = \lyricmode { 
\set stanza = "4." 
Ich möcht als Rei -- ter flie -- gen 
wohl in die blut -- ge Schlacht, 
um stil -- le Feu -- er lie -- gen 
im Feld bei dunk -- ler Nacht, 
um stil -- le Feu -- er lie -- gen 
im Feld bei dunk -- ler Nacht. 
} 

LUE = \lyricmode { 
\set stanza = "5." 
Hör ich das Mühl -- rad ge -- hen, 
ich weiss nicht, was ich will, __ 
ich möcht am liebs -- ten ster -- ben, 
da wär's auf ein -- mal still, __ 
ich möcht am liebs -- ten ster -- ben, 
da wär's auf ein -- mal still. __ 
} 

%--------------------

\header { 
 kaisernumber = "491" 
 comment = "Vers 5 langsamer und schwächer, und das Ende pp" 
 footnote = "" 
 
 dedication = "" 
 title = "Untreue" 
 % subtitle = "Das zerbrochene Ringlein" 
 composer = "Friedrich Glück (1793–1840), 1814" 
 opus = "" 
 arranger = "Bearbeitung von Friedrich Silcher (1789-1860), 1825" 
 poet = "Joseph Freiherr von Eichendorff (1788–1857), 1810" 

 mutopiatitle = "Untreue" 
 mutopiacomposer = "SilcherF" 
 mutopiapoet = "J. von Eichendorff (1788–1857)" 
 mutopiainstrument = "Choir (TTTB)" 
 date = "1825" 
 source = "Leipzig : C. F. Peters, 1907" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/21-622"
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
				\autoBeamOff 
				\dynamicUp 
				\global \transpose g b \TAUntreue 
				>> } 
			\context Voice = TenorB { \voiceTwo 
 				<< 
				\autoBeamOff 
				\global \TBUntreue 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Lyrics = versefour 
	\context Lyrics = versefive 
	\context Staff = BassStaff 
	<< 
	\accidentalStyle voice 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = BassA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \BAUntreue 
				>> } 
			\context Voice = BassB { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				\global \BBUntreue 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto TenorA \LUA 
	\context Lyrics = versetwo \lyricsto TenorA \LUB 
	\context Lyrics = versethree \lyricsto TenorA \LUC 
	\context Lyrics = versefour \lyricsto TenorA \LUD 
	\context Lyrics = versefive \lyricsto TenorA \LUE 
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
\tempo 4.=48
}

}
