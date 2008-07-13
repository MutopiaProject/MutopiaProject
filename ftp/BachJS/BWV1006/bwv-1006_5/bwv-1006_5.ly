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
        piece = "5. Menuet II"
        mutopiatitle = "BWV 1006 - Menuet II"
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
	
 footer = "Mutopia-2008/07/13-1473"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative b' {
	\repeat volta 2 { % begin repeat
		b2. ~ | % 1
		b2. ~ | % 2
		b2. | % 3
		a2. | % 4
		e8 [ (gis) gis (b) b8 (e8) ] | % 5
		dis8 [ (b) b (dis) dis (fis) ] | % 6
		fis8 [ gis a fis ] b4 | % 7
		a8 [ (gis) a (gis) fis (e) ] | % 8
		b2. ~ | % 9
		b2. | % 10
		e2. ~ | % 11
		e2. | % 12
		b8 [ (dis) dis (fis) fis (b) ] | % 13
		cis,8 [ (dis e gis) ] ais, [ fis' ] | % 14
		e8 [ (dis) cis8 (b) ] fis [ ais ] | % 15
		b,2. | % 16
	} % end repeat
	
	
 	
	\repeat volta 2 { % begin repeat
		dis'4 e8 [ (dis) cis (b) ] | % 17
		e8 [ fis gis a b gis ] | % 18
		fis8 [ (eis fis) eis dis cis ] | % 19
		fis8 [ (gis a) cis, ] fis,4 | % 20
		eis8 [ (cis' b') gis a fis ] | % 21
		gis8 [ cis, d b eis, (cis' ] | % 22
		b'8) [ gis a fis cis eis ] | % 23
		fis8 [ (cis fis,) cis' fis gis ] | % 24
		a4 b8 [ a gis fis ] | % 25
		gis8 [ (a b) d, gis, d' ] | % 26
		cis8 [ e a fis gis e ] | % 27
		dis8 [ (cis) e (dis) cis (b) ] | % 28
		gis'4 a8 [ (gis fis e) ] | %29
		fis8 [ dis ] b'2 | % 30
		gis,8 [ b cis a fis dis'] | % 31
		e2. | % 32

	} % end repeat
    
}

melodyTwo =  \relative g' {
	\repeat volta 2 { % begin repeat
		gis4 a8 [ gis fis e ] | % 1
		fis8 [ gis ] \appoggiatura  g8 a2 | % 2
		gis8 [ fis a gis fis e ] | % 3
		d8 [ e ] fis4 b, | % 4
		s2.*4 | %  8
		gis'4 a8 [ gis fis e ] | % 9
		fis8 [ gis ] \appoggiatura  g8 a2 | % 10
		gis8 [ (e) e (gis) gis (b) ] | % 11
		ais8 [ b ] cis4 fis, | % 12
		s2.*4 | % 16
	} % end repeat
	

 	\repeat volta 2 { % begin repeat
		a4 r4 r4 | % 17
		<g b>4 d'4 r4 | % 18
		b4 r4 r4 | % 19
		a4 r4 s4 | % 20
		s2.*4 | % 24
		dis4 r4 r4 | % 25
		e4 s2 | % 26
		s2.*2 | % 28
		<e, b'>4 s2 | % 29
		a8 s8 a2  | % 30
		s2.*2 | % 32
	} % end repeat

}


melody = << \melodyOne \\ \melodyTwo >>

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
