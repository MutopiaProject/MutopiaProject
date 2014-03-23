#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key a \major \time 4/4 \tempo \markup {Frisch und kräftig (\italic {alla Marcia})} } 

SDeutschesWeihelied = \relative a' { 
\revert Rest.direction 
\partial 4 
e4-.\f a4.-> e8-. a4-. b-. cis4.-> b8-. a4-. 
b4-. cis-. b-. cis-. d-. e2-> cis4-. 
a4-. fis'4.-> d8-. a4-. fis'4-. e4.-> cis8-. a4-. 
e4-. fis-. gis-. a-. d-. cis2( b) a r4 
\bar "|." 
} 

ADeutschesWeihelied = \relative a' { 
\partial 4 
e4 a4. e8 e4 e e4. e8 e4 
e4 e gis a a a2 a4 
a4 a4. a8 a4 a4 a4. a8 a4 
e4 fis gis a a a2( gis) e s4 
\bar "|." 
} 

TDeutschesWeihelied = \relative a { 
\revert Rest.direction 
\partial 4 
e4 a4. e8 e4 gis a4. gis8 a4 
gis4 a e' e e e2 e4 
a,4 d4. a8 a4 d4 cis4. e8 a4 
e4 d d e <<d a>> e'2.( d4) cis2 r4 
\bar "|." 
} 

BDeutschesWeihelied = \relative a { 
\partial 4 
e4-.\f a4.-> e8-. cis4-. e-. a,4.-> e'8-. cis4-. 
e4-. a-. e-. a-. b-. cis2-> a4-. 
a4-. d,4.-> fis8-. a4-. d,4-. <<a4.-> a'4.>> a8-. a4-. 
cis-. d-. b-. cis-. fis,-. e1 <<a2 a,>> s4 
\bar "|." 
} 


LDeutschesWeiheliedA = \lyricmode { 
\set stanza = "1." 
Stimmt an mit hel -- lem, ho -- hem Klang, 
stimmt an das Lied der Lie -- der, 
des Va -- ter -- lan -- des Hoch -- ge -- sang! 
Das Wald -- tal hall es wie -- der. 
} 

LDeutschesWeiheliedB = \lyricmode { 
\set stanza = "2." 
Der al -- ten Bar -- den Va -- ter -- land, 
dem Va -- ter -- land der Treu -- e, 
dir, frei -- es, un -- be -- zwung -- nes Land, 
dir weihn wir uns aufs neu -- e. 
} 

LDeutschesWeiheliedC = \lyricmode { 
\set stanza = "3." 
Zur Ah -- nen -- tu -- gend wir uns weihn, 
zum Schut -- ze dei -- ner Hüt -- ten; 
wir lie -- ben deut -- sches Fröh -- lich sein 
und al -- te deut -- sche Sit -- ten. 
} 

LDeutschesWeiheliedD = \lyricmode { 
\set stanza = "4." 
Die Bar -- den sol -- len Lieb und Wein, 
doch öf -- ter Tu -- gend prei -- sen 
und sol -- len bie -- dre Män -- ner sein 
in Ta -- ten und in Wei -- sen. 
} 

LDeutschesWeiheliedE = \lyricmode { 
\set stanza = "5." 
Ihr Kraft -- ge -- sang soll him -- mel -- an 
mit Un -- ge -- stüm sich rei -- ßen, 
und je -- der ech -- te deut -- sche Mann 
soll Freund und Bru -- der hei -- ßen. 
} 

%--------------------

\header { 
 kaisernumber = "148" 
 comment = "" 
 footnote = "" 
 
 title = "Deutsches Weihelied" 
 subtitle = "" 
 composer = "Albert Methfessel (1785–1869), 1811" 
 opus = ""  
 arranger = "Bearbeitung von Friedrich Ernst Koch (1862–1927)" 
 poet = "Matthias Claudius (1740–1815), 1772" 
 
 mutopiatitle = "Deutsches Weihelied" 
 mutopiacomposer = "MethfesselA" 
 mutopiapoet = "M. Claudius (1740–1815)"
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1811" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/23-631"
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
				{ \global \SDeutschesWeihelied } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \ADeutschesWeihelied } 
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
				{ \global \TDeutschesWeihelied } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BDeutschesWeihelied } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Sopran \LDeutschesWeiheliedA 
	\context Lyrics = versetwo \lyricsto Sopran \LDeutschesWeiheliedB 
	\context Lyrics = versethree \lyricsto Sopran \LDeutschesWeiheliedC 
	\context Lyrics = versefour \lyricsto Sopran \LDeutschesWeiheliedD 
	\context Lyrics = versefive \lyricsto Sopran \LDeutschesWeiheliedE 
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
\tempo 4=126
}

}
