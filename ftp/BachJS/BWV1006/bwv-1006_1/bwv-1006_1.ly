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
        piece = "1. Preludio"
        mutopiatitle = "BWV 1006 - Preludio"
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
	
 footer = "Mutopia-2008/07/13-1469"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative e'' {
    r8 e'16  [ dis ] e8 [ b gis b ] | % 1
    e,16 [ (fis e dis ] e8) [ b gis b ] | % 2
    e,16 [ b' fis b ] gis [ b a b ] gis [ b fis b ] | % 3
    e,16 [ e' dis cis ] b [ e dis cis ] b [ a gis fis ] | % 4
	e16_\markup { piano } [ b' fis b ] gis [ b a b ] gis [ b fis b ]  | % 5
	e,16 [ e' dis cis ] b [ e dis cis ] b [ a gis fis ]   | % 6
    e16_\markup { forte } [ fis gis a ] b [ cis dis e ] fis [ gis a fis ] | % 7
    gis16 [ b e, fis ] gis [ a b cis ] dis [ e cis dis ] | % 8
    e16 [ b a b ] gis [ b a b ] gis [ b fis b ] | % 9
    e,16 [ e' dis cis ] b16 [ e, cis' e, ] b' [ e, a e]  | % 10
	gis16_\markup { (piano) } [ b fis b ] gis [ b a b ] gis [ b fis b]  | % 11
	e,16 [ e' dis cis ] b16 [ e, cis' e, ] b' [ e, a e]  | % 12
    gis16_\markup { forte }  [ e e ] e16 s16 e16 [ s16 e16  s16 e16 s16 e16 ] | % 13
    s16 e16 [ s16 e16 s16 e16 s16 e16 s16 e16 s16 e16 ] | % 14
    s16 e16 [ s16 e16 s16 e16 s16 e16 s16 e16 s16 e16 ] | % 15
    s16 e16 [ s16 e16 s16 e16 s16 e16 s16 e16 s16 e16 ] | % 16
	s16 e16 s8. e16 s8. e16 s8 | % 17
    s16 e16 s8. e16 s8. e16 s8 | % 18
    s16 e16 s8. e16 s8. e16 s8 | % 19
    s16 e16 s8. e16 s8. e16 s8 | % 20
    s16 e16 s8. e16 s8. e16 s8 | % 21
    s16 e16 s8. e16 s8. e16 s8 | % 22
    s16 e16 s8. e16 s8. e16 s8 | % 23
    s16 e16 s8. e16 s8. e16 s8 | % 24
    s16 e16 s8. e16 s8. e16 s8 | % 25
    s16 e16 s8. e16 s8. e16 s8 | % 26
    s16 e16 s8. e16 s8. e16 s8 | % 27
	s16 e16 s8. e16 s8. e16 s8 | % 28
    e,16 [ fis e fis ] gis [ b e, fis ] gis [ b e, fis ] | % 29
    gis16 [ a gis a ] b [ e gis, a ] b [ e gis, a ] | % 30
    b16 [ cis b cis ] d [ gis b, cis ] d [ gis b, cis ] | % 31
    d16 [ b' gis e ] d [ b gis e ] d [ cis d b ] | % 32
    cis16 [ dis cis dis ] eis [ gis cis, dis ] eis [ gis cis, dis ] | % 33
    eis16 [ fis eis fis ] gis [ cis eis, fis ] gis [ cis eis, fis ] | % 34
    gis16 [ a gis a ] b [ eis gis, a ] b [ eis gis, a ] | % 35
    b16 [ gis' eis cis ] b' [ gis a fis ] eis [ gis cis, b ] | %36
    a16 [ cis a fis ] fis' [ dis e cis ] bis [ dis gis, fis ] | % 37
    e16 [ gis e cis ] e [ gis cis gis ] e' [ cis gis' cis, ] | % 38
    bis16 [ dis bis gis ] gis' [ (fisis) gis (fisis) ] gis [ dis e cis ] | % 39
    bis16 [ dis bis gis ] fis' [ eis fis eis ] fis [ dis e cis ] | % 40
    bis16 [ dis c gis ] a [ (gis) a (gis) ] a [ dis, e cis ] | % 41
    bis16 [ fis' cis fis ] dis [ fis cis fis] bis, [fis' dis fis] | % 42
    gis,16 [ fis' dis' fis, ] bis [fis dis' fis,] bis [fis dis' fis, ] | % 43
    gis,16 [ e' cis' e,] e' [ e, cis' e, ] e' [e, cis' e, ] | % 44
    gis,16_\markup { piano } [ fis' dis' fis, ] bis [fis  dis' fis, ] bis [fis  dis' fis, ] | % 45
	gis,16 [ e' cis' e,] e' [e,  cis' e, ] e' e,  cis' e,] | % 46
    gis,16_\markup { forte }  [ fisis' cis' fisis,] e' [fisis,  cis' fisis, ] e' [fisis,  cis' fisis,] | % 47
    gis,16_\markup { piano }  [ fisis' cis' fisis,] e' [fisis,  cis' fisis, ] e' [fisis,  cis' fisis,] | % 48
    gis,16_\markup { forte }  [ gis' cis gis] dis' [gis,  cis gis ] dis' [gis,  cis gis] | % 49
    gis,16_\markup { piano }  [ fis' bis fis] dis' [fis,  bis fis ] dis' [fis,  bis fis] | % 50
    cis16_\markup { forte }  [ cis' b a] gis [cis  gis fis ] e [gis  e dis] | % 51
    cis16 [ cis' gis fis ] e [ gis e dis ] cis [ e cis b ] | % 52
    ais16 [ fis' cis' fis,] e' [fis,  cis' fis, ] e' [fis, cis' fis,] | % 53
    ais,16 [ fis' e' fis,] cis' [fis,  e' fis, ] cis' [fis, e' fis,] | % 54
    b,16 [ b'' ais gis ] fis [ b fis e ] dis [ fis dis cis ] | % 55
    b16 [ b' fis e ] dis [ fis dis cis ] b [ dis b a ] | % 56
    gis16 [d' e d] gis [d b' d,] gis [d e d] | % 57
    gis,16 [d' e d] gis, [d' fis, d'] gis, [d' e, d'] | % 58
    cis16 [ e a gis ] a [e d e] cis [e b e] | % 59
    a,16 [ a' gis fis ] e [a, fis' a, ] e' [a, d a ] | % 60
    cis16_\markup { piano }  [e b e] cis [e d e] cis [e b e] | % 61
    a,16 [ a' gis fis ] e [ a, fis' a,] e' [a, d a] | % 62
    cis16_\markup { forte }  [ a16 a ] a 	s16  a16 [ s16 a16 s16 a16 s16 a16 ] | % 63
	s16  a16 [ s16 a16 s16 a16 s16  a16  s16 a16 s16 a16] | % 64
	s16  a16 [ s16 a16 s16 a16 s16  a16  s16 a16 s16 a16] | % 65
	s16  a16 [ s16 a16 s16 a16 s16  a16  s16 a16 s16 a16] | % 66
	s16 a16 s8. a16 s8. a16 s8  | % 67
	s16 a16 s8. a16 s8. a16 s8  | % 68
	s16 a16 s8. a16 s8. a16 s8  | % 69
	s16 a16 s8. a16 s8. a16 s8  | % 70
	s16 a16 s8. a16 s8. a16 s8  | % 71
	s16 a16 s8. a16 s8. a16 s8  | % 72
	s16 a16 s8. a16 s8. a16 s8  | % 73
	s16 a16 s8. a16 s8. a16 s8  | % 74
	s16 a16 s8. a16 s8. a16 s8  | % 75
	s16 a16 s8. a16 s8. a16 s8  | % 76
	s16 a16 s8. a16 s8. a16 s8  | % 77
	s16 a16 s8. a16 s8. a16 s8  | % 78
    a,16 [ b a b ] cis [ e a, b ] cis [ e a, b ] | % 79
    cis16 [ d cis d ] e [ a cis, d ] e [ a cis, d ] | % 80
    e16 [ fis e fis ] g [ cis e, fis ] g [ cis e, fis ] | % 81
    g16 [ e' cis d ] e [ cis ais b ] cis [ ais fis e ] | % 82
    d16 [ cis b cis ] d [ fis b, cis ] d [ fis b, cis ] | % 83
    d16 [ e d e ] fis [ b d, e ] fis [ b d, e ] | % 84
    fis16 [ gis fis gis ] a [ dis fis, gis ] a [ dis fis, gis ] | % 85
    a16 [ fis' dis e ] fis [ dis bis cis ] dis [ bis gis fis ] | % 86
    eis16 [ b'' gis a ] b [ gis eis fis ] gis [ eis cis b ] | % 87
    a16 [ cis' a b ] cis [ a fis gis ] a [ fis dis cis ] | % 88
    b16 [ d' b cis ] d [ b gis a ] b [ gis eis gis ] | % 89
    cis,16 [ dis cis dis ] eis [ gis cis, dis ] eis [ gis cis, dis ] | % 90
    eis16 [ fis eis fis ] gis [ b eis, fis ] gis [ b eis, fis ] | % 91
    gis16 [ a gis a ] b [ d gis, a ] b [ d gis, a ] | % 92
    b16 [ d b gis ] eis [ b' gis eis ] cis [ b' a gis ] | % 93
    fis16 [ gis a fis ] b, [ a' gis fis ] cis [ gis' fis eis ] | % 94
    d16 [ e fis d ] gis, [ fis' e d ] ais [ e' d cis ] | % 95
    b16 [ cis d b ] eis, [ d' cis b ] fis [ cis' b a ] | % 96
    gis16 [ a b a ] gis [ b a b ] gis [ b fis b ] | % 97
    eis,16 [ fis gis a ] b [eis, d' eis, ] cis' [eis, b' eis, ] | % 98
    fis16 [ a fis cis ] a [cis fis cis ] a' [ cis, fis cis] | % 99	
    eis16 [ gis eis cis ] eis [ gis cis gis ] eis' [ cis gis' b, ] | % 100
    a16 [ cis a fis ] a [ cis fis cis ] a' [ fis cis' fis, ] | % 101
    eis16 [ gis eis cis ] cis' [ (bis) cis (bis) ] cis [ gis a fis ] | % 102
	eis16 [ gis eis cis ] b' [ (ais) b (ais) ] b [ gis a fis ] | % 103
    eis16 [ gis eis cis ] d [ (cis) d (cis) ] d [ gis, a fis ] | % 104
    eis16 [ (gis cis) b' ] b [ (gis) a (fis) ] eis [ gis cis, b ] | % 105
    a16 [ (cis fis) cis' ] cis [ (a) b (gis) ] fis [ a d, cis ] | % 106
    b16 [ d g, fis ] eis [ gis cis, b ] a [ cis fis gis ] | % 107
    a16 [fis b fis ] cis' [fis, d' fis, ] cis [ fis gis eis ] | % 108
    fis16 [(a) gis (a)] a [(a) gis (a)] fis [(a) e (a)] | % 109
    dis,16 [(a') e (a)] fis [(a) gis (a)] a [(a) fis (a)] | % 110
    gis16 [ a gis fis ] e [(e') dis (e)] cis [(e) b (e)] | % 111
    ais,16 [(e') b (e)] cis [(e) dis (e)] e [(e) cis (e)] | % 112
    dis16 [ e dis cis ] b [ cis dis e ] fis [ gis a fis ] | % 113
    b16 [b, a b ] gis [(b) fis (b)] e, [(b') d, (b')] | % 114
    cis,16 [ e fis gis ] a [ b cis d ] e [ fis gis e ] | % 115
    a16 [a, gis a] fis [(a) e (a)] dis, [(a') cis, (a')] | % 116
    b,16 [ dis e fis ] gis [ a b cis ] dis [ e fis dis ] | % 117
    gis16 [e, d e ] cis [(e) b (e)] a, [(e') gis, (e')] | % 118
    a,16 [ (e' cis') b ] cis [ e a gis ] a [ fis cis e ] | % 119
    b,16 [ (fis' dis') cis ] dis [ fis a gis ] a [ fis dis fis ] | % 120
    b,,16 [ (gis' b) a ] b [ e gis fis ] gis [ e b e ] | % 121
    b,16 [ (ais' cis) b ] cis [ e ais gis ] ais [ e cis e ] | % 122
    dis16 [ b' ais gis ] fis [ b fis e ] dis [ fis dis cis ] | % 123
    b16 [ b' a gis ] fis [ a fis e ] dis [ fis dis cis ] | % 124
    b16 [ a' gis fis ] e [ gis e dis ] cis [ e cis b ] | % 125
    a16 [ gis' fis e ] dis [ fis dis cis ] b [ dis b a ] | % 126
    gis16 [ e' cis b ] a [ cis a gis ] fis [ a fis e ] | % 127
    dis16 [ fis a cis ] b [ dis fis gis ] a [ gis a fis ] | % 128
    gis16 [ e gis b ] e [ b gis e ] b [ (fis' e') dis ] | % 129
    e16 [ b gis e ] d [(e) cis (e)] d [(e) b (e)] | % 130
    cis16 [e a e] cis [(e) b (e)] cis [(e) a, (e')] | % 131
    b16 [e gis e] b [(e) a, (e')] b [(e) gis, (e')] | % 132
    a,16 [e' fis e ] dis [(e) e] (e) fis [(e) gis (e)] | % 133
    <fis, dis' a'>4. b'8 <b, gis'>4 | % 134
    a,16 [a'' (gis a32 fis) ] fis4. e8 | % 135
    e16 [e' dis cis ] b [dis a dis] gis, [dis' fis, dis'] | % 136
    e,16 [ e dis cis ] b [ e a, e'] gis, [e' fis, e'] | % 137
	e,16 [( gis b dis)] e [( gis b dis)] e8 r8 \bar "|." % 138
}

melodyTwo =  \relative d'' {
	s1*3/4*12 | % 12
    s4 dis16 [ s16 e16 s16 fis16 s16 dis16 s16 ] | % 13
    e16 [ s16 gis16 s16 fis16 s16 gis16 s16 a16 s16 fis16] s16  | % 14
    gis16_\markup { piano } [ s16 e16 s16 dis16 s16 e16 s16 fis16 s16 dis16] s16  | % 15
    e16 [ s16 gis16 s16 fis16 s16 gis16 s16 a16 s16 fis16] s16  | % 16
    gis16_\markup { forte }  [ s16 gis16 e ] gis [ s16 gis16 e ] gis [ s16 gis16 e ] | % 17
    gis16 [ s16 gis16 dis ] gis [ s16 gis16 dis ] gis [ s16 gis16 dis ]  | % 18
    gis16 [ s16 gis16 d ] gis [ s16 gis16 d ] gis [ s16 gis16 d ] | % 19
    a'16 [ s16 a16 cis, ] a' [ s16 a16 cis, ] a' [ s16 a16 cis, ] | % 20
    a'16 [ s16 a16 b, ] a' [ s16 a16 b, ] a' [ s16 a16 b, ] | % 21
    gis'16 [ s16 gis16 b, ] gis' [ s16 gis16 b, ] gis' [ s16 gis16 b, ] | % 22
    gis'16 [ s16 gis16 a, ] gis' [ s16 gis16 a, ] gis' [ s16 gis16 a, ] | % 23
    fis'16 [ s16 fis16 a, ] fis' [ s16 fis16 a, ] fis' [ s16 fis16 a, ] | % 24
    fis'16 [ s16 fis16 gis, ] fis' [ s16 fis16 gis, ] fis' [ s16 fis16 gis, ]  | % 25
    e'16 [ s16 e16 gis, ] e' [ s16 e16 gis, ] e' [ s16 e16 gis, ]  | % 26
    e'16 [ s16 e16 fis, ] e' [ s16 e16 fis, ] e' [ s16 e16 fis, ]  | % 27    
	dis'16 [ s16 dis16 fis, ] dis' [ s16 dis16 fis, ] dis' [ s16 dis16 fis, ]  | % 28
    s1*3/4*34 | % 62
 	s4 gis16 [ s16 a16 s16 b16 s16 gis16 ] s16  | % 63
    a16 [s16  cis16 s16  b16 s16  cis s16  d16 s16  b ] s16 | % 64
    cis16_\markup { forte } [ s16 a16 s16  gis16 s16  a16 s16  b16  s16  gis16 ] s16 | % 65
    a16 [ s16 cis16 s16  b16 s16  cis16 s16  d16 s16  b16 ] s16 | % 66
	cis16 [ s16 cis16 a ] cis [ s16 cis16 a] cis [ s16 cis16 a ] | % 67
	cis16 [ s16 cis16 gis ] cis [ s16 cis16 gis] cis [ s16 cis16 gis ] | % 68
	cis16 [ s16 cis16 g ] cis [ s16 cis16 g] cis [ s16 cis16 g ] | % 69
	d'16 [ s16 d16 fis, ] d' [ s16 d16 fis,] d' [ s16 d16 fis, ] | % 70
	d'16 [ s16 d16 e, ] d' [ s16 d16 e,] d' [ s16 d16 e, ] | % 71
	cis'16 [ s16 cis16 e, ] cis' [ s16 cis16 e, ] cis' [ s16 cis16 e, ] | % 72
	cis'16 [ s16 cis16 d, ] cis' [ s16 cis16 d, ] cis' [ s16 cis16 d, ] | % 73
	b'16 [ s16 b16 d, ] b' [ s16 b16 d, ] b' [ s16 b16 d, ] | % 74
	b'16 [ s16 b16 cis, ] b' [ s16 b16 cis, ] b' [ s16 b16 cis, ] | % 75
	a'16 [ s16 a16 cis, ] a' [ s16 a16 cis, ] a' [ s16 a16 cis, ] | % 76
	a'16 [ s16 a16 b, ] a' [ s16 a16 b, ] a' [ s16 a16 b, ] | % 77
	gis'16 [ s16 gis16 b, ] gis' [ s16 gis16 b, ] gis' [ s16 gis16 b, ] | % 78
	s1*3/4*55 | % 133
    b4. s8 e4 | % 134
	s4 b'2 | % 135
	s1*3/4*3   \bar "|." % 138
}


melody = << \melodyOne \\ \melodyTwo >>

% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key e \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
