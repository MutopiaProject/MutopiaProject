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
        piece = "1. Prélude"
        mutopiatitle = "BWV 1006a - Prélude"
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
	
 footer = "Mutopia-2008/07/13-1476"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

sopranoOne = \relative e' {
    r8_\markup { (forte) } e'16  [ dis ] e8 [ b gis b ] | % 1
    e,16 [ (fis e dis ] e8) [ b gis b ] | % 2
    s1*3/4 | % 3
    e,16 [ e' dis cis ] b [ e dis cis ] s4 | % 4
	s1*3/4_\markup { piano }  | % 5
	e,16 [ e' dis cis ] b [ e dis cis ] s4  | % 6
    s4_\markup { forte } b16 [ cis dis e ] fis [ gis a fis ] | % 7
    gis16 [ b e, fis ] gis [ a b cis ] dis [ e cis dis ] | % 8
    e16 [ b a b ] gis [ b a b ] gis [ b fis b ] | % 9
    e,16 [ e' dis cis ] b16 [ e, cis' e, ] b' [ e, a e]  | % 10
	gis16_\markup { piano } [ b fis b ] gis [ b a b ] gis [ b fis b]  | % 11
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
	s2. | % 29
    s4 b16 [ e gis, a ] b [ e gis, a ] | % 30
    b16 [ cis b cis ] d [ gis b, cis ] d [ gis b, cis ] | % 31
    d16 [ b' gis e ] d [ b gis e ] s4 | % 32
    s2. | % 33
    s2. | % 34
    s4 b'16 [ eis gis, a ] b [ eis gis, a ] | % 35
    b16 [ gis' eis cis ] b' [ gis a fis ] eis [ gis cis, b ] | %36
    s4 fis'16 [ dis e cis ] bis [ dis gis, fis ] | % 37
    s2 e'16 [ cis gis' cis, ] | % 38
    bis16 [ dis bis gis ] gis' [ (fisis) gis (fisis) ] gis [ dis e cis ] | % 39
    bis16 [ dis bis gis ] fis' [ eis fis eis ] fis [ dis e cis ] | % 40
    bis16 [ dis c gis ] a [ (gis) a (gis) ] s4 | % 41
    s2. | % 42
    s2. | % 43
    s2. | % 44
    s4_\markup { piano } s2 | % 45
	s2. | % 46
    s4_\markup { forte } s2 | % 47
    s4_\markup { piano } s2 | % 48
    s4_\markup { forte } s2 | % 49
    s4_\markup { piano } s2 | % 50
    s4_\markup { forte } s2 | % 51
    s2. | % 52
    s2. | % 53
    s4 \p s2 | % 54
    dis'16 \f [ b' ais gis ] fis [ b fis e ] dis [ fis dis cis ] | % 55
    b16 [ b' fis e ] dis [ fis dis cis ] b [ dis b a ] | % 56
    r16 d16 [ e d] gis [d b' d,] gis [d e d] | % 57
    s2.| % 58
    cis16 [ e a gis ] a [e d e] cis [e b e] | % 59
    a,16 [ a' gis fis ] e [a, fis' a, ] e' [a, d a ] | % 60
    cis16_\markup { piano }  [e b e] cis [e d e] cis [e b e] | % 61
    a,16 [ a' gis fis ] e [ a, fis' a,] e' [a, d a] | % 62
    cis16_\markup { forte }  [ a16 a ] a 	s16  a16 [ s16 a16 s16 a16 s16 a16 ] | % 63
	s16  a16 [ s16 a16 s16 a16 s16  a16  s16 a16 s16 a16] | % 64
	s16  a16 [ s16 a16 s16 a16 s16  a16  s16 a16 s16 a16] | % 65
	s16  a16 [ s16 a16 s16 a16 s16  a16  s16 a16 s16 a16] \clef bass | % 66
	s16 \f a16 s8. a16 s8. a16 s8  | % 67
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
    \clef treble eis16 [ b'' gis a ] b [ gis eis fis ] gis [ eis cis b ] | % 87
    a16 [ cis' a b ] cis [ a fis gis ] a [ fis dis cis ] | % 88
    b16 [ d' b cis ] d [ b gis a ] b [ gis eis gis ] | % 89
    cis,16 [ dis cis dis ] eis [ gis cis, dis ] eis [ gis cis, dis ] | % 90
    eis16 [ fis eis fis ] gis [ b eis, fis ] gis [ b eis, fis ] | % 91
    gis16 [ a gis a ] b [ d gis, a ] b [ d gis, a ] | % 92
    b16 [ d b gis ] eis [ b' gis eis ] cis [ b' a gis ] | % 93
    r16 gis16 [ a fis ] r16 a16 [ gis fis ] r16 gis16 [ fis eis ] | % 94
    r16 eis16 [ fis d ] r16 fis16 [ e d ] r16 e16 [ d cis] | % 95
    r16 cis16 [ d b ] r16  d16 [cis b ] r16  cis16 [ b a ] | % 96
    s2. | % 97
    s2. | % 98
    s2. | % 99	
    s2 eis'16 [ cis gis' b, ] | % 100
    s4 a16 [ cis fis cis ] a' [ fis cis' fis, ] | % 101
    eis16 [ gis eis cis ] cis' [ (bis) cis (bis) ] cis [ gis a fis ] | % 102
	eis16 [ gis eis cis ] b' [ (ais) b (ais) ] b [ gis a fis ] | % 103
    eis16 [ gis eis cis ] d [ (cis) d (cis) ] d [ gis, a fis ] | % 104
    eis16 [ (gis cis) b' ] b [ (gis) a (fis) ] eis [ gis cis, b ] | % 105
    a16 [ (cis fis) cis' ] cis [ (a) b (gis) ] fis [ a d, cis ] | % 106
    s2. | % 107
    s2. | % 108
    s2. | % 109
    s2. | % 110
    s2 s16 e16 [ s16 e] | % 111
    s16 [e16 s16 e16 s16 e16 s16 e16 s16 e16 s16 e16 ] | % 112
    dis16 [ e dis cis ] b [ cis dis e ] fis [ gis a fis ] | % 113
    s2. | % 114
	s4 a,16 [ b cis d ] e [ fis gis e ] | % 115
    s2. | % 116
    s2 dis16 [e fis dis] | % 117
    s2. | % 118
    s4 cis16 [ e a gis ] a [ fis cis e ] | % 119
    s4 dis16 [ fis a gis ] a [ fis dis fis ] | % 120
    r16 gis,16 [ (b) a ] b [ e gis fis ] gis [ e b e ] | % 121
    r16 ais,16 [ (cis) b ] cis [ e ais gis ] ais [ e cis e ] | % 122
    dis16 [ b' ais gis ] fis [ b fis e ] dis [ fis dis cis ] | % 123
    b16 [ b' a gis ] fis [ a fis e ] dis [ fis dis cis ] | % 124
    b16 [ a' gis fis ] e [ gis e dis ] cis [ e cis b ] | % 125
    a16 [ gis' fis e ] dis [ fis dis cis ] b [ dis b a ] | % 126
    gis16 [ e' cis b ] a [ cis a gis ] s4 | % 127
    s4 b16 [ dis fis gis ] a [ gis a fis ] | % 128
    gis16 [ e gis b ] e [ b gis e ] r16 fis [( e') dis ] | % 129
    e16 [ b gis e ] d [(e) cis (e)] d [(e) b (e)] | % 130
    cis16 [e a e] cis [(e) b (e)] cis [(e) a, (e')] | % 131
    b16 [e gis e] b [(e) a, (e')] b [(e) gis, (e')] | % 132
    a,16 [e' fis e ] s16 e16 [ s16 e16 s16 e16 s16 e16 ] | % 133
    <dis a'>4. b'8 <e, gis>4 | % 134
    r16 a16 [(gis a32 fis) ] fis4.\trill e8 | % 135
    e16 [e' dis cis ] b [dis a dis] gis, [dis' fis, dis'] | % 136
    e,16 e [dis cis ] b [ e a, e'] gis, [e' fis, e'] | % 137
	s4 e16 [( gis b dis)] e [ b gis e ] | % 138
	r1*3/4 \fermata \bar "|." % 139
}

sopranoTwo =  \relative d' {
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
    cis16_\markup { piano } [ s16 a16 s16  gis16 s16  a16 s16  b16  s16  gis16 ] s16 | % 65
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
	s1*3/4*32 | % 110
	s4 e16 [e' dis ] e cis16 [ s16 b16 ] s16 | % 111
	ais16 [s16 b s16 cis s16 dis s16 e s16 cis s16] | % 112
	s1*3/4*20
	s4 dis16 [s16 e16 s16 fis16 s16 gis16 ] s16 | % 133
	s1*3/4 | % 134
	cis,4 dis2 | % 135
	r1*3/4*4 \bar "|." % 139
}
soprano = << \sopranoOne \\ \sopranoTwo >>

bassOne = \relative e {
	s1*3/4*2 | % 2
	e16 [ b' fis b ] gis [ b a b ] gis [ b fis b ] | % 3
	s2 b16 [ a gis fis ] | % 4	
	e16[ b' fis b ] gis [ b a b ] gis [ b fis b ]  | % 5
	s2 b16 [ a gis fis ] | % 6
	e16 [ fis gis a ] s2 | % 7
	s1*3/4 | % 8
 	s1*3/4 | % 9
	s1*3/4 | % 10
	s1*3/4 | % 11
	s1*3/4 | % 12
	s1*3/4 | % 13
	s1*3/4 | % 14
	s1*3/4 | % 15
	s1*3/4 | % 16
	s1*3/4 | % 17
	s1*3/4 | % 18
	s1*3/4 | % 19
	s1*3/4 | % 20
	s1*3/4 | % 21
	s1*3/4 | % 22
	s1*3/4 | % 23
	s1*3/4 | % 24
	s1*3/4 | % 25
	s1*3/4 | % 26
	s1*3/4 | % 27
	s1*3/4 | % 28
	e16 [ fis e fis ] gis [ b e, fis ] gis [ b e, fis ] | % 29
	gis16 [ a gis a ] s2 | % 30
	s1*3/4 | % 31
	s2 d,16 [ cis d b ]  | % 32
    cis16 [ dis cis dis ] eis [ gis cis, dis ] eis [ gis cis, dis ] | % 33
    eis16 [ fis eis fis ] gis [ cis eis, fis ] gis [ cis eis, fis ] | % 34
	gis16 [ a gis a ] s2 | % 35
	s1*3/4 | % 36
	a16 [ cis a fis ] s2 | % 37
	e16 [ gis e cis ] e [ gis cis gis ] s4| % 38
	s1*3/4 | % 39
	s1*3/4 | % 40
	s2 a16 [ dis, e cis ] | % 41
	bis16 [ fis' cis fis ] dis [ fis cis fis] bis, [fis' dis fis] | % 42
    r16 fis [ dis' fis, ] bis [fis dis' fis,] bis [fis dis' fis, ] | % 43
    r16 e [ cis' e,] e' [ e, cis' e, ] e' [e, cis' e, ] | % 44
    r16 fis [ dis' fis, ] bis [fis  dis' fis, ] bis [fis  dis' fis, ] | % 45
	r16 e [ cis' e,] e' [e,  cis' e, ] e' e,  cis' e,] | % 46
    r16 fisis [ cis' fisis,] e' [fisis,  cis' fisis, ] e' [fisis,  cis' fisis,] | % 47
    r16 fisis [ cis' fisis,] e' [fisis,  cis' fisis, ] e' [fisis,  cis' fisis,] | % 48
    r16 gis [ cis gis] dis' [gis,  cis gis ] dis' [gis,  cis gis] | % 49
    r16 fis [ bis fis] dis' [fis,  bis fis ] dis' [fis,  bis fis] | % 50
    e16 [ cis' b  a] gis [cis  gis fis ] e [gis  e dis] | % 51
    cis16 [ cis' gis fis ] e [ gis e dis ] cis [ e cis b ] | % 52
    r16 fis' [ cis' fis,] e' [fis,  cis' fis, ] e' [fis, cis' fis,] | % 53
	r16 fis [ cis' fis,] e' [fis,  cis' fis, ] e' [fis, cis' fis,] | % 54
	s1*3/4*3 | % 57
	gis16 [d' e d] gis, [d' fis, d'] gis, [d' e, d'] | % 58
	s1*3/4*38 | % 96
	gis,16 [ a b a ] gis [ b a b ] gis [ b fis b ] | % 97
    eis,16 [ fis gis a ] b [eis, d' eis, ] cis' [eis, b' eis, ] | % 98
    s16 a16 [ fis cis ] a [cis fis cis ] a' [ fis cis' fis, ] | % 99	
	eis16 [ gis eis cis ] eis [ gis cis gis ] s4 | % 100
	a16 [ cis a fis ] s2  | % 101
	s1*3/4*5 | % 106
	b16 [ d g, fis ] eis [ gis cis, b ] a [ cis fis gis ] | % 107
	a16 [fis b fis ] cis' [fis, d' fis, ] cis [ fis gis eis ] | % 108
    fis16 [a gis a] a [a gis a fis a e a] | % 109
    dis,16 [a' e a fis a gis a a a fis a] | % 110
	gis16 [ a gis fis ] s2 | % 111
	s1*3/4*2 | % 113
	b'16 [b, a b ] gis [(b) fis (b)] e, [(b') d, (b')] | % 114
	cis,16 [ e fis gis ] s2 | % 115
	a'16 [a, gis a] fis [(a) e (a)] dis, [(a') cis, (a')] | % 116
	b,16 [dis e fis] gis [a b cis] s4 | % 117
	gis'16 [e, d e ] cis [(e) b (e)] a, [(e') gis, (e')] | % 118
	r16 e16 [ (cis') b ] s2 | % 119
	r16 fis16 [( dis') cis ] s2 | % 120
	s1*3/4*6 | % 126
	s2 fis,16 [ a fis e ] | % 127
    dis16 [ fis a cis ] s2 | % 128
	s1*3/4*5 | % 133
	<b, fis' b>4. r8 <e b'>4 | % 134
	e4 b' a | % 135
	gis4 s2 | % 136
	s1*3/4 | % 137
	e16 [( gis b dis)] s2 | % 138
	s1*3/4 \bar "|." % 139

}

bassTwo = \relative d {
    e,4 r4 r4 | % 1
    r1*3/4 | % 2
    e4 r4 r4 | % 3
    r1*3/4 | % 4
	e4 r4 r4 | % 5
    r1*3/4 | % 6
    e4 r4 r4 | % 7
    r1*3/4 | % 8
	e4 r4 r4 | % 9
    r1*3/4 | % 10
    e4 r4 r4 | % 11
    r1*3/4 | % 12
	e4 r4 r4 | % 13
    r1*3/4 | % 14
    e4 r4 r4 | % 15
    r1*3/4 | % 16
    e4 r4 r4 | % 17
	r1*3/4 | % 18
	r1*3/4 | % 19
	r1*3/4 | % 20
	r1*3/4 | % 21
	r1*3/4 | % 22
	r1*3/4 | % 23
	r1*3/4 | % 24
	r1*3/4 | % 25
	r1*3/4 | % 26
	r1*3/4 | % 27
	r1*3/4 | % 28
    e4 r4 r4 | % 29
    e4 r4 r4 | % 30
    gis4 r4 r4 | % 31
    gis4 r4 r4 | % 32
	cis,4 r4 r4 | % 33
    cis4 r4 r4 | % 34
    eis'4 r4 r4 | % 35
    eis4 r4 r4 | % 36
    fis,4 r4 r4 | % 37
    cis4 r4 r4 | % 38
	gis'4 r4 r4 | % 39
	gis4 r4 r4 | % 40
	gis4 r4 r4 | % 41
	r1*3/4 | % 42
	gis4 r4 r4 | % 43
	gis4 r4 r4 | % 44
	gis4 r4 r4 | % 45
	gis4 r4 r4 | % 46
	gis4 r4 r4 | % 47
	gis4 r4 r4 | % 48
	gis4 r4 r4 | % 49
	gis4 r4 r4 | % 50
	cis,4 r4 r4 | % 51
	r1*3/4 | % 52
	ais'4 r4 r4 | % 53
	ais4 r4 r4 | % 54
	b4 r4 r4 | % 55
	r1*3/4 | % 56
	gis'4 r4 r4 | % 57
	e,4 r4 r4 | % 58
	a4 r4 r4 | % 59
	r1*3/4 | % 60
	a4 r4 r4 | % 61
	r1*3/4 | % 62
	a4 r4 r4 | % 63
	r1*3/4 | % 64
	a4 r4 r4 | % 65
	r1*3/4 | % 66
	a4 r4 r4 | % 67
	r1*3/4 | % 68
	r1*3/4 | % 69
	r1*3/4 | % 70
	r1*3/4 | % 71
	r1*3/4 | % 72
	r1*3/4 | % 73
	r1*3/4 | % 74
	r1*3/4 | % 75
	r1*3/4 | % 76
	r1*3/4 | % 77
	r1*3/4 | % 78
	a,4 r4 r4 | % 79
	a4 r4 r4 | % 80
	cis4 r4 r4 | % 81
	ais'4 r4 r4 | % 82
	b,4 r4 r4 | % 83
	b4 r4 r4 | % 84
	a4 r4 r4 | % 85
	bis'4 r4 r4 | % 86
	cis4 r4 r4 | % 87
	fis,4 r4 r4 | % 88
	b4 r4 r4 | % 89
	b4 r4 r4 | % 90
	gis4 r4 r4 | % 91
	eis'4 r4 r4 | % 92
	r4 cis4 eis4 | % 93
	fis4 b,4 cis4 | % 94
	d4 gis,4 ais4 | % 95
	b4 eis4 fis4 | % 96
	d4 r4 r4 | % 97
	cis4 r4 r4 | % 98
	fis,4 r4 r4 | % 99
	cis4 r4 r4 | % 100
	cis4 r4 r4 | % 101
	cis4 r4 r4 | % 102
	cis4 r4 r4 | % 103
	cis4 r4 r4 | % 104
	cis4 r4 r4 | % 105
	fis4 r4 r4 | % 106
	b4 r4 a4 | % 107
	r4 r8 b8 cis4 | % 108
	fis,4 r4 r4 | % 109
	b,4 r4 r4 | % 110
	e4 r4 r4 | % 111
	fis4 r4 r4 | % 112
	b4 r4 a4 | % 113
	gis4 r4 r4 | % 114
	a4 r4 gis4 | % 115
	fis4 r4 r4 | % 116
	gis4 r4 fis4 | % 117
	e4 r4 r4 | % 118
	a4 r4 r4 | % 119
	b4 r4 r4 | % 120
	b4 r4 r4 | % 121
	b4 r4 r4 | % 122
	b,4 r4 r4 | % 123
	b4 r4 r4 | % 124
	dis4 gis4 e4 | % 125
	fis4 r4 dis4 | % 126
	e4 cis'4 a4 | % 127
	b4 dis4 b4 | % 128
	e4 gis4 b4 | % 129
	e,4 r4 r4 | % 130
	e,4 r4 r4 | % 131
	e4 r4 r4 | % 132
	fis4 r8 e8 [ dis cis ] | % 133
	b2  e4 | % 134
	a,4 b2 | % 135
	e4 r4 r4 | % 136
	r1*3/4 | % 137
	r1*3/4 | % 138
	e2. \fermata \bar "|." % 139

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
