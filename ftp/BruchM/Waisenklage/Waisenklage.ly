#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key as \major \time 4/4 \tempo "Langsam" } 

SWaisenklage = \relative as' { 
%\revert Rest.direction 
\partial 4 
ees4\p 
as4 as c bes8[ as] 
bes4-> bes \oneVoice r4 \voiceOne g8(\cresc as) 
bes4 bes8 bes bes[ des] c[ bes] 
c2 \oneVoice r4 \voiceOne c8( bes) 
as4 bes c8(\> c8) bes as 
bes4\p bes \oneVoice r2 \voiceOne 
des!2\cresc ees2 
c2. c4 
c4(\> bes) bes2 
ees2.\p\! r4 
des2\< ees2 
c2.\> c4 
c4(\p-> bes)^\markup {\large\italic ritard.} bes2 
as2.\fermata 
\bar "|." 
} 

AWaisenklage = \relative as' { 
\partial 4 
ees4 
ees4 c d8[ ees] f4 
f4-> g s ees8( ees) 
f4 f8 f bes4 g4 
g2 s4 e8( e) 
f4 g8[ bes] bes( as) g as 
f4 g s2 
as2 bes4.( ees,8) 
ees4( e) f( ges) 
f2. f4 
g2( as4) r4 
bes2. bes4 
bes4( as) g2 
f4.( as8) as4( g) 
ees2.\fermata 
\bar "|." 
} 

TWaisenklage = \relative as' { 
\partial 4 
es8[ des] 
c4 ees4 as,8[ g] f[ bes] 
as4-> g4 \oneVoice r4 \voiceOne ees'!8\( ees\) 
des!4 des8 d8 ees4 ees8[ des8] 
c4( g4) \oneVoice r4 \voiceOne c8\( c8\) 
c4 des4 ees8\( ees8\) ees8 ees8 
ees8[ d8] ees4 \oneVoice r2 \voiceOne 
des!2 bes2 
c4( bes) as( a) 
a4( bes) des( f) 
ees2. r4 
f2 es4( g4) 
f2. ees4 
des4( f4) ees4.( des8) 
c2.\fermata 
} 

BWaisenklage = \relative as { 
\partial 4 
ees4\p 
as,4 as'8[ g] f[ ees8] d4 
d4-> ees s des'8(\cresc c) 
bes8[ c] bes as g4 ees4 
e2 s4 c8( c) 
f4 ees!4 as8(\> as) bes c 
bes4\p ees,4 s2 
f2\cresc g2 
as4( g4) f4( ees4) 
des2.\> des4 
des'2(\p c4) r4 
bes4(\< as) g4( ees4) 
f2\> c2 
<<des2\p-> {s4 s_\markup {\large\italic ritard.}}>> ees2 
as,2.\fermata 
} 


LWaisenklageA = \lyricmode {
\set stanza = "1." 
Ach Gott! Wem soll ichs kla -- gen 
und wo soll ich mich wen -- den hin? 
Mein _ Herz das möch -- _ te ver -- za -- gen, 
weil ich so ver -- las -- sen bin, 
weil ich so ver -- las -- sen bin. 
} 

LWaisenklageB = \lyricmode {
\set stanza = "2." 
Mein El -- tern sind ge -- stor -- ben, 
die Ge -- schwis -- ter sind al -- le tot, 
und die Freun -- de ha -- ben mich ver -- las -- sen; 
in der Welt find ich kein Trost, 
in der Welt find ich kein Trost! 
} 

LWaisenklageC = \lyricmode {
\set stanza = "3." 
Ach Gott, tu für mich sor -- gen 
und _ nimm mich bald hin zu dir! 
Va -- ter, Mut -- ter hab _ ich ver -- lo -- ren: 
schließ mir auf die Him -- mels -- tür, 
schließ mir auf die Him -- mels -- tür! 
} 

%--------------------

\header { 
 kaisernumber = "138" 
 comment = "" 
 footnote = "" 
 
 title = "Waisenklage" 
 subtitle = "" 
 composer = "Volksweise aus der Badischen Pfalz," 
 opus = "" 
 arranger = "bearbeitet von Max Bruch (1838–1920)" 
 poet = "Neueres Volkslied" 
 
 mutopiatitle = "Waisenklage" 
 mutopiacomposer = "BruchM" 
 mutopiapoet = "" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1910s" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/21-985"
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
				{ \global \SWaisenklage } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AWaisenklage } 
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
				{ \global \TWaisenklage } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BWaisenklage } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Tenor \LWaisenklageA 
	\context Lyrics = versetwo \lyricsto Tenor \LWaisenklageB 
	\context Lyrics = versethree \lyricsto Tenor \LWaisenklageC 
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
\tempo 4=76
}

}
