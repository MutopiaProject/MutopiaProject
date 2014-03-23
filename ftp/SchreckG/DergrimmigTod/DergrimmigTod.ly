#(set-global-staff-size 15.5) 

\version "2.18" 

global = { \key a \minor \time 4/4 \tempo "Nicht zu rasch" } 

SgrimmigTod = \relative a' { 
a2\mf a4 a g a f\> e d2\! 
a'2\< c4 d\! a b c2\> a\! 
a2 a4 a g a f e d2 
a'2\< c4 d\! a b c2\> a\! 
c2\f c4 c a2\dim f g4 g f2 
r2 a\p a4 a g a f( e) d2 
a'2\cresc a4 g a2 b c4 a g2 
r2 g\f e'4-> d a c b2\> a\!\fermata
\bar "|." 
} 

AgrimmigTod = \relative a' { 
f2 e4 c d e d cis d2 
f2 e4 d e gis a2 e 
d2 c4 d e a, b cis d2 
f4( a) g f e d c4.( d8) e2 
c2 g'4 e f( e d) c d e c2 
f1\p e4 f g e d( cis) d2 
a' a4 g f2. d4 c e g2 
r2 g g4 f c a' a( gis) e2 
} 

TgrimmigTod = \relative a { 
a2 a4 c b a a g a2 
f2 g4 a c e e2 c 
f,2 e4 f e e f g a2 
r4 f g a a gis a4.( b8) c2 
a2 g4 g f( g) a2 b4 c a2 
r2 a e'4 d d cis a( g) a2 
a2 c4 c c2( d4) f e c b2 
g2\f d'~(-> d8[ c]) b[ gis] a4 f'8[ e] d4.( b8) c2 
} 

BgrimmigTod = \relative a, { 
d2\mf c4 a b cis d\> e f2\! 
d2\< e4 f\! a e a,2\> a\! 
d2 a4 b c cis d e f2 
d2\< e4 f\! c b a2\> a2\! 
f'2\f e4 c d2.\dim a'4 g c, f2 
r2 d\p c4 d e a, d( e) f2 
a2\cresc f4 e f2 d a4 c e2 
r2 b2\f c4-> d f8[ e] d[ c] e2\> a,\!\fermata 
} 


LgrimmigTodA = \lyricmode { 
\set stanza = "1. " 
Der Grim -- mig Tod mit sei -- nem Pfeil 
tut nach dem Le -- ben zie -- len, 
sein'n Bo -- gen schießt er ab mit Eil 
und lässt mit sich nicht spie -- len. 
Das Le -- ben schwindt wie Rauch und Wind, 
kein Fleisch mag ihm ent -- rin -- nen, 
kein Gut noch Schatz findt bei ihm Platz, 
du musst mit ihm von hin -- nen. 
} 

LgrimmigTodB = \lyricmode { 
\set stanza = "2. " 
Kein Mensch auf Erd uns sa -- gen kann, 
wann wir von hin -- nen müs -- sen; 
wann der Tod kommt und klop -- fet an, 
so muss man ihm auf -- schlie -- ßen, 
nimmt mit Ge -- walt hin jung und alt, 
tut sich vor nie -- mand scheu -- en; 
des Kö -- nigs Stab bricht er bald ab 
und führt ihn an den Rei -- hen. 
} 

LgrimmigTodC = \lyricmode { 
\set stanza = "3. " 
O Kre -- a -- tur, lass fah -- ren hin, 
den Schöp -- fer sollst du lie -- ben! 
Was hier du ver -- lierst, ist dort Ge -- winn; 
kein Schad lass dich be -- trü -- ben! 
Mit Seel und Leib dich ihm ver -- schreib, 
als -- dann so lass ihn wal -- ten, 
so wird er dich, glaubs si -- cher -- lich, 
in sei -- nem Schutz er -- hal -- ten. 
} 

%--------------------

\header { 
 kaisernumber = "10"
 comment = "" 
 footnote = "" 

 title = "Der grimmig Tod" 
 subtitle = "" 
 composer = "Melodie 1539 aufgezeichnet" 
 opus = "" 
 piece = "" 
 arranger = "Gustav Schreck (1849–1918)" 
 poet = "Dichter unbekannt (1604 aufgezeichnet)" 

 mutopiatitle = "Der grimmig Tod" 
 mutopiacomposer = "SchreckG" 
 mutopiapoet = "" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1910s" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 

 footer = "Mutopia-2014/03/23-1704"
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
				{ \global \SgrimmigTod } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AgrimmigTod } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
%	\context Lyrics = versethree 
	\context Staff = men 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TgrimmigTod } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BgrimmigTod } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Sopran \LgrimmigTodA 
	\context Lyrics = versetwo \lyricsto Sopran \LgrimmigTodB 
%	\context Lyrics = versethree \lyricsto Sopran \LgrimmigTodC 
	>> 
}

\layout {
indent = 0.0\cm
\context {\Score 
\remove "Bar_number_engraver"
\override DynamicTextSpanner.style = #'none 
\override BreathingSign.text = #(make-musicglyph-markup "scripts.rvarcomma") 
}
\context {\Staff 
\override VerticalAxisGroup.minimum-Y-extent = #'(-1 . 1) 
}
}

\midi {
\tempo 4=86
}

}
