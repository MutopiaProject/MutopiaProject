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
        piece = "3. Gavotte en Rondeau"
        mutopiatitle = "BWV 1006a - Gavotte en Rondeau"
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
	
 footer = "Mutopia-2008/07/17-1480"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

sopranoOne = \relative b {

	    \partial 2  b4 gis'4 | % 1
		\appoggiatura a8 gis4 fis8 [ e ] fis4 a | % 2
		a2 b8 [ (gis) a (fis) ] | % 3
		b,8 [ (fis'16 gis a8) fis ] gis [ (e) fis (dis) ] | % 4
		e8 [ (b gis e) ] gis [ b e gis ] | % 5
		a,8 [ gis' (fis e) ] fis [ gis a fis ] | % 6
		a2 b,4 gis' | % 7
		cis,4 fis fis, dis' | % 8
		\appoggiatura dis8 e2 \bar "||" b4 gis' | % 9 + 10
		cis,4 cis8 [ (bis) ] cis [ (e dis bis) ] | % 11
		bis4 (cis) cis8 [ (dis e gis) ] | % 12
		cis,8 [ (dis e a) ] dis, [ (fis e cis) ] | % 13
		bis8 [ (dis gis, fis) ] r8 gis8 [ cis e ] | % 14
		gis8 [ (a b) cis, ] r8  cis8 [gis' b ] | % 15
		b8 [ (gis) a (fis) ] r8 bis,8 [(dis fis) ] | % 16
		fis8 [ (dis) e (cis) ] gis4 bis | % 17
		\appoggiatura bis8 cis2 b4 gis' | % 18
		\appoggiatura a8 gis4 fis8 [ e ] fis4 a | % 19
		a2 b8 [ (gis) a (fis) ] | % 20
		b,8 [ (fis'16 gis a8) fis ] gis [( e) fis (dis) ] | % 21
		e8 [ (b gis e) ] gis [ b e gis ] | %22
		cis,8 [ gis' (fis e) ] fis [ gis a fis ] | % 23
		a2 b,4 gis' | % 24
		cis,4 fis fis, dis' | % 25
		\appoggiatura d8 e2 s2 | % 26
		s1*4 | % 30
		fis4 fis fis b | % 31
		fis2 gis8 [ e ais (b) ] | % 32
		fis8 [ dis ais' (b) ] e, [ cis ais' (b) ] | % 33
		e,8 [ (dis) cis (b) ] e4 e ] | % 34
		e2 e4 e | % 35
		e2 ais8 [ (e) cis' (e,) ] | % 36
		r8 fis8 [ ais (e)] ais [ (e) cis' (e,) ] | % 37
		e2  dis4 s4 | % 38
		\appoggiatura e8 dis4 cis8 [ b ] cis8 [ gis ] e'4 | % 39
		e4 dis8 [ cis ] dis [ (e) fis (dis) ] | % 40
		b4. e8 cis4. b8 | % 41
		b2 b4 gis' | % 42
		\appoggiatura a8 gis4 fis8 [ e ] fis4 a | % 43
		a2 b8 [ (gis) a (fis) ] | % 44
		b,8 [ (fis'16 gis a8) fis ] gis [ (e) fis (dis) ] | % 45
		e8 [( b gis e) ] gis [ b e gis ] | % 46
		a,8 [ gis' (fis e) ] fis [ gis a fis ] | % 47
		a2 b,4 gis' | % 48
		cis,4 fis fis, dis' | % 49
		\appoggiatura dis8 e2 r8 gis,8 [ b e ] | % 50
		r8 e8 [ (d cis) ] d4. d8 | % 51
		cis8 [ b a gis ] r8 cis8 [ fis a ] | % 52
		r8 a8 [(gis fis) ] gis [ eis]  fis4| % 53
		r8 fis8 [ (eis fis ] gis [ a b) gis ] | % 54
		a8 \clef bass cis, [(fis, gis ] a [ b cis) e ] | % 55
		d8 fis, [( b, cis ] d [ e fis )a ] | % 56
		gis8 [ b (e, fis ] gis [ a b) d ] | % 57
		cis8 [ (b a) cis ] \clef treble fis [ (eis fis) cis ] | % 58
		r8 cis [ e g ] fis [ (e d cis ] | % 59
		d8 [ cis b) fis' ] b [ (ais b) d, ] | % 60
		r8 cis8 [  b' d ] cis [ (b a gis) ] | % 61
		a8 [ (gis fis) a ] r8 d,8 [ (a' gis) ] | % 62
		r8 cis,8 [( gis' fis) ] r8 b,8 [ (fis' e) ] | % 63
		r8 a,8 [( e' d) ] r8 d8 [ (cis b )] | % 64
		a8 [ (cis fis gis) ] gis4. \trill fis8 | % 65
		fis2 e4 gis | % 66
		\appoggiatura a8 gis4  fis8 [ e ] fis4 a | % 67
		a2 b8 [ (gis) a (fis) ] | % 68
		b,8 [ (fis'16 gis a8) fis ] gis [ (e) fis (dis) ] | % 69
		e8 [ (b gis e) ] gis [ b e gis ] | % 70
		a,8 [ gis' (fis e) ] fis [ gis a fis ] | % 71
		a2 b,4 gis' | % 72
		cis,4 fis fis, dis' | % 73
		\appoggiatura dis8 e2 gis8 [ fis ] gis4 | % 74
		cis,8 [ bis ] cis4 fis8 [ e ] fis4 | % 75
		\appoggiatura cis8 bis2 r8 gis8 [ (cis e) ] | % 76
		r8 a,8 [ (dis fis) ] r8 b,8 [ (eis gis) ] | % 77
		gis4 (fis) e8 [ (dis) e (cis) ] | % 78
		dis4 r8 e8 dis8 [ (cis) ] fis4 | % 79
		e8 [ (dis cis b) ] dis [ (cis) ] dis4 | % 80
		gis8 [ fisis ] gis4 cis,8 [ bis ] cis4 | % 81
		ais'2 gis8 [ fisis (gis b) ] | %82
		gis8 [ fisis (gis b) ] gis [ fisis (gis b) ] | % 83
		gis1 \trill ~  | % 84
		gis1 ~ | % 85
    	gis1 ~| % 86
		gis1 ~ | % 87
		cis,8 [ (dis e dis ] cis [ e b e) ] | % 88
		ais,8 [ (b cis b ] ais [ cis gis cis) ] | % 89
		r8 gis8 [ (fisis gis ] ais [ b cis dis) ] | % 90
		e [ (dis cisis dis ] e [ dis cisis dis) ] | % 91
		r8 ais8 [ (cis e) ] dis [ (fisis ais cis) ] | % 92
		b8 [ (ais16 gis fisis8) gis ] 
		\times 2/3 { b,8 [ (cis dis) ] } 
		\times 2/3 { cis8 [ (b ais) ]} | % 93
		\appoggiatura ais8 gis2  \bar "||" b4 gis' | % 94
		\appoggiatura a8 gis4  fis8 [ e ] fis4 a | % 95
		a2 b8 [ (gis) a (fis) ] | % 96
		b,8 [ (fis'16 gis a8) fis ] gis [ (e) fis (dis) ] | % 97
		e8 [ (b gis e) ] gis [ b e gis ] | % 98
		a,8 [ gis' (fis e) ] fis [ gis a fis ] | % 99
		a2 b,4 gis' | % 100
		cis,4 fis fis, dis' | % 101
		\appoggiatura dis8 e2 s2 \bar "|." % 102
    
}

sopranoTwo =  \relative c' {
		\partial 2 s2  | % 1
		cis2 r2 | % 2
		dis2 r2 | % 3
		s1*3 | % 6
		dis2-\prall s2 | % 7
		s1 | % 8
		gis,2  \bar "||"   s2 | % 9 + 10
		s1*7 | % 17
		gis2 s2 | % 18
		cis2 s2 | % 19
		<dis fis>2 s2 | % 20
		s1*3 | % 23
	    dis2 s4 s4 | % 24
	   	s1 | % 25
		e,2 s2 | % 26
		s1*9 | % 35
		c'2 s2 | % 36
	    s1 | % 37
	    cis2 s2 | % 38
	   	s1*4 | % 42
		cis2 r2 | % 43
		dis2 r2 | % 44
		s1*3 | % 47
		dis2 s2 | % 48
	   	s1 | % 49
		gis,2 s2 | % 50
		s1*14 | % 64
	   s2 eis'2 | % 65
	   cis2 b2 | % 66
	   cis2 r2 | % 67
	   dis2 r2 | % 68
	   s1*3 | % 71
	   dis2_\prall s2 | % 72
	   s1 | % 73
	   g,2 b4 r4 | % 74
	   a4 r4 a4 r4  | % 75
	   gis2 s2| % 76
	   s1 | % 77
	   cis2 s2 | % 78
	   s2 b4 ais | % 79
	   b2 b4 r4 | % 80
	   d4 r4 s2 | % 81
	   cis2 s2 | % 82
	   s1*12 | % 94
	   cis2 r2 | % 95
	   d2 r2 | % 96
	   s1*3 | % 99
	   d2_\prall s2 | % 100
	   s1 | % 101
	   gis,2 s2 \bar "|." % 102
	
}

bassOne = \relative e' {

		\partial 2 s2  | % 1
		s1*7  | % 8
		s2  \bar "||" s2 | % 9+10
		s1*7 | % 17
		e,2 s2 | % 18
		s1*7| % 25
		s2 e8 [ fis gis a ]
		b4 b b e | % 27
	    b2 cis8 [ a dis (e)] | % 28
	   	b8 [ gis dis' (e) ] a, [ fis dis' (e) ] | % 29
		\appoggiatura a,8 gis8 [ (fis e) fis ] gis [ b e gis ] | % 30
		s1*7 | % 37
		ais,2 fis4 s4 | % 38
	   	s1*3 | % 41
		<dis fis>2 s2 | % 42
		s1*22 | % 64
		s2 cis'4 ( b) | % 65
		a2 s2 | % 66
		s1*7 | % 73
	   	s2 gis4 r4 | % 74
	   	gis4 r4 fis4 r4 | % 75
		fis2 s2| % 76
		s1*3 | % 79
	   	fis2 fis4 r4 | % 80
	   	e4 r4 gis4 r4 | % 81
		fisis2 s2 | % 82
		s1*19 | %  101
	   	s1 \bar "|." % 102
    
}

bassTwo =  \relative e {
		\partial 2 e2  | % 1
		a2 r2 | % 2
		b2 r2 | % 3
		dis,2 e4 b4 | %4
		e,2 e' | % 5
		a2 r2 | % 6
		b2 e, | % 7
		a,2 b | % 8
		e,2  \bar "||" e'2 | % 9+10
	   a2 gis | % 11
	   fis2 e2 | % 12
	   fis2 a,2 | % 13	   
	   gis2 e'2 | % 14
	   r2 eis2 | % 15
	   fis2 a2 | % 16
	   r2 gis,2| % 17
	   cis,2 e'2 | % 18
	   a2 r2 | % 19
	   b2 r2 | % 20
	   dis,2 e4 b | % 21
	   e,2 e'2 | % 22
	   a2 r2 | % 23  
	   b2 e,2 | % 24
	   a,2 b | % 25
	   e,2 r2 | % 26
	   r4 e'8 [ (fis) ] gis [ (fis) gis (fis) ]  | % 27
	   a8 [ (gis fis e)] a,4 r4 | % 28
	   gis4 r4 fis4 r4 | % 29
	   e2 r2 | % 30
	   r4 b''8 [ (cis) ] dis [ (cis) dis (cis) ] | % 31
	   e8 [ (dis cis b)] e,,4 r4 | % 32
	   dis4 r4 cis4 r4 | % 33
	   b2 cis''8 [ (dis) e (dis) ] | % 34
	   cis8 [ (b ais b) ] cis [ (dis) e (cis) ] | % 35
	   fis,2 r2 | % 36
	   fis2 r2 | % 37
	   fis2 b,2 | % 38
	   e2 r2 | % 39
	   fis2 r2 | % 40
	   r8 gis8 e4 fis2 | % 41
	   b,2 e2 | % 42
	   a2 r2 | % 43
	   b2 r2 | % 44
	   dis,2 e4 b4 | % 45
	   e,2 e'2 | % 46
	   a2 r2 | % 47
	   b2 e,2 | % 48
	   a,2 b2 | % 49
	   e,2 e'4 r4 | % 50
	   fis4 r4 r8 fis8 gis4  | % 51
	   a,4 r4 fis'4 r4 | % 52
	   b4 r4 r4 r8 bis8 | % 53	   
	   cis4 r4 r2 | % 54
	   fis,,4 r4 r2 | % 55
	   b,4 r4 r2 | % 56
	   e4 r4 r2 | % 57
	   a4 r4 r2 | % 58
	   ais'4 r4 r2 | % 59
	   b,4 r4 r2 | % 60
	   eis4 r4 r2 | % 61
	   fis4 r4 b4 r4 | % 62
	   a4 r4 gis4 r4 | % 63
	   fis4 r4 eis4 r4 | % 64
	   fis4 r4 cis2 | % 65
	   fis2 gis2 | % 66
	   a2 r2 | % 67
	   b2 r2 | % 68
	   dis,2 e4 b | % 69
	   e,2 e'2 | % 70
	   a2 r2 | % 71
	   b2 e,2 | % 72
	   a,2 b2 | % 73
	   e,2 e'4 r4 | % 74
	   a,4 r4 dis4 r4 | % 75
	   gis,2 e'4 r4| % 76
	   fis4 r4 gis4 r4  | % 77
	   a2  ais4 r4 | % 78
	   r8 b8 gis4 e fis | % 79
	   b,2 b,4 r4 | % 80
	   e4 r4 e'4 r4 | % 81
	   dis2 b'4 r4 | % 82
	   cis4 r4 dis4 r4 | % 83
	   e8 [ (dis e cis) ] gis [ (cis dis e) ] | % 84
	   dis8 [ (cis dis b) ] gis [ (b cis dis) ] | % 85
	   e8 [ (cis dis e) ] gis, [ (e' dis cis) ] | % 86
	   dis8 [ (b cis dis) ] gis, [ (dis' cis b) ] | % 87
	   ais4 r4 r4 gis4 | % 88
	   fisis4 r4 r4 e4 | % 89
	   dis4 r4 r2 | % 90
	   r1 | % 91
	   fisis4 r4 r2 | % 92
	   gis4 r4 dis4 r4 | % 93
	   gis,2  \bar "||" e'2 | % 94
	   a2 s2 | % 95
	   b2 s2 | % 96
	   dis,2 e4 b4 | % 97
	   e,2 e' | % 98
	   a2 r2  | % 99
	   b2 e,2 | % 100
	   a,2 b2 | % 101
	   e,2 s2 \bar "|." % 102
	
}


soprano = << \sopranoOne \\ \sopranoTwo  >>
bass = << \bassOne \\ \bassTwo  >>

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
