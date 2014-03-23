#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key as \major \time 6/8 \tempo "Mäßig" } 

TAHeiderose = \relative as { 
\revert Rest.direction 
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
bes8.[\dim c16 bes8] as4 r8\! 
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
\revert Rest.direction 
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
des4(\dim es8) as,4 r8\! 
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
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/23-1706"
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
	\accidentalStyle voice 
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
\override DynamicTextSpanner.style = #'none 
\override BreathingSign.text = #(make-musicglyph-markup "scripts.rvarcomma") 
}
}

\midi {
\tempo 4.=52
}

}
