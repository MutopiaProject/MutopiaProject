\include "deutsch.ly" 

#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key d \major \time 4/4 \tempo "Freudig" } 

SLutherHimmelB = \relative d'' { 
\partial 4 
d4\mf cis\< h cis\! a h cis d 
d d a a fis a\< g\> fis\! 
fis h\cresc h a cis 
d h a d\f 
cis h a h\dim 
g8[ fis] e4 d\p\fermata 
\bar "|." 
} 

ALutherHimmelB = \relative d'' { 
\partial 4 
a4 a8[ g] fis4 g fis8[ e] d4 e fis 
g fis a8[ g] fis[ e] d[ cis] h( fis'4) e8 dis4 
d d8[ e] f4 e8[ fis] g!4 fis8[ gis16 a] gis4 a 
a gis8[ eis] fis[ gis] a[ g] fis4 e8[ d] cis4 a 
\bar "|." 
} 

TLutherHimmelB = \relative d' { 
\partial 4 
fis4 e4. d8 cis4 d8[ cis] h[ a] g4 a 
h h8[ d] e[ d] cis4 a fis h h 
d!8[ cis] h4 cis8[ d] cis4 e d e8[ d] cis4 
a8[ h] cis4 cis cis d8[ c] h4. a16[ g] fis4 
\bar "|." 
} 

BLutherHimmelB = \relative d { 
\partial 4 
d4\mf a'\< h e,\! fis g8[ fis] e4 d 
g, h cis8[ h] a4 d dis\< e\> h\! 
h'8[ a] g4\cresc gis a4. ais8 
h4 e, a fis\f 
eis8[ cis] dis[ eis] fis[ e] dis4\dim 
e8[ g,] a4 d\p\fermata 
\bar "|." 
} 


LLHBA = \lyricmode { 
\set stanza = "1. " 
Vom Him -- mel hoch, da komm ich her, 
ich bring euch gu -- te neu -- e Mär; 
der gu -- ten Mär bring ich so viel, 
da -- von ich singn und sa -- gen will.
} 

LLHBB = \lyricmode { 
\set stanza = "2. " 
Euch ist ein Kind -- lein heut ge -- born 
von ei -- ner Jung -- frau aus -- er -- korn, 
ein Kin -- de -- lein so zart und fein, 
das soll eur Freud und Won -- ne sein. 
} 

LLHBC = \lyricmode { 
\set stanza = "3. " 
Es ist der Herr Christ un -- ser Gott, 
der will euch führn aus al -- ler Not; 
er will eur Hei -- land sel -- ber sein, 
von al -- len Sün -- den ma -- chen rein. 
} 

LLHBD = \lyricmode { 
\set stanza = "4. " 
Des lasst uns al -- le fröh -- lich sein 
und mit den Hir -- ten gehn hin -- ein, 
zu sehn, was Gott uns hat be -- schert, 
mit sei -- nem lie -- ben Sohn ver -- ehrt! 
} 

%--------------------

\header { 
 kaisernumber = "5b" 
 comment = "" 
 footnote = "" 
 
 title = "Vom Himmel hoch, da komm ich her" 
 subtitle = "" 
 composer = "Martin Luther (1483–1546), 1539" 
 opus = "" 
 piece = "" 
 arranger = "Bearbeitung von Gustav Schreck (1849–1918)" 
 poet = "Martin Luther (1483–1546), 1535" 
 
 mutopiatitle = "Vom Himmel hoch, da komm ich her" 
 mutopiacomposer = "SchreckG" 
 mutopiapoet = "M. Luther (1483–1546)" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1910s" 
 source = "Leipzig (Peters), 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/21-630"
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
				{ \global \SLutherHimmelB } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				{ \global \ALutherHimmelB } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Lyrics = versefour 
	\context Staff = men 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				{ \global \TLutherHimmelB } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BLutherHimmelB } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Sopran \LLHBA 
	\context Lyrics = versetwo \lyricsto Sopran \LLHBB 
	\context Lyrics = versethree \lyricsto Sopran \LLHBC 
	\context Lyrics = versefour \lyricsto Sopran \LLHBD 
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
