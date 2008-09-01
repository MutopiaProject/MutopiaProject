\version "2.11.52"

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
        piece = "2. Allemande "
        mutopiatitle = "Cello Suite V - BWV 1011 - Allemande"
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
	
 footer = "Mutopia-2008/09/01-1531"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne =  \relative d' {
    \repeat volta 2 {
		\partial 8 d8 | % 0
		<g,, es' d'>4 ~ d''16 [ c16 bes as ] bes8. [ f16 ] g8. [ d16 ] | % 1
		es4 c16 [ bes as g ] as8. [ f16 ] g8. [ d'16 ] | % 2
		<g, d'>8. [ c32 b32 ] c8. [ g'16 ] as,8. [ g'16 ] f [ (es d c) ] | % 3
		b8. [ as16 ] g [ b d f ] bes8. [ as16 ] f [ (es f d) ] | % 4
		<g, es'>8. [ d'16 ] c [ b c d ] es [ d es f ] g [ f g bes ] | % 5
		<es, c'>4 c'16 [bes as f ] g8. [ f32 es32 ] es'8. [ c16 ] | % 6
		<es, d'>4 d'16 [ c16 bes as] bes8. [ d16 ] e,8. \trill [ f16 ] | % 7
		<c g'>4 ~ g'16 [ (f e f32 g) ] c,8. [ c'16 ] bes8. [ c32 as ] | % 8
		<c, f bes>4 ~ bes'8 [ d16 (c ] bes [ as f es ] d [ es f d) ] | % 9
		as4 ~ as16 [f' (es d] c [bes as g] f [g as f)] | % 10
		< bes f' bes>4 ~ bes'16 [ as bes f] \appoggiatura f'16 es4 ~ es16 [d es c] | % 11
		g'4 ~ g16 [ f es d] c8. [ g16 ] as8. [ g'16] | % 12
		g,8 ~ [ g32 ( as g f)] g8. [as16] g4 f8. \trill [ (es32 d)] | % 13
		es4 c,8. [c''16] b4 as16 [ (fis as8) ] | % 14
		<a, fis' es'>4 es''16 [ es, ( d c) ] bes8. \trill [ c16 ] d [ (e fis) as ] | % 15
		b16 [ as  fis as ] b [ c d es ] f8. [ es32 d32 ] es8. [ fis,16 ] | % 16
		<d as'>4 c16 [  b' ( as b)] b4. \trill as8 | % 17
		g8. [ d16 b8. d16] g,4. s8 | % 18
	}
	\repeat volta 2 {
		\partial 8 es''8 | % 0
		<b es>4 ~ es16 [ d es f ] cis8. [ as16 ] g8. [ f16 ] | % 19
		es8. [ as16 ] d [ d, es f ] b,8. \trill [ as'16 ] es'8. [ f32 g ] | % 20
		f4 c,,8. [ es''16 ] d8. [ c32 b ] c8. [ d16 ] | % 21
		b4 ~ b16 [ b c d ] f,8. [ as32 b ] b8. \trill [ as32 b] | % 22
		c4 d,,16 [ c'' bes as ] f8. [ es16 ] f8. [ as16 ] | % 23
		<es bes'>4 c16 [c d es ] <d bes'>8. [ d16 ] es8. [ f16 ] | % 24
		d8. [ (es32 d) ] c8 [ d16 bes ] as'8 [as32 (f es d)] es8. [ g16 ] | % 25
		des,8 ~ [ des32 g (as bes ] c16 [ bes) as'8 ] g4 f16 \trill [ (e f8) ] | % 26
		<bes, e>4 bes16 [ bes as g ] as8. [ f'16 ] g8. [ as16 ] | % 27
		e8. [ c'16 ] bes8 [ c16 as ] g4. \trill f8 | % 28
		f4 ~ f16 [ f es d ] es8. [ d'16 ] (c [ b as f) ] | % 29
		c'8. [ bes32 as ] f8. [ as16 ] bes8. [ as16 ] f [ (es d es32 f) ] | % 30
		b,8. \trill [ as'16 ] es'8 [ (f32 es d es) ] f8. [ c,16 ] g8. [ (as32 bes) ] | % 31
		as8. [ g'16 ] f8. [ f'16 ] es8. [ d16 ] es [ (cis) d8 ] | % 32
		<f, cis'>8. [g16 ] (as [ g f es ] d [ c  b c)] d [ es f d ] | % 33
		as8. [ cis'16 ] d [ (cis b as)] d4. fis,8 | % 34
		g8. [ f'16 ] es [ f g es ] cis4. d8 | % 35
		d8. [ as16 ] es8. [ c16 ] <g es' d'>4. s8 | % 36

	}
}


melodyTwo =  \relative c {
    \repeat volta 2 {
		\partial 8 s8 | % 0
		c,4 s2 b'4 | % 1
		c4 s2. | % 2
		es,8 s4. s2 | % 3
		s1 | % 4
		c8. s16 s2. | % 5
		g'4 s2. | % 6
		as4 s2. | % 7
		e4 s2. | % 8
    	f4 s2. | % 9
		s1 | % 10
    	d4 s2. | % 11
		as''4 s2. | % 12
    	es4 s4 b4 s4 | % 13
		c4 s2. | % 14
		c,4 s2. | % 15
    	s1 | % 16
    	bes'4 s4 d2 | % 17
		s1 | % 18
	}
	
	\repeat volta 2 {
		\partial 8 s8 | % 0
		g,4 s2. | % 19
		s1*2| % 21
		es'4 s2. | % 22
		d4 s2. | % 23
		c4 s2. | % 24
		<bes bes'>4 s4 es8 s4. | % 25
		s1 | % 26
		c,4 s2. | % 27
		s2 c'4. s8 | % 28
		a4 s2. | % 29
		d4 s2. | % 30
		s1 | % 31
		s1 | % 32
		g,8. s16 s2. | % 33
		s2. s8 a8 | % 34
		g8. s16 s4 d'2 | % 35
		s2 c,4. s8 | % 36
 	}    
}


% The score definition

melody = << \melodyOne \\ \melodyTwo >>

\score {
 	\context Staff << 
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key es \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
