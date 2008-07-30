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
        title = "Suite E-Dur - BWV 1006a"
        subtitle = "\"Nach der Partita III für Violine BWV 1006\""
        piece = "2. Loure"
        mutopiatitle = "Suite E-Dur - BWV 1006a - Loure"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1006a"
        mutopiainstrument = "Guitar"
	arrangement = "Hajo Dezelski"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 42"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/07/30-1486"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative b' {
	\repeat volta 2 { % begin repeat
	   \partial 4.  b8  b'4 | % 1
	   gis4. a8 fis4 \trill gis4 e4 gis | % 2
	   fis4. gis8 a4 a8 [ (fis) ] dis4 \trill e | % 3
	   cis4. dis8 e4  s2. | % 4
	   s1 s4 gis4 | % 5
	   cis,4.-\mordent dis8 bis4 cis4 gis' fis8 [ (e) ] | % 6
	   dis4 (cis8.) [ dis16 ] b4 b (ais8.) [ cis16 ] dis4 | % 7
	   dis4 (e8.) [ gis16 ] fis4 fis (gis8.) [ b16 ] ais4 | % 8
	   b4 ais8 [ (gis8)] ais8. [(b32 cis) ] ais4 gis8 [ (fis) ] cis'4 | % 9
	   e,4. fis8 <b, dis>4 e8 [ (dis8) ] e4 cis'4 | % 10
	   ais8. [ gis16 fis8. dis16] e4 e (dis8.) [ fis16 ] ais,4 | % 11
	   \times 2/3 { fis8 [ ( ais cis) ] } e4 
	   \times 2/3 { dis8 [ (e cis) ] }
	   b4. s4. | % 12
	} % end repeat
	
	\repeat volta 2 { % begin repeat
		\partial 4. fis'8 gis4 | % 13
		a4. b8 a4 gis e4 a | % 14
		fis4. fis8 [ (a gis) ] fis [ (eis dis cis) ] b'4 | % 15
		b4. a8 gis16 \trill [(fis gis8) ] a4 fis gis8 [ (a) ] | % 16
		fis4 (eis) \trill fis fis4. gis8 a4 | % 17
		dis,4. \trill cis8 b4 e4. fis8 gis4 | % 18
		gis4 (fis8.) [ gis16 ] a4 a4 (gis8.) [ fis16 ] e4 | % 19
		dis4. e8 cis4 <dis gis>4. dis8 b'4 | % 20
		b4 (ais8.) [ cis16 ] fisis,4 e4 (dis8.) [ cis'16 ] b4 | % 21
		b8 [ais b ais gis16 ais fisis8 ] <dis gis>4. gis16 [ (a16)] a8. \trill [(gis32 a) ] | % 22
		b4. a8 gis4 a4 gis8 [ (fis) ] a4 | % 23
		b,8 [ ( dis fis b) a  (gis)] gis4 (fis8.) [ b,32 (cis) ] cis8. \trill [( b32 cis )] | % 24
		d4. e8 d4 cis4 r8 dis8 r8 e8 | % 25 
		e4 (dis4.) \trill e8 e4. s4. | % 26 

	} % end repeat
    
}

melodyTwo =  \relative b {
	\repeat volta 2 { % begin repeat
		\partial 4. s4. | % 1
		s1*6/4*11 | %  12
	} % end repeat
	

 	\repeat volta 2 { % begin repeat
		\partial 4. s4. | % 13
		 s1*6/4*2 | % 15
		 s1*6/4 | % 16
		 s2 s4 cis'4. s4. | % 17
		 s2. b4. s8 b4  | % 18
		 cis4 s4 cis4 dis4 s2 | % 19
		 s2. bis4. s4. | % 20
		 e2 s4 s4 s4 dis4 | % 21
		 e4 dis8 [ cis b ais ] b4. s4. | % 22
		 s2 cis4 cis2 cis4 | % 23
		 s1 ( dis8.) s16 s4| % 24
		 s1*6/4*2 | % 26


	} % end repeat

}

melodyThree =  \relative a' {
	\repeat volta 2 { % begin repeat
		\partial 4. s4. | % 1
		s1*6/4 | % 2
		s1*6/4  | % 3
		s2. a4. gis8 a4 | % 4
		a4 (gis8.) [ a16 ] fis4 a8 [ (gis) fis (e)] s4| % 5
		s2 gis4 gis4 s2  | % 6
		s1*6/4  | % 7
		s1*6/4  | % 8
		s2. cis2 s4   | % 9
		s2 fis,4 <fis cis'>2 s4   | % 10
		s2 <fis cis'>4 <fis b>2 s4   | % 11
		s2 <fis ais>4 <dis fis>4.  s4.  | % 12
	} % end repeat
	

 	\repeat volta 2 { % begin repeat
		\partial 4. s4. | % 13
		 s1*6/4*2 | % 15
		 <gis cis>2 s4 cis4 <a d>4 <b d>4| % 16
		 <gis cis>2 r4 <fis a>4. s4. | % 17
		 s1*6/4*3 | % 20
		 s2 s4 ais2 s4 | % 21
		 s1*6/4 | % 22
		 s1 s4 fis'4 | % 23
		 fis,2 b4 <b e>4 s2 | % 24
		 s1 a4 gis | % 25
		 fis2 s4 <gis b>4. s4. | % 26


	} % end repeat

}

melodyFour =  \relative e' {
	\repeat volta 2 { % begin repeat
		\partial 4. r8 r4 | % 1
		s2. s4 s8 e8 e'4 | % 2
		dis4. e8 cis4 b2 gis4 | % 3
		a2 gis4 fis2 b,4 | % 4
		e2 s4 e2 s4 | % 5
		s2 fis4 e4 s2 | % 6
		s2 eis4 fis2 fis4 | % 7
		gis2 ais4 b2 cis4 | % 8
		dis4 e cis fis,2 s4 | % 9
		s2 b,4 ais2 s4 | % 10
		s2 ais4 b2 e4 | % 11
		s2 fis,4 b4. s4. | % 12
	} % end repeat
	

 	\repeat volta 2 { % begin repeat
		\partial 4. r8 r4 | % 13
		s4. cis'8 dis4 e4. dis8 cis4 | % 14
		d4 cis b cis s2 | % 15
		eis,2 s4 fis4 d b | % 16
		cis2 s4 fis,4. s4. | % 17
		s2 a'4 gis4. fis8 e4 | % 18
		a4. gis8 fis4 bis,2 cis4  | % 19
		fis,4 gis a gis4. s4. | % 20
		cis'2 s4 fisis,2  gis4 | % 21
		cis,4 dis dis4 gis,4. s4. | % 22
		s2 eis'4 fis2 e4 | % 23
		dis2 e4 b2 s4 | % 24
		s4. fis'8 gis4  a fis e | % 25
		b2 s4 e,4. s4. | % 26 


	} % end repeat

}

melody = << \melodyOne \\ \melodyTwo \\ \melodyThree  \\ \melodyFour >>


% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Laute"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
        { \clef treble \key e \major \time 6/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
