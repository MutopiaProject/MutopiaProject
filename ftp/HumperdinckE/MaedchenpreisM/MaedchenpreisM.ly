#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key f \major \time 6/8 \tempo "Leicht bewegt" } 

TAMaedchenpreis = \relative f { 
\revert Rest.direction 
\partial 8 
c8\p 
f4 f8 a4 a8 
c4. c8 r c8 
c4\< c8 d4 d8 
c4.(\> a8)\! r c,8\p 
f4 f8 a4 a8 c4. c8 r c8 
c4 c8 d4 d8 
c4.~ c4 c8\f 
\repeat volta 2 { 
f4 f8 e4 d8 
c4. a8 r a8 
c4 c8 d4 d8 
c4.\> bes!4 bes8 
a4 a8 g4 g8\! 
} 
\alternative { 
{f4.~\p f8 r c'\f } 
{f,4.~\p f8 r } 
} 
\bar "|." 
} 

TBMaedchenpreis = \relative f { 
\partial 8 
c8 
f4 f8 a4 a8 
a4. a8 s f 
g4 g8 a4 bes8 
a4.( f8) s c8 
f4 f8 f4 f8 
g4. g8 s g 
a4 c8 c[ a] b 
c4( g8 a4) bes!8 
\repeat volta 2 { 
c4 c8 a4 f8 
f4. f8 s f8 
g4 c8 c[ a] b 
g4. f4 f8 
f4 d8 g4 g8 
} 
\alternative { 
{f4.~ f8 s c' } 
{f,4.~ f8 s } 
} 
\bar "|." 
} 

BAMaedchenpreis = \relative f { 
\partial 8 
c8 
f4 f8 f4 f8 
f4. f8 s a8 
g4 g8 f4 f8 
f4.~ f8 s c8 
f4 f8 e4 d8 
e4. e8 s e8 
e4 a8 g4 f8 
e4.~ e4 e8 
\repeat volta 2 { 
a4 a8 c4 bes8 
a4. f8 s a8 
g4 g8 f4 f8 
e4. d4 d8 
c4 f8 f[ d] e 
} 
\alternative { 
{f4.~ f8 s c } 
{f4.~ f8 s } 
} 
\bar "|." 
} 

BBMaedchenpreis = \relative f { 
\revert Rest.direction 
\partial 8 
c8\p 
f4 f8 f4 f8 
f4. f8 r f8 
e4\< e8 d4 bes8 
f'4.~\> f8\! r c8\p 
f4 f8 e4 d8 
c4. c8 r b8 
a4 a'8 g4 g,8 
c4( bes!8 a4) g8\f 
\repeat volta 2 { 
f4 f'8 a,4 bes8 
f'4. f8 r f8 
e4 e8 d4 g,8 
c4.\> d4 g,8 
a4 bes8 c4 c8\! 
} 
\alternative { 
{f4.~\p f8 r c\f } 
{f4.~\p f8 r } 
} 
\bar "|." 
} 


LMaedchenpreisA = \lyricmode { 
\set stanza = "1." 
Ich spring an die -- sem Rin -- ge 
aufs bes -- te so ich kann, __ 
von hüb -- schen Mägd -- lein sin -- ge, 
als ichs ge -- ler -- net han. __ 
Ich ritt durch frem -- de Lan -- de, 
da sah ich man -- cher -- han -- de, 
da ich die Mägd -- lein fand. __ 
Ich fand. __ 
} 

LMaedchenpreisB = \lyricmode { 
\set stanza = "2." 
Die Mäg -- de -- lein von Fran -- ken, 
die seh ich all -- zeit gern, __ 
nach ihn stehn mein Ge -- dan -- ken, 
sie ge -- ben sü -- ßen Kern, __ 
sie sind die feins -- ten Dir -- nen. 
Wollt Gott, ich sollt ihn zwir -- nen, 
das Spin -- nen wollt ich lern. __ 
Sie lern. __ 
} 

LMaedchenpreisC = \lyricmode { 
\set stanza = "3." 
Die Mäg -- de -- lein von Schwa -- ben, 
die ha -- ben gol -- den Haar, __ 
sie dür -- fens keck -- lich wa -- gen, 
zu spin -- nen son -- der Lehr. __ 
Wer ihn den Flachs will schwin -- gen, 
der darf nicht sein ge -- rin -- ge; 
das sag ich euch für -- wahr. __ 
Wer wahr. __ 
} 

LMaedchenpreisD = \lyricmode { 
\set stanza = "4." 
Die Mäg -- de -- lein vom Rhei -- ne, 
die lob ich oft und dick; __ 
sie sind so hübsch un fei -- ne 
und wer -- fen freund -- lich Blick, __ 
sie kön -- nen Sei -- den spin -- nen, 
die neus -- ten Lied -- lein sin -- gen, 
sie sind der Lieb ein Strick. __ 
Sie Strick. __ 
} 

LMaedchenpreisE = \lyricmode { 
\set stanza = "5." 
Die Mäg -- de -- lein ho -- fie -- ren 
soll man, so lang man mag; __ 
das Al -- ter kommt doch schie -- re, 
kommt nä -- her je -- den Tag. __ 
Ich bin nun wor -- den al -- te, 
muß mich zum Wei -- ne hal -- ten, 
so lang als ichs ver -- mag. __ 
Ich mag. __ 
} 

%--------------------

\header { 
 kaisernumber = "387" 
 comment = "" 
 footnote = "" 
 
 title = "Mädchenpreis des fahrenden Sängers" 
 subtitle = "" 
 composer = "Volksweise, 1460 aufgezeichnet," 
 opus = "" 
 arranger = "bearbeitet von Engelbert Humperdinck (1854–1921)" 
 poet = "Tanzlied, 1460 aufgezeichnet" 
 
 mutopiatitle = "Mädchenpreis des fahrenden Sängers" 
 mutopiacomposer = "HumperdinckE" 
 mutopiapoet = "Traditional" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (TTBB)" 
 date = "1910s" 
 source = "Leipzig : C. F. Peters, 1907" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2017-07-07" 

 footer = "Mutopia-2014/03/23-1702"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat{ \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
} 

\score {
{
\context ChoirStaff 
	<< 
	\context Staff = TenorStaff 
	<< 
	\accidentalStyle voice 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G_8" 
			\context Voice = TenorA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \TAMaedchenpreis 
				>> } 
			\context Voice = TenorB { \voiceTwo 
 				<< 
				\autoBeamOff 
				\global \TBMaedchenpreis 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Lyrics = versefour 
	\context Lyrics = versefive 
	\context Staff = BassStaff 
	<< 
	\accidentalStyle voice 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = BassA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \BAMaedchenpreis 
				>> } 
			\context Voice = BassB { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				\global \BBMaedchenpreis 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto TenorA \LMaedchenpreisA 
	\context Lyrics = versetwo \lyricsto TenorA \LMaedchenpreisB 
	\context Lyrics = versethree \lyricsto TenorA \LMaedchenpreisC 
	\context Lyrics = versefour \lyricsto TenorA \LMaedchenpreisD 
	\context Lyrics = versefive \lyricsto TenorA \LMaedchenpreisE 
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
\tempo 4.=92
}

}
