\version "2.11.52"

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
        title = "Cello Suite VI"
        subtitle = "\"Sechs Suiten für Violoncello\""
        piece = "1. Prélude"
        mutopiatitle = "Cello Suite VI - BWV 1012 - Prélude"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1012"
        mutopiainstrument = "Cello"
		arrangement = "Hajo Dezelski"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/07/30-1494"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne =  \relative d {
    s8_\markup { (forte) } d8 s4 d8 s4 d8 s4 d8 s8 | % 1
    s8_\markup { piano } d8 s4 d8 s4 d8 s4 d8 s8 | % 2
    b'8_\markup { forte } [ d,8 (g) ] b [ (cis d) ] a [ (d, fis) ] a [ (cis d) ] | % 3
    b8_\markup { piano }  [ d,8 (g) ] b [ (cis d) ] a [ d, (fis) ] a [ (cis d) ] | % 4
    g,8_\markup { forte } [ (e8 fis) ] g [ (d fis) ] g [ (cis, fis) ] g [ (a, g') ]  | % 5
    fis8 [ (d e) ] fis [ (cis e) ] fis [ (b, d) ] fis [ (a, d) ] | % 6
    e8 [ (gis, d') ] e [ (a, cis) ] d [ (a cis) ] d [ (gis, b) ] | % 7
    cis8 [ a (cis) ] e [ (fis gis) ] a [ cis, (e) ] gis [ (a b) ] | % 8
    cis8 [ e, (gis) ] a [ (cis d) ] e [ a, (cis) ] \clef alto e [ (fis gis) ] | % 9
    a8 [ a, (b) ] cis [ (e) b ] cis [ (a') e ] cis [ (e) cis ] | % 10
    a8 [ (a') b, ] cis [ (e) b ] cis [ (a') e ] cis [ (e) cis ] | % 11
    s8 a8 s4 a8 s4 a8 s4 a8 s8  | % 12
    s8_\markup { (piano) }    a8 s4 a8 s4 a8 s4 a8 s8  | % 13
    fis'8_\markup { (forte) } [ a,8 (d) ] fis [ (gis a) ] e [ a, (cis) ] e [ (gis a) ] | % 14
    fis8_\markup { piano }  [ a,8 (d) ] fis [ (gis a) ] e [ a, (cis) ] e [ (gis a) ] | % 15
    d,8_\markup { (forte) } [ (b8 cis) ] d [ (a cis) ] d [ (gis, cis) ] d [ (e, d') ]| % 16
    cis8 [ (a b) ] cis [ (gis b) ] cis [ (fis, a) ] cis [ (e, a) ] | % 17
    c8 [ (dis,) c' ] b [ (c) a ] fis' [ (a,) c ] b [ (c) a ] | % 18
    g8 [ e (g) ] b [ (cis dis) ] e [ g, (b) ] dis [ (e fis) ] | % 19
    g8 [ b, (dis) ] e [ (g a) ] b [ e, (g) ] b [ (cis dis) ] | % 20
    e8 [ e, (fis) ] g [ (b) fis ] g [ (e') b ] g [ (b) g ] | % 21
    e8 [ (e') fis, ] g [ (b) fis ] g [ (e') b ] g [ (b) g ] | % 22
    s8 e8 s4 e8 s4 e8 s4 e8 s8 | % 23
    s8 e8 s4 e8 s4 e8 s4 e8 s8 | % 24
    s8 e8 s4 e8 s4 e8 s4 e8 s8 | % 25
    s8 e8 s4 e8 s4 e8 s4 e8 s8 | % 26
    s8 e8 s4 e8 s4 e8 s4 e8 s8 | % 27
    s8 e8 s4 e8 s4 e8 s4 e8 s8 | % 28
    s8 e8 s4 e8 s4 e8 s4 e8 s8 | % 29
    s8 e8 s4 e8 s4 e8 s4 e8 s8 | % 30
    s8 e8 s4 e8 s4 e8 s4 e8 s8 | % 31
    s8 e8 s4 e8 s8 s2. | % 32
    d8 [( b fis') ] d [ (b fis') ] d [ (b cis) ] d [ (e fis) ] | % 33
    g,8 [ (b d) ] fis [ (b ais) ] b [ (g e) ] d' [ (cis b) ] | % 34
    ais8 [ (e) cis' ] ais [ (e) cis' ] ais [ (e) fis ] g [ (fis e) ] | % 35
    d8 [ (b') fis ] d [ (b') fis ] d [ (b') a ] gis [ (a b) ] | % 36
    eis,8 [ d (cis) ] d [ gis, (fis) ] gis [ d' (cis) ] d [ (eis d) ] | % 37
    cis8 [ e (d) ] cis [ e (b) ] \clef bass ais [ (b cis) ] g [ (fis e) ] | % 38
    d8 [ (fis b) ] a [ (g fis) ] g [ (e d) ] cis [ (d e) ] | % 39
    ais,8 [ (cis fis) ] e [ (d cis) ] d [ (b a) ] gis [ (a b) ] | % 40
    eis,8 [ (b' d) ] eis, [ (b' d) ] b' [ (cis d) ] cis [ (ais b) ] | % 41
    fis,8 [ (b d) ] fis, [ (b d) ] b' [ (cis d) ] cis [ (ais b) ] | % 42
    g,8 [ (b e) ] b' [ (cis d) ] cis [ (ais b) ] \clef alto eis [ (ais, b) ] | % 43
    fis'8 [ cis (d) ] b' [ (a g) ] fis [ (e d) ] c [ (e b) ] \clef bass | % 44
    ais8 [ (g fis) ] e [ (d cis) ] d [ (fis b) ] fis [ (b ais) ] | % 45
    b8 [ (fis e) ] d [ (fis cis) ] d [ (b d) ] fis [ (b fis) ] | % 46
    d8 [ (b' fis) ] d [ (fis cis) ] d [ (b d) ] fis [ (a gis) ] | % 47
    a8 [ (e d) ] cis [ (e b) ] cis [ (a cis) ] e [ (a e) ] | % 48
    cis8 [ (g' e) ] cis [ (e b) ] cis [ (a cis) ] e [ (fis g) ] | % 49
    fis8 [ (a g) ] fis [ (a e) ] fis [ (d e) ] fis [ (a b) ] | % 50
    c8 [ (a g) ] fis [ (a e) ] fis [ (d fis) ] a [ (b c) ] | % 51
    b8 [ (g) a ] b [ (d) a ] b [ (g') d ] b [ (d) a ] | % 52
    b8_\markup { (piano) } [ (g) a ] b [ (d) a ] b [ (g') d ] b [ g d ] | % 53
    s8_\markup { forte }  g,8 s4 g8 s4 g8 s4 g8 s8 | % 54
    s8_\markup { (piano) } g8 s4 g8 s4 g8 s4 g8 s8 | % 55
    e'8_\markup { (forte) } [ g, (c) ] e [ (fis g) ] d [ g, (b) ] d [ (fis g) ] | % 56
    e8 [ g, (c) ] e [ (fis g) ] d [ g, (b) ] d [ (fis g) ] | % 57
    c,8 [ (a b) ] c [ (a g) ] fis [ (a b) ] c [ (a fis) ] | % 5
    d8 [ (fis a) ] c [ (d fis) ] a [ (d a) ] fis [ (d c) ] | % 59
    b8 [ (g a) ] b [ (d a) ] b [ (g a) ] b [ (g' a,) ] | % 60
    b8 [ (g a) ] b [ (d a) ] b [ (g a) ] b [ (g' e) ] | % 61
    cis8 [ a (b) ] cis [ (e fis) ] g [ (e d) ] cis [ (e b) ] | % 62
    cis8 [ a (b) ] cis [ (e fis) ] g [ (a b) ] cis [ (d e) ] | % 63
    fis,8 [ d (e) ] fis [ (a) e ] fis [ d (e) ] fis [ (d') e, ] | % 64
    fis8 [ d (e) ] fis [ (a) e ] fis [ d (e) ] a [ (d) b ] | % 65
    gis8 [ (e fis) ] gis [ (b cis) ] d [ (b a) ] gis [ (b fis) ] | % 66
    gis8 [ (e fis) ] gis [  ( \clef alto b cis) ] d [ (e fis) ] gis [ (a b) ] | % 67
    cis,8 [ (a b) ] cis [ (e fis) ] g [ (e d) ] cis [ (e b) ] | % 6
    cis8 [ (a b) ] cis [ (e fis) ] g [ (a b) ] cis [ (d e) ] | % 69
    a,,8 [ (fis') d' ] fis, [ (d) e ] fis [ (d') e, ] fis [ (d') d, ] \clef soprano | % 70
    a8 [ (g') e' ] g, [ (e fis) ] g [ (e' fis,) ] g [ (e' e,) ] | % 71
    a,8 [ (a') fis' ] a, [ (fis) g ] a [ (fis') g, ] a [ (fis') fis, ] | % 72
    a,8 [ (b') g' ] b, [ (g) a ] b [ (g') a, ] b [ (g') g, ] | % 73
    a,8 [ (cis') g' ] fis [ (e d) ] cis [ (fis e) ] d [ (cis b) ] | % 74
    a8 [ fis' (e ] fis) [ g, (fis ] g) [ e' (d ] e) [ fis, (e ] | % 75
    fis8) [ d' (cis ] d) [ e, (d ] e) [ cis' (b ] cis) [ a fis ] | % 76
    d8 [ (b' a) ] b [ (g e) ] cis [ (a' g) ] a [ (fis d) ] | % 77
    b8 [ (g' fis) ] g [ (e cis) ] a8. [ b16 (cis32 d32 e32 fis32) ] g8 [ e cis ] \clef bass | % 78
    a8 [ (fis' e) ] fis [ (d b) ] g8. [ a32 (b32 cis16 d16) ] e8 [ (cis a) ] | % 79
    fis8 [ (d' cis) ] d [ (b g) ] e8. [ (fis32 g32 a16 b16) ] cis8 [ (a fis) ] | % 80
    d8 [ b' (g) ] e [ (cis) a' ] b, [ g' (e) ] cis [ (a) fis' ] | % 81
    g,8 [ e' (cis) ] a [ (fis) d' ] e, [ (g a) ] cis [ (e fis) ] | % 82
    g8 [ (a cis) ] \clef alto e [ (g a) ] cis4. ~ cis16 [b a (g fis e) ] | % 83
    a16 [ (g fis e d cis) ] fis [ (e d cis b a) ] \clef bass d [ (cis b a gis fis) ] b [ (a gis fis e d) ] | % 84
    cis16 [ (e a cis e a) ] e [ (cis a e cis a) ] cis [ (e a cis e a) ] e [ (cis a e cis a) ] | % 85
    g16 [ (e' a cis e a) ] e [ (cis a e cis a) ] g [ (e' a cis e a) ] e [ (cis a e cis a) ] | % 86
    fis16 [ a (b c b a) ] d, [ a' (b c b a) ] fis' [ a( b c b a) ] fis' [ a, (b c b a) ] | % 87
    b16 [ (d c b a g) ] b [ (a g fis e d) ] e [ (g fis e d cis) ] fis [ (e d cis b a) ] | % 88
    f'16 [ (e d e f) d ] gis, [ d' (e f e d) ] b' [ d, (e f e d) ] d' [ d, (e f e d) ] \clef alto | % 89
    s8 a'8 s4 a8 s4 a8 s4 a8 s8  | % 90
    s8 a8 s4 a8 s4 a8 s4 a8 s8 | % 91
    s8 d,8 s4 d8 s4 d8 s4 d8 s8  | % 92
    s8 d8 s4 d8 s4 d8 s4 d8 s8  | % 93
    gis16 [ (a b cis d e) ] d [ (e) cis (e) d (e)] d [ (e) cis (e) d (e)] d [ (e) cis (e) b (e)]| % 94
    g,16 [ (a cis d e d) ] cis [ (e) b (e) cis (e)] cis [ (e) b (e) cis (e)] cis [ (e) b (e) a, (e')] \clef alto | % 95
    fis,8 [ e' (a) ] d, [ (cis b) ] e, [ d' (g) ] cis, [ (b a) ] | % 96
    d,8 [ a' (fis') ] b [ (gis a) ] a [ (fis g) ] g [ (e f) ] | % 97
    f8 [ (d es) ] es [ (cis d)] \clef bass <gis, d'>8 r8 r8 <g d'>8 r8 r8 | % 98
    <fis d'>8 r8 r8 <f d'>8 r8 r8 <e d'>8 r8 r8 <e cis'>8 r8 r8 | % 99
    d8 [ (fis a) ] d [ (a fis) ] d [ (fis a) ] c [ (a fis) ] | % 100
    d8 [ (g b) ] d [ (b d) ] \clef alto g [ (d g) ] b [ (g e) ] | % 101
    cis8 [ (e d) ] e [ (g fis) ] g [ (b a) ] b [ (d cis) ] | % 102
    d8 [ (a fis) ] a [ (fis d) ] fis [ (d a) ] \clef bass d [ (a fis) ] | % 103
    a8 [ fis d ] fis [ d a ] d, [ a' fis' ] d'4 \fermata s8 \bar "|." % 104
    }

melodyTwo =  \relative a, {
    d8  [s8 d8] d8  [s8 fis8] d8  [s8 a'8] d,8 [s8 d'8]  | % 1
    d,8 [s8 d8] d8 [s8 fis8] d8 [s8 a'8] d,8 [s8 d'8] | % 2
	s1*12/8*9 | % 11
    a8  [s8 a8] a8  [s8 cis8] a8  [s8 e'8] a,8 [s8 a'8]  | % 12
    a,8  [s8 a8] a8  [s8 cis8] a8  [s8 e'8] a,8 [s8 a'8] | % 13 
	s1*12/8*9 | % 22
    e8  [s8 dis8] e8  [s8 fis8] g8  [s8 fis8] e8 [s8 dis8] | % 23
    e8  [s8 dis8] e8  [s8 fis8] g8  [s8 fis8] e8 [s8 dis8] | % 24
    e8  [s8 g8] dis8  [s8 fis8] e8  [s8 g8] dis8 [s8 fis8]| % 25
    e8  [s8 g8] fis8  [s8 a8] g8  [s8 e8] g8 [s8 a8] | % 26
    g8  [s8 fis8] g8  [s8 a8] b8  [s8 a8] g8 [s8 fis8] | % 27
	g8  [s8 fis8] g8  [s8 a8] b8  [s8 a8] g8 [s8 fis8] | % 28
    g8  [s8 b8] fis8  [s8 a8] g8  [s8 b8] fis8 [s8 a8] | % 29
    g8  [s8 e8] fis8  [s8 dis8] e8  [s8 g8] fis8 [s8 dis8] | % 30
    e8  [s8 g8] d8  [s8 fis8] cis8  [s8 e8] b8 [s8 d8] | % 31
    ais8  [s8 cis] ais8  [s8 cis8] fis,  [g' ( fis] e [d cis)] | % 32
	s1*12/8*21 | % 53
    g,8  [s8 g8] g8  [s8 b8] g8  [s8 d'8] g,8 [s8 g'8] | % 54
    g,8  [s8 g8] g8  [s8 b8] g8  [s8 d'8] g,8 [s8 g'8] | % 55
	s1*12/8*34 | % 89
    a8  [s8 a8] a8  [s8 cis8] a8 [s8 e'8] a,8 [s8 a'8] | % 90
    a,8  [s8 a8] a8  [s8 cis8] a8 [s8 e'8] a,8 [s8 a'8]] \clef bass| % 91
    d,,8  [s8 d8] d8  [s8 fis8] d8  [s8 a'8] d,8 [s8 d'8] | % 92
    d,8  [s8 d8] d8  [s8 fis8] d8  [s8 a'8] d,8 [s8 d'8]| % 93
    s1*12/8*4 | % 97
	s2. b,8 s4 bes8 s4 | % 98
    a8 s4 gis8 s4 a8 s4 a8 r8 s8 | % 99
    s1*12/8*5 | % 104 
}


melody = << \melodyOne \\ \melodyTwo >>

\score {
 	\context Staff << 
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key d \major \time 12/8 \melody  }
    >>
	\layout { }
 	 \midi { }
}
