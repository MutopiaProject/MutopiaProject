\include "deutsch.ly" 

#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key g \major \time 4/4 \tempo "Poco sostenuto" } 

TAGottesRat = \relative g' { 
\partial 4 
d4\mf c4. h8 h4 g' fis4. e8 e4 
e4 a, h c e d4. c8 h4 
d4\p a4.( c8) h4 
d4\pp a4.( c8) h4 
h4\mf g' fis e4. d8 d4. cis8 cis4 
a4 fis' e d4. cis8 cis4.-> h8 h4 
d4\p a4.( c!8) h4 
d4\pp a4.( c8) h4 
d4 a2.( c4) h2.\fermata 
\bar ":|." 
\break 
d4\f c4. h8 h4 g' fis4. e8 e4\fermata 
e4 a, h c e d4. c8 h4 
\crescTextCresc 
h4 g'\< fis e4. d8 d4. cis8 cis4 
e4^\markup{\large\italic "sehr breit"}\f a g fis4 r8 e e4.\fermata d8 d4\fermata 
d4\p a4. c!8 h4 
d4\pp a4. c8 h4 
d4 a2.^\markup{\large\italic rit.} c4 h2.\fermata 
\bar "|." 
} 

TBGottesRat = \relative g' { 
\partial 4 
d4 c4. h8 h4 g g4. g8 g4 
e4 fis gis a h a fis g! 
g4 g( fis) g 
g4 g( fis) g 
h4 e d h4. h8 a4. a8 a4 
a4 d cis h ais ais4. h8 h4 
g4 g( fis) g 
g4 g( fis) g 
g4 g2( fis) g2. 
\bar ":|." 
d'4 c4. h8 h4 g g4. g8 g4 
e4 fis gis a h a fis g! 
h4 e dis h4. h8 a4. a8 a4 
cis4 d d d cis h4. h8 h4 
g4 g fis g 
g4 g fis g 
g4 g2 fis g2. 
} 

BAGottesRat = \relative g { 
\partial 4 
h4 a4. g8 g4 g fis4. e8 e4 
e4 e d e g fis d g 
d4 e( d) d 
d4 e( d) g 
g4 h a g4. g8 fis4. e8 e4 
a4 fis g fis4. e8 e4. d8 d4 
d4 e( d) d 
d4 e( d) g 
d4 d1 d2. 
\bar ":|." 
h'4 a4. g8 g4 g fis4. e8 e4 
e4 e d e g fis d g 
h4 h a g4. g8 fis4. e8 e4 
a4 a h a g g4. fis8 fis4 
d4 e d d 
d4 e d g 
d4 d2 d d2. 
} 

BBGottesRat = \relative g { 
\partial 4 
h4\mf a4. g8 g4 e d4. c8 c4 
e4 c h a g'! fis d g 
h,4\p c( d) g, 
h4\pp c( d) g 
g4\mf e fis g e a,4. a8 a4 
a'4 d, e fis fis, g4.-> g8 g4 
h4\p c( d) g, 
h4\pp c( d) g 
h,4 d1 g,2.\fermata 
\bar ":|." 
h'4\f a4. g8 g4 e d4. c8 c4\fermata 
e4 c h a g'! fis d g 
\crescTextCresc 
h4 e,\< fis g e a,4. a8 a4 
g'4\f fis g a a,8[ ais] h4.\fermata h8 h4\fermata 
h4\p c d g, 
h4\pp c d g 
h,4 d2_\markup{\large\italic rit.} d g,2.\fermata 
} 


LGottesRatA = \lyricmode { 
\set stanza = "1." 
Es ist be -- stimmt in Got -- tes Rat, 
dass man vom Liebs -- ten, was man hat, 
muss schei -- den, 
muss schei -- den. 
Wie -- wohl doch nichts im Lauf der Welt 
dem Her -- zen, ach! so sau -- er fällt 
als schei -- den, 
als schei -- den, 
ja schei -- den. 
} 

LGottesRatB = \lyricmode { 
\set stanza = "2." 
So dir ge -- schenkt ein Knösp -- lein was, 
so tu es in ein Was -- ser -- glas; 
doch wis -- se, 
doch wis -- se: 
Blüht mor -- gen dir ein Rös -- lein auf, 
es welkt wohl schon die Nacht da -- rauf, 
das wis -- se, 
das wis -- se, 
das wis -- se! 
} 

LGottesRatC = \lyricmode { 
\set stanza = "3." 
Und hat dir Gott ein Lieb be -- schert 
und hältst du sie recht in -- nig wert, 
die Dei -- ne, 
die Dei -- ne, 
es wird nur we -- nig Zeit wohl sein, 
so lässt sie dich so gar al -- lein, 
dann wei -- ne, 
dann wei -- ne, 
dann wei -- ne! 
} 

LGottesRatD = \lyricmode { 
\set stanza = "4." 
Nun musst du mich auch recht ver -- stehn, 
nun musst du mich auch recht ver -- stehn: 
wenn Men -- schen aus -- ei -- nan -- der gehn, 
so sa -- gen sie: 
Auf Wie -- der -- sehn! 
auf Wie -- der -- sehn! 
auf Wie -- der -- sehn! 
auf Wie -- der -- sehn! 
} 

%--------------------

\header { 
 kaisernumber = "107" 
 comment = "" 
 footnote = "" 
 
 title = "Es ist bestimmt in Gottes Rat" 
 subtitle = "" 
 composer = "Felix Mendelssohn Bartholdy (1809–1847), 1839" 
 opus = "op. 47" 
 arranger = "Bearbeitung von Robert Radecke (1830–1911)" 
 poet = "Ernst Freiherr von Feuchtersleben (1806–1849), vor 1826" 
 
 mutopiatitle = "Es ist bestimmt in Gottes Rat" 
 mutopiacomposer = "Mendelssohn-BartholdyF" 
 mutopiapoet = "E. v. Feuchtersleben (1806–1849)" 
 mutopiaopus = "Op. 47" 
 mutopiainstrument = "Choir (TTBB)" 
 date = "1900s" 
 source = "Leipzig : C. F. Peters, 1907" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 

 footer = "Mutopia-2014/03/23-798"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat{ \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
} 

\score {
{
\context ChoirStaff 
	<< 
	\context Lyrics = extra 
	\context Staff = TenorStaff 
	<< 
	\accidentalStyle voice 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G_8" 
			\context Voice = TenorA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TAGottesRat } 
				>> } 
			\context Voice = TenorB { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \TBGottesRat } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Staff = BassStaff 
	<< 
	\accidentalStyle voice 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = BassA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \BAGottesRat } 
				>> } 
			\context Voice = BassB { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BBGottesRat } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto TenorB \LGottesRatA 
	\context Lyrics = versetwo \lyricsto TenorB { \LGottesRatB \LGottesRatD } 
	\context Lyrics = versethree \lyricsto TenorB \LGottesRatC 
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
\tempo 4=108
}

}
