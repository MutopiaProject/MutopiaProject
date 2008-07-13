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
        piece = "2. Loure"
        mutopiatitle = "BWV 1006 - Loure"
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
	
 footer = "Mutopia-2008/07/13-1470"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative b' {
	\repeat volta 2 { % begin repeat
	   \partial 4.  b8  b'4 | % 1
	   gis4. a8 fis4 \trill gis e gis | % 2
	   fis4. gis8 a4 a8 [ (fis) ] dis4 \trill e | % 3
	   cis4. dis8 e4 a,4. gis8 a4 | % 4
	   a4 (gis8.) [ a16 ] fis4 a8 [ (gis) fis (e) ] gis'4 | % 5
	   cis,4. dis8 bis4 cis gis' fis8 [ (e) ] | % 6
	   dis4 (cis8.) [ dis16 ] b4 b (ais8.) [ cis16 ] dis4 | % 7
	   dis4 (e8.) [ gis16 ] fis4 fis (gis8.) [ b16 ] ais4 | % 8
	   b4 ais8 [ (gis)] ais16 [(b cis8) ] ais4 gis8 [ (fis) ] cis'4 | % 9
	   e,4. fis8 dis4 e8 [ (dis) ] e4 cis' | % 10
	   b8 [ (ais8.) gis16 (fis dis) ] e4 e (dis8.) [ fis16 ] ais,4 | % 11
	   \times 2/3 { fis8 [ ( ais cis) ] } e4 
	   \times 2/3 { dis8 [ (e cis) ] }
	   b4. s4.| % 12
	} % end repeat
	
	\repeat volta 2 { % begin repeat
		\partial 4. fis'8 gis4 | % 13
		a4. b8 a4 gis \trill fis8 [ e ] a4 | % 14
		fis4. fis8 [ (a gis) ] fis [ (eis dis cis) ] b'4 | % 15
		b4. a8 [ gis16 \trill (fis gis8) ] a4 fis gis8 [ (a) ] | % 16
		fis4 (eis) fis fis4. gis8 a4 | % 17
		dis,4. cis8 b4 e4. fis8 gis4 | % 18
		gis4 (fis8.) [ gis16 ] a4 a4 (gis8.) [ fis16 ] e4 | % 19
		dis4. e8 cis4 gis'4. dis8 b'4 | % 20
		b4 (ais8.) [ cis16 ] fisis,4 e4 (dis8.) [ cis'16 ] b4 | % 21
		b8 [ (ais) b (ais) gis ais16 (fisis16) ] gis4. gis16 [ (a16)] a8. \trill [(gis32 a) ] | % 22
		b4. a8 gis4 a gis8 [ fis ] a4 | % 23
		b,8 [ ( dis fis b)] a [ gis] gis4 fis8. [ b,16 ] cis8. \trill [( b32 cis )] | % 24
		d4. e8 d4 cis cis8 [ ( dis)] (dis) [ ( e ) ] | % 25 
		e4 (d4.) \trill e8 e4. s4. | % 26 

	} % end repeat
    
}

melodyTwo =  \relative c' {
	\repeat volta 2 { % begin repeat
		\partial 4. s4. | % 1
		r2. r4 r8 e8 e'4 | % 2
		dis4. e8 cis4 b4 r4 gis4 | % 3
		a2 gis4 fis2 b,4 | % 4
		e4 s1 s4 | % 5
		r4 r4 fis4 e r4 r4 | % 6
		r4 r4 eis4 fis4 r4 fis4 | % 7
		gis2 ais4 b2 cis4 | % 8
		dis4 e cis fis r4 r4 | % 9
		r4 r4 fis,4 <ais, fis'>4 r4 r4 | % 10
		r4 r4 <ais fis'>4 <b fis'>4 r4 e4 | % 11
		r4 r4 fis4 <b, fis'>4. s4. | % 12
	} % end repeat
	

 	\repeat volta 2 { % begin repeat
		\partial 4. s4. | % 13
		r4 r8 cis'8 d4 e4. dis8 cis4 | % 14
		d4 cis b cis r4 r4 | % 15
		<eis, cis'>4. r8 r4 <fis cis'>4 d' b | % 16
		cis2 r4 <fis, a>4. r8 r4 | % 17
		r4 r4 a4 <gis b>4. r8 <e b'>4 | % 18
		<a cis>4 r4 <fis cis'>4 bis2 cis4  | % 19
		fis,4 gis a <gis bis>4. r8 r4 | % 20
		cis2 r4 fisis,4. r8 <gis dis'>4 | % 21
		cis4 dis r4 <gis, b>4. r8 r4 | % 22
		r4 r4 <eis cis'>4 <fis cis'>r4 <e cis'>4 | % 23
		d8 r8 r4 <e b'>4 b'4. r8 r4 | % 24
		r4 r8 fis8 gis4  a fis e | % 25
		<b fis'>2 r4 e4. s4. | % 26 


	} % end repeat

}

melody = << \melodyOne  \\ \melodyTwo >>

% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key e \major \time 6/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
