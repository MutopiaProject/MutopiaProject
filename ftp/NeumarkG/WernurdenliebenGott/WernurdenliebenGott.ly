#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key a \minor \time 3/4 \tempo "Mäßig bewegt" } 

SGuterGottA = \relative a' { 
e4\mf\< a b c2\! b4 a2 b4 gis\> e2\! 
g!4 g f e2\< a4 a2\> gis4 a2.\! 
e4\mf\< a b c2\! b4 a2 b4 gis\> e2\! 
g!4 g f e2\< a4 a2\> gis4 a2.\! 
c4\f c d e2 e4 d2 d4 c2. 
c4 b a gis2 a4 a2 gis4\> a2.\!  
\bar "|." 
} 

AGuterGottA = \relative a' { 
e4 e e e2 e4 e2 d4 e b2 
b4 c c8[ b] c2 e4 f2 e4 e2. 
e4 e e e2 e4 e2 d4 e b2 
b4 c c8[ b] c2 e4 f2 e4 e2. 
a4 e g g2 g4 a2 g4 g2. 
g4 g e e2 d4 f2 e4 e2. 
\bar "|." 
} 

TGuterGottA = \relative a { 
c4 c b a2 b4 c( b) a b gis2 
g!4 g a8[ f] g2 c4 b2 b4 c2. 
c4 c b a2 b4 c( b) a b gis2 
g!4 g a8[ f] g2 c4 b2 b4 c2. 
e4 c b c2 c4 a2 b4 c2. 
e4 d c b2 a4 b2 b4 cis2. 
\bar "|." 
} 

BGuterGottA = \relative a { 
a4\mf\< a gis a2\! g!4 f2 f4 e\> e2\! 
e4 e d c2\< a4 d2\> e4 a,2.\! 
a'4\mf\< a gis a2\! g4 f2 f4 e\> e2\! 
e4 e d c2\< a4 d2\> e4 a,2.\! 
a'4\f a g c2 c,4 f2 g4 c,2. 
c'4 g a e2 f4 d2 e4\> a,2.\! 
\bar "|." 
} 


LGuterGottA = \lyricmode { 
\set stanza = "1." 
Wer nur den lie -- ben Gott läßt wal -- ten 
und hof -- fet auf ihn al -- le -- zeit, 
den wird er wun -- der -- bar er -- hal -- ten 
in al -- ler Not und Trau -- rig -- keit. 
Wer Gott, dem Al -- ler -- höch -- sten, traut, 
der hat auf kei -- nen Sand ge -- baut. 
} 

LGuterGottB = \lyricmode { 
\set stanza = "2." 
Was hel -- fen uns die schwe -- ren Sor -- gen, 
was hilft uns un -- ser Weh und Ach! 
Was hilft es, daß wir al -- le Mor -- gen 
be -- seuf -- zen un -- ser Un -- ge -- mach! 
Wir ma -- chen un -- ser Kreuz und Leid 
nur grö -- ßer durch die Trau -- rig -- keit. 
} 

LGuterGottC = \lyricmode { 
\set stanza = "3." 
Es sind ja Gott ge -- rin -- ge Sa -- chen, 
und ist dem Höch -- sten al -- les gleich, 
den Rei -- chen arm und klein zu ma -- chen, 
den Ar -- men a -- ber groß und reich. 
Gott ist der rech -- te Wun -- der -- mann, 
der bald er -- höhn, bald stür -- zen kann. 
} 

LGuterGottD = \lyricmode { 
\set stanza = "4." 
Sing, bet und geh auf Got -- tes We -- gen, 
ver -- richt das Dei -- ne nur ge -- treu 
und trau des Him -- mels rei -- chem Se -- gen, 
so wird er bei dir wer -- den neu; 
denn wel -- cher sei -- ne Zu -- ver -- sicht 
auf Gott setzt, den ver -- läßt er nicht. 
} 

%--------------------

\header { 
 kaisernumber = "18a" 
 comment = "" 
 footnote = "Nach G. Neumarks Satz eingerichtet von K. Lütge" 
 
 title = "Wer nur den lieben Gott läßt walten" 
 subtitle = "" 
 composer = "Georg Neumark (1621–1681), 1657" 
 opus = "" 
 piece = "" 
 arranger = "" 
 poet = "Georg Neumark (1621–1681), 1657" 
 
 mutopiatitle = "Wer nur den lieben Gott läßt walten" 
 mutopiacomposer = "NeumarkG" 
 mutopiapoet = "G. Neumark (1621–1681)" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1657" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/21-637"
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
				{ \global \SGuterGottA } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AGuterGottA } 
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
				\dynamicUp 
				{ \global \TGuterGottA } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BGuterGottA } 
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
}
}

\midi {
\tempo 4=112
}

}
