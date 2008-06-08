\version "2.11.45"

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
       	title = "Sonata I BWV 1001"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "4. Presto"
        mutopiatitle = "BWV 1001 Presto"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1001"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/02-1439"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melody = \relative g'' {
	 	\repeat volta 2 { %begin repeated section
			g16 [ bes g  d g  d ] | % 1
			bes16 [ d bes  g bes  g ] | % 2
			d16 [ g d  bes d  bes ] | % 3
			g16 [ bes d  g bes  d ] | % 4
			g16 [ d (c  bes a  g )] | % 5
			fis16 [ d fis  a d  fis ] | % 6
			a16 [ es (d  c bes  a) ] | % 7
			g16 [ d g  bes d  g ] | % 8
			bes16 [ g es  c es  g ] | % 9
			a16 [ f d  bes d  f ] | % 10
			g16 [ es c  a c  es ] | % 11
			d,16 [ g' (fis  g a  c,) ] | % 12
			g16 [ c (bes  c d  f, )] | % 13
			c16 [ f' (e  f g  bes, )] | % 14
			f16 [ bes (a  bes c  es, )] | % 15
			bes16 [ es' (d  es f  aes,) ] | % 16
			es16 [ bes es  g es  g ] | % 17
			c16 [ g c  es c  es ] | % 18
			f,16 [ c f  a f  a ] | % 19
			d16 [ a d  f d  f ] | % 20
			g,16 [ d g  bes g  bes ] | % 21
			es16 [ bes es  g es  g ] | % 22
			a,16 [ f a  c a  c ] | % 23
			f16 [ c f  a f  a ] | % 24
			bes,16 [ (c d)  bes' a  bes ] | % 25
			c,16 [ (d es)  bes' a  bes ] | % 26
			d,16 [ (es f)  bes a  bes ] | % 27
			es,16 [ (f g)  bes a  bes ] | % 28
			a,16 [ (c es)  g f  es ] | % 29 
			d16 [ (bes) es  (bes) f'  aes, ] | % 30
			g16 [ (a bes)  d, c  a' ] | % 31
			bes,16 [ d (c  bes a  g ] | % 32
			a16) [ g' (fis  e d)  c' ] | % 33
			bes16 [ ( a g )  f' (e  d )] | % 34
			cis16 [ bes' (a  g f  e )] | % 35
			f16 [ (d) g  (d) a'  c, ] | % 36
			bes16 [ a' (g  f e  d) ] | % 37
			e16 [ (c) f  (c) g'  bes, ] | % 38
			a16 [ g' (f  e d  cis) ] | % 39
			d16 [ (bes) e  (bes) f'  a, ] | % 40
			g16 [ f' (e  d cis  b )] | % 41
			cis16 [ (a) d  (a) e'  g, ] | % 42
			f16 [ d' bes  g e  c' ] | % 43
			d,16 [ bes' g  e c  a' ] | % 44
			bes,16 [ g' e  cis a  f' ] | % 45
			g,16 [ f' (e  d cis  b) ] | % 46
			a16 [ d cis  (e) d  (f) ] | % 47
			a,16 [ e' d  (f) e  (g) ] | % 48
			a,16 [ f' e  (g) f  (a) ] | % 49
			bes,16 [ g' fis  (a) g  (bes) ] | % 50
			cis,16 [ bes' (a  g f  e) ] | % 51
			f16 [ d f  a d  f ] | % 52
			<< { a16 [ d, a8 cis ] } \\ 
			{ s8 a8 [ <a, g'>8 ] } >> | % 53
			<d fis d'>4.  | % 54
		} %end of repeated section
     
		\repeat volta 2 { %begin repeated section
			d16 [ a d  fis d  fis ] | % 55
			a16 [ fis a  d a  d ] | % 56
			fis16 [ d fis  a fis  a ] | % 57
			d16 [ a fis  d a  fis ] | % 58
			d16 [ (e fis  g a  bes ] | % 59
			c16 ) [ es c  a c  a ] | % 60
			fis16 [ d fis  a d  c ] | % 61
			bes16 [ d bes  g d  bes ] | % 62
			g16 [ (a bes  c d  es ] | % 63
			f16) [ gis f  d f  d ] | % 64
			b16 [ g b  d g  f ] | % 65
			es16 [ c es  g c  d ] | % 66
			es16 [ c gis  f gis  c ] | % 67
			d16 [ bes g  es g  bes ] | % 68
			c16 [ gis f  d f  gis ] | % 69
			g,16 [ c' (b  c d)  f, ] | % 70
			c16 [ f' (es  f g)  bes, ] | % 71
			f16 [ bes (gis  bes c)  es, ] | % 72
			bes16 [ es' (d  es f)  aes, ] | % 73
			es16 [ aes (g  aes bes)  des, ] | % 74
			aes16 [( c f  aes g  f )] | % 75
			b,16 [( d f  aes g  f )] | % 76
			c16 [( e f  aes g  f )] | % 77
			d16 [( f b  c d  f, )] | % 78
			es16 [( g c  d es  c )] | % 79
			aes'16 [( g f  es d  c )] | % 80
			g'16 [ d es  c g  b ] | % 81
			c,16 [ f (es  d c  bes )] | % 82
			a16 [ c f  c f  a ] | % 83
			f16 [ a c  a c  es ] | % 84
			c16 [( es a  g f  es )] | % 85
			d16 [( c bes  c d  e )] | % 86
			fis16 [ a c  a fis  a ] | % 87
			fis16 [ c fis  c a  c ] | % 88
			a16 [ fis a  fis d  c' ] | % 89
			bes16 [ g bes  g e  d' ] | % 90
			c16 [ a c  a fis  es' ] | % 91
			d16 [ bes d  bes g  f' ] | % 92
			es16 [ c es  c a  g' ] | % 93
			fis16 [ (d e  fis g  a )] | % 94
			bes16 [ d, g  bes c,  es ] | % 95
			a16 [ f d  bes d  f ] | % 96
			g16 [ bes, es  g a,  c ] | % 97
			f16 [ d bes  g bes  d ] | % 98
			es16 [ g, c  es f,  a ] | % 99
			d16 [ bes g  e g  bes ] | % 100
			c16 [ (a) bes  (g) fis  a ] | % 101
			d,16 [ (e fis  g a  bes )] | % 102
			c16 [ (es) d  (g) fis  (bes) ] | % 103
			a16 [ (g fis  e d  c )] | % 104
			bes16 [ es d  (bes) c  (a) ] | % 105
			f16 [ d' c  (a) bes  (g) ] | % 106
			es16 [ c' bes  (g) a  (fis) ] | % 107
			d16 [ bes' a  (fis) g  (es) ] | % 108
			c16 [ a' g  (e) fis  (d) ] | % 109
			bes16 [ d' (c  bes a  g) ] | % 110
			es'16 [ (d c)  bes' (a  g) ] | % 111
			fis16 [ (g a)  d, es  c ] | % 112
			f,16 [( b d)  aes g  f ] | % 113
			e16 [ g c  e g  bes, ] | % 114
			es,16 [ (a c)  g f  es ] | % 115
			d16 [ f bes  d f  aes, ] | % 116
			g16 [ es' (bes  g es  d) ] | % 117
			c16 [ es' (c  bes a  g ] | % 118
			fis16) [ d' (a  fis d  c ] | % 119
			bes16) [ d' (bes  a g  f ] | % 120
			e16) [ c g'  bes, a  g' ] | % 121
			fis16 [ d a'  c, bes  a' ] | % 122
			g16 [ es bes'  d, c  bes' ] | % 123
			a16 [ f c'  es, d  c' ] | % 124
			bes16 [ g d'  f, e  d' ] | % 125
			c16 [ a es'  g, fis  es' ] | % 126
			d16 [ bes g'  bes, a  c ] | % 127
			bes16 [ g fis  a d,  c ] | % 128
			bes16 [ g' fis  (a) g  (bes) ] | % 129
			c,16 [ a' g  (bes) a  (c) ] | % 130
			d,16 [ bes' a  (c) bes  (d) ] | % 131
			es,16 [ c' b  (d) c  (es) ] | % 132
			fis,16 [ es' (d  c bes  a) ] | % 133
			bes16 [ d g  bes g  d ] | % 134
			bes16 [ g d8 <d c' fis>8 ] | % 135
			<g, d' bes' g' >4. \bar "|." % 0
		} %end of repeated section
}


% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
        { \clef treble \key d \minor \time 3/8 \melody  }
    >>
	\layout { }
 	 \midi { }
}
