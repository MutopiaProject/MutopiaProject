#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key a \major \time 4/4 \tempo "Frisch" } 

SKamerad = \relative a' { 
\revert Rest.direction 
\partial 4 
e8\( e\) a4 cis8\( cis8\) cis4 b a2 e4 
a8\( b8\) cis4 e8\( e\) e4 d cis2 r4 
a8[ b] cis4-. cis-. cis-. b-. cis4.( d8) e4 
d8[ cis] b4 b b b8[ a] b4.( cis8) d4 
e4 cis cis b b8[ cis] a2 
b2 cis4 e b b8[ cis] a2 r4 
\bar "|." 
} 

AKamerad = \relative a' { 
\partial 4 
e8( e) e4 e8( e8) a4 gis e2 e4 
a8( a8) a4 e8( e) fis4 fis8[ gis] a2 s4 
e4 e e e e e2 a4 
b8[ a] gis4 fis e dis8[ fis] e2 gis4 
b4 a a gis gis a2 
gis2 a4 e e e8[ d] cis2 s4 
\bar "|." 
} 

TKamerad = \relative a { 
\partial 4 
e8( e) cis'4 a8( a8) e'4 d cis2 cis4 
cis8( d8) e4 a,8( a) a4 b a2 s4 
e'8[ d] cis4-. a-. a-. gis-. a4.( b8) cis4 
e4 e b8[ a] gis4 fis gis4.( a8) b4 
b4 e e d d cis2 
e2 cis4 a a gis a2 s4 
\bar "|." 
} 

BKamerad = \relative a { 
\revert Rest.direction 
\partial 4 
e8( e) a4 a,8( cis8) e4 e a2 a4 
fis8( fis8) e4 d8( cis) b4 e <<e2 a,>> r4 
cis8[ e] a4 gis8[ fis] e4 e a2 a,4 
a8[ cis] e4 dis e b4 e2 e4 
fis8[ gis] a4 a e e fis2 
e2 a4 cis,8[ d] e4 e <<e2 a,>> r4 
\bar "|." 
} 


LKameradA = \lyricmode { 
\set stanza = "1. " 
Ich _ hatt ei -- nen Ka -- me -- ra -- den, 
ei -- nen bes -- sern _ findst du nit. 
Die Trom -- mel schlug zum Strei -- te, 
er ging an mei -- ner Sei -- te 
in glei -- chem Schritt und Tritt, 
in glei -- chem Schritt und Tritt. 
} 

LKameradB = \lyricmode { 
\set stanza = "2. " 
Ei -- ne Ku -- gel _ kam ge -- flo -- gen, 
gilts _ mir  o -- der gilt es dir? 
Ihn hat es weg -- ge -- ris -- sen, 
er liegt mir vor den Fü -- ßen, 
als wärs ein Stück von mir, 
als wärs ein Stück von mir. 
} 

LKameradC = \lyricmode { 
\set stanza = "3. " 
Will _ mir die _ Hand noch rei -- chen, 
der -- _ weil ich _ e -- ben lad. 
Kann dir die Hand nicht ge -- ben, 
bleib du im ew -- gen Le -- ben 
mein gu -- ter Ka -- me -- rad, 
mein gu -- ter Ka -- me -- rad! 
} 


%--------------------

\header { 
 kaisernumber = "246" 
 comment = "" 
 footnote = "" 
  
 title = "Der gute Kamerad" 
 subtitle = "" 
 composer = "Volksweise" 
 opus = "" 
 arranger = "bearbeitet von Hermann Suter (1870–1926)" 
 poet = "Ludwig Uhland (1787–1862), 1809" 
 
 mutopiatitle = "Der gute Kamerad" 
 mutopiacomposer = "SuterH" 
 mutopiapoet = "L. Uhland (1787–1862), 1809" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1910s" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/23-730"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat{ \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
} 

\score { 
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
				{ \global \SKamerad } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				{ \global \AKamerad } 
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
				{ \global \TKamerad } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BKamerad } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Sopran \LKameradA 
	\context Lyrics = versetwo \lyricsto Sopran \LKameradB 
	\context Lyrics = versethree \lyricsto Sopran \LKameradC 
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
\tempo 4=104
}

}
