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
        title = "Cello Suite VI"
        subtitle = "\"Sechs Suiten für Violoncello\""
        piece = "4. Sarabande"
        mutopiatitle = "Cello Suite VI - BWV 1012 - Sarabande"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1012"
        mutopiainstrument = "Cello"
		arrangement = "Hajo Dezelski"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/08/12-1505"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne =    \relative fis' {
	\repeat volta 2 {
		fis2 fis2. g4 | % 1
		e4 (cis) d2. b'4 | % 2
		a4 (fis) g2. a4 | % 3
		g4 (fis) g (e) fis2 | % 4
		fis2 gis2. a4 | % 5
		<d, b'>4 (cis) d2. e4 \clef bass | % 6
		d4 (cis) cis (b) b (d) | % 7
		d4 (cis) cis1| % 8
	}
	   \repeat volta 2 {
		   <cis e>2	<cis e>2. e4 | % 9
		   e4 ( cis) dis a8 [(b )] c4 e,4 \clef alto | % 10
		   fis'4 s2 fis8 [(g)] b4 s4 | % 11
		   a4 (fis) g2. g4 | % 12
		   g4 ( fis) c'2 s2| % 13
		   s2. c4 b2 | % 14
		   d,4 (e) e (fis) fis (g) | % 15
		   g2 g2. b4 | % 16
		   b4 (g) g (e) e (cis) | % 17
		   cis4 (a) a (g) g (a') | % 18
		   a4 (fis) fis (d) d (b) | % 19
		   b4 (g) g (fis) fis (g') | % 20
		   <cis, g'>4 (d) d (cis) cis (b) | % 21
		   <b g'>4 (cis)  cis (b) b <e, a> | % 22
		   a4 (g') g (fis) fis (gis) | % 23
		   gis4 (a) a2. s4 | % 24
		   <d, a'>4 (fis) fis (d) d (cis) | % 25
		   <cis a'>4 s4 cis2. d4 | % 26
		   <d a'>4 (f) f (d) d (cis) | % 27
		   cis4 (d8) [e] e2. d4 | % 28
		   d4 e8 [ ( fis16 g)] g4 (fis) fis (e) | % 29
		   e4 (fis) fis (e) e (d) \clef bass | % 30
		   d2 d cis | % 31
		   cis4 (d) d1 | % 32

	}

      }

melodyTwo =  \relative d {
    \repeat volta 2 {
		d2 s1 | % 1
		g,2 fis'2. s4 | % 2
		a,2 e'2. s4 | % 3
		d2 s1| % 4
		b2 s1| % 5
		gis2 e'2. s4| % 6
		a,2 d e | % 7
		a,2 s1 | % 8
	}
    \repeat volta 2 {
		a2 g2. s4 | % 9
		fis'4 s4 s1 \clef alto | % 10
		dis4 s1 dis4 | % 11
		e2 s1 | % 12
		a2. d4 e g, | % 13
		fis4 e' d s4 g,2 | % 14
		b,2 c d| % 15
		<g, d'>2 b'2. s4 | % 16
		g4 b b s2. | % 17
		s1. | % 18
		fis4 a a s2. | % 19
		s1.| % 20
		e4 fis fis e e d | % 21
		d4 e e d d cis | % 22
		cis4 s4 d2 b4 s4 | % 23
		a4 s1 g'4 | % 24
		a,4 a' a fis fis e | % 25
		a,4 (g') g (e) e (f) | % 26
		a,4 a' a f f e | % 27
		a,4 s4 ais2. s4 | % 28
		b4 r4 r2 d4 r4 | % 29
		<g, g'>4 a' a g g fis \clef bass | % 30
		g,2 a r2 | % 31
		d,2 fis'1 | % 32
	}
}

melodyThree =  \relative a {
    \repeat volta 2 {
		a2 a2. s4 | % 1
		g2 s1 | % 2
		<fis d'>2 cis'2. s4 | % 3
		a2 s1| % 4
		<d, b'>2 d'2. s4 | % 5
		e,2 s1| % 6
		e2 s1 | % 7
		e2 s1 | % 8
	}
   \repeat volta 2 {
	 e2 e2. s4| % 9
	 a4 s4 s1| % 10
	 cis4 (a) b s2. | % 11
	 b2 b2. s4 | % 12
	 s1.| % 13
	 s1 d2 | % 14
	 g,2 g c | % 15
	 c4 (a) s1 | % 16
	 d4 s4 s1 | % 17
	 s1. | % 18
	 d4 s4 s1 | % 19
	 s1. | % 20
	 s1. | % 21
	 s1. | % 22
	 e,4 s4 a2 <d,b'>4 s4 | % 23
	 <e cis'>4 s4 cis'2. cis4 | % 24
	 fis,4 s4 s1 | % 25
	 e4 s4 s1 | % 26
	 f4 s4 s1 | % 27
	 e4 s4 <fis cis'>2. s4 | % 28
	 fis4 s2. cis'4 s4 | % 29
	 b4 s4 s1| % 30
	 fis4 (e) e (g) g (fis) | % 31
	 <a, fis'>2 s1 | % 32

	}

}

melody = << \melodyOne \\ \melodyTwo \\ \melodyThree >>

\score {
 	\context Staff << 
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef alto \key d \major \time 3/2 \melody  }
    >>
	\layout { }
 	 \midi { }
}
