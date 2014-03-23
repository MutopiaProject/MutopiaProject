#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key es \major \time 4/4 \tempo "Langsam" } 

SAbendlied = \relative es'' { 
\revert Rest.direction 
\partial 4 
bes4 bes4. bes8 bes4 bes c2 bes4 
bes4 c es d c bes2. \breathe 
bes4 bes4. bes8 c4\< c\! d4.(\> c8) bes4\! \breathe 
c d\< c8[ d] es4.\> a,8 bes2\> r4\! 
bes4 c4. c8 c4 d8[ c] bes2 bes4 \breathe 
bes4 bes a\> g f\! bes2 r4 
bes8[ as!] g4.\< bes8 es4\! f8[ es] es2\> c4\! r8 
\dimTextDim 
c8\p\> bes4 bes c4. bes8 bes2.\pp \breathe 
\dimHairpin 
bes8[ as] g4.\< bes8 es4\! f8[\f es] es2\> c4\! r8 
c8\mf bes4 bes^\markup {\large\italic rit.} c4. bes8 es2\fermata r4\fermata 
\bar "|." 
} 

AAbendlied = \relative es' { 
\partial 4 
es4 es4. es8 es4 g fis2 g4 
es4 es es es es es2. 
es4 d4. f8 f4 f fis2 g4 
e4 f! a a4. es8 d2 s4 
d4 e4. e8 f4 f d4( c8[ d]) es!4 
es4 es es es es d2 s4 
d4 es4. g8 g4 g as2 as4 s8 
f8 f4 f as4. as8 g2. 
f4 es4. g8 bes4 bes as2 as4 s8 
f8 f4 f f4. as8 g2 s4 
\bar "|." 
} 

TAbendlied = \relative es { 
\partial 4 
g4 g4. g8 g4 bes a2 bes4 
g4 as as as as g2. \breathe 
g4 f4. bes8 bes4 a a2 bes4 \breathe 
bes4 bes es8[ d] c4. c8 bes2 s4 
f4 g4. g8 as!4 as as2 g4 \breathe 
g4 f f f f f2  s4 
bes4 bes4. es8 des4 des c2 es4  s8 
es8 es4 d!8[ c] d4. f8 es2. \breathe 
d4 es4. es8 des4 des c2 es4 s8 
es8 es4 d8[ c] d4. f8 es2 s4\fermata 
\bar "|." 
} 

BAbendlied = \relative es { 
\revert Rest.direction 
\partial 4 
es4 es4. es8 es4 es es2 es4 
es4 as, c bes as es'2. 
es4 bes4. d8 f4\< f\! d2\> g4\! 
g4 f\< f f4.\> f8 bes,2\> r4\! 
bes4 bes4. bes8 bes4 bes bes2 bes4 
bes4 c c\> bes a\! bes2 r4 
bes4 es4.\< es8 bes'4\! bes as2\> as4\! r8 
\dimTextDim 
a8\p\> bes4 bes bes,4. d8 es2.\pp 
\dimHairpin 
bes'4 es,4.\< es8 g,4\! g\f as2\> as4\! r8 
a8\mf bes4 bes_\markup {\large\italic rit.} bes'4. bes8 es,2\fermata r4 
\bar "|." 
} 


LAbendliedA = \lyricmode { 
\set stanza = "1." 
Der A -- bend senkt sich lei -- se, 
der Him -- mel ist so blau; 
nun schlum -- mern al -- le Blu -- men 
und Vög -- lein auf der Au. 
Sie ni -- cken und sie träu -- men; 
o stör nicht ih -- re Lust, 
seht ei -- ne Welt ge -- grün -- det 
auch in der kleins -- ten Brust, 
seht ei -- ne Welt ge -- grün -- det 
auch in der kleins -- ten Brust. 
} 

LAbendliedB = \lyricmode { 
\set stanza = "2." 
Im Trau -- me schwingt die Ler -- che 
sich in die kla -- re Luft; 
was je -- de Blum' emp -- fin -- det, 
das haucht sie aus in Duft. 
Das Welt -- all groß und herr -- lich 
mit sei -- nen Wel -- ten klein 
und al -- ler Him -- mel Him -- mel 
nimmt ja mein Bu -- sen ein, 
und al -- ler Him -- mel Him -- mel 
nimmt ja mein Bu -- sen ein. 
} 

LAbendliedC = \lyricmode { 
\set stanza = "3." 
Sieh, al -- le Stern er -- flim -- mern, 
es schmilzt des A -- bends Pracht; 
lass kom -- men nur die Stür -- me 
und klei -- den schwarz die Nacht! 
Schlaft süß und träumt, ihr Vög -- lein, 
ihr Blu -- men auf der Au! 
Im Her -- zen ist es ru -- hig, 
da ist der Him -- mel blau, 
im Her -- zen ist es ru -- hig, 
da ist der Him -- mel blau. 
} 

%--------------------

\header { 
 kaisernumber = "205" 
 comment = "" 
 footnote = "" 
 
 title = "Abendlied" 
 subtitle = "" 
 composer = "Robert Volkmann (1815–1883)" 
 opus = "" 
 arranger = "" 
 poet = "Hans Christian Andersen (1805–1875)" 
 
 mutopiatitle = "Abendlied" 
 mutopiacomposer = "VolkmannR" 
 mutopiapoet = "H. C. Andersen (1805–1875)" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1850s" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/23-987"
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
				{ \global \SAbendlied } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AAbendlied } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Staff = men 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TAbendlied } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BAbendlied } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Bass \LAbendliedA 
	\context Lyrics = versetwo \lyricsto Bass \LAbendliedB 
	\context Lyrics = versethree \lyricsto Bass \LAbendliedC 
	>> 
}

\layout {
indent = 0.0\cm
\context {\Score 
\remove "Bar_number_engraver"
\override DynamicTextSpanner.style = #'none 
\override BreathingSign.text = #(make-musicglyph-markup "scripts.rvarcomma") 
}
\context {\Staff 
\override VerticalAxisGroup.minimum-Y-extent = #'(-1 . 1) 
}
}

\midi {
\tempo 4=100
}

}
