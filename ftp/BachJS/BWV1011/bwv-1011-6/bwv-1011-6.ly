\version "2.13.4"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Cello Suite V"
        subtitle = "\"Sechs Suiten für Violoncello\""
        piece = "7. Gigue"
        mutopiatitle = "Cello Suite V - BWV 1011 - Gigue"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1011"
        mutopiainstrument = "Cello"
		arrangement = "Hajo Dezelski"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2009/10/13-1521"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melody =   \relative g {
    \repeat volta 2 {
		\partial 8 g8 | % 0
		es8. f16 d8 | % 1
		es8. f16 d8 | % 2
		c8. [bes16 (as16  g16) ] | % 3
		as8. c16 g8 | % 4
		f8. es'16 c8 | % 5
		d8. es16 c8 | % 6
		b8. d16 g,8 | % 7
		g'8. [f16 (es16  d16) ] | % 8
		es8. g16 c,8 | % 9
		as'8. [g16 (f16 es16) ] | % 10
		f8. as16 d,8 | % 11
		c'8. [bes16 (as16 g16) ] | % 12
		g8. es16 d'8 | % 13
		bes8. f16 es'8 | % 14
		f4. ~ | % 15
		f8. [es16 (d16 c16 ] | % 16
		d8.) [c16 (bes16 as16 ] | % 17
		bes4.) ~ | % 18
		bes8. [g16 (f16 es16 ] | % 19
		d8.) [c16 (bes16 as16 ] | % 20
		g8.) as'16 f8 | % 21
		g8. c16 d,8 | % 22
		es8. g,16 bes8 | % 23
		es,4 s8 | % 24
	}

	\repeat volta 2 {
		\partial 8 es'8 | % 0
		g8. as16 f8 | % 25
		g8. c16 b8 | % 26
		c8. [d,16 (es16 f16) ] | % 27
		bes,8. c16 d8 | % 28
		es8. c'16 b8 | % 29
		c8. fis,16 g8 | % 30
		fis8. b16 d,8 | % 31
		es'8. [d16 (c16 bes16) ] | % 32
		c8. es16 as,8 | % 33
		f8. g16 d8 | % 34
		es8. as16 d8 | % 35
		f4 ees8 | % 36
		d8. fis,16 g8 | % 37
		d8. b'16 fis8 | % 38
		g8. [bes,16 (c16  d16) ] | % 39
		g,8. c'16 as8 | % 40
		e8. as16 c8 | % 41
		es8. c16 d8 | % 42
		bes8. [g16 (f16 e16 )] | % 43
		f8. bes16 es,8 | % 44
		d8. f16 bes8 | % 45
		d8. bes16 c8 | % 46
		as8. [f16 (es16 d16 ] | % 47
		es8.) as16 c8 | % 48
		b8. [f16 (es16 d16 ] | % 49
		es8.) b'16 d8 | % 50
		cis8. [g16 (f16 es16 ] | % 51
		f8.) cis'16 es8 | % 52
		d8. as16 f'8 | % 53
		es8. as,16 g'8 | % 54
		f4.-\prallprall | % 55
		fis4.-\prallprall  | % 56
		g8. es16 f8 | % 57
		es8. cis16 d8 | % 58
		cis8. \trill d16 es8 | % 59
		as,8. [f16 (es16 d16 ] | % 60
		es8) d'4 ~ | % 61
		d8. [c16 (bes16 as16 ] | % 62
		bes8.) [g16 (f16 e16 ] | % 63
		f4.) ~ | % 64
		f8. [es16 (d16 c16 ] | % 65
		b8.) [as16 (g16 f16 ] | % 66
		es8.) g16 b8 | % 67
		d8. f16 as8 | % 68
		g8. d16 es8 | % 69
		g,8. c16 b8 | % 70
		c8. es,16 g8 | % 71
		c,4 s8 | % 72
	}
	
}

% The score definition

\score {
 	\context Staff << 
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key c \minor \time 3/8 \melody  }
    >>
	\layout { }
 	 \midi { }
}
