\include "deutsch.ly" 

#(set-global-staff-size 17) 

\version "2.8" 

global = { \key h \major \time 4/4 } 

TASandmann = \relative h 
{ 
\partial 4 
fis4\p h4. cis8 dis4 cis h2 ais4 
h4 cis8[ dis] e4 dis8[ cis] h4 cis2 \oneVoice r4 \voiceOne 
fis,4 h4. cis8 dis4 cis h2 ais4 
h4 cis8[ dis] e4 dis8[ cis] h4 cis2 \oneVoice r4 \voiceOne 
dis8[ e] fis4\< dis e fis gis4.\> fis8 e4\! 
cis8[ dis] e4 e dis fis cis2. \oneVoice r4 \voiceOne 
fis4.(\p dis8) cis2 
dis4. cis8 h8[ cis] dis[ e] fis4 h,8[ cis] dis4 cis h2 \oneVoice r4 \voiceOne 
dis8[ e] fis4\< dis e fis gis4.\> fis8 e4\! 
cis8[ dis] e4 e dis fis cis2. \oneVoice r4 \voiceOne 
fis4.(\p dis8) cis2 
dis4.\pp cis8 h8[ cis] dis[ e] fis4 h,8[ cis] dis4 cis h2 \oneVoice r4 \voiceOne 
\bar "|." 
} 

TBSandmann = \relative h 
{ 
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

BASandmann = \relative h 
{ 
\partial 4 
fis4 dis4. e8 fis4 fis fis2 fis4 
fis4 fis fis fis fis fis2 \oneVoice r4 \voiceOne 
fis4 fis4. fis8 fis4 e dis2 cis4 
dis4 cis fis fis fis fis2. 
fis4 h h h h h his cis 
gis4 gis( fis2) fis4 fis cis' fis,2 
fis2 fis 
h4. fis8 gis8[ h] ais[ gis] fis4 gis fis e dis 
e fis8[( gis] a4~) a a gis fis e gis cis 
gis4 gis( fis2) fis4 fis cis' fis,2 
fis2 fis 
h4 fisis gis8[ h] ais[ gis] fis4 eis fis e dis2 \oneVoice r4 \voiceOne 
\bar "|." 
} 

BBSandmann = \relative h 
{ 
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
\set stanza = "1. " 
Die Blü -- me -- lein, sie schla -- fen schon längst im Mon -- den -- schein, 
sie ni -- cken mit den Köpf -- chen auf ih -- ren Stän -- ge -- lein. 
Es rüt -- telt sich der Blü -- ten -- baum, er säu -- selt wie im Traum: 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
Es rüt -- telt sich der Blü -- ten -- baum, er säu -- selt wie im Traum: 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
}

LSandmannB = \lyricmode {
\set stanza = "2. " 
Die Vö -- ge -- lein, sie san -- gen so süß im Son -- nen -- schein, 
sie sind zur Ruh ge -- gan -- gen in ih -- re Nest -- chen klein. 
Das Heim -- chen in dem Äh -- ren -- grund, es tut al -- lein sich kund 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
Das Heim -- chen in dem Äh -- ren -- grund, es tut al -- lein sich kund 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
}

LSandmannC = \lyricmode {
\set stanza = "3. " 
Sand -- männ -- chen kommt ge -- schli -- chen und guckt durchs Fen -- ster -- lein, 
ob ir -- gend noch ein Lieb -- chen nicht mag zu Bet -- te sein. 
Und wo er noch ein Kind -- chen fand, streut er ins Aug ihm Sand: 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
Und wo er noch ein Kind -- chen fand, streut er ins Aug ihm Sand: 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
}

LSandmannD = \lyricmode {
\set stanza = "4. " 
Sand -- männ -- chen  aus dem Zim -- mer, es schläft mein Herz -- chen fein, 
es ist gar fest ver -- schlos -- sen schon sein Guck -- äu -- ge -- lein. 
Es leuch -- tet mor -- gen mir Will -- komm das Äu -- ge -- lein so fromm! 
'Schla -- fe, schla -- fe du, mein Kind -- lein, schla -- fe ein!' 
}

%--------------------

\header { 
 kaisernumber = "180"
 comment = ""
 
 title = "Sandmännchen"
 subtitle = ""
 composer = "Wilhelm von Zuccalmaglio (1803-1864), 1840"
 opus = ""
 meter = "Heimlich, nicht schleppend."
 arranger = "Ernst Rudorff (1840-1916)"
% poet = "Volkslied, 1604"
 
 mutopiatitle = "Sandmännchen"
 mutopiacomposer = "RudorffE"
 mutopiapoet = ""
 mutopiainstrument = "Voice (TTBB)"
 date = "1900s"
 source = "Leipzig : C. F. Peters, 1907"
 style = "Romantic"
 copyright = "Creative Commons Attribution 2.5"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2006/August/1"
 
 footer = "Mutopia-2006/08/07-801"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
}

\score {
{
\context ChoirStaff 
	<< 
	\context Lyrics = extra 
	\context Staff = TenorStaff 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G_8" 
			\context Voice = TenorA { \voiceOne 
				<< 
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
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = BassA { \voiceOne 
				<< 
				\autoBeamOff 
				{ \global \BASandmann } 
				>> } 
			\context Voice = BassB { \voiceTwo 
				<< 
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
\context {\Score \remove "Bar_number_engraver"}
\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3) }
}

\midi {
\tempo 4 = 90
\context {
\Voice
\remove "Dynamic_performer"
\remove "Span_dynamic_performer"
}
}

}
