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
        piece = "7. Gigue"
        mutopiatitle = "BWV 1006a - Gigue"
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
	
 footer = "Mutopia-2008/07/17-1484"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

soprano =  \relative b' {
	\repeat volta 2 { % begin repeat
		\partial 8 b8_\markup { (f) }  | % 0
    gis8 [(e) b ] s4. | % 1
    dis16 [ (e fis8) fis ] s4. | % 2
    s1*6/8 | % 3
    s1*6/8 | % 4
    s4. cis16 [ e a e cis a ] | % 5
    s4_\markup { piano } s8 cis16 [ e a e cis a ] | % 6
    dis16_\markup { forte } [ fis16 a fis dis b ] r16 a'16 [ gis fis gis e ] | % 7
    b16 [ (dis fis8) a ] gis16 [ fis e fis gis e ] |  % 8
    ais,16 [ (cis e8) gis ] fis16 [ e dis cis b a ] | % 9
    gis16 [(b dis8) fis ] e16 [ dis cis dis e cis ] | % 10
    s4 s8  e,16 [ gis cis dis e fis ] | % 11
    gis16 [ fis e dis cis e ] b' [ (ais gis fis e dis) ] | % 12
    e16 [ (dis e8) e ] r4 r8 | % 13
    ais,16 [ (cis <cis e>8) <cis e>8 ] r4 r8 | % 14
    r16  e[ (dis cis b ais) ] fis'8 [ e16 dis cis dis ] | % 15
    b4. b4 s8 | % 16

	} % end repeat
	

 	\repeat volta 2 { % begin repeat
	\partial 8 fis'8 | % 
    dis8 [ b fis16 gis ] a [ b cis dis e fis ] | % 17
    gis16 [ (a b8) b ] d,16 [ (cis d8) b' ] | % 18
    eis,,16 [ fis gis a b d ] cis [ dis eis fis gis b ]  | % 19
    a16 [ (gis) b (a) gis (fis) ] gis8 [ cis, gis' ] | % 20
    a16 [ fis cis fis a fis ] d [ b fis b d b ] | % 21
    gis'16 [ e b e gis e ] cis [ a e a cis a ] | % 22
    fis'16 [ e fis gis a b ] cis,8 [ d16 cis b cis ] \clef bass | % 23
    a4. <cis, e a>4 cis'8 | % 24
    r16 fis,16 [ a cis b a ] r16 b16 [ dis fis e dis ] | % 25
    r16 e,16 [ gis b a gis ] r16 a16 [ cis e dis cis ] \clef treble |  %26
    b16 [ dis fis a gis fis ] <e b'>8 [ a16 gis fis e ] | % 27
    dis16 [ cis dis e fis dis ] b [ (cis dis e fis gis) ] | % 28
    a16 [ (gis <fis a>8) <fis a> ] r4 r8 | % 29
    dis16 [ (fis <fis a>8) <fis a> ] r4 r8 | % 30
    r16  a [(gis fis e dis) ] <e b'>8 [ a16 gis <dis fis> gis ] | % 31
    e4. <gis, b e>4 s8 \bar "|." % 32

	} % end repeat

}
bassOne =  \relative e {
	\repeat volta 2 { % begin repeat
 	\partial 8 s8 | % 0
    s4. e16 [ fis gis a b cis ] | % 1
    s4. a16 [ (gis a8) fis' ] | % 2
    b,,16 [ cis dis e fis gis ] a [ gis a cis b a ] | % 3
    gis16 [ fis gis a b gis ] \appoggiatura fis 8 e8. [ fis16 gis a ] | % 4
    b16 [ gis e gis b d ] s4. | % 5
    b16 [ gis e gis b d ] s4. | % 6
    s2.*4 | % 10
    fis,16 [ cis' b cis dis b ] s4. | % 11
    s2.*4 | % 15
	s4. <dis, fis>4 s8
	} % end repeat
	

 	\repeat volta 2 { % begin repeat
	\partial 8 s8 | % 
    s2.*14 | % 31
    s4. b'8 s4 | % 31
    s2. \bar "|." % 32

	} % end repeat

}
bassTwo =  \relative e, {
	\repeat volta 2 { % begin repeat
 	\partial 8 r8 | % 0
    e4 r8 gis4 r8  | % 1
    fis4 r8 e4 r8 | % 2
    dis4 r8 b4 r8 | % 3
    e4 r8 r4 r8 | % 4
    gis4 r8 a4 r8 | % 5
    gis4 r8 a4 r8 | % 6
    fis4 b8 e4 e,8 | % 7
    dis8 [ dis dis ] e4 r8 |  % 8
    cis8 [ cis cis ] dis4 r8  | % 9
    b8 [ b b ] cis [ e gis ]  | % 10
    ais8 [ dis b ] cis4 r8  | % 11
    e8 [ cis e ] fis [ ais b ]  | % 12
	cis16 [ ( b cis8) cis] cis,16 [ e gis e cis e ] | % 13
    fis,4 r8 ais16 [ cis e cis ais cis ] | % 14
    dis,4 r8 dis'8 [ e fis ] | % 15
    b,8 [ fis16 e dis cis ] b4 s8 | % 16

	} % end repeat
	

 	\repeat volta 2 { % begin repeat
	\partial 8 r8 | % 
    b'4 r8 b,4 r8 | % 17
    e4 r8 gis4 r8 | % 18
    b4 r8 eis4 r8  | % 19
    fis8 [ e d ] cis [ eis cis ] | % 20
    fis4 r8 b,4 r8 | % 21
    e4 r8 a,4 r8 | % 22
    d4 r8 e4 r8 | % 23
    a,8 [ e16 d cis b ] a4 r8 | % 24
    dis'4 r8 gis4 r8 | % 25
    cis,4 r8 fis4 r8 |  %26
    b4 a8 gis4 a8| % 27
    b8 [ fis e ] dis [ cis b ] | % 28
    fis'4 r8 fis16 [ a cis a fis a ] | % 29
    b,4 r8 dis16 [ fis b fis dis fis ] | % 30
    gis,4 r8  gis'8 [ a b ] | % 31
    e,8 [ b16 a gis fis ] e4 s8 \bar "|." % 32

	} % end repeat

}

bass = << \bassOne \\ \bassTwo >>

% The score definition

\score {
        \new PianoStaff <<
           \set PianoStaff.instrumentName = "Clavier  "
		   \set PianoStaff.midiInstrument = "harpsichord"
           \new Staff = "upper"  { \clef treble \key e \major \time 6/8 \soprano  }
           \new Staff = "lower"  { \clef bass \key e \major \time 6/8 \bass }
     >>
	\layout { }
 	 \midi { }
}
