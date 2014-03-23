#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key g \major \time 4/4 \tempo "Langsam" } 

SDeutschlandlied = \relative g' { 
\revert Rest.direction 
\partial 2 
g4.\mf a8 b4 a c b a8[ fis] g4 
e'4 d c b\< a b8[ g] d'2\! 
g,4.\mf a8 b4 a c b a8[ fis] g4 
e'4 d c b\< a b8[ g] d'2\! 
a4\p b a8[ fis] d4 c' b a8[ fis] d4 
d'4\cresc c b4. b8 cis4 cis8[ d] d2\f 
\bar "||" 
\break 
\bar ".|:" 
g4.\ff fis8 fis[ e] d4 
e4. d8 d[ c] b4 
a4. b16[ c] d8[ e] c[ a] g4 \acciaccatura{b8} a[ g] g2 
\bar ":|." 
} 

ADeutschlandlied = \relative g' { 
\partial 2 
d4. fis8 g4 fis a g fis8[ d] d4 
g4 g fis8[ a] g4 a g fis2 
d4. fis8 g4 fis a g fis8[ d] d4 
g4 g fis8[ a] g4 a g fis2 
d4 d d d a' g fis8[ d] d4 
d4 e8[ fis] g4. g8 g4 g8[ fis] fis2 
\bar ".|:" 
g4. g8 g4 g 
g4. g8 a4 g 
fis4. g16[ a] g4. e8 d4 fis d2 
\bar ":|." 
} 

TDeutschlandlied = \relative g { 
\revert Rest.direction 
\partial 2 
b4. d8 d4 d d d c b 
c4 d d d e e a,2 
b4. d8 d4 d d d c b 
c4 d d d e e a,2 
fis4 g fis8[ a] fis4 d' d d8[ a] fis4 
b4 a g8[ b] b[ e] e4. a,8 a2 
\bar ".|:" 
d4. d8 c4 b 
c4. b8 d4 d 
d4 d d e8[ c] b4 c b2 
\bar ":|." 
} 

BDeutschlandlied = \relative g { 
\partial 2 
g4.\mf d8 g4 d fis g d g, 
c'4 b a8[ fis] g4\< c, cis d2\! 
g4.\mf d8 g4 d fis g d g, 
c'4 b a8[ fis] g4\< c, cis d2\! 
d4\p g d d fis g d d 
b4\cresc c8[ d] e4. e8 a4 a,4 d2\f 
\bar ".|:" 
b'4.\ff b8 c4 g 
c,4. g'8 fis4 g 
d4 c b c d d g,2 
\bar ":|." 
} 


LDeutschlandliedA = \lyricmode { 
\set stanza = "1." 
Deutsch -- land, Deutsch -- land ü -- ber al -- les, 
ü -- ber al -- les in der Welt, 
wenn es stets zu Schutz und Trut -- ze 
brü -- der -- lich zu -- sam -- men -- hält, 
von der Maas bis an die Me -- mel, 
von der Etsch bis an den Belt, 
Deutsch -- land, Deutsch -- land ü -- ber al -- les, 
ü -- ber al -- les in der Welt. 
} 

LDeutschlandliedB = \lyricmode { 
\set stanza = "2." 
Deut -- sche Frau -- en, deut -- sche Treu -- e, 
deut -- scher Wein und deut -- scher Sang 
sol -- len in der Welt be -- hal -- ten 
ih -- ren al -- ten schö -- nen Klang, 
uns zu ed -- ler Tat be -- geis -- tern 
un -- ser gan -- zes Le -- ben lang. 
Deut -- sche Frau -- en, deut -- sche Treu -- e, 
deut -- scher Wein und deut -- scher Sang. 
} 

LDeutschlandliedC = \lyricmode { 
\set stanza = "3." 
Ei -- nig -- keit und Recht und Frei -- heit 
für das deut -- sche Va -- ter -- land! 
Da -- nach lasst uns al -- le stre -- ben 
brü -- der -- lich mit Herz und Hand! 
Ei -- nig -- keit und Recht und Frei -- heit 
sind des Glü -- ckes Un -- ter -- pfand. 
Blüh im Glan -- ze die -- ses Glü -- ckes, 
blü -- he, deut -- sches Va -- ter -- land! 
} 

%--------------------

\header { 
 kaisernumber = "147" 
 comment = "" 
 footnote = "" 
 
 title = "Das Lied der Deutschen" 
 subtitle = "" 
 composer = "Joseph Haydn (1732–1809), 1797" 
 opus = "" 
 arranger = "Bearbeitung von Eusebius Mandyczewski (1857–1929)" 
 poet = "H. Hoffmann von Fallersleben (1798–1874), 1841" 
 
 mutopiatitle = "Das Lied der Deutschen" 
 mutopiacomposer = "HaydnFJ" 
 mutopiapoet = "H. Hoffmann von Fallersleben (1798–1874)" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1797" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/23-638"
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
				{ \global \SDeutschlandlied } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \ADeutschlandlied } 
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
				{ \global \TDeutschlandlied } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BDeutschlandlied } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto Sopran \LDeutschlandliedA 
	\context Lyrics = versetwo \lyricsto Sopran \LDeutschlandliedB 
	\context Lyrics = versethree \lyricsto Sopran \LDeutschlandliedC 
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
