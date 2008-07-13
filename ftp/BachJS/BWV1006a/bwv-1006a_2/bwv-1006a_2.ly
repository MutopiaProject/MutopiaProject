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
        title = "Suite BWV 1006a"
        subtitle = "\"Nach der Partita III für Violine BWV 1006\""
        piece = "2. Loure"
        mutopiatitle = "BWV 1006a - Loure"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1006a"
        mutopiainstrument = "Piano"
		comment = "For no particular instrument"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 42"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/07/13-1477"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

sopranoOne = \relative b {
	\repeat volta 2 { % begin repeat
	   \partial 4.  b8  b'4 | % 1
	   \appoggiatura a8 gis4. a8 fis4 \trill \appoggiatura a8 gis4 \appoggiatura fis8 e4 gis | % 2
	   \appoggiatura gis8 fis4. gis8 a4 a8 [ (fis) ] \appoggiatura e8 dis4 \trill e | % 3
	   \appoggiatura dis8 cis4. dis8 e4  s2. | % 4
	   s1 s4 gis4 | % 5
	   cis,4.-\mordent dis8 bis4 \appoggiatura bis8 cis4 gis' fis8 [ (e) ] | % 6
	   dis4 (cis8.) [ dis16 ] b4 b (ais8.) [ cis16 ] dis4 | % 7
	   dis4 (e8.) [ gis16 ] fis4 fis (gis8.) [ b16 ] ais4 | % 8
	   \appoggiatura ais8 b4 ais8 [ (gis8)] ais8. [(b32 cis) ] \appoggiatura b8 ais4 gis8 [ (fis) ] cis'4 | % 9
	   \appoggiatura fis,8 e4. fis8 dis4 e8 [ (dis8) ] e4 cis'4 | % 10
	   \appoggiatura b8 ais8. [ gis16 fis8. dis16] e4 e (dis8.) [ fis16 ] \appoggiatura b,8 ais4 | % 11
	   \times 2/3 { fis8 [ ( ais cis) ] } e4 
	   \times 2/3 { dis8 [ (e cis) ] }
	   \appoggiatura c8 b4. s4. | % 12
	} % end repeat
	
	\repeat volta 2 { % begin repeat
		\partial 4. fis'8 gis4 | % 13
		\appoggiatura gis8 a4. b8 a4 gis \appoggiatura fis8 e4 a | % 14
		\appoggiatura gis8 fis4. fis8 [ (a gis) ] fis [ (eis dis cis) ] b'4 | % 15
		b4. a8 gis16 \trill [(fis gis8) ] \appoggiatura gis8 a4 fis gis8 [ (a) ] | % 16
		fis4 (eis) \trill fis fis4. gis8 a4 | % 17
		\appoggiatura e8 dis4. \trill cis8 b4 e4. fis8 \appoggiatura fis8 gis4 | % 18
		gis4 (fis8.) [ gis16 ] a4 a4 (gis8.) [ fis16 ] e4 | % 19
		\appoggiatura e8 dis4. e8 cis4 <dis gis>4. dis8 b'4 | % 20
		b4 (ais8.) [ cis16 ] fisis,4 e4 (dis8.) [ cis'16 ] b4 | % 21
		b8 [ (ais) b (ais) gis ais16 (fisis16) ] <dis gis>4. gis16 [ (a16)] a8. \trill [(gis32 a) ] | % 22
		\appoggiatura a8 b4. a8 gis4 \appoggiatura gis8 a4 gis8 [ (fis) ] a4 | % 23
		b,8 [ ( dis fis b) a  (gis)] gis4 (fis8.) [ b,32 (cis) ] cis8. \trill [( b32 cis )] | % 24
		\appoggiatura cis8 d4. e8 d4 \appoggiatura d8 cis4 r8 dis8 r8 e8 | % 25 
		e4 (dis4.) \trill e8 e4. s4. | % 26 

	} % end repeat
    
}

sopranoTwo =  \relative b {
	\repeat volta 2 { % begin repeat
		\partial 4. s4. | % 1
		s1*6/4 | % 2
		s1*6/4 | % 3
		s1*6/4 | % 4
		s1*6/4 | % 5
		s1*6/4 | % 6
		s1*6/4 | % 7
		s1*6/4 | % 8
		s1*6/4 | % 9
		s2 b4 cis2 s4   | % 10
		s2 cis4 b2 s4   | % 11
		s1*6/4 | % 12
	} % end repeat
	

 	\repeat volta 2 { % begin repeat
		\partial 4. s4. | % 13
		 s1*6/4 | % 14
		 s1*6/4 | % 15
		 cis2 r4 cis4 d d | % 16
		 cis2 r4 cis4. r8 r4 | % 17
		 s2. b4. s8 b4  | % 18
		 cis4 r4 cis4 dis4 s2 | % 19
		 s2. bis4. r8 r4 | % 20
		 e2 r4 s4 s4 dis4 | % 21
		 e4 dis8 [ (cis) b (ais) ] b4. r8 r4 | % 22
		 r4 r4 cis4 cis2 cis4 | % 23
		 s2 e4 e4 ( dis8.) s16 s4| % 24
		 s1*6/4 | % 25
		 s2. b4. s4. | % 26 


	} % end repeat

}

bassOne =  \relative b {
	\repeat volta 2 { % begin repeat
		\partial 4. s4. | % 1
		s1*6/4 | % 2
		s1*6/4  | % 3
		s2. \appoggiatura b8 a4. gis8 a4 | % 4
		a4 (gis8.) [ a16 ] fis4 a8 [ (gis) fis (e)] s4| % 5
		s2 gis4 gis2 s4  | % 6
		s1*6/4  | % 7
		s1*6/4  | % 8
		s2. cis2 r4   | % 9
		r4 r4 fis,4 fis2 r4   | % 10
		r4 r4 fis4 fis2 s4   | % 11
		r4 r4 <fis ais>4 <dis fis>4.  s4.  | % 12
	} % end repeat
	

 	\repeat volta 2 { % begin repeat
		\partial 4. s4. | % 13
		 s1*6/4 | % 14
		 s1*6/4 | % 15
		 gis2 r4 fis4 a4 b4| % 16
		 gis2 r4 <fis a>4. r8 r4 | % 17
		 s1*6/4 | % 18
		 s1*6/4 | % 19
		 s1*6/4 | % 20
		 s2 s4 ais2 s4 | % 21
		 s1*6/4 | % 22
		 s2 gis4 fis2 fis4 | % 23
		 fis2 b4 b2 s4 | % 24
		 s1 a4 gis | % 25
		 fis2 s4 gis4. s4. | % 26


	} % end repeat

}

bassTwo =  \relative e {
	\repeat volta 2 { % begin repeat
		\partial 4. r8 r4 | % 1
		r2. r4 r8 e8 e'4 | % 2
		dis4. e8 cis4 b2 gis4 | % 3
		a2 gis4 fis2 b,4 | % 4
		e2 r4 e,2 r4 | % 5
		r4 r4 fis'4 e2 r4 | % 6
		r4 r4 eis4 fis2 fis4 | % 7
		gis2 ais4 b2 cis4 | % 8
		dis4 e cis fis,2 r4 | % 9
		r4 r4 b,4 ais2 r4 | % 10
		r4 r4 ais4 b2 e4 | % 11
		r4 r4 fis,4 b4. s4. | % 12
	} % end repeat
	

 	\repeat volta 2 { % begin repeat
		\partial 4. r8 r4 | % 13
		r4 r8 cis'8 dis4 e4. dis8 cis4 | % 14
		d4 cis b cis r4 r4 | % 15
		eis,2 r4 fis4 d b | % 16
		cis2 r4 <fis, fis'>4. r8 r4 | % 17
		r4 r4 a'4 gis4. fis8 e4 | % 18
		a4. gis8 fis4 bis2 cis4  | % 19
		fis,4 gis a gis4. r8 r4 | % 20
		cis2 r4 fisis,2  gis4 | % 21
		cis,4 dis dis,4 gis4. r8 r4 | % 22
		r4 r4 eis'4 fis2 e4 | % 23
		dis2 e4 b2 r4 | % 24
		r4 r8 fis'8 gis4  a fis e | % 25
		b2 r4 e,4. s4. | % 26 


	} % end repeat

}

soprano = << \sopranoOne  \\ \sopranoTwo >>

bass = << \bassOne  \\ \bassTwo >>

% The score definition

\score {
        \new PianoStaff <<
           \set PianoStaff.instrumentName = "Clavier  "
		   \set PianoStaff.midiInstrument = "harpsichord"
           \new Staff = "upper"  { \clef treble \key e \major \time 6/4 \soprano  }
           \new Staff = "lower"  { \clef bass \key e \major \time 6/4 \bass }
     >>
	\layout { }
 	 \midi { }
}
