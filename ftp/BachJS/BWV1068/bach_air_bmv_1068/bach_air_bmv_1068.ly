\version "2.11.62"
\paper {
	ragged-last-bottom = ##f
}

\header {
title = "Air ('on the G string')"
subtitle = \markup{\italic "from the Orchestral Suite no. 3 BMV 1068"}

composer =  \markup{\column {\line {"J.S. Bach "} 
				 { \italic "(1685 - 1750)"} } }
	mutopiatitle = "Air ('on the G string')"
 	mutopiacomposer = "BachJS"
 	mutopiainstrument = "Flute and Guitar"
 	mutopiaopus = "BWV 1068"
 	source = "New adaptation from Bach-Gesellschaft"
 	style = "Baroque"
 	copyright = "Public Domain"
 	maintainer = "Mike Blackstock"
	maintainerEmail = "mike@blackstock.ca"
	maintainerWeb = "http://www.blackstock.ca"
 	lastupdated = "2008/Oct/20"
 footer = "Mutopia-2008/10/28-1534"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
} %end header

flute = \relative c' {
	\set Staff.instrumentName = "Flute"
	\set Staff.midiInstrument = "flute"
	\clef violin
	\key d \major
	\time 4/4 
	\repeat "volta" 2 {
	fis'1 ~ |
	fis8 b16 g \acciaccatura { fis8 } e16 d cis d cis4 \acciaccatura { b8 } a4 |   % 3
	a'2 ~ a16 fis c! ( b ) e ( dis! ) a' g | g2 ~ g16 e b ( a ) d ( cis ) g' ( fis ) |   % 5
	fis4. gis!16 ( a ) d,8 d32 e fis16 ~ fis e e ( d ) | 
	} % end repeat

\alternative {
	{
		cis16 b b32 cis d16 ~ d8 cis16 b a2 
	}
	{
		cis16 b b32 cis d16 ~ d8 cis16 b a2 
	}
} % end alternative

	\repeat "volta" 2 {
	cis4 ~ cis16 d32 cis b cis a16 a'4. c,!8 |
	b b' ~ b16 a g fis g4 ~ g32 fis e d cis!16 b |   % 11
	ais! b cis8 ~ cis16 d e8 ~ e16 fis g8 ~ g fis |
	e16 d cis b cis (  d32 e ) d8 b2 % 13
	d4 ~ d16 fis e d b'4 ~ b8 a16 gis! |
	fis32 e a16 a,8 b8. ( cis32 d ) cis8. b16 a4 |   % 15
	d4. fis16 ( e ) e4. g16 ( fis ) |
	fis4. a16  ( g ) g2 |   % 17
	a,4 ~ a16 cis e g g e fis8 ~ fis ~ fis16 g32 a |
	d,4 ~ d16 fis a c! b4. d,8 |   % 19
	cis!16 e g4 b,8 a e'16 fis32 g~ g16 fis8 e16 |
	d32 cis b8 cis16 d8  ( cis16) \trill d d2 
	} %end repeat
} %end flute

guitarUpper = \relative c' {
	\set Staff.instrumentName = "Guitar"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\voiceOne 
	\clef violin
	\key d \major
	\time 4/4 
	\repeat "volta" 2 {
	< a' d-2 >2 b-0 |
	<b d,>4 < e, b' > < e a >2 ~ |   % 3
	< e a >8 c'!16 b c8 a'16 c, b8 r r4 |
	b8 e16 d e fis g e < e, a >8 r r4 |   % 5
	a2 ~ a8 gis!16 a b8 gis | 
	} %end repeat

\alternative {
	{
		< e a >8 < fis a > ~ a < e gis! > < e a >2 
	}
	{
		< e a >8 < fis a > ~ a < e gis! > < e a >2 
	}
} % end alternative

\repeat "volta" 2 {
	< e a >2 ~ a16 b < dis,! c'! > e fis b a g |
	fis g a fis dis8 < b' dis! > < b e >2 |   % 11
	cis16 d! e fis g fis g e fis d cis b ais! b cis8 |
	< fis, b > < e b' >16 d < g b >8 < fis ais! >16 e fis2  %13
	e8 b' a16 gis! a8 b, e16 fis gis! a b8 ~ |
	b a4 gis!8 < e a >8. d16 cis d e cis |   % 15
	a'8 b16 c! b cis! d8 ~ d cis16 b cis dis! e8 ~ |
	e dis!16 cis dis e fis8 ~ fis16 dis! e b e, b' g e |   % 17
	r8 e16 a cis8 a ~ a cis16 d d,4 ~ |
	d8 e fis4 < d g >2 |   % 19
	e16 b e g b a g fis e d' cis b a8 b |
	a4 g16 fis g8 fis2 
	} % end repeat
} % end guitarUpper

guitarLower = \relative c' {
	\voiceTwo 
	                   
	d8 d cis cis b b a a g g gis! gis a a g! g   % 3
	fis fis e e' dis! dis b b e e d d cis cis a a   % 5
	d d cis cis b b gis! e a d e e, < a cis >16 b cis d e g! fis e % 7
	a,8 d e e, a2
	a8 a g g fis fis e e dis'! dis fis, b e e d! d   % 11
	cis cis b b ais! b cis ais! b g e fis b b a! a  %13
	gis! gis fis fis e e d' d cis cis d e a, a g! g   % 15
	fis fis g g gis! gis a a ais! ais b b e, e' d! d   % 17
	cis cis a cis d d c! c b b a a g g fis fis   % 19
	e e d' d cis a d g, a g a a d2 
} % end guitarLower

guitar = \simultaneous {
	\context Voice="guitarUpper" \guitarUpper
	\context Voice="guitarLower" \guitarLower
	} %end guitar

\score {

	\simultaneous {
		\set Score.skipBars = ##t
		\context Staff="flute" \flute
		\context Staff="guitar" \guitar
	} %end simultaneous

\midi	{
	\context {
		\Score
			tempoWholesPerMinute = #(ly:make-moment 72 4)
			}
		} % end midi

\layout {
		linewidth = 170.000 \mm
		textheight = 250.000 \mm
		}  %end layout
} % end score
