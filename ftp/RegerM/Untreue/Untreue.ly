#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key g \major \time 6/8 \tempo "Ruhig" } 

SUntreue = \relative c' { 
\revert Rest.direction 
\partial 8 
d8\mp b'4 b8 b[ a] b c4( a8) fis4 
d8 g4 g8 g[ fis] g a4.~ a8 r 
a8 a4 a8 a[ b] c d4. e,4 
a8 g4 g8 a[ g] a b4.~ b8 r 
b8 b[ a] a\< a[ b] c d4(\! g8) e[ c] 
a8 g4 g8 b4\> a8 g4.~ g8\! r 
\bar "|." 
} 

AUntreue = \relative c' { 
\partial 8 
d8 g4 g8 g[ fis] f e4. d4 
a8 d4 d8 b4 b8 d4.~ d8 s 
fis8 e4 e8 e4 e8 fis4( f8) e4 
e8 d4 d8 fis[ e] fis g4.~ g8 s 
g8 g[ fis] fis fis4 fis8 fis8( g4) g 
e8 d4 d8 g4 fis8 d4.~ d8 s 
\bar "|." 
} 

TUntreue = \relative c' { 
\revert Rest.direction 
\partial 8 
d8 d4 d8 d[ c] d c4. a4 
fis8 g4 g8 g4 g8 fis4.~ fis8 r  
d'8 a4 a8 a[ gis] a a4( as8) g4 
c8 b4 b8 d4 d8 d4.~ d8 r 
d8 d4 d8 d4 d8 d4. c8[ e] 
c8 b4 b8 cis4 c8 b4.~ b8 r 
\bar "|." 
} 

BUntreue = \relative c { 
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
 kaisernumber = "385" 
 comment = "" 
 footnote = "" 
 
 title = "Untreue" 
 % subtitle = "Das zerbrochene Ringlein" 
 composer = "Friedrich Glück (1793–1840), 1814" 
 opus = "" 
 arranger = "Bearbeitung von Max Reger (1873–1916), 1913" 
 poet = "Joseph Freiherr von Eichendorff (1788–1857), 1810" 
 
 mutopiatitle = "Untreue" 
 mutopiacomposer = "RegerM" 
 mutopiapoet = "J. von Eichendorff (1788–1857)" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1913" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/21-621"
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
\override DynamicTextSpanner.style = #'none 
\override BreathingSign.text = #(make-musicglyph-markup "scripts.rvarcomma") 
}
}

\midi {
\tempo 4.=48
}

}
