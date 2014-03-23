\include "deutsch.ly" 

#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key g \major \time 3/4 \tempo "Innig" } 

TAHeimatAbschied = \relative g' { 
\partial 4. 
d8\p\< cis d\! e4. a,8 c\> fis,\! g4. 
d'8\mf\< cis d\! fis4. e8\> d c\! h4.\p 
d8\< cis d\! fis4.\> d8\< e fis g4.\> 
h,8\p a h e4. d8^\markup{\large\italic "poco rit."}\> c a\! g4. 
\bar "|." 
} 

TBHeimatAbschied = \relative g { 
\partial 4. 
h8 ais h c4. a!8 fis d d4. 
h'8 g h b4. b8 a a g4. 
h!8 h h a[ h c] c h a g[ a h] 
g8 g g g4. gis8 a fis g4. 
\bar "|." 
} 

BAHeimatAbschied = \relative g { 
\partial 4. 
g8 g g g4. e8 d c h4. 
g'8 g g g4. g8 fis d d4. 
g8 g g a[ g a] fis g a e[ fis g] 
g8 g f e4. e8 e d h4. 
\bar "|." 
} 

BBHeimatAbschied = \relative g { 
\partial 4. 
g8\p\< g g\! c,4. c8 d\> d\! g,4. 
g'8\mf\< e d\! cis4. cis8\> d fis,\! g4.\p 
g'8\< g g\! d4.\> d8\< d d e4.\> 
e8\p e d c4. h8_\markup{\large\italic "poco rit."}\>\> a d\! g,4. 
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
 kaisernumber = "217" 
 comment = "" 
 footnote = "" 
 
 title = "Abschied" 
 subtitle = "" 
 composer = "Wenzel Müller (1767–1835), 1828"
 opus = "" 
 arranger = "Bearbeitung von Robert Radecke (1830–1911)" 
 poet = "Nach Ferdinand Raimund (1790–1836), 1828" 
 
 mutopiatitle = "Abschied von der Heimat" 
 mutopiacomposer = "MuellerW" 
 mutopiapoet = "F. Raimund (1790–1836)" 
 mutopiaopus = "" 
 mutopiainstrument = "Voice (TTBB)" 
 date = "1900s" 
 source = "Leipzig : C. F. Peters, 1907" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/23-797"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat{ \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
} 

\score {
{
\context ChoirStaff 
	<< 
	\context Lyrics = extra 
	\context Staff = TenorStaff 
	<< 
	\accidentalStyle voice 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G_8" 
			\context Voice = TenorA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TAHeimatAbschied } 
				>> } 
			\context Voice = TenorB { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \TBHeimatAbschied } 
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
				{ \global \BAHeimatAbschied } 
				>> } 
			\context Voice = BassB { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BBHeimatAbschied } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto TenorA \LHeimatAbschiedA 
	\context Lyrics = versetwo \lyricsto TenorA \LHeimatAbschiedB 
	\context Lyrics = versethree \lyricsto TenorA \LHeimatAbschiedC 
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
