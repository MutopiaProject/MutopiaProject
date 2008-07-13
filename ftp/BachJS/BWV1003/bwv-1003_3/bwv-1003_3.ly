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
        title = "Sonata II BWV 1003"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "3. Andante"
        mutopiatitle = "BWV 1003 Andante"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1003"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
		comment = "Thanks to Pietro who found a wrong note"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/07/13-1456"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative e' {
	\repeat volta 2 { % begin repeat
		e4 r8 e8 f16 [ e d c ] | % 1
		g'16 [ d f8] ~ f [a] g16 [ f e d ] | % 2
		e16 [ g a b ] c8 s4. | % 3
		b16[ a g8] r8 e'16 [ d ] e [ d c b ] | % 4
		a4 r8  d16 [ e ] d [ c b a ] | % 5
		b16 [ d e f ] g4 s4 | % 6
		c,16 [ c d a ] b [ c d e ] f [ a g f ] | % 7
		e8 r8 r16 d16 [ c b ] a [ g fis32 g32 e16 ] | % 8
		fis16 [ d e fis ] g32 [( b a c b d c e )] d4 | % 9
		c,16 [ e'32 (d c d e16) ] b8 ~ [b32 c64  b a32 b ] c8 [ a \trill ] | % 10
	} % end repeat
	
	\alternative {
		{   g4 s16 g16 [ f e ] d [ a' g f ] } 
		{	g2. | 
		d'4 r8 d8 e16 [ d c b ] | % 12 
		}
	}
	
	\repeat volta 2 { % begin repeat
		e16 [ b ] d8 ~d [ f] e16 [ d c b ] | % 14
		c16 [ d ] e8 ~ e8 [ e8 ] d16 [ c b a ] | % 15
		a'16 [ fis gis8 ] r8  gis16 [ b ] b [ gis gis e ] | % 16
		a4 ~ a16 [ b  a g ] fis [ e dis e ] | % 17
		a16 [ b c8 ~ ] c8 [ c16 b ] a [ g a fis ] | % 18
		g16 [ e dis e ] b'8 [ a ] a16 [ g a fis ] | % 19
		fis8 [ e8] r8 e16 [ f ] g [ a bes8 ] ~ | % 20
		bes8 [ a ] r8 g g16 [ f g e ] | % 21
		e8 [ f ] r8 d16 [ e ] f [ g a8 ] | % 22
		b,8 [ c ] r8 c8 e16 [ d e c ] | % 23
		b4 r16 b16 [ c b ] a [ g f e ] | % 24
		f16 [ es' (d c ] b [ c ) aes' g ] fis [ c32 (b32 c16 fis) ] | % 25
		g16. [ a32 (g f64 e f32 g )] c,8 [c32 b  a b ] b8. \trill  [ a32 b ] | % 26
	} % end repeat
    
	\alternative {
	{ 	c4 r4 r4 | 
	    b16 [ c d8 ] r8 d8 e16 [ d c b ] }
		{c2. } % 0
	}
}

melodyTwo =  \relative c' {
	\repeat volta 2 { % begin repeat
    c8 [ c c c c c ] | % 1
    b8 [ b b b b b ] | % 2
    c8 [ c ] a [ a ] d [ d ] | % 3
    g,8 [ g ] g' [ g g g ] | % 4
    g8 [ g ] f [ f f f ] | % 5
    f8 [ f ] e [ e ] a [ a ] | % 6
    d,8 [ d ] g [ g ] g, [ g ] | % 7 
    c8 [ c c c c c ] | % 8
    c8 r8 r4  b4 | % 9
    s4 d2 | % 10
	} % end repeat
	
	\alternative {
		{ 	g,8 [ g ] a [ a ] b [ b ] }
		{   g2. | % 11
		g'8 [ g g g g g ]}
		}

 	\repeat volta 2 { % begin repeat
		gis8 [ gis gis gis gis gis ] | % 14
		a8 [ a ] f [ f f f ] | % 15
		e8 [ e ] d' [ d d d ] | % 16
		c8 [ c c c ] c [ a ] | % 17
		fis8 [ fis ] dis' [ dis ] b [ b ] | % 18
		e,8 [ fis ] g [ a ] b [ b ] | % 19
		e8 [ e ] d [ d d d ] | % 20
		cis8 [ cis ] a [ a a a ] | % 21
		d8 [ d ] d, [ d d d ] | % 22
		e8 [ e ] fis [ fis fis fis ] | % 23
		g [ g g g ] g, [ g ]| % 24
		aes16 s8. s4 a16 s8. | % 25
		g8 s8 g8 s4. | % 26
	} % end repeat

	\alternative {
		{c8 [ c ] b [ b ] a [ a ] | 
		g8 [ g8 ]  g' [g g g]  }
		{ c,2.  } % 0
	}
}

melodyThree =  \relative d' {
	\repeat volta 2 { % begin repeat
		s2. | % 1
		s2. | % 2
		s4 g16 [ g a e ] fis [ a b c ]| % 3		
		d,8 s4. s4 | % 4
		s2. | % 5
		s4 d'16 [ d e b] c [ e a g ] | % 6
		<<
			{ f8 s4. d,8 [ d8 ] } \\
			{ s2 b'8 [ b8 ] }
	 >>	| % 7
		<g c>8 s4 e8 e8 s8 | % 8
		s2 g4 | % 9
		s2. | % 10
		s2. | % 11
		s2. | % 12
		s2. | % 13

	} % end repeat
	\repeat volta 2 { % begin repeat
		s2 b8 s8 | % 14
		s2. | % 15
		b8 [ b ] s2 | % 16
		s2. | % 17
		dis8 [ dis ] s2 | % 18
		b8 s8 e8 s4. | % 19
		s2. | % 20
		s2. | % 21
		s2 a,8 [ b] | % 22
		s2. | % 23
		s2. | % 24
		s2 <d, c'>16 s8. | % 25
		<e c'>8 s8 d8 s4. | % 26
	} % end repeat
	
	\alternative {
		{e8 [ e ] e [ e ] fis [ fis ] | 
		g8 [ g ] s2 } 
		{ e2. } 
	} 
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
