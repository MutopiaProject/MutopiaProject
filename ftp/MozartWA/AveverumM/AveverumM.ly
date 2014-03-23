#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key g \major \time 4/4 \tempo "Adagio" } 

TAAveVerum = %\relative g'' 
{ 
a'2\p d''4( fis'4) 
a'4-( gis'4-) g'2 
g'4-( b'4-) a'4-( g'4-) 
g'4-( fis'4-) fis'2 
e'2. e'4 
fis'4\< fis'4 g'4 g'4 
g'2-(\> fis'4-) fis'4 
e'1\! 
e'2. a'4 
a'4-( gis'4-) gis'2 
e'4-(\< gis'2-) b'4 
b'4-(\> a'4-) a'4 a'4 
d''1-(~\! 
d''4 cis''4-) b'4 a'4 
a'2-( gis'4-) gis'4 
a'1 
a'2.\p a'4 
a'4-( bes'4-) bes'2 
bes'4-(\mf\> d''4-) c''4-( bes'4-) 
bes'4-(\p a'4-) a'2 
g'2.\< g'4 
g'4-(\! bes'4-) a'4\> g'4 
g'2-(\< f'8[ e'8]-) f'4 
e'2\! r2 
fis'!2.\pp fis'4 
fis'4-(\cresc e'4-) d'4-( g'4-) 
g'2. g'4 
g'4-( fis'4-) e'4 a'4 
a'1~\( 
a'4 g'4\) a'4 b'4 
fis'2-(\> e'4.-) fis'8 
g'2\! g'2\p 
d''1-( 
d''2-(-) dis''2 
e''4 b'4 cis''4 d'' 
cis''4\> b'8[ a'8]-) d''4 g'\pp 
fis'2-( e'4.-) e'8 
d'1\fermata 
\bar "|." 
} 

TBAveVerum = { 
fis'2 fis'2 
e'2 e'2 
e'4-( g'4-) fis'4-( e'4-) 
e'4-( d'4-) d'2 
cis'2. cis'4 
d'4 d'4 e'4 e'4 
e'2-( d'4-) d'4 
cis'1 
e'2. e'4 
e'2 e'2 
e'2. gis'4 
gis'4-( a'4-) a'2 
r2 gis' 
a'2 fis'4 fis'4 
e'2. e'4 
e'1 
e'2. e'4 
e'2 e' 
e'2. e'4 
e'4-( f'4-) f'2 
d'2. d'4 
e'4-( f'4-) e'4 e'4 
e'2-( f'8[ e'8]-) f'4 
e'2 s 
d'2. d'4 
d'4-( cis'4-) b4-( e'4-) 
e'2. e'4 
e'4-( d'4-) cis'4 fis'4 
fis'1\( ~ 
fis'4 g'4\) fis'4 e'4 
d'2-( cis'4.-) cis'8 
d'2 r2 
r2 fis'2-\tweak X-offset #-2.5 \p 
g'2-( fis'2 
e'1 ~ 
e'4 d'8[ cis'8]-) d'4 d'4 
d'2-( cis'4.-) cis'8 
d'1 
\bar "|." 
} 

BAAveVerum = \relative g { 
a2 a 
b2 b 
a2 a 
a2 a 
a2. a4 
a4 a a a 
a2. a4 
a1 
cis2. cis4 
cis4-( d4-) d2 
b2. d4 
d4-( cis4-) cis2 
s2 d 
e2 d4 cis 
b2. b4 
cis1 
cis2. cis4 
cis2 cis4-( c4-) 
c4-( bes4-) a4-( g4-) 
g4-( a4-) a2 
b!2. b4 
cis!4-( d4-) e4 cis4 
cis2-( d8[ cis]) d4 
cis2 s 
s1 
b2. b4 
b4-( a4-) g4-( cis4-) 
cis2. cis4 
cis4-( b4-) a4 d4 
d2 d4 d4 
a2. a4 
b2 s 
s c2 
d2-( c2 
b4 d4 cis4 b4 
a2-) a4 b4 
a2-( g4.-) g8 
fis1 
\bar "|." 
} 

BBAveVerum = \relative g { 
\revert Rest.direction 
d2\p d 
d2 d 
cis2 cis 
d2 d 
a'2. a4 
d,4\< d cis cis 
d2.\> d4 
a'1\! 
a2. a4 
a4( b4) b2 
gis2(\< e4) e 
eis4(\> fis4) fis2 
r2\! b 
cis2 d4 d, 
e2. e4 
a1 
a2.\p a4 
a4( g4) g2 
c,2.\mf\> c4 
c4(\p f4) f2 
f2.\< f4 
e4(\! d4) cis!4\> a'4 
bes2(\< a4) gis4 
a2\! r2 
\oneVoice R1 \voiceTwo 
g2.-\tweak X-offset #-3.0 \pp\cresc g4 
g4( fis4) e4( a4) 
a2. a4 
a4-( g4-) fis4 b4 
b2 a4 gis4 
a2.\> a4 
b2\! r2 
r2 a2\p 
bes2( a2 
gis1 
g!2)\> fis4 b\pp 
a2. a4 
d,1\fermata 
\bar "|." 
} 


LAveVerumL = \lyricmode { 
A -- ve, a -- ve, ve -- rum cor --  pus, na -- tum de Ma -- ri -- a vir -- gi -- ne, ve -- re pas -- sum im -- mo -- la -- tum in cru -- ce pro ho -- mi -- ne, cu -- jus la -- tus per -- fo -- ra -- tum un -- da flu -- xit et san -- gui ne! 
Es -- to no -- bis prae -- gus -- ta -- tum 
in mor -- _ tis ex -- a -- mi -- ne, 
in mor -- tis ex -- a -- mi -- ne! 
} 

LAveVerumD = \lyricmode { 
Chris -- te, Chris -- te, Mensch ge -- bo -- ren 
Gott -- es Lamm, Ma -- ri -- ens ein -- ger Sohn, 
dorn -- ge -- krö -- net, hin -- ge -- op -- fert, 
ge -- kreu -- zigt für un -- sre Schuld. 
Durch dein Un -- schuld, Schmach und Mar -- ter, 
durch dein Blut __ _ und Wun -- den rot 
trö -- ste uns im bit -- tern Schei -- den, 
in To -- des -- not er -- hö -- re uns, 
in To -- desnot er -- hö -- re uns. 
} 

LAveVerumLB = \lyricmode {
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
Es -- to no -- bis __ prae -- gus -- ta -- tum in mor -- tis ex -- a -- mi -- ne, 
}

LAveVerumDB = \lyricmode { 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
trö -- ste uns im bit -- tern Schei -- den, 
in Todes -- not er -- hö -- re uns, 
} 

%--------------------

\header { 
 kaisernumber = "41" 
 comment = "" 
 
 title = "Ave, verum corpus" 
 subtitle = "" 
 composer = "Wolfgang Amadeus Mozart (1756–1791), 1791" 
 opus = "" 
 arranger = "Bearbeitung Carl Reinecke (1824–1910)" 
 poet = "Deutsch von Karl Lütge" 
 
 mutopiatitle = "Ave, verum corpus" 
 mutopiacomposer = "MozartWA" 
 mutopiapoet = "" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (TTBB)" 
 date = "1791" 
 source = "Leipzig : C. F. Peters, 1907" 
 style = "Classical" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/23-1708"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat{ \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
} 
  
\score { 
\context ChoirStaff 
	<< 
	\context Staff = boys 
		<< 
			\clef "G_8" 
			\context Voice = TenorA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \transpose d g, \TAAveVerum 
				>> } 
			\context Voice = TenorB { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				\global \transpose d g, \TBAveVerum 
				>> } 
			>> 
	\context Lyrics = latinVerse 
	\context Lyrics = germanVerse 
	\context Staff = men 
		<< 
			\clef "F" 
			\context Voice = BassA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \transpose d g, \BAAveVerum 
				>> } 
			\context Voice = BassB { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				\global \transpose d g, \BBAveVerum 
				>> } 
		>> 
	\context Lyrics = latinVerseX 
	\context Lyrics = germanVerseX 
	\context Lyrics = latinVerse \lyricsto TenorB \LAveVerumL 
	\context Lyrics = germanVerse \lyricsto TenorB \LAveVerumD 
	\context Lyrics = latinVerseX \lyricsto BassA \LAveVerumLB 
	\context Lyrics = germanVerseX \lyricsto BassA \LAveVerumDB 
	>> 

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
