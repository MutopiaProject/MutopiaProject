#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key g \major \time 6/8 \tempo "Gemäßigt" } 

SSoldatenbraut = \relative g' { 
\partial 8 
d8\p g g g a g a b4.~ b4 
g8\cresc b b b \acciaccatura d c b c d4.~ d4 
g,16(\f g) g8 g' g g fis e d4.( c4) 
c16(\p c) b8 b b a8. g16 a8 g4(\< e'8\> <<d4) {s8 s\!}>> 
c16( c) b8 b b a8. b16 a8 g4.~ g4 
\bar "|." 
} 

ASoldatenbraut = \relative g' { 
\partial 8 
d8 d d d d d d d4.~ d4 
b8 d d d d d d d4.~ d4 
g16( g) g8 g g g g g g4.( e4) 
a16( a) g8 g g fis8. e16 fis8 g4( c8 b4) 
a16( a) g8 g g fis8. e16 fis8 d4.~ d4 
\bar "|." 
} 

TSoldatenbraut = \relative g { 
\partial 8 
d8 d d e fis e fis g4.~ g4 
d8 g g g \acciaccatura b a g a b4.~ b4 
g16( g) e'8 e e e d c b4.( a4) 
e'16( e) d8 d d c8. d16 c8 b4( a8 d4) 
e16( e) d8 d d c8. d16 c8 b4.~ b4 
\bar "|." 
} 

BSoldatenbraut = \relative g { 
\partial 8 
d8\p b4. d4 d8 d e fis g4.~ g4\cresc 
g8 g g g g d b g4 
g'16(\f g) c,8 c c c d e g4.( c,4) 
c16(\p c) d4.~ d8 d d e8.\< e16 fis8\> <<g4 {s8 s\!}>> 
c,16( c) d4.~ d8 d d g d b g4 
\bar "|." 
} 


LSoldatenbrautA = \lyricmode {
\set stanza = "1."
Ach, wenns nur der Kö -- nig auch wüßt, __ 
wie wa -- cker mein Schät -- ze -- lein ist! 
\set ignoreMelismata = ##t Für den \unset ignoreMelismata Kö -- nig, da ließ er sein Blut, 
für mich a -- ber e -- ben so gut, 
für mich a -- ber e -- ben so gut. 
} 

LSoldatenbrautB = \lyricmode {
\set stanza = "2."
Mein Schatz hat kein Band und kein Stern, __ 
kein Kreuz wie die vor -- neh -- men Herrn, 
mein Schatz wird auch kein Ge -- ne -- ral: __ 
\set ignoreMelismata = ##t hätt er \unset ignoreMelismata nur sei -- nen Ab -- schied ein -- mal, 
\set ignoreMelismata = ##t hätt er \unset ignoreMelismata nur sei -- nen Ab -- schied ein -- mal! 
} 

LSoldatenbrautC = \lyricmode {
\set stanza = "3."
Es schei -- nen drei Ster -- ne so hell __
dort ü -- ber Ma -- ri -- en -- ka -- pell; 
da knüpft uns ein ro -- sen -- rot Band, 
\set ignoreMelismata = ##t und ein \unset ignoreMelismata Haus -- kreuz ist auch bei der Hand, 
\set ignoreMelismata = ##t und ein \unset ignoreMelismata Haus -- kreuz ist auch bei der Hand. 
} 

%--------------------

\header {
 kaisernumber = "399"
 comment = ""
 footnote = ""
 
 title = "Die Soldatenbraut"
 subtitle = ""
 composer = "Friedrich Silcher (1789–1860), 1842"
 opus = ""
 arranger = "Arrangement by Arnold Mendelssohn (1855–1933)"
 poet = "Eduard Mörike (1804–1875), 1837"
 
 mutopiatitle = "Die Soldatenbraut"
 mutopiacomposer = "SilcherF"
 mutopiapoet = "E. Mörike (1804-1875)"
 mutopiaopus = ""
 mutopiainstrument = "Choir (SATB)"
 date = "1842"
 source = "Leipzig : C. F. Peters, 1915"
 style = "Romantic"
 license = "Creative Commons Attribution 4.0"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/23-733"
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
				{ \global \SSoldatenbraut } 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \ASoldatenbraut } 
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
				{ \global \TSoldatenbraut } 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BSoldatenbraut } 
				>> } 
		>> 
	\context Lyrics = verseonebass 
	\context Lyrics = versetwobass 
	\context Lyrics = versethreebass 

	\context Lyrics = verseone \lyricsto Sopran \LSoldatenbrautA 
	\context Lyrics = versetwo \lyricsto Sopran \LSoldatenbrautB 
	\context Lyrics = versethree \lyricsto Sopran \LSoldatenbrautC 
	\context Lyrics = verseonebass \lyricsto Bass \LSoldatenbrautA 
	\context Lyrics = versetwobass \lyricsto Bass \LSoldatenbrautB 
	\context Lyrics = versethreebass \lyricsto Bass \LSoldatenbrautC 
	>> 
}

\layout {
indent = 0.0\cm
\context {\Score 
\remove "Bar_number_engraver"
\override DynamicTextSpanner.style = #'none 
}
}

\midi {
\tempo 4.=56
}

}
