\include "deutsch.ly" 

#(set-global-staff-size 15.5) 
#(ly:set-option 'point-and-click #f) 

\version "2.12" 

global = { \key a \minor \time 4/4 \tempo 4=86 } 

SgrimmigTod = \relative a' { 
a2\mf a4 a g a f\> e d2\! 
a'2\< c4 d\! a h c2\> a\! 
a2 a4 a g a f e d2 
a'2\< c4 d\! a h c2\> a\! 
\dimTextDim 
c2\f c4 c a2\> f g4 g f2 
r2 a\p a4 a g a f( e) d2 
\crescTextCresc 
a'2\< a4 g a2 h c4 a g2 
\dimHairpin 
r2 g\f e'4-> d a c h2\> a\!\fermata
\bar "|." 
} 

AgrimmigTod = \relative a' { 
f2 e4 c d e d cis d2 
f2 e4 d e gis a2 e 
d2 c4 d e a, h cis d2 
f4( a) g f e d c4.( d8) e2 
c2 g'4 e f( e d) c d e c2 
f1\p e4 f g e d( cis) d2 
a' a4 g f2. d4 c e g2 
r2 g g4 f c a' a( gis) e2 
} 

TgrimmigTod = \relative a { 
a2 a4 c h a a g a2 
f2 g4 a c e e2 c 
f,2 e4 f e e f g a2 
r4 f g a a gis a4.( h8) c2 
a2 g4 g f( g) a2 h4 c a2 
r2 a e'4 d d cis a( g) a2 
a2 c4 c c2( d4) f e c h2 
g2\f d'~(-> d8[ c]) h[ gis] a4 f'8[ e] d4.( h8) c2 
} 

BgrimmigTod = \relative a, { 
d2\mf c4 a h cis d\> e f2\! 
d2\< e4 f\! a e a,2\> a\! 
d2 a4 h c cis d e f2 
d2\< e4 f\! c h a2\> a2\! 
\dimTextDim 
f'2\f e4 c d2.\> a'4 g c, f2 
r2 d\p c4 d e a, d( e) f2 
\crescTextCresc 
a2\< f4 e f2 d a4 c e2 
\dimHairpin 
r2 h2\f c4-> d f8[ e] d[ c] e2\> a,\!\fermata 
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
meter = "Nicht zu rasch" 
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
copyright = "Creative Commons Attribution 3.0" 
maintainer = "Klaus Rettinghaus" 
lastupdated = "2009/September/1" 
 
 footer = "Mutopia-2009/09/08-1704"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
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
\override MetronomeMark #'transparent = ##t 
\override DynamicTextSpanner #'dash-period = #-1.0 
\override BreathingSign #'text = #(make-musicglyph-markup "scripts.rvarcomma") 
}
\context {\Staff 
\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1) 
}
}

\midi {
\context { \Voice 
\remove "Dynamic_performer" 
}
}

}
