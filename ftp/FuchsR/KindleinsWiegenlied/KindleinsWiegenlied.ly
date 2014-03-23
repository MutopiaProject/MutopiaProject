#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key f \major \time 6/8 \tempo "Ruhig und zart" } 

SWiegenlied = \relative f'' { 
\repeat volta 2 { 
c8[\p bes] c a8. g16 f8 
bes8[ c] a g8. f16 g8 
a8[ bes] c\< b[ g]\! c 
c4 b8\> c4.\! 
} 
\repeat volta 2 { 
c8\mf d e f f c 
bes c16[ bes] a8 g4 c8\p 
f,8[ g] a bes[ c] a 
g8[ f] g f4. 
} 
\break 
\repeat volta 2 { 
c'8[\p bes] c a8. g16 f8 
bes8[ c] a g8. f16 g8 
a8[ bes] c\< b[ g]\! c 
c4\> b8\! c4. 
} 
\repeat volta 2 { 
c8\mf d e f f c 
bes c16[ bes] a8 g4 c8 
f,8[ g] a bes[ c] a 
g8[ f] g f4. 
} 
\break 
\repeat volta 2 { 
c'8[\pp bes] c a8.[ g16] f8 
bes8[ c] a g8.[ f16] g8 
a8[ bes] c b[ g] c\< 
c4\> b8\! c4. 
} 
\repeat volta 2 { 
c8\p d e f f c 
bes c16[ bes] a8 g4 c8\pp 
f,8[ g] a bes[ c] a 
g8[ f] g f4. 
} 
} 

AWiegenlied = \relative f' { 
\repeat volta 2 { 
a8[ f] g c,8. e16 f8 
g4 f8 e8. d16 e8 
f8[ g] a g4 g8 
a4 g8 g4. 
} 
\repeat volta 2 { 
g8 a g f8. g16 a8 
g8 g f e4 f16[ e] 
d8[ e] f f[ e] f 
e8[ d] e f4. 
} 

\repeat volta 2 { 
a8[ f] g ,c8. e16 f8 
g4 f8 e8. d16 e8 
f8[ g] a g4 g8 
a4 g8 g4. 
} 
\repeat volta 2 { 
g8 a g f8. g16 a8 
g8 g f e4 f16[ e] 
d8[ e] f f[ e] f 
e8[ d] e f4. 
} 

\repeat volta 2 { 
a8[ f] g c,8.[ e16] f8 
g4 f8 e8.[ d16] e8 
f8[ g] a g4 g8 
a4 g8 g4. 
} 
\repeat volta 2 { 
g8 a g f8. g16 a8 
g8 g f e4 f16[ e] 
d8[ e] f f[ e16 d] c[ d] 
e8[ d] e f4. 
} 
} 

TWiegenlied = \relative f' { 
\repeat volta 2 { 
c8[ d] e f8. c16 a8 
c4 c8 c8. c16 c8 
c[ bes] a d4 c8 
f[ e] d e4. 
} 
\repeat volta 2 { 
e8 f c c c c 
c8. c16 c8 c4 c8 
c[ bes] c d[ bes] c 
bes4 bes8 a4. 
} 

\repeat volta 2 { 
c8[ d] e f8. c16 a8 
c4 c8 c c c 
c[ bes] a d4 c8 
f[ e] d e4. 
} 
\repeat volta 2 { 
e8 f c c c c 
c8. c16 c8 c4 c8 
c[ bes] c d[ bes] c 
bes4 bes8 a4. 
} 

\repeat volta 2 { 
c8[ d] e f8[ c] a 
c4 c8 c4 c8 
c[ bes] a e'8.[ d16] c8 
f[ e] d e4. 
} 
\repeat volta 2 { 
e8 f c c c c 
c8. c16 c8 c4 c8 
c[ bes] c f,[ g] a 
bes4 bes8 a4. 
} 
} 

BWiegenlied = \relative f { 
\repeat volta 2 { 
f4\p f8 f8. f16 f8 
e4 f8 c8. c16 c8 
f4 f8\< <<f4 {s8 s\!}>> e8 
d4 g8\> c,4.\! 
} 
\repeat volta 2 { 
c'8\mf c bes a8. g16 f8 
e8. e16 f8 c4 a8\p 
bes4 a8 g4 a16[ bes] 
c4 c8 f,4. 
} 

\repeat volta 2 { 
f'4\p f8 f f f 
e4 f8 c c c 
f4 f8\< <<f4 {s8 s\!}>> e8 
d4\> g8\! c,4. 
} 
\repeat volta 2 { 
c'8\mf c bes a8. g16 f8 
e8. e16 f8 c4 a8 
bes4 a8 g4 a16[ bes] 
c4 c8 f,4. 
} 

\repeat volta 2 { 
f'4\pp f8 f4 f8 
e4 f8 c4 c8 
f4 f8 f4 e8\< 
d4\> g8\! c,4. 
} 
\repeat volta 2 { 
c'8\p c bes a8. g16 f8 
e8. e16 f8 c4 a8\pp 
bes4 a8 d8[ e] f 
c4 c8 f,4. 
} 
} 


LUAa = \lyricmode { 
\set stanza = "1." 
Schlaf, mein Kin -- de -- lein, 
schlaf, mein Söh -- ne -- lein! 
singt die Mut -- ter Jung -- frau rein; 
Sin -- get und klin -- get dem Kin -- de -- lein klein, 
dem ho -- nig -- sü -- ßen Je -- su -- lein, 
} 

LUAb = \lyricmode { 
Schlaf, mein Her -- ze -- lein, 
schlaf, mein Schät -- ze -- lein! 
singt der Va -- ter e -- ben fein. 
sin -- get und klin -- get, ihr En -- ge -- lein rein, 
mit tau -- send sü -- ßen Stim -- me -- lein! 
} 

LUBa = \lyricmode { 
\set stanza = "2." 
Schließ die Äug -- lein zu, 
deck dein Händ -- lein zu, 
denn es braust ein schar -- fer Wind; 
Sin -- get und klin -- get dem Kin -- de -- lein klein, 
dem ho -- nig -- sü -- ßen Je -- su -- lein, 
} 

LUBb = \lyricmode { 
schlaf, mein Kin -- de -- lein, 
dich das E -- se -- lein wird 
er -- wär -- men mit dem Rind. 
sin -- get und klin -- get, ihr En -- ge -- lein rein, 
mit tau -- send sü -- ßen Stim -- me -- lein! 
} 

LUCa = \lyricmode { 
\set stanza = "3." 
Schlaf, mein Hoff -- nung 
und mein Trös -- tung, 
schlaf, o Freud des Her -- zens mein! 
Sin -- get und klin -- get dem Kin -- de -- lein klein, 
dem ho -- nig -- sü -- ßen Je -- su -- lein, 
} 

LUCb = \lyricmode { 
Schlaf, mein Won -- ne, 
schlaf, mein Kro -- ne, 
schlaf und schließ dein Äu -- ge -- lein! 
sin -- get und klin -- get, ihr En -- ge -- lein rein, 
mit tau -- send sü -- ßen Stim -- me -- lein! 
} 

%--------------------

\header { 
 kaisernumber = "92" 
 comment = "" 
 footnote = "" 
 
 title = "Des Kindleins Wiegenlied" 
 subtitle = "" 
 composer = "Melodie 1697 aufgezeichnet" 
 opus = "" 
 arranger = "bearbeitet von Robert Fuchs (1847–1927)" 
 poet = "Nach dem Lateinischen (1638)" 
 
 mutopiatitle = "Des Kindleins Wiegenlied" 
 mutopiacomposer = "FuchsR"
 mutopiapoet = "" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1910s" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 

 footer = "Mutopia-2014/03/23-1710"
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
				{ \global \SWiegenlied } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AWiegenlied } 
				>> } 
			>> 
	\context Lyrics = lineone 
	\context Lyrics = linetwo 
	\context Staff = men 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TWiegenlied } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BWiegenlied } 
				>> } 
		>> 
	\context Lyrics = lineone \lyricsto Sopran { \LUAa \LUBa \LUCa } 
	\context Lyrics = linetwo \lyricsto Sopran { \LUAb \LUBb \LUCb } 
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
\tempo 8=92
}

}
