#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key as \major \time 6/8 \tempo "Leicht bewegt" } 

SHeiderose = \relative as' { 
c4\p c8 es8.[ des16] c8 bes4 bes8 bes4. 
c4 c8 des8.[ es16] f8 f4. es4 \oneVoice r8 \voiceOne 
es4 des8 c4 c8 c4 bes8 as4. 
as4 as8 as[\< bes] c des4\> c8 bes4.\! 
c4 c8 es8.[ des16] c8 c4. bes4 \oneVoice r8 \voiceOne 
c4 es8 f4\cresc f8 es[ f] g as4. 
\override Hairpin.to-barline = ##f 
as4\f f8 es[ des] c\> <<bes4. {s8\! s4\dim}>> as4 \oneVoice r8\! 
\bar "|." 
} 

AHeiderose = \relative as' { 
as4 as8 c8.[ bes16] as8 g4 as8 bes4. 
as4 as8 as8[ g] f8 f4( g8) as4 s8 
as4 bes8 c4 es,8 f4 g8 as4. 
es4 f8 es[ g] as bes4 as8 g4. 
as4 as8 c8.[ bes16] as8 as4( f8) g4 s8 
es8[ as] as as4 as8 g[ as] des c4. 
des8[ as] as as4 as8 as[ f g] es 4 s8 
\bar "|." 
} 

THeiderose = \relative as' { 
es4 es8 es4 es8 es4 d8 es4. 
es4 es8 as,4 des8 des4. c4 \oneVoice r8 \voiceOne 
c4 es8 es4 es8 es4 des8 c4. 
c4 des8 es[ des] es es4 es8 es4. 
es4 es8 es4 es8 es4( d8) es4 \oneVoice r8 \voiceOne 
as,4 c8 des!4 des8 des[ c] bes as4. 
f'4 des8 es4 es8 es4( des8) c4 \oneVoice r8 
\bar "|." 
} 

BHeiderose = \relative as { 
as4\p as8 as4 as8 es4 f8 g4. 
as4 g8 f[ es] des as'4. as4 s8 
f4 g8 as4 c,8 es4 es8 f4. 
as4 des8 c[\< bes] as g4\> as8 es4.\! 
as4 as8 g4 as8 es4. es4 s8 
<<R2. {s4. s4.\cresc}>> es4 es8 f4. 
\override Hairpin.to-barline = ##f 
des4\f des8 c[ bes] as\> <<es'4. {s8\! s4\dim}>> as4 s8\! 
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
daß du e -- wig denkst an mich, 
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
 kaisernumber = "388" 
 comment = "" 
 footnote = "" 
 
 title = "Heidenröslein" 
 subtitle = "" 
 composer = "Heinrich Werner (1800–1833), 1829" 
 opus = "" 
 arranger = "Bearbeitung von Engelbert Humperdinck (1854–1921)" 
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
 
 footer = "Mutopia-2014/03/23-731"
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
				{ \global \SHeiderose } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AHeiderose } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Staff = men 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \THeiderose } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BHeiderose } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Sopran \LHeideroseA 
	\context Lyrics = versetwo \lyricsto Sopran \LHeideroseB 
	\context Lyrics = versethree \lyricsto Sopran \LHeideroseC 
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
