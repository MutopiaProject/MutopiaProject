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
        title = "Suite BWV 1006a"
        subtitle = "\"Nach der Partita III für Violine BWV 1006\""
        piece = "6. Bourrée"
        mutopiatitle = "BWV 1006a - Bourrée"
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
	
 footer = "Mutopia-2008/07/17-1483"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

soprano = \relative b {
	
	\repeat volta 2 { % begin repeat
		\partial 4 b4_\markup { (forte) } | % 
		cis4 a8 [ (b ] cis [ dis) ] e4 | % 1
		r8 b8 e4 \appoggiatura fis8 e8 [ (dis ] e4) | % 2
		s1 | % 3
		s2. gis8 [ e ] | % 4
		fis8 [ (dis b cis ] dis [ e fis a) ] | % 5
		gis8 [ (e b dis ] e [ fis gis_\markup { (piano) } b) ] | % 6
		fis8 [ (dis b cis ] dis [ e fis a) ] | % 7
		gis8 [ (e b dis ] e [ fis gis b) ] | % 8
		e,8_\markup { forte } [ (dis cis dis) ] e [ (dis cis b) ] | % 9
		s1 | % 10	
		e8_\markup { (piano) } [ (dis cis dis) ] e [ (dis cis b) ] | % 11
		s1 | % 12	
		dis8_\markup { forte } [ (cis b cis) ] dis [ e fis a, ] | % 13
		gis8 [ b e dis ] e [ (ais b) cis, ] | % 14
		s1 | % 15
		s1 | % 16
	} % end repeat
	
  	\repeat volta 2 { % begin repeat
		\partial 4 fis4 | % 
		gis4 e8 [ (fis ] gis [ ais) ] b4 | % 17
		r8 fis8  b4 \appoggiatura cis8 b8 [ (ais ] b4) | % 18
		r8 e,8 a4 r8 dis,8 [ gis fis ] | % 19
		fis8 [ (e dis e) ] cis4 e8 [ cis ] | % 20
		gis8 [ (a b cis ] d [ gis b) d, ] | % 21
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
		e8 [ (dis cis dis) ] b4 b | % 32
		cis4 a8 [ (b ] cis [ dis e fis) ] | % 33
		dis8 [ fis a fis ] dis [ (b) a (fis') ] | % 34
		gis,8 [ e' ] b'4 a8 [ gis fis gis]  | % 35
		e8 [ b gis b ] s2 | % 36
	} % end repeat
}

bassOne = \relative gis {
	
	\repeat volta 2 { % begin repeat
		\partial 4 s4 | % 
		s1*2 | % 2
		r8 gis8 [  a b ] cis [ a ] b4 | % 3
		a8 [ (gis fis gis) ] e4 s4 | % 4
		s1*5 | % 9
		ais8 [ (gis fis gis ] ais [ b cis dis) ] | % 10	
		s1 | % 11
		ais8 [ (gis fis gis ] ais [ b cis e) ] | % 12	
		s1*2 | % 14
		fis,8 [ dis' (cis b) ] fis [ cis' (b ais) ] | % 15
		b8 [ fis dis fis ] b,4 s4 | % 16
	} % end repeat
	
  	\repeat volta 2 { % begin repeat
		\partial 4 s4 | % 
		s1*15 | % 31
		s2. gis'4 | % 32
		e4 s2. | % 33
		s1*2 | % 35
		s2 e4 s4 | % 36
	} % end repeat
	
}

bassTwo = \relative e {
	
	\repeat volta 2 { % begin repeat
		\partial 4 e4 | % 
		a4 r4 r2 | % 1
		gis8 r8 r4 r2 | % 2
		fis4 r4 r4 dis4 | % 3
		e4 b gis e | % 4
		b'4 r4 r4 dis4 ] | % 5
		e4 r4 r4 e,4 | % 6
		dis4 r4 r4 b4 | % 7
		e4 r4 r4 dis4 | % 8
		cis4 e cis e | % 9
		fis4 r4 r4 fis4 ] | % 10	
		gis4 b ais gis | % 11
		fis4 r4 r4 ais4| % 12	
		b4 dis b dis | % 13
		e4 gis cis, dis8 [ e ] | % 14
		fis4 r4 fis, r4 | % 15
		b,2. s4 | % 16
	} % end repeat
	
  	\repeat volta 2 { % begin repeat
		\partial 4 b''4 | % 
		e4 r4 r2 | % 17
		dis8 r8 r4 r2 | % 18
		cis4. cis8 bis4 r4 | % 19
		cis4 gis e cis | % 20
		b4 r4 r4 e,4 | % 21
		a4 r4 r4 cis4 | % 22
		e4 r4 r4 e,4 | % 23
		a4 r4 r4 fis4 | % 24
		b4 r4 gis4 r4 | % 25
		a4 r4 fis4 r4 | % 26
		d'4 b cis cis, | % 27
		fis2. fis4 | % 28
		b4 r4 r4 dis4 | % 29
		e4 r4 r4 gis,4 | % 30
		a4 r4 r4 fis4 | % 31
		b4 a gis e | % 32
		a4 r4 r4 gis'4 | % 33
		fis4 dis b dis  | % 34
		e4 gis b b, | % 35
		e,2. s4 | % 36
	} % end repeat
	
}

bass = << \bassOne \\ \bassTwo >>

% The score definition

\score {
        \new PianoStaff <<
           \set PianoStaff.instrumentName = "Clavier  "
		   \set PianoStaff.midiInstrument = "harpsichord"
           \new Staff = "upper"  { \clef treble \key e \major \time 4/4 \soprano  }
           \new Staff = "lower"  { \clef bass \key e \major \time 4/4 \bass }
     >>
	\layout { }
 	 \midi { }
}
