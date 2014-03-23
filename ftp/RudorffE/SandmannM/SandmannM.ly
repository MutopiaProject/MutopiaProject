\include "deutsch.ly" 

#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key h \major \time 4/4 \tempo "Heimlich, nicht schleppend." } 

TASandmann = \relative h { 
\revert Rest.direction 
\partial 4 
fis4\p h4. cis8 dis4 cis h2 ais4 
h4 cis8[ dis] e4 dis8[ cis] h4 cis2 r4 
fis,4 h4. cis8 dis4 cis h2 ais4 
h4 cis8[ dis] e4 dis8[ cis] h4 cis2 r4 
dis8[ e] fis4\< dis e fis gis4.\> fis8 e4\! 
cis8[ dis] e4 e dis fis cis2. r4 
fis4.(\p dis8) cis2 
dis4. cis8 h8[ cis] dis[ e] fis4 h,8[ cis] dis4 cis h2 r4 
dis8[ e] fis4\< dis e fis gis4.\> fis8 e4\! 
cis8[ dis] e4 e dis fis cis2. r4 
fis4.(\p dis8) cis2 
dis4.\pp cis8 h8[ cis] dis[ e] fis4 h,8[ cis] dis4 cis h2 r4 
\bar "|." 
} 

TBSandmann = \relative h { 
\partial 4 
fis4 fis4. fis8 fis4 fis fis2 fis4 
h4 ais cis h fis ais2 s4 
fis4 h4. ais8 h4 gis fis2 fis4 
fis4 fis ais h fis ais2 s4 
h8[ cis] dis4 h cis dis e4. dis8 cis4 
cis8[ gis] cis4 cis h h ais2. s4 
h2 ais 
h4. ais8 h4 h h h h ais h2 s4 
h8[ cis] dis4 h h h h his cis 
cis8[ gis] cis4 cis cis h ais2. s4 
h2 ais 
h4 ais h h h h h ais h2 s4 
\bar "|." 
} 

BASandmann = \relative h { 
\revert Rest.direction 
\partial 4 
fis4 dis4. e8 fis4 fis fis2 fis4 
fis4 fis fis fis fis fis2 r4 
fis4 fis4. fis8 fis4 e dis2 cis4 
dis4 cis fis fis fis fis2. 
fis4 h h h h h his cis 
gis4 gis( fis2) fis4 fis cis' fis,2 
fis2 fis 
h4. fis8 gis8[ h] ais[ gis] fis4 gis fis e dis 
e fis8[( gis] a4~) a a gis fis e gis cis 
gis4 gis( fis2) fis4 fis cis' fis,2 
fis2 fis 
h4 fisis gis8[ h] ais[ gis] fis4 eis fis e dis2 r4 
\bar "|." 
} 

BBSandmann = \relative h { 
\partial 4 
fis4\p dis4. e8 fis4 e dis2 cis4 
dis4 fis ais, h dis fis2 s4 
e4 dis4. cis8 h4 e, fis2 fis4 
h4 ais fis h( dis fis) cis e 
dis8[ cis] h4\< a' gis fis e\> gis cis,\! 
e8[ dis] cis4 ais h dis fis2.( e4) 
dis4.(\p h8) fis'2 
h4. fis8 gis4 fis8[ e] dis4 e fis fis, h\< 
cis dis8[( e] fis4~)\! fis h, cis dis e\> dis cis\! 
e8[ dis] cis[ h] ais4 h8[ cis8] dis[ e] fis2.( e4) 
dis4.(\p h8) fis'2 
h4\pp fisis gis fis8[ e] dis4 gis, fis fis h2 s4 
\bar "|." 
} 

LSandmannA = \lyricmode { 
\set stanza = "1." 
Die Blü -- me -- lein, sie schla -- fen schon längst im Mon -- den -- schein, 
sie ni -- cken mit den Köpf -- chen auf ih -- ren Stän -- ge -- lein. 
Es rüt -- telt sich der Blü -- ten -- baum, er säu -- selt wie im Traum: 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
Es rüt -- telt sich der Blü -- ten -- baum, er säu -- selt wie im Traum: 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
} 

LSandmannB = \lyricmode { 
\set stanza = "2." 
Die Vö -- ge -- lein, sie san -- gen so süß im Son -- nen -- schein, 
sie sind zur Ruh ge -- gan -- gen in ih -- re Nest -- chen klein. 
Das Heim -- chen in dem Äh -- ren -- grund, es tut al -- lein sich kund: 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
Das Heim -- chen in dem Äh -- ren -- grund, es tut al -- lein sich kund: 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
} 

LSandmannC = \lyricmode { 
\set stanza = "3." 
Sand -- männ -- chen kommt ge -- schli -- chen und guckt durchs Fens -- ter -- lein, 
ob ir -- gend noch ein Lieb -- chen nicht mag zu Bet -- te sein. 
Und wo er noch ein Kind -- chen fand, streut er ins Aug ihm Sand: 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
Und wo er noch ein Kind -- chen fand, streut er ins Aug ihm Sand: 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
} 

LSandmannD = \lyricmode { 
\set stanza = "4." 
Sand -- männ -- chen  aus dem Zim -- mer, es schläft mein Herz -- chen fein, 
es ist gar fest ver -- schlos -- sen schon sein Guck -- äu -- ge -- lein. 
Es leuch -- tet mor -- gen mir Will -- komm das Äu -- ge -- lein so fromm! 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
Es leuch -- tet mor -- gen mir Will -- komm das Äu -- ge -- lein so fromm! 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
} 

%--------------------

\header { 
 kaisernumber = "180" 
 comment = "" 
 footnote = "" 
 
 title = "Sandmännchen" 
 subtitle = "" 
 composer = "Volksweise, aufgezeichnet von Wilhelm von Zuccalmaglio, 1840" 
 opus = "" 
 arranger = "Bearbeitung von Ernst Rudorff (1840–1916)" 
 % poet = "Volkslied, aufgezeichnet (und wahrscheinlichb gedichtet) von Wilhelm von Zuccalmaglio (1803–1864), 1840" 

 mutopiatitle = "Sandmännchen" 
 mutopiacomposer = "RudorffE" 
 mutopiapoet = "" 
 mutopiainstrument = "Choir (TTBB)" 
 date = "1900s" 
 source = "Leipzig : C. F. Peters, 1907" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/23-801"
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
				\set hairpinToBarline = ##f 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TASandmann } 
				>> } 
			\context Voice = TenorB { \voiceTwo 
 				<< 
				\autoBeamOff 
				{ \global \TBSandmann } 
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
				{ \global \BASandmann } 
				>> } 
			\context Voice = BassB { \voiceTwo 
				<< 
				\set hairpinToBarline = ##f 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BBSandmann } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto TenorA \LSandmannA 
	\context Lyrics = versetwo \lyricsto TenorA \LSandmannB 
	\context Lyrics = versethree \lyricsto TenorA \LSandmannC 
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
\tempo 4=90
}

}
