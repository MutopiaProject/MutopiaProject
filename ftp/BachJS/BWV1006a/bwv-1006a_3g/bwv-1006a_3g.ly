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
        title = "Suite E-Dur - BWV 1006a"
        subtitle = "\"Nach der Partita III für Violine BWV 1006\""
        piece = "3. Gavotte en Rondeau"
        mutopiatitle = "Suite E-Dur - BWV 1006a - Gavotte en Rondeau"
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
	
 footer = "Mutopia-2008/07/31-1500"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative b' {

	    \partial 2  b4 gis'4 | % 0
		gis4 fis8 [ e ] fis4 a | % 1
		a2 b8 [ gis a fis ] | % 2
		b,8 [ fis'16 gis a8 fis ] gis [ e fis dis ] | % 3
		e8 [ b gis e ] gis [ b e gis ] | % 4
		cis,8 [ gis' fis e ] fis [ gis a fis ] | % 5
		a2 b,4 gis' | % 6
		cis,4 fis fis, dis' | % 7
		<gis, e'>2 \bar "||" b4 gis' | % 8
		cis,4 cis8 [ bis ] cis [ e dis bis ] | % 9
		bis4 cis cis8 [ dis e gis ] | % 10
		cis,8 [ dis e a ] dis, [ fis e cis ] | % 11
		bis8 [ dis gis, fis ] r8 gis8 [ cis e ] | % 12
		gis8 [ a b cis, ] r8  cis8 [gis' b ] | % 13
		b8 [ gis a fis ] r8 bis,8 [dis fis ] | % 14
		fis8 [ dis e cis ] gis4 bis | % 15
		cis2 b4 gis' | % 16
		gis4 fis8 [ e ] fis4 a | % 17
		a2 b8 [ gis a fis ] | % 18
		b,8 [ fis'16 gis a8 fis ] gis [ e fis dis ] | % 19
		e8 [ b gis e ] gis [ b e gis ] | %20
		cis,8 [ gis' fis e ] fis [ gis a fis ] | % 21
		a2 b,4 gis' | % 22
		cis,4 fis fis, dis' | % 23
		<gis, e'>2 e8 [ fis gis a ] | % 24
		b4 b b e | % 25
	    b2 cis8 [ a dis e] | % 26
	   	b8 [ gis dis' e ] a, [ fis dis' e ] | % 27
		gis,8 [ fis e fis ] gis [ b e gis ] | % 28
		fis4 fis fis b | % 29
		fis2 gis8 [ e ais b ] | % 30
		fis8 [ dis ais' b ] e, [ cis ais' b ] | % 31
		e,8 [ dis cis b ] e4 e ] | % 32
		e2 e4 e | % 33
		e2 ais8 [ e cis' e, ] | % 34
		r8 fis8 [ ais e] ais [ e cis' e, ] | % 35
		e2  fis,4 dis'4  | % 36
		dis4 cis8 [ b ] cis8 [ gis ] e'4 | % 37
		e4 dis8 [ cis ] dis [ e fis dis ] | % 38
		b4. e8 cis4. b8 | % 39
		b2 b4 gis' | % 40
		gis4 fis8 [ e ] fis4 a | % 41
		a2 b8 [ gis a fis ] | % 42
		b,8 [ fis'16 gis a8 fis ] gis [ e fis dis ] | % 43
		e8 [ b gis e ] gis [ b e gis ] | % 44
		cis,8 [ gis' fis e ] fis [ gis a fis ] | % 45
		a2 b,4 gis' | % 46
		cis,4 fis fis, dis' | % 47
		e2 r8 gis,8 [ b e ] | % 48
		r8 e8 [ d cis ] d4. d8 | % 49
		cis8 [ b a gis ] r8 cis8 [ fis a ] | % 50
		r8 a8 [gis fis ] gis [ eis]  fis4| % 51
		r8 fis8 [ eis fis ] gis [ a b gis ] | % 52
		a8 cis, [fis, gis ] a [ b cis e ] | % 53
		d8 fis, [ b, cis ] d [ e fis a ] | % 54
		gis8 [ b e, fis ] gis [ a b d ] | % 55
		cis8 [ b a cis ] fis [ eis fis cis ] | % 56
		r8 cis [ e g ] fis [ e d cis ] | % 57
		d8 [ cis b fis' ] b [ ais b d, ] | % 58
		r8 cis8 [  b' d ] cis [ b a gis ] | % 59
		a8 [ gis fis a ] r8 d,8 [ a' gis ] | % 60
		r8 cis,8 [ gis' fis ] r8 b,8 [ fis' e ] | % 61
		r8 a,8 [ e' d ] r8 d8 [ cis b ] | % 62
		a8 [ cis fis gis ] gis4. \trill fis8 | % 63
		fis2 e4 gis | % 64
		gis4  fis8 [ e ] fis4 a | % 65
		a2 b8 [ gis a fis ] | % 66
		b,8 [ fis'16 gis a8 fis ] gis [ e fis dis ] | % 67
		e8 [ b gis e ] gis [ b e gis ] | % 68
		cis,8 [ gis' fis e ] fis [ gis a fis ] | % 69
		a2 b,4 gis' | % 70
		cis,4 fis fis, dis' | % 71
		e2 gis8 [ fis ] gis4 | % 72
		cis,8 [ bis ] cis4 fis8 [ e ] fis4 | % 73
		bis,2 r8 gis8 [ cis e ] | % 74
		r8 a,8 [ dis fis ] r8 b,8 [ eis gis ] | % 75
		gis4 fis e8 [ dis e cis ] | % 76
		dis4 r8 e8 dis8 [ cis ] fis4 | % 77
		e8 [ dis cis b ] dis [ cis ] dis4 | % 78
		gis8 [ fisis ] gis4 cis,8 [ bis ] cis4 | % 79
		ais'2 gis8 [ fisis gis b ] | % 80
		gis8 [ fisis gis b ] gis [ fisis gis b ] | % 81
		gis1  | % 82
		gis1 | % 83
    	gis1 | % 84
		gis1 | % 85
		cis,8 [ dis e dis ] cis [ e b e ] | % 86
		ais,8 [ b cis b ] ais [ cis gis cis ] | % 87
		r8 gis8 [ fisis gis ] ais [ b cis dis ] | % 88
		e [ dis cisis dis ] e [ dis cisis dis ] | % 89
		r8 ais8 [ cis e ] dis [ fisis ais cis ] | % 90
		b8 [ ais16 gis fisis8 gis ] 
		\times 2/3 { b,8 [ cis dis ] } 
		\times 2/3 { cis8 [ b ais ]} | % 91
		gis2  \bar "||" b4 gis' | % 92
		gis4  fis8 [ e ] fis4 a | % 93
		a2 b8 [ gis a fis ] | % 94
		b,8 [ fis'16 gis a8 fis ] gis [ e fis dis ] | % 95
		e8 [ b gis e ] gis [ b e gis ] | % 96
		cis,8 [ gis' fis e ] fis [ gis a fis ] | % 97
		a2 b,4 gis' | % 98
		cis,4 fis fis, dis' | % 99
		e2 s2 \bar "|." % 100
    
}


melodyTwo =  \relative e' {
		\partial 2 e2  | % 0
		<a cis>2 r2 | % 1
		<b dis>2 r2 | % 2
		dis,2 e4 b4 | % 3
		e,2 e' | % 4
		a2 r2 | % 5
		<b dis>2 e, | % 6
		a,2 b | % 7
		e,2  \bar "||" e'2 | % 8
	   a2 gis | % 9
	   fis2 e2 | % 10
	   fis2 a,2 | % 11	   
	   gis2 e'2 | % 12
	   r2 eis2 | % 13
	   fis2 a2 | % 14
	   r2 gis,2| % 15
	   <cis e gis>2 e2 | % 16
	   <a cis>2 r2 | % 17
	   <b dis>2 r2 | % 18
	   dis,2 e4 b | % 19
	   e,2 e'2 | % 20
	   a2 r2 | % 21
	   <b dis>2 e,2 | % 22
	   a,2 b | % 23
	   e,2 r2 | % 24
	   r4 e'8 [ fis ] gis [ fis gis fis ]  | % 25
	   a8 [ gis fis e] a,4 r4 | % 26
	   gis4 r4 fis4 r4 | % 27
	   e2 r2 | % 28
	   r4 b''8 [ cis ] dis [ cis dis cis ] | % 29
	   e8 [ dis cis b] e,4 r4 | % 30
	   dis4 r4 cis4 r4 | % 31
	   b2 cis'8 [ dis e dis ] | % 32
	   cis8 [ b ais b ] cis [ dis e cis ] | % 33
	   <fis, cis'>2 r2 | % 34
	   fis2 r2 | % 35
	   <fis ais cis>2 b,2 | % 36
	   e2 r2 | % 37
	   fis2 r2 | % 38
	   r8 gis8 e4 fis2 | % 39
	   <b, dis fis>2 e2 | % 40
	   <a cis>2 r2 | % 41
	   <b dis>2 r2 | % 42
	   dis,2 e4 b4 | % 43
	   e,2 e'2 | % 44
	   a2 r2 | % 45
	   <b dis>2 e,2 | % 46
	   a,2 b2 | % 47
	   <e, gis'>2 e'4 r4 | % 48
	   fis4 r4 r8 fis8 gis4  | % 49
	   a,4 r4 fis'4 r4 | % 50
	   b4 r4 r4 r8 bis8 | % 51	   
	   cis4 r4 r2 | % 52
	   fis,,4 r4 r2 | % 53
	   b4 r4 r2 | % 54
	   e,4 r4 r2 | % 55
	   a4 r4 r2 | % 56
	   ais'4 r4 r2 | % 57
	   b,4 r4 r2 | % 58
	   eis4 r4 r2 | % 59
	   fis4 r4 b4 r4 | % 60
	   a4 r4 gis4 r4 | % 61
	   fis4 r4 eis4 r4 | % 62
	   fis4 r4 cis2 | % 63
	   <fis a cis>2 <gis b>2 | % 64
	   <a cis>2 r2 | % 65
	   <b dis>2 r2 | % 66
	   dis,2 e4 b | % 67
	   e,2 e'2 | % 68
	   a2 r2 | % 69
	   <b dis>2 e,2 | % 70
	   a,2 b2 | % 71
	   <e, gis'>2 <e' b'>4 r4 | % 72
	   <a, a'>4 r4 <dis a'>4 r4 | % 73
	   <gis, fis'>2 e'4 r4| % 74
	   fis4 r4 gis4 r4  | % 75
	   <a cis>2  ais4 r4 | % 76
	   r8 b8 gis4 <e b'> <fis ais> | % 77
	   <b, fis' b>2 <b fis' b>4 r4 | % 78
	   <e, e' dis'>4 r4 <e' gis>4 r4 | % 79
	   <dis fisis cis'>2 b'4 r4 | % 80
	   cis4 r4 dis4 r4 | % 81
	   e8 [ dis e cis ] gis [ cis dis e ] | % 82
	   dis8 [ cis dis b ] gis [ b cis dis ] | % 83
	   e8 [ cis dis e ] gis, [ e' dis cis ] | % 84
	   dis8 [ b cis dis ] gis, [ dis' cis b ] | % 85
	   ais4 r4 r4 gis4 | % 86
	   fisis4 r4 r4 e4 | % 87
	   dis4 r4 r2 | % 88
	   r1 | % 89
	   fisis4 r4 r2 | % 90
	   gis4 r4 dis4 r4 | % 91
	   gis,2  \bar "||" e'2 | % 92
	   <a cis>2 s2 | % 93
	   <b dis>2 s2 | % 94
	   dis,2 e4 b4 | % 95
	   e,2 e' | % 96
	   a2 r2  | % 97
	   <b dis>2 e,2 | % 98
	   a,2 b2 | % 99
	   <e, gis'>2 s2 \bar "|." % 100
	
}


melody = << \melodyOne \\ \melodyTwo >>

% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Laute"
	\set Staff.midiInstrument = "acoustic guitar nylon"
        { \clef treble \key e \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }

}
