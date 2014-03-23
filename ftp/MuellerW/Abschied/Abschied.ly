#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key f \major \time 3/4 \tempo "Einfach" } 

SHeimatAbschied = \relative f'' { 
\revert Rest.direction 
\partial 4. 
c8\p b c d4. g,8 bes e, f4 r8 
c'8 b c e4. d8 c bes a4 r8 
c8 b c e4.\< c8 d e\! f4.\> 
a,8\! g a d4. c8 bes g f4 r8 
\bar "|." 
} 

AHeimatAbschied = \relative f' { 
\partial 4. 
f8 f f f4. f8 e c c4 s8 
f8 f f g4. e8 f g f4 s8 
a8 gis a g!4. g8 g g f4. 
es8 es es d4. d8 d e! c4 s8 
\bar "|." 
} 

THeimatAbschied = \relative f { 
\partial 4. 
a8 gis a bes4. bes8 g bes a4 s8 
a8 gis a bes4. bes8 a g c4 s8 
c8 d c bes4. bes8 bes bes a4. 
f8 g f f4. fis8 g bes a4 s8 
\bar "|." 
} 

BHeimatAbschied = \relative f { 
\revert Rest.direction 
\partial 4. 
f8\p f f bes,4. bes8 c c f4 r8 
f8 f f c4. c8 d e f4 r8 
f8 f f g4.\< e8 d c\! d4.\> 
c8\! c c bes4. a8 g c f,4 r8 
\bar "|." 
} 


LHeimatAbschiedA = \lyricmode { 
\set stanza = "1." 
So leb denn wohl, du stil -- les Haus! 
Ich zieh be -- trübt von dir hin -- aus; 
ich zieh be -- trübt und trau -- rig fort, 
noch un -- be -- stimmt, an wel -- chen Ort. 
} 

LHeimatAbschiedB = \lyricmode { 
\set stanza = "2." 
So leb denn wohl, du schö -- nes Land, 
in dem ich ho -- he Freu -- de fand! 
Du zogst mich groß, du pfleg -- test mein, 
und nim -- mer -- mehr ver -- gess ich dein. 
} 

LHeimatAbschiedC = \lyricmode { 
\set stanza = "3." 
So lebt denn, all ihr Lie -- ben, wohl, 
von de -- nen ich jetzt schei -- den soll! 
Und find ich drau -- ßen auch mein Glück, 
denk ich doch stets an euch zu -- rück. 
} 

%--------------------

\header { 
 kaisernumber = "224" 
 comment = "" 
 footnote = "" 
 
 title = "Abschied von der Heimat" 
 subtitle = "" 
 composer = "Wenzel Müller (1767–1835), 1828" 
 opus = "" 
 arranger = "Bearbeitung von Robert Fuchs (1847–1927)" 
 poet = "Nach Ferdinand Raimund (1790–1836), 1828" 
 
 mutopiatitle = "Abschied von der Heimat" 
 mutopiacomposer = "MuellerW" 
 mutopiapoet = "F. Raimund (1790–1836)" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1910s" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 

 footer = "Mutopia-2014/03/23-627"
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
				{ \global \SHeimatAbschied } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AHeimatAbschied } 
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
				{ \global \THeimatAbschied } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BHeimatAbschied } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Sopran \LHeimatAbschiedA 
	\context Lyrics = versetwo \lyricsto Sopran \LHeimatAbschiedB 
	\context Lyrics = versethree \lyricsto Sopran \LHeimatAbschiedC 
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
\tempo 4=72
}

}
