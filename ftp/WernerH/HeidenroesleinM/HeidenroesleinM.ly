#(set-global-staff-size 15.5) 
#(ly:set-option 'point-and-click #f) 

\version "2.12" 

global = { \key as \major \time 6/8 \tempo 4.=52 } 

TAHeiderose = \relative as { 
\revert Rest #'direction 
c4 c8 es8.[ des16] c8 
bes4 bes8 bes4. 
c4\< c8 des[ es] f 
f4.\> es4\! r8 
es4 des8 c4 c8 
c4 bes8 as4. 
as4 as8 as[ bes] c 
des4 c8 bes4. 
c4 c8 es8.[ des16] c8 
c4. bes4 r8 
c4 es8 f4\< f8 
es[ f] g as4. 
as4\f f8 es4\> c8\! 
\dimTextDim bes8.[\> c16 bes8] as4 r8\! 
\bar "|." 
} 

TBHeiderose = \relative as { 
as4 as8 c8.[ bes16] as8 
as4 as8 g4. 
as4 as8 as8[ c] des8 
des4. c4 s8 
bes4 bes8 as[ es] as 
g4 g8 f4. 
as4 as8 as[ g] as 
bes4 as8 g4. 
as4 as8 c8.[ bes16] as8 
as4. g4 s8 
c4 c8 des4 des8 
bes[ c] des c4( ges'8) 
f4 des8 c4 as8 
as4( g!8) es4 s8 
\bar "|." 
} 

BAHeiderose = \relative as { 
es4 es8 as4 es8 
f8.[ es16] f8 es4. 
as4 as8 as4 as8 
as4. as4 s8  
g4 es8 es[ as] f 
e4 e8 f4. 
es!4 f8 es4 es8 
es4 es8 es4. 
es4 as8 g4 as8 
es4. es4 s8 
as4 as8 as4 as8 
g[ as] bes as4( es'8) 
des4 as8 as4 as8 
f4( g8) c,4 s8  
\bar "|." 
} 

BBHeiderose = \relative as, { 
\revert Rest #'direction 
as4 as8 as'4 as,8 
des8.[ c16] des8 es4. 
as4\< ges8 f[ es] des 
as'4.\> as,4\! r8 
es'4 g,8 as4 f'8 
c4 c8 des4. 
c4 des8 c[ bes] as 
g4 as8 es'4. 
as,4 as'8 g4 as8 as,4( c8) es4 r8 
as8[ g] ges f[\< es] des 
es4 es8 f4( c8) 
des4\f des8 es4\> f8\! 
\dimTextDim 
des4(\> es8) as,4 r8\! 
\bar "|." 
} 


LHeideroseA = \lyricmode { 
\set stanza = "1." 
Sah ein Knab ein Rös -- lein stehn, Rös -- lein auf der Hei -- den, 
war so jung und mor -- gen -- schön, 
lief er schnell, es nah zu sehn, sahs, mit vie -- len Freu -- den. 
%Rös -- lein, Rös -- lein, Rös -- lein rot, 
%Rös -- lein auf der Hei -- den.
} 

LHeideroseB = \lyricmode { 
\set stanza = "2." 
Kna -- be sprach: „Ich bre -- che dich, 
Rös -- lein auf der Hei -- den!“ 
Rös -- lein sprach: „Ich ste -- che dich, 
dass du e -- wig denkst an mich, 
und ich wills nicht lei -- den!“ 
\set stanza = "1.-3." 
Rös -- lein, Rös -- lein, Rös -- lein rot, 
Rös -- lein auf der Hei -- den.
} 

LHeideroseC = \lyricmode { 
\set stanza = "3." 
Und der wil -- de Kna -- be brach 
s_Rös -- lein auf der Hei -- den; 
Rös -- lein wehr -- te sich und stach, 
half ihm doch kein Weh und Ach, 
musst es e -- ben lei -- den.
%Rös -- lein, Rös -- lein, Rös -- lein rot, 
%Rös -- lein auf der Hei -- den.
} 

%--------------------

\header { 
kaisernumber = "566" 
comment = "" 
footnote = "" 
 
title = "Heidenröslein" 
subtitle = "" 
composer = "Heinrich Werner (1800–1833), 1829" 
opus = "" 
meter = \markup {Mäßig} 
arranger = "Bearbeitung von Hans Sitt (1850–1922)" 
poet = "Johann Wolfgang von Goethe (1749–1832), 1771" 
 
mutopiatitle = "Heidenröslein" 
mutopiacomposer = "WernerH" 
mutopiapoet = "J. W. von Goethe (1749–1832)" 
mutopiaopus = "" 
mutopiainstrument = "Choir (SATB)" 
date = "1829" 
source = "Leipzig : C. F. Peters, 1915" 
style = "Romantic" 
copyright = "Creative Commons Attribution 3.0" 
maintainer = "Klaus Rettinghaus" 
lastupdated = "2009/August/1" 
 
 footer = "Mutopia-2009/09/08-1706"
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
				\global \TAHeiderose 
				>> } 
			\context Voice = TenorB { \voiceTwo 
 				<< 
				\autoBeamOff 
				\global \TBHeiderose 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Staff = BassStaff 
	<< 
	#(set-accidental-style 'voice) 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = BassA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \BAHeiderose 
				>> } 
			\context Voice = BassB { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				\global \BBHeiderose 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto TenorA \LHeideroseA 
	\context Lyrics = versetwo \lyricsto TenorA \LHeideroseB 
	\context Lyrics = versethree \lyricsto TenorA \LHeideroseC 
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
