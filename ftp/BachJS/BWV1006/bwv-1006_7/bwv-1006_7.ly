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
        piece = "7. Gigue"
        mutopiatitle = "BWV 1006 - Gigue"
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
	
 footer = "Mutopia-2008/07/13-1475"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melody =  \relative b' {
	\repeat volta 2 { % begin repeat
 	\partial 8 b'8 | % 0
    gis8 [(e) b ] e,16 [ fis gis a b cis ] | % 1
    dis16 [ (e fis8) fis ] a,16 [ (gis a8) fis' ] | % 2
    b,,16 [ cis dis e fis gis ] a [ gis a cis b a ] | % 3
    gis16 [ fis gis a b gis ] e8. [ fis16 gis a ] | % 4
    b16 [ gis e gis b d ] cis [ e a e cis a ] | % 5
    b16 [ gis e gis b d ] cis [ e a e cis a ] | % 6
    dis16 [ fis a fis dis b ] e [ a gis fis gis e ] | % 7
    b16 [ (dis fis8) a ] gis16 [ fis e fis gis e ] |  % 8
    ais,16 [ (cis e8) gis ] fis16 [ e dis cis b a ] | % 9
    gis16 [(b dis8) fis ] e16 [ dis cis dis e cis ] | % 10
    fis,16 [ cis' b cis dis b ] e, [ gis cis dis e fis ] | % 11
    gis16 [ fis e dis cis e ] b' [ (ais gis fis e dis) ] | % 12
    e16 [ (dis e8) e ] cis,16 [ e gis e cis e ] | % 13
    ais16 [ (cis e8) e ] ais,,16 [ cis fis cis ais cis ] | % 14
    fis16 [ e' (dis cis b ais) ] fis'8 [ e16 dis cis dis ] | % 15
    b8 [ fis16 e dis cis ] b4 s8 | % 16

	} % end repeat
	

 	\repeat volta 2 { % begin repeat
	\partial 8 fis''8 | % 
    dis8 [ b fis16 gis ] a [ b cis dis e fis ] | % 17
    gis16 [ (a b8) b ] d,16 [ (cis d8) b' ] | % 18
    eis,,16 [ fis gis a b d ] cis [ dis eis fis gis b ]  | % 19
    a16 [ (gis) b (a) gis (fis) ] gis8 [ cis, gis' ] | % 20
    a16 [ fis cis fis a fis ] d [ b fis b d b ] | % 21
    gis'16 [ e b e gis e ] cis [ a e a cis a ] | % 22
    fis'16 [ e fis gis a b ] cis,8 [ d16 cis b cis ] | % 23
    a8 [ e16 d cis b ] a4 cis'8 | % 24
    dis,16 [ fis a cis b a ] gis [ b dis fis e dis ] | % 25
    cis,16 [ e gis b a gis ] fis [ a cis e dis cis ] |  %26
    b16 [ dis fis a gis fis ] b8 [ a16 gis fis e ] | % 27
    dis16 [ cis dis e fis dis ] b [ (cis dis e fis gis) ] | % 28
    a16 [ (gis a8) a ] fis,16 [ a cis a fis a ] | % 29
    dis16 [ (fis a8) a ] dis,,16 [ fis b fis dis fis ] | % 30
    b,16 [ a'' (gis fis e dis) ] b'8 [ a16 gis fis gis ] | % 31
    e8 [ b16 a gis fis ] e4 s8 \bar "|." % 32

	} % end repeat

}

% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key e \major \time 6/8 \melody  }
    >>
	\layout { }
 	 \midi { }
}
