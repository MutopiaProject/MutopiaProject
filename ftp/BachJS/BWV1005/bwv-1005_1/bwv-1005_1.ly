\version "2.11.48"

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
        title = "Sonata III BWV 1005"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "1. Adagio"
        mutopiatitle = "BWV 1005 Adagio"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1005"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		comment = "Dedicated to the memory of Cyrano 13.6.2008"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/15-1458"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne =  \relative c' {
    c8. [ (d16) ] c8. [ (d16) ] c8. [ (d16) ] | % 1
    d8. [ (e16) ] d8. [ (e16) ] d8. [ (e16) ] | % 2
	d'8. [ e16 ] d8. [ e16 ] d8. [ f16 ] | % 3
	e8. [ f16 ] e8. [ f16 ] e8. [ f16 ] | % 4
    g8 [ (bes) ] bes [ (a) ] a [ (g) ] | % 5
    f4 f f | % 6
    fis4 fis fis | % 7
    fis8. [ (g16) ] fis8. [ (g16) ] fis8. [ (g16) ] | % 8
	a8 [ (c) ] c [ (b) ] b [ (a) ] | % 9
    a8. [ fis16 ] g8. [ bes16 ] a16 [ g a fis ] | % 10
    g8 [ a ] fis4. g8 | % 11
	bes,16. [ a32 g fis g16 ] cis,4 ~ cis32 [ d32 ( e fis g a bes64 c a32)] | % 12
	bes8. [ a16 ] bes8. [ a16 ] bes8 [ (es) ] | % 13
    d8. [ (es32 c) ] bes4 (a8. \trill ) [ g16 ] | % 14
    g4 g g | % 15
    c4 c c | % 16
    c8. [ (d16) ] c8. [ (d16) ] c8. [ (e16) ] | % 17
    d4 d d | % 18
    d8. [ (e16) ] d8. [ (e16) ] d8. [ (f16) ] | % 19
    d8. [ (c16) ] d8. [ (c16) ] d8. [ (b16) ] | % 20
    e8. [ (f16) ] e8. [ (f16) ] e8. [ (g16) ] | % 21
    f4 r4 f4 | % 22
    f4 r4 e8. [ f16 ] | % 23
	g8. [ (f16) ] g8. [ (f16) ] g8. [ (e16) ] | % 24
    f8. [ e16 ] f8. [ e16 ] f4 | % 25
	f8. [ e16 ] f8. [ a16 ] g8. [ f16 ] | % 26
    e4 r4 c8. [ bes16 ] | % 27
    e4 d8. [ e16 ] f4 | % 28
    f8. [ e16 ] f8. [ e16 ] <c e>8. r16  | % 29
    fis,8. [ a16 ] c8. [ e16 ] d8. [ c16 ] | % 30
    b8. [ c16 ] d4 d | % 31
    d8. [ c16 ] d8. [ b16 ] c8. [ d16 ] | % 32
    e8. [ fis16 ] fis8. [ g16 ] e8. [ fis16 ] | % 33
	g4 g2 ~ | % 34
    g4 f2 ~ | % 35
    f4 e2  | % 36
    a4 r8. a16 b8. [ c16 ]  | % 37
    g4. a8 g16 [ f8.] | % 38
	e16. [ f32 ( g a fis g ) ] c,8 ~ [c32 b ( a b )] b8. [ c16 ] | % 39
    d,4 ~ d16 [ es (f g ] a [ b c32 d es b) ] | % 40
    c4 ~ c16 r16 r8 r4 | % 41
    d4 ~ d16 [ es ( d c ] b32 [ a g f es f d16 ) ] | % 42
    es8. [ d16 ] es8. [ d16 ] es8. [ b'16 ] | % 43
    c8 [ es16 d ] c4 ~ b8. \trill [ c16 ] | % 44
    c8 s4. s4 | % 45
	d16 [ (b a g) ] a, [ (g' c e,) ] fis [ (c' a' c, )] | % 46
    b2. \bar "|." % 0
    }

melodyTwo =  \relative c' {
     s2. | % 1
    c4 c c | % 2
    b4 b b | % 3
    bes4 bes bes | % 4
    a4 a a | % 5
    d4 d d | % 6
    d4 d d | % 7
    dis4 dis dis | % 8
    dis4 dis dis | % 9
    dis4 e es | % 10
	d4 d2 | % 11
	s2. | % 12
	g8. [ fis16 ] g8. [ fis16 ] g4 | % 13
    r4 d2 | % 14
    g,8. [ (a16) ] g8. [ (a16) ] g8. [ (b16) ] | % 15
    a4 a a | % 16
    a4 a a | % 17
    a8. [ (b16) ] a8. [ (b16) ] a8. [ (c16) ] | % 18
    b4 b b | % 19
    c4 c c | % 20
    bes4 bes bes | % 21
    a4 r4 d4 | % 22
    g,4 r4 g4 | % 23
    cis4 r4 cis4 | % 24
    d'8. [ cis16 ] d8. [ cis16 ] d8. [ c16 ] | % 25
    g,4 g g | % 26
    c4 r4 c4  | % 27
	fis8. [ e16 ] fis8. [ e16 ] d8. [ c16 ] | % 28
	b4 r4 c8. [ b16 ] | % 29
    a4 a a | % 30
	g4 g g | % 31
	g4 g g | % 32
	g4 g g | % 33
	g4 e''8. [ d16 ] e8. [ d16] | % 34
	cis8. [ a16 ] d8. [ c16 ] d8. [ c16] | % 35
	b8. [ g16 ] c8. [ bes16 ] a8. [ g16] | % 36
    e'8. [ d16 ] e8. [ c16 ] d8. [ e16 ] | % 37
    r4 r8 e,8 d4 | % 38
    c8 r8 g'4 g,4 | % 39
    aes4 s2 | % 40
    a4 ~ a16 [ (g a b ] c [ d es f32 g ) ]  | % 41
    b,4 ~ b16 s8. s4 | % 42
    c8. [ b16 ] c8. [ b16 ] c8. [ d16 ] | % 43
    r8 a8 g4 s4 | % 44
    c8 [ e ] a [ c, ] b [ a'] | % 45
	s2. | % 46
    g,2. | % 47
    }

melodyThree =  \relative f' {
	s2. | % 1
 	s2. | % 2
	f4 d g | % 3
	<g d'>4 <g d'>4 <g d'>4 | % 4
    <e cis'>4 <e cis'>4 <e cis'>4  | % 5
	a8. [ b16 ] a8. [ b16 ] a8. [ b16 ] | % 6
    c8 [ (es) ] es [ (d) ] d [ (c) ] | % 7
    b4 b b | % 8
    c4 a b | % 9
    c4 cis c | % 10
    bes8 [ c ] a2 | % 11
	s2. | % 12
	s2. | % 13
	s2. | % 14
	s2. | % 15
    g8. [ (a16) ] g8. [ (a16) ] g8. [ (a16) ]  | % 16
    f4 f f | % 17
    fis4 fis fis | % 18
    g4 g g | % 19
    <g e'>4 <g e'>4 <g e'>4  | % 20
    <g c>4 <g c>4 <g c>4  | % 21
    <a c>8. [ <g bes>16 ] <a c>8. [ <g bes>16 ] <a c>8. [ <f a>16 ]   | % 22
    <g bes>8. [ <f a>16 ] <g bes>8. [ <f a>16 ] <g bes>4  | % 23
	<e a>4 r4 <a e'>4   | % 24
    <d, a'>4 s2  | % 25
	<d b'>4 <d b'>4 <d b'>4  | % 26
    <e c'>8. [ <d b'>16 ] <e c'>8. [ <f d'>16 ] <g e'>4  | % 27 | % 27
    a4 r8. c16 b8. [ a16 ] | % 28
    <g d'>4 s4 g8. [ g16 ]  | % 29
    s4 fis4 fis | % 30
	g4  f8. [ e16 ] f8. [ d16 ] | % 31
	e4  e8. [ d16 ] e8. [ f16 ] | % 32
    <g c>4 <g c>4 <g c>4  | % 33
    <d b'>4 s2 | % 34
    s2.  | % 35
    s2. | % 36
    f4 s2  | % 37
    b4. c8 b4 | % 38
    <g c>8 r8 s4 d4 | % 39
    c'4 ~ c16 s8. s4 | % 40
	fis,4 ~ fis16 s8. s4 | % 41
    aes4 ~ aes16 s8. s4  | % 42
    s2. | % 43
    es8 [ fis ] g4 d | % 44
    e8 s4. s4 | % 45
	s2. | % 46 
    g2. \bar "|." % 0
    }



melody = << \melodyOne \\ \melodyTwo \\ \melodyThree  >>

% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key c \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
