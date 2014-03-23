\include "deutsch.ly" 

#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key f \major \time 4/4 \tempo "Mäßig langsam" } 

SAbendlied = \relative f' { 
\partial 4 
c4 f e f g e4.( d8) c4 
g' a g f8[ e] d4 c2. 
c4 \break f e f g e4.( d8) c4 
g' a g a h c2. 
c4 \break b a g f b2( a) g2. 
a4 b a g f g2. 
c,4 \break f g a b c( b8[ a]) g2 
b a4\< g c2.(\> b4\! a g8[ f] g4) g f2. 
\bar "|." 
} 

AAbendlied = \relative f' { 
\partial 4
c4 c c c d b2 c4 
c c c f8[ e] d4 c2. 
c4 c c c d b2 c4 
c c c f8[ e] d4 c2. 
r4 f2 d4 d d2\( c\) b2. 
f'4 g f d d d2( c4) 
c c2 f4 f f2 e4 
c d( e f) e f2( fis4 g f! d2) e4 c2. 
} 

TAbendlied = \relative f { 
\partial 4
a4 a g a b g( f) g  
e f g a h c2. 
a4 a g c b g( f) g 
e f g f f e2. 
c'4 d c b a a( g2 fis4) g2. 
d'4 d c b a b2. 
b4 a c2 d4 c( d) e2 
d c c4.( d8 es4 d c b8[ a] b4) b a2. 
} 

BAbendlied = \relative f { 
\partial 4
f4 f c f b, c( d) e 
c f e d g c,2. 
f4 f c a b c( d) e 
c f e d g, c2. 
a'4 b f g d g,2( d') g2. 
d4 g, a b d g( f2) 
e4 f e f d a( b) c2 
g a4\< b a2.(\> b4\! c d b) c f2. 
\bar "|." 
} 


LAbendliedA = \lyricmode { 
\set stanza = "1." 
Es ist so still ge -- wor -- den, ver -- rauscht des A -- bends Wehn, 
nun hört man al -- ler Or -- ten der En -- gel Fü -- ße gehn. 
Rings in die Ta -- _ le zieht Fin -- ster -- nis und Nacht. 
Wirf ab, was dich krän -- ket und was dir ban -- ge macht. 
} 

LAbendliedB = \lyricmode { 
\set stanza = "2." 
Es ruht die Welt im Schwei -- gen, ihr To -- sen ist vor -- bei,  
stumm ih -- rer Freu -- de Rei -- gen und stumm ihr Schmer -- zens -- schrei.
Hat Ro -- sen sie ge -- schenkt, hat Dor -- nen sie ge -- bracht, 
wirf 
} 

LAbendliedC = \lyricmode { 
\set stanza = "3." 
Und hast du heut ge -- feh -- let, o schau -- e nicht zu -- rück; 
emp -- fin -- de dich be -- see -- let von frei -- er Gna -- de Glück! 
Auch des Ver -- irr -- ten denkt der Hirt auf ho -- her Wacht. 
Wirf 
} 

LAbendliedD = \lyricmode { 
\set stanza = "4." 
Nun stehn im Him -- mels -- krei -- se die Stern in Ma -- jes -- tät; 
in glei -- chen fes -- ten Glei -- se der gold -- ne Wa -- gen geht. 
Und gleich den Ster -- nen lenkt er dei -- nen Weg durch Nacht. 
Wirf 
} 

LAbendliedSA = \lyricmode { 
\set stanza = "1." 
Es ist so still ge -- wor -- den, ver -- rauscht des A -- bends Wehn, 
nun hört man al -- ler Or -- ten der En -- gel Fü -- ße gehn. 
Rings in die Ta -- le sen -- ket sich Fin -- ster -- nis und Nacht. 
Wirf 
} 

LAbendliedSB = \lyricmode { 
\set stanza = "2." 
Es ruht die Welt im Schwei -- gen, ihr To -- sen ist vor -- bei,  
stumm ih -- rer Freu -- de Rei -- gen und stumm ihr Schmer -- zens -- schrei.
Hat Ro -- sen sie ge -- schen -- ket, hat Dor -- nen sie ge -- bracht, 
wirf 
} 

LAbendliedSC = \lyricmode { 
\set stanza = "3." 
Und hast du heut ge -- feh -- let, o schau -- e nicht zu -- rück; 
emp -- fin -- de dich be -- see -- let von frei -- er Gna -- de Glück! 
Auch des Ver -- irr -- ten den -- ket der Hirt auf ho -- her Wacht. 
Wirf 
} 

LAbendliedSD = \lyricmode { 
\set stanza = "4." 
Nun stehn im Him -- mels -- krei -- se die Stern in Ma -- jes -- tät; 
in glei -- chen fes -- ten Glei -- se der gold -- ne Wa -- gen geht. 
Und gleich den Ster -- nen lenk -- et er dei -- nen Weg durch Nacht. 
Wirf 
} 

LAbendliedXS = \lyricmode { 
\skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 
ab, Herz, was dich krän -- ket und was dir ban -- ge macht. 
} 

LAbendliedXT = \lyricmode { 
\skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 
ab, was dich krän -- ket, was dir ban -- ge macht. 
} 

%--------------------

\header { 
 kaisernumber = "166" 
 comment = "Auch in Fis oder G dur" 
 footnote = "" 
 
 title = "Ein geistlich Abendlied" 
 subtitle = "" 
 composer = "Volksweise, 1532 aufgezeichnet" 
 opus = "" 
 arranger = "Bearbeitung von Engelbert Humperdinck (1854–1921)" 
 poet = "Gottfried Kinkel (1815–1882), 1840" 
 
 mutopiatitle = "Ein geistlich Abendlied" 
 mutopiacomposer = "HumperdinckE" 
 mutopiapoet = "G. Kinkel (1815–1882)" 
 mutopiaopus = "" 
 mutopiainstrument = "Choir (SATB)" 
 date = "1910s" 
 source = "Leipzig : C. F. Peters, 1915" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/23-854"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat{ \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
} 

\score {
{
\context ChoirStaff 
	<< 
	\context Lyrics = SopranX 
	\context Staff = women 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
	\override Staff.TimeSignature.style = #'single-digit
			\clef "G" 
			\context Voice = Sopran { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \SAbendlied } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \AAbendlied } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Lyrics = versefour 
	\context Lyrics = TenorX 
	\context Staff = men 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
	\override Staff.TimeSignature.style = #'single-digit
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TAbendlied } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BAbendlied } 
				>> } 
		>>
	\context Lyrics = BassX  

	\context Lyrics = SopranX \lyricsto Sopran \LAbendliedXS 
	\context Lyrics = verseone \lyricsto Alt \LAbendliedA 
	\context Lyrics = versetwo \lyricsto Alt \LAbendliedB 
	\context Lyrics = versethree \lyricsto Alt \LAbendliedC 
	\context Lyrics = versefour \lyricsto Alt \LAbendliedD 
	\context Lyrics = TenorX \lyricsto Tenor \LAbendliedXT 
	\context Lyrics = BassX \lyricsto Bass \LAbendliedXS 
	>>
}

\layout {
indent = 0.0\cm
\context {\Score 
\remove "Bar_number_engraver"
\override DynamicTextSpanner.style = #'none 
\override BreathingSign.text = #(make-musicglyph-markup "scripts.rvarcomma") 
}
\context {\Staff 
\override VerticalAxisGroup.minimum-Y-extent = #'(-1 . 1) 
}
}

\midi {
\tempo 4=96
}

}
