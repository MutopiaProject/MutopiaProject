\include "deutsch.ly" 

#(set-global-staff-size 15.5) 

\version "2.9" 

global = { \key b \major \time 3/4 \tempo 4.=80 } 

SJugend = \relative b' 
	{ 
	\partial 4. 
	f8\mf d es 
	f8.[ d'16] d8 c b g 
	f4 d8 f g a 
	b8[( a] g) c b a 
	b4. 
	\bar "|:" 
	b8 a b 
	c8. d16 c8 es8 d c 
	d8. f16 f8 b,\p b b 
	\setTextCresc 
	g8[\< es'] d c d c 
	b4~\f b8 
	\bar ":|" 
	} 

AJugend = \relative b 
	{ 
	\partial 4. 
	d b c 
	d8.[ b'16] b8 a g es 
	d4 b8 d es f 
	f4( es8) g f f 
	f4. 
	\bar "|:" 
	f4 f8 
	a8.( b16) a8 c b a 
	b8. d16 d8 f, g f  
	g8[ es] f g a a 
	f4~ f8 
	\bar ":|" 
	} 

TJugend = \relative b 
	{ 
	\partial 4. 
	b8 a g 
	f4 f8 f d es 
	f8.[ d'16] d8 c b c 
	b4( b8) es d c b4. 
	\bar "|:" 
	d8 es d 
	f8. f16 f8 f f f 
	f4 f8 d\p es d 
	es8[ g] f es es es
	d4~ d8 
	\bar ":|" 
	} 

BJugend = \relative b, 
	{ 
	\partial 4. 
	b8\mf b b 
	b4 b8 b b c 
	d8.[ b'16] b8 a g es 
	d4( es8) c f f, b4. 
	\bar "|:" 
	r8 r4 
	r4 r8 a'8 b f 
	b4 b,8 r8 r4 
	\setTextCresc 
	r8\< c d es f f
	b4~\f b8 
	\bar ":|" 
	} 


LJugendA = \lyricmode { 
\set stanza = "1." 
Schön ist die Ju -- gend bei fro -- hen Zei -- ten, 
schön ist die \set ignoreMelismata = ##t Ju -- gend, \unset ignoreMelismata sie kommt nicht mehr. 
\set stanza = "1.-5." 
Drum noch ein -- mal, schön sind die Ju -- gend -- jahr, 
schön ist die Ju -- gend, sie kommt nicht mehr. 
} 

LJugendB = \lyricmode { 
\set stanza = "2." 
Ver -- gang -- ne Zei -- ten kehrn nie -- mals wie -- der, 
ver -- schwun -- den ist das jun -- ge Blut, 
} 

LJugendC = \lyricmode { 
\set stanza = "3." 
Es blü -- hen Ro -- sen, es blü -- hen Nel -- ken, 
es blüht mein \set ignoreMelismata = ##t Schätz -- chen \unset ignoreMelismata ganz un -- ver -- welkt, 
} 

LJugendD = \lyricmode { 
\set stanza = "4." 
Ich hab ein Wein -- stock, und der trägt Re -- ben, 
und aus den \set ignoreMelismata = ##t Re -- ben \unset ignoreMelismata fließt ed -- ler Wein, 
} 

LJugendE = \lyricmode { 
\set stanza = "5." 
Die Blüm -- lein wel -- ken, die Blät -- ter fal -- len, 
mein Lieb -- chen spricht: „Ver -- giß mein nicht!“
} 

LJugendXS = \lyricmode { 
\skip 8 \skip 8 \skip 8 \skip 4 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4\skip 8 
\skip 8 \skip 8 \skip 8 \skip 4. \skip 8 \skip 8 \skip 8 \skip 4. 
\set stanza = "1.-5. " 
Drum sag ichs noch ein -- mal, 
} 

LJugendXT = \lyricmode { 
\skip 8 \skip 8 \skip 8 \skip 4 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4\skip 8 
\skip 8 \skip 8 \skip 8 \skip 4. \skip 8 \skip 8 \skip 8 \skip 4. 
\set stanza = "1.-5. " 
Drum sag ichs noch ein -- mal, schön ist die Ju -- gend, 
} 

LJugendXB = \lyricmode { 
\skip 8 \skip 8 \skip 8 \skip 4 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4\skip 8 
\skip 8 \skip 8 \skip 8 \skip 4. \skip 8 \skip 8 \skip 8 \skip 4. 
\skip 8 \skip 8 \skip 8 \skip 4 \skip 8 
die Ju -- gend kommt nicht mehr. 
} 

%--------------------

\header {
 kaisernumber = "436"
 comment = ""
 footnote = ""
 
 title = "Schön ist die Jugend"
 subtitle = ""
% composer = "Folksong"
 opus = ""
 meter = \markup {}
 arranger = "Arrangement by Engelbert Humperdinck (1854-1921)"
 poet = ""
 
 mutopiatitle = "Schön ist die Jugend"
 mutopiacomposer = "Traditional"
 mutopiapoet = ""
 mutopiaopus = ""
 mutopiainstrument = "Choir (SATB)"
 date = "1910s"
 source = "Leipzig : C. F. Peters, 1915"
 style = "Romantic"
 copyright = "Creative Commons Attribution 2.5"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2006/November/15"
 
 footer = "Mutopia-2006/12/01-855"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
} 

\score {
{
\context ChoirStaff 
	<< 
%	\context Lyrics = SopranX 
	\context Staff = women 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G" 
			\context Voice = Sopran { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \SJugend } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AJugend } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Lyrics = versefour 
	\context Lyrics = versefive 
	\context Lyrics = TenorX 
	\context Staff = men 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TJugend } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BJugend } 
				>> } 
		>> 
	\context Lyrics = BassX 

%	\context Lyrics = SopranX \lyricsto Sopran \LJugendXS 
	\context Lyrics = verseone \lyricsto Alt \LJugendA 
	\context Lyrics = versetwo \lyricsto Alt \LJugendB 
	\context Lyrics = versethree \lyricsto Alt \LJugendC 
	\context Lyrics = versefour \lyricsto Alt \LJugendD 
	\context Lyrics = versefive \lyricsto Alt \LJugendE 
	\context Lyrics = TenorX \lyricsto Tenor \LJugendXT 
	\context Lyrics = BassX \lyricsto Bass \LJugendXB 
	>>
}

\layout {
indent = 0.0\cm
\context {\Score 
\remove "Bar_number_engraver"
\override MetronomeMark #'transparent = ##t 
\override DynamicTextSpanner #'dash-period = #-1.0 
}
\context {\Staff 
\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1) 
}
}

\midi {
\context { \Voice 
\remove "Dynamic_performer" 
\remove "Span_dynamic_performer" 
}
}

}
