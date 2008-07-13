\version "2.11.49"

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
        piece = "6. Bourrée"
        mutopiatitle = "BWV 1006 - Bourrée"
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
	
 footer = "Mutopia-2008/07/13-1474"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melody = \relative e' {
	
	\repeat volta 2 { % begin repeat
		\partial 4 <e b'>4 | % 
		<a cis>4 a8 [ (b ] cis [ dis) ] e4 | % 1
		gis,8 [ (b ] e4) e8 [ (dis ] e4) | % 2
		fis,8 [ gis a b ] cis [ a ] b4 | % 3
		a8 [ (gis fis gis) ] e4 gis'8 [ e ] | % 4
		fis8 [ (dis b cis ] dis [ e fis a) ] | % 5
		gis8 [ (e b dis ] e [ fis gis b) ] | % 6
		fis8_\markup { (piano) } [ (dis b cis ] dis [ e fis a) ] | % 7
		gis8 [ (e b dis ] e [ fis gis b) ] | % 8
		e,8_\markup { forte } [ (dis cis dis) ] e [ (dis cis b) ] | % 9
		ais8 [ (gis fis gis ] ais [ b cis dis) ] | % 10	
		e8_\markup { (piano) } [ (dis cis dis) ] e [ (dis cis b) ] | % 11
		ais8 [ (gis fis gis ] ais [ b cis e) ] | % 12	
		dis8_\markup { forte } [ (cis b cis) ] dis [ e fis a, ] | % 13
		gis8 [ b e dis ] e [ (ais b) cis, ] | % 14
		e,8 [ dis' (cis b) ] fis [ cis' (b ais) ] | % 15
		b8 [ fis dis fis ] b,4 s4 | % 16
	} % end repeat
	
  	\repeat volta 2 { % begin repeat
		\partial 4 <b' fis'>4 | % 
		<e gis>4 e8 [ (fis ] gis [ ais) ] b4 | % 17
		dis,8 [ (fis ] b4) b8 [ (ais ] b4) | % 18
		cis,8 [ e a cis, ] bis [ dis gis fis ] | % 19
		fis8 [ (e dis e) ] cis4 e8 [ cis ] | % 20
		gis8 [ (a b cis ] d [ gis b d,) ] | % 21
		cis8 [ (b a b ] cis [ e a) cis, ] | % 22
		gis8_\markup { piano } [ (a b cis ] d [ gis b) d, ] | % 23
		cis8 [ (b a b ] cis [ e a) cis, ] | % 24
		d8_\markup { (forte) } [ b gis fis ] eis [ (gis b) d ] | % 25
		cis8 [ a fis e ] d [ (cis d) cis' ] | % 26
		b8 [ a' (gis fis) ] cis [ gis' (fis eis) ] | % 27
		fis8 [ cis a cis ] fis,4 a'8 [ gis ] | % 28
		dis8 [ fis b, (cis ] dis [ e fis) a ] | % 29
		gis8 [ b e, (fis ] gis [ a b) d, ] | % 30
		cis8 [ e a, cis ] fis [ (gis a) fis ] | % 31
		e8 [ (dis cis dis) ] b4 <e, b'>4 | % 32
		<a cis>4 a8 [ (b ] cis [ dis e fis) ] | % 33
		dis8 [ fis a fis ] dis [ (b) cis (a) ] | % 34
		<<
		{ gis8 [ e' ] b'4 a8 [ gis fis gis] } \\
		{ s2 b,4 r4 } 
		>> | % 35
		e8 [ b gis b ] e,4 s4 | % 36
	} % end repeat
	
}


% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key e \major \time 2/2 \melody  }
    >>
	\layout { }
 	 \midi { }
}
