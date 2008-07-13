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
        title = "Partita III BWV 1006"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "4. Menuet I"
        mutopiatitle = "BWV 1006 - Menuet I"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1006"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/07/13-1472"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative g'' {
	\repeat volta 2 { % begin repeat
	    gis4  gis8 [ fis ] gis4 | % 1
		e4 fis8 [ (dis) ] e4 | % 2
		b4 cis dis | % 3
		e8 [ dis e fis e fis ] | % 4
		gis4 fis fis8 [ (gis16 a) ] | % 5
		gis8 [ fis gis a b gis ] | % 6
		e4 a gis | % 7
		fis2. | % 8
	} % end repeat
	
	
	\repeat volta 2 { % begin repeat
		b4 b8 [ ais8 ] b4 | % 9
		dis,4 e8 [ (cis) ] dis4 | % 10
		b'4 b8 [ ais ] b4 | % 11
		\appoggiatura c,8 b2. | % 12
		a'4 gis fis | % 13
		e4 e8 [ fis ] gis4 | % 14
		gis8 [ fis ] a4 gis | % 15
		fis8 [ e fis dis e fis ] | % 16
		cis4 cis bis | % 17
		cis4. e8 [ dis fis ] | % 18
		gis,8 [ (a b cis d) e, ] | % 19
		a,8 [ (e' d' b cis a) ] | % 20
		fis8 [ (gis a b cis) a ] | % 21
		gis,8 [ (fis' cis' a b gis) ] | % 22
		e8 [ (fis gis a b) gis ] | % 23
		a8 [ (e fis a dis, fis) ] | % 24
		gis8 [ (b cis e fis a) ] | % 25
		e8 [ (dis e dis cis b) ] | % 26
		gis'4 gis8 [ fis ] gis4 | % 27
		e4 fis8 [ (dis) ] e4 | %28
		gis,8 [ b e, (gis b) d ] | % 29
		a,8 [ (e' d') b cis a ] | % 30
		fis8 [ e' dis (fis a) e, ] | %31
		dis8 [ (b' fis') a ] gis4 | % 32
		fis4 b, dis | % 33
		e2. | % 34	
	} % end repeat
    
}

melodyTwo =  \relative e'' {
	\repeat volta 2 { % begin repeat
		e4 dis b | % 1
		cis4 r4 r4 | % 2
		gis4 a fis | % 3
		e8 r8 r4 r4 | % 4
		e'4 dis b | % 5
		e8 r8 r4 r4 | % 6
		cis4 dis e | % 7
		b2. | % 8
		} % end repeat
	

 	\repeat volta 2 { % begin repeat

		dis4 cis b | % 9
		a4 r4 r4 | % 10
		g4 fis e | % 11
		d2. | % 12
		d4 r4 r4 | % 13
		cis4 cis'8 [ dis ] e4 | % 14
		d4 cis bis | % 15
		cis4 r4 a | % 16
		e4 fis gis | % 17
		cis,4. s4. | % 18
		s2. | % 19
		s2. | % 20
		s2. | % 21
		s2. | % 22
		c8 r8 r4 r4 | % 23
		s2. | % 24
		s2. | % 25
		s2. | % 26
		e'4 dis b | % 27
		cis4 r4 r4 | % 28
		s2. | % 29
		s2. | % 30
		s2. | % 31
		s2 e,4 | % 32
		a4 gis b, | % 33
		e2. | % 34
 
	} % end repeat

	
}

melodyThree =  \relative e'' {
	\repeat volta 2 { % begin repeat
		s2.*8 | % 8
		} % end repeat
	

 	\repeat volta 2 { % begin repeat

		s2.*2 | % 10
		e4 dis cis | % 11
		s2. | % 12
		bis4 s4 s4 | % 13
		<gis cis>4 s2 | % 14
		s2. | % 15
		s2 cis4 | % 16
		gis'4 s2 | % 17
		gis,4. s4. | % 18
		s2. | % 19
		s2. | % 20
		s2. | % 21
		s2. | % 22
		s2. | % 23
		s2. | % 24
		s2. | % 25
		s2. | % 26
		s2. | % 27
		s2. | % 28
		s2. | % 29
		s2. | % 30
		s2. | % 31
		s2 b4 | % 32
		cis4 s4 fis,4 | % 33
		b2. | % 34
 
	} % end repeat

	
}

melody = << \melodyOne \\ \melodyTwo  \\ \melodyThree >>

% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key e \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
