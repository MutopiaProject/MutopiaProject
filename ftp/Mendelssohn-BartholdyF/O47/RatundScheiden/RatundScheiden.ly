\include "deutsch.ly" 

#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key f \major \time 4/4 \tempo "Ziemlich gehalten" } 

SGottesRat = \relative f'' { 
\partial 4 
c4\mp b4. a8 a4 f' e4. d8 d4 
d4 g,\< a b d\! c4.\> b8 a4\! 
c4\p g4.( b8) a4 
c4\pp g4.( b8) a4 
a4\mf f'\< e d4. c8 c4.\! h8 h4 
g4\mp e' d c4. h8 h4.->\> a8 a4\! 
c4\p g!4.( b!8) a4 
c4\pp g4.( b8) a4 
\override Hairpin.to-barline = ##f 
a4\p\< g2.( b4)\> a2.\! 
\bar ":|." \break 
c4\f b4. a8 a4 f' e4. d8 d4\fermata 
r4 r2 r4 d\p c4.-> b8 a4 
a4\cresc f'4 e d4. c!8 c4. h8 h4 
\revert Rest.direction 
d4\f g f e r8 d d2.-> c4 c2 r4 
c4\p g4. b8 a4 
c4\pp g4. b8 a4 
c4\p << g2.\< {s2 s4\f\>} >> b4 << a2. {s2 s4\pp} >> 
\bar "|." 
} 

AGottesRat = \relative f' { 
\partial 4 
f4 f4. f8 f4 f f4. f8 f4 
f4 e fis g a g e f! 
f4 f( e) f 
f4 f( e) f 
f4 f g a a g4. g8 g4 
f4 e h' a gis gis4.-> a8 a4 
f4 f( e) f 
f4 f( e) f 
f4 f2( e) f2. 
\bar ":|." 
f4 f4. f8 f4 f f4. f8 f4 
d4\p d c b d g-> e f 
g4 f g a a g4. g8 g4 
g4 g a g h a2. a4 a2 s4 
f4 f e f 
f4 f e f 
f4 f2 e f2. 
\bar "|." 
} 

TGottesRat = \relative f' { 
\partial 4 
c4 c4. c8 c4 c c4. b8 b4 
d4 d c b a c4. c8 c4 
c4 d( c) c 
c4 d( c) c 
c4 d c a f' e4. d8 d4 
d4 c f e d d4.-> c8 c4 
c4 d( c) c 
c4 d( c) c 
c4 c1 c2. 
\bar ":|." 
c4 c4. c8 c4 c c4. b8 b4 
d4 g, a b a g-> c c 
cis4 d a a f' e4. d8 d4 
h4 c c c f f2. e4 e2 s4 
c4 d c c 
c4 d c c 
c4 c2 c c2. 
\bar "|." 
} 

BGottesRat = \relative f { 
\partial 4 
a4\mp g4. f8 f4 a b4. b,8 b4 
b'4 b4\< a g f\! e\> c f\! 
a,4\p b( c) f 
a,4\pp b( c) f 
f4\mf d\< e f d g4.\! g8 g4 
h,4\mp c d e e f4.->\> f8 f4\! 
a,4\p b!( c) f 
a,4\pp b( c) f 
\override Hairpin.to-barline = ##f 
f4\p\< << c1 {s2 s\>} >> f2.\! 
\bar ":|." 
a4\f g4. f8 f4 a b4. b,8 b4\fermata 
b'4\p e, fis g f e-> c f 
e4\cresc d e f d g4. g8 g4 
\revert Rest.direction 
f4\f e f g gis a2.-> a4 a2 r4 
a,4\p b c f 
a,4\pp b c f 
a,4\p c2\< c\f\> << f2. {s2 s4\pp} >> 
\bar "|." 
} 


LGottesRatA = \lyricmode { 
\set stanza = "1." 
Es ist be -- stimmt in Got -- tes Rat, 
daß man vom Liebs -- ten, was man hat, 
muss schei -- den, 
muss schei -- den, 
wie -- wohl doch nichts im Lauf der Welt 
dem Her -- zen, ach! so sau -- er fällt 
als schei -- den, 
als schei -- den, 
ja schei -- den. 
} 

LGottesRatB = \lyricmode { 
\set stanza = "2."
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

LGottesRatC = \lyricmode {
\set stanza = "3." 
Und hat dir Gott ein Lieb be -- schert 
und hältst du sie recht in -- nig wert, 
die Dei -- ne, 
die Dei -- ne, 
es wird nur we -- nig Zeit wohl sein, 
da lässt sie dich so gar al -- lein, 
dann wei -- ne, 
dann wei -- ne, 
ja wei -- ne! 
}

LGottesRatD = \lyricmode { 
\set stanza = "4." 
Nun musst du mich auch recht ver -- stehn, 
nun musst du mich auch recht ver -- stehn, 
wenn Men -- schen aus -- ein -- an -- der gehn, 
so sa -- gen sie: 
Auf Wie -- der -- sehn! 
Auf Wie -- der -- sehn, 
auf Wie -- der -- sehn, 
auf Wie -- der -- sehn! 
} 

LGottesRatX = \lyricmode { 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
ja, recht ver -- stehn; 
} 

%--------------------

\header { 
 kaisernumber = "133" 
 comment = "" 
 footnote = "" 
 
 title = "Gottes Rat und Scheiden" 
 subtitle = "" 
 composer = "Felix Mendelssohn Bartholdy (1809–1847), 1839" 
 opus = "op. 47" 
 arranger = "Bearbeitung von Arnold Mendelssohn (1809–1847)" 
 poet = "Ernst Freiherr von Feuchtersleben (1806–1849), vor 1826" 
 
 mutopiatitle = "Gottes Rat und Scheiden" 
 mutopiacomposer = "Mendelssohn-BartholdyF" 
 mutopiapoet = "E. v. Feuchtersleben (1806–1849)" 
 mutopiaopus = "Op. 47" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1910s" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/23-1707"
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
	\accidentalStyle voice 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G" 
			\context Voice = Sopran { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \SGottesRat } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AGottesRat } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Staff = men 
	<< 
	\accidentalStyle voice 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TGottesRat } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BGottesRat } 
				>> } 
		>> 
	\context Lyrics = extra \lyricsto Sopran \LGottesRatX 
	\context Lyrics = verseone \lyricsto Alt \LGottesRatA 
	\context Lyrics = versetwo \lyricsto Alt { \LGottesRatB \LGottesRatD } 
	\context Lyrics = versethree \lyricsto Alt \LGottesRatC 
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
\tempo 4=100
}

}
