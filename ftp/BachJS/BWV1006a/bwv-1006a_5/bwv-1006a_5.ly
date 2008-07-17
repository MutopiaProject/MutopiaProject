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
        piece = "5. Menuet II"
        mutopiatitle = "BWV 1006a - Menuet II"
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
	
 footer = "Mutopia-2008/07/17-1482"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

soprano = \relative b {
	\repeat volta 2 { % begin repeat
		b4 r4 r4 | % 1
		b4 r4 r4 | % 2
		b4 r4 r4 | % 3
		a4 r4 r4 | % 4
		e8 [ (gis) gis (b) b (e) ] | % 5
		dis8 [ (b) b (dis) dis (fis) ] | % 6
		fis8 [ gis a fis ] b4 | % 7
		a8 [ (gis) a (gis) fis (e) ] | % 8
		b4 r4 r4 | % 9
		b4 r4 r4 | % 10
		e4 r4 r4 | % 11
		e4 r4 r4 | % 12
		b8 [ (dis) dis (fis) fis (b) ] | % 13
		cis,8 [ (dis e gis) ais, fis' ] | % 14
		e8 [ (dis cis8 b) fis ais ] | % 15
		s2. | % 16
	} % end repeat
	
	
 	
	\repeat volta 2 { % begin repeat
		dis4 e8 [ dis cis b ] | % 17
		e8 [ fis gis a b gis ] | % 18
		fis8 [ (eis fis) eis dis cis ] | % 19
		fis8 [ (gis a) cis, ] fis,4 | % 20
		r8 cis' [  b' gis a fis ] | % 21
		gis8 [ cis, d b] r8 cis8 ] | % 22
		b'8 [ gis a fis] r8 eis8 ] | % 23
		fis8 [cis] r8 cis8 [ fis gis ] | % 24
		\appoggiatura gis8 a4 b8 [ a gis fis ] | % 25
		gis8 [ (a b) d,] r8 d8 ] | % 26
		cis8 [ e <dis a'>8 fis gis e ] | % 27
		dis8 [ (cis) e dis cis b ] | % 28
		<b e gis>4 a'8 [ (gis fis e) ] | %29
		fis16 [ (e16 dis8) ] <dis b'>2 | % 30
		r8 b8 [ cis a fis dis'] | % 31
		<b e>2. | % 32

	} % end repeat
    
}

bassOne =  \relative g {
	\repeat volta 2 { % begin repeat
		gis4 a8 [ gis fis e ] | % 1
		fis8 [ gis ] \appoggiatura  gis8 a2 | % 2
		gis8 [ fis a gis fis e ] | % 3
		d8 [ e ] \appoggiatura  e8 fis4 b, | % 4
		s2.*4 | %  8
		gis'4 a8 [ gis fis e ] | % 9
		fis8 [ gis ] \appoggiatura  gis8 a2 | % 10
		gis8 [ (e) e (gis) gis (b) ] | % 11
		ais8 [ b ] \appoggiatura  b8 cis4 fis, | % 12
		s2.*3 | % 15
		\appoggiatura  ais8 b2. | % 16
	} % end repeat
	

 	\repeat volta 2 { % begin repeat
		b4 r4 r4 | % 17
		b4 r4 r4 | % 18
		s2.*4 | % 22
		s2 <gis b>4 | % 23
		a4 r4 r4 | % 24
		<fis b>4 r4 r4 | % 25
		b4 r4 b4 | % 26
		a4 a4 b4 | % 27
		s2.*2 | % 29
		s4 fis2 | % 30
		s2.  | % 31
		gis2. | % 32
	} % end repeat

}
bassTwo =  \relative e, {
	\repeat volta 2 { % begin repeat
		e4 r4 r4 | % 1
		dis4 r4 r4 | % 2
		e4 r4 r4 | % 3
		b4 r4 r4 | % 4
		r4 e4 gis4 | % 5
		b4 dis4 gis4 | % 6
		dis4 b4 dis4 | % 7
		e4 b4 e,4 | % 8
		e'4 r4 r4 | % 9
		<b dis>4 r4 r4 | % 10
		cis4 r4 r4 | % 11
		fis,4 r8 e'8 [ dis cis] | % 12
		dis4 r4 r4 | % 13
		e4 cis4 fis4 | % 14
		b,4 dis,4 fis4 | % 15
		b,2. | % 16
	} % end repeat
	

 	\repeat volta 2 { % begin repeat
		a''4 r4 r4 | % 17
		gis4 e d | % 18
		cis4 gis'4 b4 | % 19
		a4 fis,4 r4 | % 20
		eis'4 r4 r4 | % 21
		r4 r4 eis4 | % 22
		r4 fis4 cis4 | % 23
		fis,4 fis' e | % 24
		dis4 r4 r4 | % 25
		e4 r4 gis | % 26
		gis4 fis4 e4 | % 27
		b4 cis dis | % 28
		e4 fis gis4 | % 29
		a4  a,2  | % 30
		gis4 a4 b4 | % 31
		e,2. | % 32
	} % end repeat

}

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
