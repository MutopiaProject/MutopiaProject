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
        piece = "4. Menuet I"
        mutopiatitle = "BWV 1006a - Menuet I"
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
	
 footer = "Mutopia-2008/07/17-1481"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

sopranoOne = \relative g' {
	\repeat volta 2 { % begin repeat
	    gis4  \appoggiatura a8 gis8 [ fis ] gis4 | % 1
		\appoggiatura fis8 e4 fis8 [ (dis) ] e4 | % 2
		b4 cis dis | % 3
		e8 [ dis e fis e fis ] | % 4
		gis4 fis fis8 [ (gis16 a) ] | % 5
		gis8 [ fis gis a b gis ] | % 6
		e4 a gis | % 7
		\appoggiatura gis8 fis2. | % 8
	} % end repeat
	
	
	\repeat volta 2 { % begin repeat
		b4 \appoggiatura cis8 b8 [ ais8 ] b4 | % 9
		\appoggiatura e,8 dis4 e8 [ (cis) ] dis4 | % 10
		b'4 \appoggiatura cis8 b8 [ ais ] b4 | % 11
		\appoggiatura cis,8 b2. | % 12
		a'4 gis fis | % 13
		e4 e8 [ fis ] gis4 | % 14
		gis8 [ fis ] a4 gis | % 15
		fis8 [ e fis dis e fis ] | % 16
		gis4 cis, bis \trill | % 17
		cis4. e8 [ dis fis ] | % 18
		r8 a,8 [ ( b cis ] d4 )] | % 19
		s2.*5 | % 24
		gis,8 [ (b cis e fis a) ] | % 25
		e8 [ (dis e dis cis b) ] | % 26
		gis'4 \appoggiatura a8 gis8 [ fis ] gis4 | % 27
		\appoggiatura fis8 e4 fis8 [ (dis) ] e4 | %28
		r4 r8 gis,8 [(  b d) ] | % 29
		s2. | % 30
		r8  e8 [ dis (fis a)] r8 ] | %31
		r8 b,8 [ ( fis' a )] \appoggiatura a8 gis4 | % 32
		fis4 b, dis | % 33
		<b e>2. | % 34	
	} % end repeat
    
}

sopranoTwo = \relative c' {
	\repeat volta 2 { % begin repeat
	    s2.*6 | % 6
		cis4 dis e | % 7
		dis2. | % 8
	} % end repeat
	
	
	\repeat volta 2 { % begin repeat
		s2.*2 | % 10
		e4 dis cis | % 11
		s2. | % 12
		bis4 r4 r4 | % 13
		cis4 s2 | % 14
		s2.*17 | %31
		s2 b4 | % 32
		cis4 b a | % 33
		gis2. | % 34	
	} % end repeat
    
}

bassOne =  \relative e' {
	\repeat volta 2 { % begin repeat
		s2.*4 | % 4
		b4 b b | % 5
		b4 r4 r4 | % 6
		s2.*2 |  % 8		
		} % end repeat
	

 	\repeat volta 2 { % begin repeat

		s2.*3 | % 11
		fis2. | % 12
		fis4 r4 r4 | % 13
		gis4 s2 | % 14
		s2. | % 15
		s2 cis4 | % 16
		<gis cis>4 s2 | % 17
		<e gis>4. r8 r4 | % 18
		s2. | % 19
		r8 e8[( d' b cis a) ] | % 20
		fis8 [ (gis a b cis) a ] | % 21
		r8 fis [ (cis' a b gis) ] | % 22
		e8 [ (fis gis a b) gis ] | % 23
		a8 [ (e fis a dis, fis) ] | % 24

		s2. | % 25
		s2. | % 26
		s2. | % 27
		s2. | % 28
		s2. | % 29
		r8 e [( d' b cis a) ]  | % 30
		s2. | % 31
		s2. | % 32
		a4 gis fis4 | % 33
		e2. | % 34
 
	} % end repeat

}

bassTwo =  \relative e' {
	\repeat volta 2 { % begin repeat
		e4 dis b | % 1
		cis4 r4 r4 | % 2
		gis4 a fis | % 3
		e4 r4 r4 | % 4
		e4 dis b | % 5
		e4 r4 r4 | % 6
		a4 fis e | % 7
		b2. | % 8
		} % end repeat
	

 	\repeat volta 2 { % begin repeat

		dis'4 cis b | % 9
		a4 r4 r4 | % 10
		gis4 fis e | % 11
		dis2. | % 12
		dis4 r4 r4 | % 13
		cis4 cis'8 [ dis ] e4 | % 14
		dis4 cis bis | % 15
		cis4 r4 a | % 16
		e4 fis gis | % 17
		cis,4. s4. | % 18
		gis'4 r4 r8 e8 | % 19
		a,4 r4 r4 | % 20
		dis4 r4 r4 | % 21
		gis,4 r4 r4 | % 22
		cis4 r4 r4 | % 23
		fis,4 r4 b4  | % 24
		e,4 a4 r4 | % 25
		b4 r4 r4 | % 26
		e'4 dis b | % 27
		cis4 r4 r4 | % 28
		gis8 [ b ] e,4 r4 | % 29
		a,4 r4 r4 | % 30
		fis'4 r4 r8 e8 | % 31
		dis4 r4 e4 | % 32
		a,4 gis b, | % 33
		e2. | % 34
 
	} % end repeat

}

soprano = << \sopranoOne \\ \sopranoTwo >>

bass = << \bassOne \\ \bassTwo >>

% The score definition

\score {
        \new PianoStaff <<
           \set PianoStaff.instrumentName = "Clavier  "
		   \set PianoStaff.midiInstrument = "harpsichord"
           \new Staff = "upper"  { \clef treble \key e \major \time 3/4 \soprano  }
           \new Staff = "lower"  { \clef bass \key e \major \time 3/4 \bass }
     >>
	\layout { }
 	 \midi { }

}
