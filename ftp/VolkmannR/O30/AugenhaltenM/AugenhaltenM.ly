#(set-global-staff-size 15.5) 
#(ly:set-option 'point-and-click #f) 

\version "2.12" 

global = { \key d \major \time 4/4 \tempo 4=120 } 

TAAugenhalten = \relative d' { 
\revert Rest #'direction 
\partial 4 
fis4\mf 
fis4. fis8 fis4. fis8 
a4. g8 g4. g8 
fis4-. d-. cis-. d-. 
e2-. r4 fis 
fis4. fis8 fis4. fis8 
a4. g8 g4. g8 
g4-. fis-. g-. e-. 
d2-. r4 fis\f 
fis4. d8 b4. d8 
fis4. d8 b4 b8[ d] 
fis4 fis fis fis 
fis2-. r4 fis 
fis4. dis8 b4 fis' 
gis4. a8 a4. cis,8 
fis4 b, d! gis,! 
a r r fis'\p 
fis4. fis8 fis4. fis8 
a4. g8 g4. g8 
fis4-. d-. cis-. d-. 
e2-. r4 fis\mf 
fis4. fis8 fis4. fis8 
a4. g8 g4. g8\pp 
g4-. fis-. g-. e-. 
d2-. r4 
\bar "|." 
} 

TBAugenhalten = \relative d' { 
\partial 4 
d4 
d4. d8 d4. d8 
cis4. cis8 cis4. cis8 
d4 a a a 
cis2 s4 d4 
d4. d8 d4. d8 
dis4. e8 e4. d8 
cis4 d cis cis 
d2 s4 fis 
fis4. d8 b4. d8 
fis4. d8 b4 b8[ d] 
fis4 d cis d 
cis2 s4 cis 
dis4. b8 b4 dis 
d!4. cis8 cis4. cis8 
b4 a gis gis 
a s s d 
d4. d8 d4. d8 
cis4. cis8 cis4. cis8 
d4 a a a 
cis2 s4 d4 
d4. d8 d4. d8 
dis4. e8 e4. d8 
cis4 d cis cis 
d2 s4 
\bar "|." 
} 

BAAugenhalten = \relative d' { 
\partial 4 
a4 
a4. a8 a4. a8 
a4. a8 a4. a8 
a4 a g fis 
a2 s4 a 
a4. a8 a4. a8 
b4. b8 b4. b8 
a4 a a g 
fis2 s4 fis 
fis4. d8 b4. d8 
fis4. d8 b4 b8[ d] 
fis4 b ais b 
ais2 s4 ais 
b4. fis8 dis4 b' 
b4. a!8 a4. a8 
a4 fis e d! 
cis s s a' 
a4. a8 a4. a8 
a4. a8 a4. a8 
a4 a g fis 
a2 s4 a 
a4. a8 a4. a8 
b4. b8 b4. bes8 
a4 a a g 
fis2 s4 
\bar "|." 
} 

BBAugenhalten = \relative d { 
\revert Rest #'direction 
\partial 4 
d4\mf 
d4. d8 d4. d8 
e4. e8 e4. e8 
d4-. fis-. e-. d-. 
a2-. r4 d4 
d4. d8 d4. d8 
b4. e8 e4. e8 
e4-. d-. e-. a,-. 
d2-. r4 fis\f 
fis4. d8 b4. d8 
fis4. d8 b4 b8[ d] 
fis4 b fis b, 
fis'2-. r4 fis 
b4. b,8 b4 b 
e4. fis8 fis4. fis8 
d4 d e e 
a, r r d\p 
d4. d8 d4. d8 
e4. e8 e4. e8 
d4-. fis-. e-. d-. 
a2-. r4 d4\mf 
d4. d8 d4. d8 
b4. e8 e4. e8\pp 
e4-. d-. e-. a,-. 
d2-. r4 
\bar "|." 
} 


LAugenhaltenA = \lyricmode { 
Ich hal -- te ihr die Au -- gen zu 
und küss sie auf den Mund; 
nun lässt sie mich nicht mehr in Ruh, 
sie fragt mich um dem Grund. 
} 

LAugenhaltenB = \lyricmode { 
Von a -- bends spät bis mor -- gens früh, 
%Original: Von A -- bend spät bis mor -- gens fruh 
sie fragt zu je -- der Stund: 
„Was hältst du mir die Au -- gen zu, 
wenn du mir küsst den Mund?“ 
} 

LAugenhaltenC = \lyricmode { 
Ich sag ihr nicht, wes -- halb ich's tu', 
weiss sel -- ber nicht den "Grund –" 
ich hal -- te ihr die Au -- gen zu 
und küss sie auf den Mund. 
} 

%--------------------

\header { 
kaisernumber = "447" 
comment = "" 
footnote = "" 
 
title = "Ich halte ihr die Augen zu" 
subtitle = "" 
composer = "Robert Volkmann (1815–1883)" 
opus = "op. 30, Nr. 3" 
meter = \markup {Etwas lebhaft} 
arranger = "" 
poet = "Heinrich Heine (1797–1856), 1832 od. 33" 
 
mutopiatitle = "Ich halte ihr die Augen zu" 
mutopiacomposer = "VolkmannR" 
mutopiapoet = "H. Heine (1797–1856)" 
mutopiaopus = "Op. 30, No. 3" 
mutopiainstrument = "Choir (TTBB)" 
date = "" 
source = "Leipzig : C. F. Peters, 1907" 
style = "Romantic" 
copyright = "Creative Commons Attribution 3.0" 
maintainer = "Klaus Rettinghaus" 
lastupdated = "2009/August/1" 
 
 footer = "Mutopia-2009/09/08-1703"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
} 

\score {
{
\context ChoirStaff 
	<< 
	\context Staff = TenorStaff 
	<< 
	#(set-accidental-style 'voice) 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G_8" 
			\context Voice = TenorA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \TAAugenhalten 
				>> } 
			\context Voice = TenorB { \voiceTwo 
 				<< 
				\autoBeamOff 
				\global \TBAugenhalten 
				>> } 
			>> 
	\context Lyrics = verses 
	\context Staff = BassStaff 
	<< 
	#(set-accidental-style 'voice) 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = BassA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \BAAugenhalten 
				>> } 
			\context Voice = BassB { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				\global \BBAugenhalten 
				>> } 
		>> 
	\context Lyrics = verses \lyricsto TenorA { \LAugenhaltenA \LAugenhaltenB \LAugenhaltenC } 
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
