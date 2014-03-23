#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key es \major \time 3/2 \tempo "Etwas langsam" } 

SNacht = \relative es' { 
\revert Rest.direction 
\partial 2 
g2\p\< 
f4.\> g8\! g2 g2\< 
f4.\> g8\! g2 g2\pp 
g4-.\( as4-.\) bes2-.\( as-.\) 
g2-.\( f2-.\) f2\p\< 
e4.\> f8\! f2 f2\< 
e4.\> f8\! f2 f2\pp 
f4-.\( g-.\) as2-.\( g2-.\) 
f2-.\( es2-.\) bes'2\< 
c4.\> bes8\! bes2 bes2\< 
c4.\> bes8\! bes2 bes2\< 
f'2.\f d4\> bes4 as4\! 
as2 g2 r4 g4\p 
f4. as8 c2 r4 d, 
es4. g8 bes2 r4 d,\< 
c4 as'4\! g2-.\(\> f2-.\! 
f2-. es-.\) 
\bar "|." 
} 

ANacht = \relative es' { 
\partial 2 
es2 
es4. es8 es2 es 
es4. es8 es2 es 
es4 es es2 f 
es2 d d 
cis4. d8 d2 d 
cis4. d8 d2 d 
d4 d d2 es 
d es g 
a4. g8 g2 g 
a4. g8 g2 bes 
bes2. as!4 g f 
f2 es s4 es 
<es f>4. <es f>8 <es f>2 s4 < d f > 
< d es >4. < d es >8 < d es >2 s4 d 
c4 f es2 d 
d2 es 
\bar "|." 
} 

TNacht = \relative es' { 
\partial 2 
bes2 
ces4. bes8 bes2 bes2 
ces4. bes8 bes2 es2 
es4-.( c!4-.) g2-.( c2-.) 
bes2-.( bes2-.) as2 
g4. as8 as2 as2 
g4. as8 as2 as2 
as4 g4 f2 g2 
as2 g2 es'2 
fis4. g8 g2 es2 
fis4. g8 g2 g2 
as2. f!4 es4 f4 
d2 es2 \oneVoice r4 \voiceOne es4 
c4. c8 c2 \oneVoice r4 \voiceOne d4 
c4. c8 c2 \oneVoice r4 \voiceOne d4 
as4 c4 bes2-.( as2-. 
as2-. g2-.) 
} 

BNacht = \relative es { 
\partial 2 
es2\p\< 
as,4.\> es'8\! es2 es\< 
as,4.\> es'8\! es2 r2\pp 
r2 r2 as2-.(\pp 
bes2-. bes2-.) <bes, bes'>\p\< 
<bes bes'>4.\> <bes bes'>8\! <bes bes'>2 <bes bes'>\< 
<bes bes'>4.\> <bes bes'>8\! <bes bes'>2 bes'\pp 
bes4-.( bes4-.) bes2-.( bes2-.) 
<bes bes,>2-.( es,2-.) es'2\< 
d4.\> es8\! es2 es2\< 
d4.\> es8\! es2 es2\< 
d2.\f bes4\> c4 d4\! 
b2 c2 s4 c4\p 
as4. as8 as2 s4 bes4 
g4. g8 g2 s4 g4\< 
as4 f4\! bes2-.(\> <bes bes,>2-.\! 
<bes bes,>2-. es,2-.) 
} 


NachtA = \lyricmode { 
\set stanza = "1." 
In stil -- ler Nacht, 
zur er -- sten Wacht, 
ein Stimm be -- gunnt zu kla -- gen, 
der nächt -- ge Wind 
hat süß und lind 
zu mir den Klang ge -- tra -- gen; 

von her -- bem Leid 
und Trau -- rig -- keit 
ist mir das Herz zer -- flos -- sen, 
die Blü -- me -- lein, 
mit Trä -- nen rein 
hab ich sie all be -- gos -- sen. 
} 

NachtB = \lyricmode { 
\set stanza = "2." 
Der schö -- ne Mond 
will un -- ter -- gahn, 
für Leid nicht mehr mag schei -- nen, 
die Ster -- ne lan 
ihr Glit -- zen stahn, 
mit mir sie wol -- len wei -- nen. 

Kein Vo -- gel -- sang, 
noch Freu -- den -- klang 
man hö -- ret in den Lüf -- ten, 
die wil -- den Tier 
traurn auch mit mir 
in Stei -- nen und in Klüf -- ten. 
} 

%--------------------

\header { 
 kaisernumber = "139" 
 comment = "" 
 footnote = "" 
 
 title = "In stiller Nacht" 
 subtitle = "" 
 composer = "Johannes Brahms (1833–1897), 1860" 
 opus = "" 
 arranger = "" 
 poet = "Nach Friedrich Spee" 
 
 mutopiatitle = "In stiller Nacht" 
 mutopiacomposer = "BrahmsJ" 
 mutopiapoet = "" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1860" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/23-1709"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat{ \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
} 

\score {
{
\context ChoirStaff 
	<< 
	\context Lyrics = extra 
	\context Staff = women 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G" 
			\context Voice = Sopran { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \SNacht } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \ANacht } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Staff = men 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TNacht } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BNacht } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Sopran \NachtA 
	\context Lyrics = versetwo \lyricsto Sopran \NachtB 
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
\tempo 2=58
}

}
