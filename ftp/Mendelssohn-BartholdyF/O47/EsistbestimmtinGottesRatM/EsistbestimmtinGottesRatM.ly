\include "deutsch.ly" 

#(set-global-staff-size 17) 

\version "2.8" 

global = { \key g \major \time 4/4 } 

TAGRuS = \relative g' 
	{ 
	\override DynamicTextSpanner #'dash-period = #-1.0
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
	\bar ":|" 
	d4\f c4. h8 h4 g' fis4. e8 e4\fermata 
	e4 a, h c e d4. c8 h4 
	\setTextCresc 
	h4 g'\< fis e4. d8 d4. cis8 cis4 
	e4\f a g fis4 r8 e e4.\fermata d8 d4\fermata 
	d4\p a4. c!8 h4 
	d4\pp a4. c8 h4 
	d4 a2.^\markup{\italic rit.} c4 h2.\fermata 
	\bar "|." 
	} 

TBGRuS = \relative g' 
	{ 
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
	\bar ":|" 
	d'4 c4. h8 h4 g g4. g8 g4 
	e4 fis gis a h a fis g! 
	h4 e dis h4. h8 a4. a8 a4 
	cis4 d d d cis h4. h8 h4 
	g4 g fis g 
	g4 g fis g 
	g4 g2 fis g2. 
	} 

BAGRuS = \relative g 
	{ 
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
	\bar ":|" 
	h'4 a4. g8 g4 g fis4. e8 e4 
	e4 e d e g fis d g 
	h4 h a g4. g8 fis4. e8 e4 
	a4 a h a g g4. fis8 fis4 
	d4 e d d 
	d4 e d g 
	d4 d1 d2. 
	} 

BBGRuS = \relative g 
	{ 
	\override DynamicTextSpanner #'dash-period = #-1.0
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
	\bar ":|" 
	h'4\f a4. g8 g4 e d4. c8 c4\fermata 
	e4 c h a g'! f d g 
	\setTextCresc 
	h4 e,\< f g e a,4. a8 a4 
	g'4\f f g a a,8[ ais] h4.\fermata h8 h4\fermata 
	h4\p c d g, 
	h4\pp c d g 
	h,4 d2_\markup{\italic rit.} d g,2.\fermata 
	} 


LGRuSA = \lyricmode {
\set stanza = "1. "
Es ist be -- stimmt in Got -- tes Rat, 
daß man vom Lieb -- sten, was man hat, 
muß schei -- den, 
muß schei -- den, 
wie -- wohl doch nichts im Lauf der Welt 
dem Her -- zen, ach! so sau -- er fällt 
als schei -- den, 
als schei -- den, 
ja schei -- den. 
}

LGRuSB = \lyricmode {
\set stanza = "2. "
So dir ge -- schenkt ein Knösp -- lein was, 
so tu es in ein Was -- ser -- glas, 
doch wis -- se, 
doch wis -- se: 
blüht mor -- gen dir ein Rös -- lein auf, 
es welkt wohl schon die Nacht da -- rauf, 
das wis -- se, 
das wis -- se, 
ja wis -- se! 
}

LGRuSC = \lyricmode {
\set stanza = "3. "
Und hat dir Gott ein Lieb be -- schert 
und hältst du sie recht in -- nig wert, 
die Dei -- ne, 
die Dei -- ne, 
es wird nur we -- nig Zeit wohl sein, 
da läßt sie dich so gar al -- lein, 
dann wei -- ne, 
dann wei -- ne, 
ja wei -- ne! 
}

LGRuSD = \lyricmode {
\set stanza = "4. "
Nun mußt du mich auch recht ver -- stehn, 
nun mußt du mich auch recht ver -- stehn, 
wenn Men -- schen aus -- ein -- an -- der gehn, 
so sa -- gen sie: 
Auf Wie -- der -- sehn! 
Auf Wie -- der -- sehn! 
Auf Wie -- der -- sehn! 
}

%--------------------

\header {
 kaisernumber = "107"
 comment = ""
 
 title = "Es ist bestimmt in Gottes Rat"
 subtitle = ""
 composer = "Felix Mendelssohn Bartholdy (1809-1847), 1839"
 opus = "Op. 47"
 meter = "Poco sostenuto"
 arranger = "Robert Radecke (1830-1911)"
 poet = "Ernst Freiherr von Feuchtersleben (1806-1849), vor 1826"
 
 mutopiatitle = "Es ist bestimmt in Gottes Rat"
 mutopiacomposer = "Mendelssohn-BartholdyF"
 mutopiapoet = "E. v. Feuchtersleben (1806-1849)"
 mutopiaopus = "Op. 47"
 mutopiainstrument = "Voice (TTBB)"
 date = "1900s"
 source = "Leipzig : C. F. Peters, 1907"
 style = "Romantic"
 copyright = "Creative Commons Attribution 2.5"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2006/August/1"
 
 footer = "Mutopia-2006/08/07-798"
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
				{ \global \TAGRuS } 
				>> } 
			\context Voice = TenorB { \voiceTwo 
 				<< 
				\autoBeamOff 
				{ \global \TBGRuS } 
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
				{ \global \BAGRuS } 
				>> } 
			\context Voice = BassB { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BBGRuS } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto TenorA \LGRuSA 
	\context Lyrics = versetwo \lyricsto TenorA { \LGRuSB \LGRuSD } 
	\context Lyrics = versethree \lyricsto TenorA \LGRuSC 
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
