#(set-global-staff-size 15.5) 
#(ly:set-option 'point-and-click #f) 

\version "2.10" 

global = { \key a \major \time 4/4 \tempo 4=104 } 

SKamerad = \relative a' { 
\partial 4 
e8( e) a4 cis8( cis8) cis4 b a2 e4 
a8( b8) cis4 e8( e) e4 d cis2 \oneVoice r4 \voiceOne 
a8[ b] cis4-. cis-. cis-. b-. cis4.( d8) e4 
d8[ cis] b4 b b b8[ a] b4.( cis8) d4 
e4 cis cis b b8[ cis] a2 
b2 cis4 e b b8[ cis] a2 \oneVoice r4 \voiceOne 
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
cis8( d8) e4 a,8( a) a4 b a2 \oneVoice r4 \voiceOne 
e'8[ d] cis4-. a-. a-. gis-. a4.( b8) cis4 
e4 e b8[ a] gis4 fis gis4.( a8) b4 
b4 e e d d cis2 
e2 cis4 a a gis a2 \oneVoice r4 \voiceOne 
\bar "|." 
} 

BKamerad = \relative a { 
\partial 4 
e8( e) a4 a,8( cis8) e4 e a2 a4 
fis8( fis8) e4 d8( cis) b4 e <<e2 a,>> s4 
cis8[ e] a4 gis8[ fis] e4 e a2 a,4 
a8[ cis] e4 dis e b4 e2 e4 
fis8[ gis] a4 a e e fis2 
e2 a4 cis,8[ d] e4 e <<e2 a,>> s4 
\bar "|." 
} 


LKameradA = \lyricmode {
\set stanza = "1. "
Ich hatt \set ignoreMelismata = ##t ei -- nen \unset ignoreMelismata Ka -- me -- ra -- den, 
\set ignoreMelismata = ##t ei -- nen \unset ignoreMelismata bes -- sern findst du nit. 
Die Trom -- mel schlug zum Strei -- te, 
er ging an mei -- ner Sei -- te 
in glei -- chem Schritt und Tritt, 
in glei -- chem Schritt und Tritt. 
}

LKameradB = \lyricmode {
\set stanza = "2. "
\set ignoreMelismata = ##t Ei -- ne \unset ignoreMelismata Ku -- gel kam ge -- flo -- gen, 
gilts mir \set ignoreMelismata = ##t o -- der \unset ignoreMelismata gilt es dir? 
Ihn hat es weg -- ge -- ris -- sen, 
er liegt mir vor den Fü -- ßen, 
als wärs ein Stück von mir, 
als wärs ein Stück von mir. 
}

LKameradC = \lyricmode {
\set stanza = "3. "
Will mir die Hand noch rei -- chen, 
der -- weil ich e -- ben lad. 
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
% composer = "Folksong"
 opus = ""
 meter =  \markup {Frisch}
 arranger = "Arrangement by Hermann Suter (1870–1926)"
 poet = "Ludwig Uhland (1787–1862), 1809"
 
 mutopiatitle = "Der gute Kamerad"
 mutopiacomposer = "SuterH"
 mutopiapoet = "L. Uhland (1787-1862), 1809"
 mutopiaopus = ""
 mutopiainstrument = "Choir (SATB)"
 date = "1910s"
 source = "Leipzig : C. F. Peters, 1915"
 style = "Romantic" 
 copyright = "Creative Commons Attribution 3.0"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2008/August/1"
 
 footer = "Mutopia-2008/08/12-730"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
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
