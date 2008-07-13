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
        piece = "3. Gavotte en Rondeau"
        mutopiatitle = "BWV 1006 - Gavotte en Rondeau"
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
	
 footer = "Mutopia-2008/07/13-1471"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative b' {
	\repeat volta 2 { % begin repeat
	    \partial 2  b4 gis'4 | % 1
		gis4 \trill fis8 [ e ] fis4 a | % 2
		a2 b8 [ (gis) a (fis) ] | % 3
		b,8 [ (fis'16 gis) a8 fis ] gis [ (e) fis (dis) ] | % 4
		e8 [ (b gis e) ] gis [ b e gis ] | % 5
		a,8 [ gis' (fis e) ] fis [ gis a fis ] | % 6
		a2 b,4 gis' | % 7
		cis,4 fis fis, dis' | % 8
		e2 s2 | % 9
	} % end repeat

    	s2 b4 gis' | % 10
		cis,4 cis8 [ (bis) ] cis [ (e) dis (bis) ] | % 11
		bis4 (cis) cis8 [ (dis e gis) ] | % 12
		cis,8 [ (dis e a) ] dis, [ (fis) e (cis) ] | % 13
		bis8 [ (dis) gis, (fis) ] e [ gis cis e ] | % 14
		gis8 [ (a b) cis, ] eis, [ cis' gis' b ] | % 15
		b8 [ (gis) a (fis) ] a, [ (bis dis fis) ] | % 16
		fis8 [ dis e dis ] gis,4 bis | % 17
		cis,2 b'4 gis' | % 18
		gis4 \trill fis8 [ e ] fis4 a | % 19
		a2 b8 [ (gis) a (fis) ] | % 20
		b,8 [ (fis'16 gis a8) fis ] gis [( e) fis (dis) ] | % 21
		e8 [ (b gis e) ] gis [ b e gis ] | %22
		a,8 [ gis' (fis e) ] fis [ gis a fis ] | % 23
		a2 b,4 gis' | % 24
		cis,4 fis fis, dis' | % 25
		e2 e,8 [ fis gis a ] | % 26
		b4 b b e | % 27
		b2 cis8 [ a dis (e) ] | % 28
		b8 [ gis dis' (e) ] a, [ fis dis' (e) ] | % 29
		gis,8 [ (fis e) fis ] gis [ b e gis ] | % 30
		fis4 fis fis b | % 31
		fis2 gis8 [ e ais (b) ] | % 32
		fis8 [ dis ais' (b) ] e, [ cis ais' (b) ] | % 33
		e,8 [ (dis) cis (b) ] e4 e ] | % 34
		e2 e4 e | % 35
		e2 ais8 [ (e) cis' (e,) ] | % 36
		fis,8 [ (e') ais (e)] ais [ (e) cis' (e,) ] | % 37
		e2 fis,4 dis' | % 38
		dis4 \trill cis8 [ b ] cis4 e | % 39
		e4 dis8 [ cis ] dis [ (e) fis (dis) ] | % 40
		b8 [ gis e e' ] cis4. \mordent b8 | % 41
		b2 b4 gis' | % 42
		gis4 \trill fis8 [ e ] fis4 a | % 43
		a2 b8 [ (gis) a (fis) ] | % 44
		b,8 [ (fis'16 gis a8) fis ] gis [ (e) fis (dis) ] | % 45
		e8 [( b gis e) ] gis [ b e gis ] | % 46
		a,8 [ gis' (fis e) ] fis [ gis a fis ] | % 47
		a2 b,4 gis' | % 48
		cis,4 fis fis, dis' | % 49
		e2 e,8 [ gis b e ] | % 50
		fis,8 [ e' (d cis) ] d [ fis, gis d' ] | % 51
		cis8 [ b a gis ] fis [ cis' fis a ] | % 52
		b,8 [ a' (gis fis) ] gis [ eis fis bis, ] | % 53
		cis8 [ fis (eis fis) ] gis [ a b gis ] | % 54
		a8 [ (cis, fis,) gis ] a [ b cis e ] | % 55
		d8 [ (fis, b,) cis ] d [ e fis a ] | % 56
		gis8 [ (b e,) fis ] gis [ a b d ] | % 57
		cis8 [ (b a) cis ] fis [ eis fis cis ] | % 58
		ais8 [ (cis e) g ] fis [ e d cis ] | % 59
		d8 [ (cis b) fis' ] b [ ais b d, ] | % 60
		eis,8 [ (cis' b') d ] cis [ b a gis ] | % 61
		a8 [ (gis fis) a ] b, [ d a' (gis) ] | % 62
		a,8 [ cis gis' (fis) ] gis, [ b fis' (e) ] | % 63
		fis,8 [ a e' (d) ] eis, [ d' cis b ] | % 64
		a8 [ cis fis gis ] gis4. fis8 | % 65
		fis2 e4 gis | % 66
		gis4 \trill fis8 [ e ] fis4 a | % 67
		a2 b8 [ (gis) a (fis) ] | % 68
		b,8 [ (fis'16 gis a8) fis ] gis [ (e) fis (dis) ] | % 69
		e8 [ (b gis e) ] gis [ b e gis ] | % 70
		a,8 [ gis' (fis e) ] fis [ gis a fis ] | % 71
		a2 b,4 gis' | % 72
		cis,4 fis fis, dis' | % 73
		e2 gis8 [ fis ] gis4 | % 74
		cis,8 [ bis ] cis4 fis8 [ e ] fis4 | % 75
		bis,2 e,8 [ (gis) cis (e) ] | % 76
		fis,8 [ (a) dis (fis) ] gis, [ (b) eis (gis) ] | % 77
		gis4 (fis) e8 [ (dis) e (cis) ] | % 78
		dis8 [ (b) ] e4 dis8 [ (cis) ] fis4 | % 79
		e8 [ (dis cis b) ] dis [ (cis) ] dis4 | % 80
		gis8 [ fisis ] gis4 cis,8 [ bis ] cis4 | % 81
		ais'2 gis8 [ fisis (gis b) ] | %82
		gis8 [ fisis (gis b) ] gis [ fisis (gis b) ] | % 83
		gis2 r4 gis4 | % 84
		gis2 r4 gis4 | % 85
    	gis2 r4 gis4 | % 86
		gis2 r4 gis4 | % 87
		e1  | % 88
		e2 s2 | % 89
		dis,8 [ (eis fisis gis ] ais [ b cis dis) ] | % 90
		e [ (dis cisis dis ] e [ dis cisis dis) ] | % 91
		fisis,8 [ (ais cis e) ] dis [ (fisis ais cis) ] | % 92
		b8 [ (ais16 gis fisis8) gis ] 
		\times 2/3 { b,8 [ (cis dis) ] } 
		\times 2/3 { cis8 [ (b ais) ]} | % 93
		gis2 b4 gis' | % 94
		gis4 \trill fis8 [ e ] fis4 a | % 95
		a2 b8 [ (gis) a (fis) ] | % 96
		b,8 [ (fis'16 gis a8) fis ] gis [ (e) fis (dis) ] | % 97
		e8 [ (b gis e) ] gis [ b e gis ] | % 98
		a,8 [ gis' (fis e) ] fis [ gis a fis ] | % 99
		a2 b,4 gis' | % 100
		cis,4 fis fis, dis' | % 101
		e2 s2 \bar "|." % 102
    
}

melodyTwo =  \relative e' {
	\repeat volta 2 { % begin repeat
		\partial 2 e4 s4  | % 1
		a4 s2. | % 2
		b2 s2 | % 3
		s1*3 | % 6
		b2 e,4 s4 | % 7
		<a cis>4 s4 b,4 s4 | % 8
		e2 s2 | % 9
	} % end repeat

	   s2 e4 s4 | % 10
	   a4 r4 gis4 r4 | % 11
	   fis2 e4 r4 | % 12
	   fis4 r4 s2 | % 13
	   s1*4 | % 17
	   s2 e4 s4 | % 18
	   a4 s2. | % 19
	   b2 s2 | % 20
	   s1*3 | % 23
	   b2 e,4 s4 | % 24
	   a4 s4 b,4 s4 | % 25
	   e2 s2 | % 26
	   r4 e8 [ (fis) ] gis [ (fis) gis (fis) ] | % 27
	   gis8 [ (fis gis e)] s2 | % 28
	   s1*2 | % 30
	   r4 b'8 [ (cis) ] dis [ (cis) dis (cis) ] | % 31
	   dis8 [ (cis dis b)] s2 | % 32
	   s1 | % 33
	   s2 cis8 [ (dis) e (dis) ] | % 34
	   cis8 [ (b ais b) ] cis [ (dis) e (cis) ] | % 35
	   e,2 s2 | % 36
	   s1 | % 37
	   fis2 b,4 s4 | % 38
	   e4 s2. | % 39
	   fis4 s2. | % 40
	   s2 fis2 | % 41
	   <b, fis'>2 e4 s4 | % 42
	   a4 s2. | % 43
	   b2 s2 | % 44
	   s1*3 | % 47
	   b2 e,4 s4 | % 48
	   a4 s4 b,4 s4 | % 49
	   e2 s2 | % 50
	   s1*14 | % 64
	   s2 cis'2 | % 65
	   <fis, cis'>2 <gis b>4 s4 | % 66
	   a4 s2. | % 67
	   b2 s2 | % 68
	   s1*3 | % 71
	   b2 e,4 s4 | % 72
	   <a cis>4 s4  b,4 s4 | % 73
	   e2 e'8 [ dis ] e4 | % 74
	   a,8 [ gis ] a4 dis8 [ cis ] dis4 | % 75
	   gis,2 s2| % 76
	   s1 | % 77
	   a2 ais8 s4. | % 78
	   s4 gis4 e <fis cis'>| % 79
	   <b, fis' b>4 s4 <b fis'>8 s4. | % 80
	   <e d'>8 s4. e8 s4. | % 81
	   <d cis'>2 b'8 s4. | % 82
	   cis8 s4. dis8 s4. | % 83
	   e8 [ (cis) e (cis) ] gis [ (cis) e (cis) ] | % 84
	   dis8 [ (b) dis (b) ] gis [ (b) dis (b) ] | % 85
	   e8 [ (cis) e (cis) ] gis [ (cis) e (cis) ] | % 86
	   dis8 [ (b) dis (b) ] gis [ (b) dis (b) ] | % 87
	   dis8 [ (b) dis (b) ] cis [ (b) cis (b) ] | % 88
	   ais8 [ (cis ais cis) ] fisis, [ (ais fisis ais) ] | % 89
	   s1*4 | % 93
	   s2 e4 s4 | % 94
	   a4 s2. | % 95
	   b2 s2 | % 96
	   s1*3 | % 99
	   b2 e,4 s4 | % 100
	   a4 s4 b,4 s4 | % 101
	   e2 s2 \bar "|." % 102
	
}


melody = << \melodyOne \\ \melodyTwo  >>


% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key e \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
