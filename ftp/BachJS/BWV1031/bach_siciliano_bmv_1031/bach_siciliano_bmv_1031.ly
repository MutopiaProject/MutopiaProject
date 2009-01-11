\version "2.10"
\paper{
	ragged-last-bottom = ##f
}

\header {
title = "Siciliano"
subtitle = \markup{\italic "from the Flute Sonata no. 2 BMV 1031"}

composer =  \markup{\column {\line {"J.S. Bach "} 
					 { \italic "(1685 - 1750)"}
							} 
					}
	mutopiatitle = "Siciliano"
 	mutopiacomposer = "BachJS"
 	mutopiainstrument = "Flute and Guitar"
 	mutopiaopus = "BWV 1031"
 	source = "New adaptation from Bach-Gesellschaft"
 	style = "Baroque"
 	copyright = "Public Domain"
 	maintainer = "Mike Blackstock"
	maintainerEmail = "mike@blackstock.ca"
	maintainerWeb = "http://www.blackstock.ca"
 	lastupdated = "2008/Jun/25"
 footer = "Mutopia-2008/09/01-1535"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
} %end header

flute = \relative c' {
	\set Staff.instrumentName = "Flute"
	\set Staff.midiInstrument = "flute"
	\clef violin
	\key bes \major
	\time 6/8 
	                   
	d'8. es16 d8 d g es |
	c2. |
	c8. d16 c8 c a' c, |
	c16 bes8 a16 g8 r4 r8 |
	bes d es ~ es a es |
	es d r f bes f ~ | 
	f g f ~ f es d |
	c16 f a c bes d c bes a g f es |
	d8 r r r4 r8 |
%10
	f8. g16 f8 f bes g | 
	es2. |
	es8. f16 es8 es c' es, |  
	d16 f, g a bes c d f bes8 d, |
	d c4 ~ c8 a' c, | 
	c16 a bes d g a bes8. a16 g8 |
	a8. g16 f8 r16 e! g f e d |
	cis!4 d8 e!16 gis! a e f d |
	cis!4 d8 e!16 gis! a e f d | 
	cis! d e!8 a, bes16 d cis d e d |
%20
	a d cis! d e! d g, bes a g f e! |
	f8 d r r4 r8 |
	R2. |
	d'8. es16 d8 d g es |
	c2. |
	c8. d16 c8 c a' c, |
	bes16 g a bes c d es f es d c bes |
	a cis! d a bes g fis!4 g8 |
	a16 cis! d a bes g fis!4 g8 |
	a16 g a bes c! d es8 d c |
%30
	bes16 d c bes a g es'16. c32 bes8 a |
	g d' bes g g' bes, |
	r16 bes a bes g' bes, bes16. c32 \grace { bes!8 } a4 |
	g2. 
	\bar "|."
} %end flute
guitarUpper = \relative c' {
	\set Staff.instrumentName = "Guitar"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\voiceOne 
	\clef violin
	\key bes \major
	\time 6/8 
	                   
	r16 g' bes g fis! g r g bes g fis g |
	r c, es c a c r c es c a c |
	r d a' fis! e! fis r a c a d, a' |
	r a g fis! g d r es d c d bes | 
	g g' bes g fis! g r c es c bes c |
	r c bes a bes f r bes d bes a bes |
	r bes es bes as! bes r bes c a! bes g |
	a8 f r r4 r8 | 
	r16 f a c bes d c bes a g f es |
%10
	r bes' d bes a bes r bes d bes a bes |
	r es, g es c es r es g es c es |
	r f c' a g a r c es c f, c' | 
	bes8 r16 f g a bes c d bes f bes ~ |
	bes g a e! f g a bes c a d, a' ~ |
	a fis! g a bes c d d g f! e! d |
	c c f es d c bes c bes a g f |
	e! gis! a e f d cis!4 d8 |
	e!16 gis! a e f d cis!4 d8 |
	e r4 r r8 |
%20
	R2. | 
	r4 d'8 es16 g fis! g a g |
	d g fis! g a g c, es d c bes a |
	r g bes g fis! g r g bes g fis g |
	r c, es c a c r c es c a c |
	r d a' fis! e! fis r a c a d, a' |
	g8. f!16 es d c8 c'16 bes a g |
	fis!4 g8 a16 cis! d a bes g |
	fis!4 g8 a16 cis! d a bes g | 
	fis! e! fis g a bes c8 bes a |
%30
	g4. ~ g16. a32 \grace { g8 } fis!4 |
	r16 g bes g fis! g r g bes g fis g |
	r g fis! g bes g g16. a32 fis!4 |
	g2. 
	\bar "|."
} % end guitarUpper
guitarLower = \relative c' {
	\voiceTwo 
% probably not one bar per line in lower voice - a relic from 'noteedit'	                   
	g4 r8 g4 r8 g4 r8 g4 r8 
	fis!4 r8 fis!4 r8 g4 r8 g4 r8
	g4 r8 a4 r8 bes4 r8 bes4 r8
	es4 r8 es4 e,!8 f4 g8 a f a 
	bes f g a f a bes4 r8 bes4 r8 
	bes4 r8 bes4 r8 a4 r8 a4 r8 
	bes4 r8 bes4 r8 f4 r8 fis!4 r8 
	g4 r8 g4 c8 f,4 bes8 g4. 
	a4 r8 a4 r8 a4 r8 a4 r8 
	r16 a a' g f d g4 r8 f4 r8 e! cis! a 
	d16 a' d c! bes g c4 r8 bes4 r8 a fis! d
	g,4 r8 g4 r8 g4 r8 g4 r8 
	fis!4 r8 fis4 r8 g4 r8 c4 r8   
	d4 r8 d4 r8 d4 r8 d4 r8 
	d4 r8 fis,!4 r8 g a bes c d d  
	g,4 r8 es'4 r8 cis!4 r8 d4 d8 
	g,2. 
} % end guitarLower

guitar = \simultaneous {
	\context Voice="guitarUpper" \guitarUpper
	\context Voice="guitarLower" \guitarLower
}

\score {
	\simultaneous {
		\set Score.skipBars = ##t
		\context Staff="flute" \flute
		\context Staff="guitar" \guitar
	}

\midi	{
	\context {
		\Score
			tempoWholesPerMinute = #(ly:make-moment 54 4)
			}
		} % end midi
\layout{}
} % end score

