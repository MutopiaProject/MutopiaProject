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
        title = "Sonata III BWV 1005"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "4. Allegro Assai"
        mutopiatitle = "BWV 1005"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1005"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		comment = "Dedicated to the memory of Cyrano 13.6.2008"
		maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/07/13-1468"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


melody = \relative c'' {
	\repeat volta 2 { % begin repeat
		c16 [ (d e f ] g8) [ c,8 ] d16 [ c b a ] | % 1
		g [ (a b c ] d [ e f) a ] g [ f e d ] | % 2
		c [ (d e f ] g8) [ c,8 ] d16 [ c b a ] | % 3
		g [ (a b d ] c) [ b a g ] f [ e f d ] | % 4
		e [ c' (b c ] d [ c b c) ] g' [ c, (b c) ] | % 5
		e, [ c' g' c, ] a' [ c, bes' c, ] a' [ c, g' c, ] | % 6
		f, [ c' (b c ] d [ c b c) ] a' [ c, (b c) ] | % 7
		f, [ c' a' c, ] f, [ c' e, c' ] f, [ c' d, c' ] | % 8
		e, [ c' (b c ] d [ c b c) ] g' [ c, (b c) ] | % 9
		e, [ c' g' c, ] a' [ c, bes' c, ] a' [ c, g' c, ] | % 10
		f, [ c' (b c ] d [ c b c) ] a' [ c, (b c) ] | % 11
		f, [ c' a' c, ] f, [ c' e, c' ] f, [ c' d, c' ] | % 12
		e, [ c' (b c) ] g' [ c, (b c) ] a [ c (b c) ] | % 13
		d, [ c' (b c) ] f [ c (b c) ] g [ c (b c) ] | % 14
		c, [ (d e f) ] g [ c d e ] f [ e d c ] | % 15
		d [ (c b a ] g8) [ d'8 ] f,16 [ e f d ] | % 16
		e [ (g a b ] c8) [ g'8 ] bes,16 [ a bes g ] | % 17
		a [ b (cis bes') ] g [ f e d ] cis [ b a g ] | % 18
		f [ (e d e ] f8) [ d'8 ] a16 [ g f e ] |  % 19
		d [ (c b c ] d) [ a' f e ] d [ c b a ] | % 20
		g [ f' (e d) ] g, [ e' (d c) ] g [ g' (f e) ] | % 21
		d [ b (a g) ] f' [ b, (a g) ] d' [ c (b a) ] | % 22
		g [ f' (e d) ] g, [ e' (d c) ] g [ g' (f e) ] | % 23
		d [ b (a g) ] g' [ b, (a g) ] d' [ c (b a) ] | % 24
		g [ f' (e f) ] b [ f (e f) ] d' [ f, (e f) ] | % 25
		g, [ e' d' e, ] c' [ e, b' e, ] c' [ e, g, e' ] | % 26
		a, [ g' (fis g) ] cis [ g (fis g) ] e' [ g, (fis g) ] | % 27
		a, [ fis' e' fis, ] d' [ fis, cis' fis, ] d' [ fis, a, fis' ] | % 28
		d [ c' (b c ] d [ c b c) ] a' [ c, (b c) ] | %29
		d, [ c' (a' c,) ] b [ a' c, a' ] b, [ a' a, a' ] | % 30
		d,, [ b' (a b ] c [ b a b) ] a' [ b, (a b) ] | % 31
		d, [ b' g' b, ] a [ g' b, g' ] cis, [ g' d g ] | % 32
		d, [ cis' (b cis ] d [ cis b cis) ] g' [ cis, (b cis) ] | % 33
		d, [ cis' g' cis, ] e [ g cis, g' ] a, [ g' cis, g' ] | % 34
		d, [ d' g e ] fis [ d g e ] fis [ d g e ] | % 35
		fis [ e d e ] fis [ g a b ] c [ b c a ] | % 36
		d, [ c' (bes a) ] d, [ bes' (a g) ] d [ d' (c bes) ] | % 37
		a [ fis (e d) ] c' [ fis, (e d) ] a' [ g (fis e) ] | % 38
		d [ c (bes a) ] d [ bes (a g) ] es' [ d (c bes) ] | %39
		a [ fis (e d) ] c' [ fis, (e d) ] fis' [ d e fis ] | % 40
		g [ (a bes c ] d8) [ g,8 ] bes16 [ a g fis ] | % 41
		g [ d (c b) ] d [ (c b a) ] g4 | % 42

	} % end repeat
	
	
	\repeat volta 2 { % begin repeat
		g16 [ (a b c ] d8) [ g,8 ] a16 [ g fis e ] | % 43
		d [ (e fis g ] a [ b c) e ] d [ c b a ] | % 44
		g [ (a b c ] d8) [ g,8 ] a16 [ g fis e ] | % 45
		d [ (e fis) a ] g [ fis e d ] c [ b c a ] | % 46
		b [ g' (fis g ] a [ g fis g) ] d' [ g, (fis g) ] | % 47
		b, [ g' d' g, ] e' [ g, f' g, ] e' [ g, d' g, ] | % 48
		c, [ g' (fis g ] a [ g fis g) ] e' [ g, (fis g) ] | % 49
		c, [ g' e' g, ] c, [ g' b, g' ] c, [ g' a, g' ] | % 50
		b, [ g' (fis g ] a [ g fis g) ] d' [ g, fis g ] | % 51
		b, [ g' d' g, ] e' [ g, f' g, ] e' [ g, d' g, ] | % 52
		c, [ g' (fis g ] a [ g fis g) ] e' [ g, fis g ] | % 53
		c, [ g' e' g, ] c, [ g' d g ] e [ g d g ] | % 54
		cis, [ a' (gis a ] b [ a gis a) ] e' [ a, gis a ] | % 55
		cis, [ a' e' a, ] f' [ a, g' a, ] f' [ a, e' a, ] | % 56
		d, [ a' (gis a ] b [ a gis a) ] f' [ a, (gis a) ] | % 57
		d, [ a' f' a, ] d, [ a' cis, a' ] d, [ a' b, a' ] | % 58
		cis, [ a' (gis a ] b [ a gis a) ] e' [ a, (gis a) ] | % 59
		cis, [ a' e' a, ] f' [ a, g' a, ] f' [ a, e' a, ] | % 60
		d, [ a' (gis a ] b [ a gis a) ] f' [ a, (gis a) ] | % 61
		d, [ a' f' a, ] d, [ a' e a ] f [ a d, a' ] | % 62
		g [ (a bes c ] d8) [ bes'8 ] f,16 [ e f d ] | % 63
		e [ (g a b ] c [ d e f) ] g [ a bes g ] | % 64
		a [ (g f e ] f8) [ a8 ] e,16 [ d e c ] | % 65
		d [ f (g a ] bes [ c d e) ] f [ g a f ] | % 66	
		g [ (f e d ] cis [ d e) a, ] g [ f g e ] | % 67
		a [ (g f e ] d [ e f) c ] bes [ a bes g ] | % 68
		a [ g' (f e) ] a, [ f' (e d) ] a [ a' (g f) ] | % 69
		e [ cis (b a) ] g' [ cis, (b a) ] e' [ (d cis b) ] | % 70
		a [ g'_\markup {piano } (f e) ] a, [ f' (e d) ] a [ a' (g f) ] | % 71
		e [ cis (b a) ] a' [ cis, (b a) ] e' [ d (cis b) ] | % 72
		a [ g'_\markup {forte } (fis g) ] cis [ g (fis g) ] e' [ g, (fis g) ] | % 73
		a, [ f' e' f, ] d' [ f, cis' f, ] d' [ f, a, f' ] | % 74
		gis, [ f' (e f) ] b [ f (e f) ] d' [ f, (e f) ] | % 75
		gis, [ f' d' f, ] gis, [ e' d e ] c [ e b e ] | % 76
		a, [ e' (fis gis ] a) [ b c a ] c [ (b a gis) ] | % 77
		a [ (c b a) ] e' [ (d c b ] a [ g f e )] | % 78
		f [ a b cis ] d [ e f d ] f [ (e d c) ] | % 79
		g' [ d (c b) ] d [ (c b a ] g [ f e d )] | % 80
		e [ g a b ] c [ d e f ] g [ e (d c) ] | % 81
		a' [ c, (bes a) ] c [ (bes a g ] f [ e d c) ] | % 82
		d [ f g a ] b [ c d e ] f [ e (d c) ] | % 83
		b' [ f (e d ] c [ b a g) ] f [ e f d ] | % 84
		e [ g d g ] e [ g c g ] e' [ g, c g ] | % 85
		b [ d a d ] b [ d g d ] b' [ d, g d ] | % 86
		e [ g d g ] c, [ g' b, g' ] a, [ g' a g ] | % 87
		fis [ e d e ] fis [ g a b ] c [ d e fis ] | % 88
		g [ d b d ] g, [ d' a d ] b [ d g, d' ] | % 89
		f [ d b d ] g, [ d' a d ] b [ d g, d' ] | % 90
		e [ c b c ] g [ c e c ] g' [ c, e c ] | % 91
		d [ b a b ] g [ b d b ] g' [ b, d b ] | % 92
		a, [ g' c b ] a [ c g c ] fis, [ c' e, c' ] | % 93
		d,, [ c' a' g ] fis [ a e a ] d, [ a' c, a' ] | % 94
		b, [ d g fis ] g [ d e c ] d [ b c a ] | % 95
		b [ g c a ] b [ g c a ] b [ g d' b ] | % 96
		g [ f' (es d) ] g, [ es' (d c) ] g [ g' (f es) ] | % 97
		d [ b (a g )] f' [ b, (a g) ] d' [ c (b a) ] | % 98
		g [ f (es d) ] g [ es (d c) ] gis' [ g (f es) ] | % 99
		d [ b (a g) ] f' [ b, (a g) ] b' [ g a b ] | % 100
		c [ (d e f ] g8) [ c,8 ] e16 [ d c b ] | % 101
		c [ g (f e) ] g [ (f e d) ] c4 \bar "|." % 102

	} % end repeat
    
}

% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key c \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
