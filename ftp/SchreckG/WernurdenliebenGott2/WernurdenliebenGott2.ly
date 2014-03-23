#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key a \minor \time 4/4 \tempo "Mäßig bewegt" } 

SGuterGottB = \relative a' { 
\revert Rest.direction 
r4 e\mf a b 
c b a b 
gis\> e\! r g 
g f e\< a 
a\> gis a\! e 
a b c b 
a b gis\> e\! 
r g! g f 
e\< a a\> gis 
a2.\! b4\f\< 
c d\! e-> e 
d-> d c e 
d c b a8[ b] 
<<c4-> {s8 s8\>}>> b4 a2\!  
\bar "|." 
} 

AGuterGottB = \relative a { 
s4 c e e 
e4. f8 e4 d 
b b s b 
cis d8[ c] b4 e 
f e8[ d] c4 b 
e <e d> <e c> e 
e fis e b 
s e e d 
c c b8[ f'] e4 
e2. e4 
e g g4. a8 
f4. g8 e4 e 
fis8[ gis] a4 gis a 
a gis e2 
\bar "|." 
} 

TGuterGottB = \relative a { 
s4 a c b 
a gis a8[ g] f4 
e gis s g 
a a gis e8[ e'] 
d[ c] b4 a gis 
c b a b 
c b b gis 
s g! bes a 
a a8[ g] f[ d'] c[ b] 
c2. gis4 
a8[ c] b4 c8[ bes] a4 
b!8[ a] g4 g c 
d e e8[ d] c[ d] 
e[ f] b,[ d] c2  
\bar "|." 
} 

BGuterGottB = \relative a, { 
\revert Rest.direction 
r4 a\mf a' gis 
a e8[ d] c4 d 
e\> e\! r e 
a, d e8[\< d] c4 
b8[\> c16 d] e4 a,\! e'8[ d] 
c[ b] a[ gis] a( a'4) g!8 
fis[ e] dis4 e\> e\! 
r4 c cis d 
a'8[\< g!] f[ e] d4\> e 
a,2.\! e'4\f\< 
a g8[\! f] e[-> d] cis4 
d8[-> c!] b4 c c' 
b a e f 
c8[-> d]\> e4 a,2\! 
\bar "|." 
} 


LGuterGottA = \lyricmode { 
\set stanza = "1. " 
Wer nur den lie -- ben Gott lässt wal -- ten 
und hof -- fet auf ihn al -- le -- zeit, 
den wird er wun -- der -- bar er -- hal -- ten 
in al -- ler Not und Trau -- rig -- keit. 
Wer Gott, dem Al -- ler -- höchs -- ten, traut, 
der hat auf kei -- nen Sand ge -- baut. 
} 

LGuterGottB = \lyricmode { 
\set stanza = "2. " 
Was hel -- fen uns die schwe -- ren Sor -- gen, 
was hilft uns un -- ser Weh und Ach! 
Was hilft es, daß wir al -- le Mor -- gen 
be -- seuf -- zen un -- ser Un -- ge -- mach! 
Wir ma -- chen un -- ser Kreuz und Leid 
nur grö -- ßer durch die Trau -- rig -- keit. 
} 

LGuterGottC = \lyricmode { 
\set stanza = "3. " 
Es sind ja Gott ge -- rin -- ge Sa -- chen, 
und ist dem Höchs -- ten al -- les gleich, 
den Rei -- chen arm und klein zu ma -- chen, 
den Ar -- men a -- ber groß und reich. 
Gott ist der rech -- te Wun -- der -- mann, 
der bald er -- höhn, bald stür -- zen kann. 
} 

LGuterGottD = \lyricmode { 
\set stanza = "4. " 
Sing, bet und geh auf Got -- tes We -- gen, 
ver -- richt das Dei -- ne nur ge -- treu 
und trau des Him -- mels rei -- chem Se -- gen, 
so wird er bei dir wer -- den neu; 
denn wel -- cher sei -- ne Zu -- ver -- sicht 
auf Gott setzt, den ver -- lässt er nicht. 
} 

%--------------------

\header { 
 kaisernumber = "18b" 
 comment = "" 
 footnote = "" 

 title = "Wer nur den lieben Gott läßt walten" 
 subtitle = "" 
 composer = "Georg Neumark (1621–1681), 1657" 
 opus = "" 
 piece = "" 
 arranger = "Bearbeitung von Gustav Schreck (1849–1918)" 
 poet = "Georg Neumark (1621–1681), 1657" 

 mutopiatitle = "Wer nur den lieben Gott läßt walten" 
 mutopiacomposer = "SchreckG" 
 mutopiapoet = "G. Neumark (1621–1681)" 
 mutopiaopus = "" 
 mutopiainstrument = "Voice (SATB)" 
 date = "1910s" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/21-1705"
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
				{ \global \SGuterGottB } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				{ \global \AGuterGottB } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Lyrics = versefour 
	\context Staff = men 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				{ \global \TGuterGottB } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BGuterGottB } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Sopran \LGuterGottA 
	\context Lyrics = versetwo \lyricsto Sopran \LGuterGottB 
	\context Lyrics = versethree \lyricsto Sopran \LGuterGottC 
	\context Lyrics = versefour \lyricsto Sopran \LGuterGottD 
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
\tempo 4=92
}

}
