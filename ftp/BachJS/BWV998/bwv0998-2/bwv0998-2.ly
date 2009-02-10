% Created on Fri Jan 02 19:09:16 CET 2009
\version "2.12.2"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

%#(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
	title = "Fuge"
	subtitle = "Praeludium und Fuge"
    mutopiatitle = "Fuge Es-Dur BWV 998"
    composer = "Johann Sebastian Bach (1685-1750)"
    mutopiacomposer = "BachJS"
	meter = "4/4"
	opus = "BWV 998"
    mutopiainstrument = "Clavier"
    style = "Baroque"
    source = "Bach-Gesellschaft Edition 1853 Band 3"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Hajo Dezelski"
    maintainerWeb = "www.roxele.de"
    maintainerEmail = "dl1sdz (at) gmail.com"
 footer = "Mutopia-2009/02/10-1627"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

	sopranoOne=	\relative c' {
		r4 ees4 ( d ees | % 1
		f4 bes, c d | % 2 
		ees4 ) r8 d8 [ ees g f ees ] | % 3
		d8 [ aes' g f ] ees [ d c f ] | % 4
		d4 f bes e, |  % 5 
		f8 [ c f g ] aes4 d, | % 6 
		ees8 [ f g a ] bes [ f ees d ] | % 7
		c4 r8 d8 ees [c' bes aes ] | % 8
		g8 [ f ees aes ] d,16 [ f ees d ] bes'8 [ des, ] | % 9
		c4 r16 aes'16 [ g f ] bes4 r8 c8 | % 10
		c8 [(bes)] r8 aes aes [(g)] r8 ees | % 11
		ees8 [(d)] g4 aes bes | % 12
		bes8 [(aes)] r8 bes,8 bes [(aes)] r8 f'8 | % 13
		f8 [(e)] r8 f8 ees [ d c f ] | % 14
		ees8 [ d f ees ] r8 bes' [ aes g ] | % 15
		f8 [ ees d g ] ees4 f | % 16
		f8 [(ees)] r8 des des [(c)] r8 e8 | % 17
		e8 [(f)] r8 ees ees [(d)] r8 f | % 18
		fis8 [(g)] r8 f8 f [(ees)] r8 g | % 19
		g8 [(aes)] r8 g8 g [(f)] r8 ees | % 20
		ees [(d)] bes'4 g aes | % 21
		bes ees, f g | % 22
		aes4 r8 aes8 g [ c bes aes ] | % 23
		aes8 [ g16 f] g4 aes bes | % 24
		ees,4 r8 aes8 aes [(g)] r8 g8 | % 25
		g8 [(f)] r8 bes8 bes [(aes)] r8 aes8 | % 26
		aes8 [(g)] r8 f8 f [(ees)] r16 f16 [g aes] | % 27
		ees16 [ d c bes ] bes'8 [ aes ] g4 f | % 28
		ees4 s2. | % 29
		s4 s16 bes16-. [ s16 bes16-. ] s16 c16-. [ s16 c16-. ] s16 d16-. [ s16 d16-. ] | % 30
		g,16 [ ees' g, ees' ] r16 d16 [ bes d ] r16 ees [ bes ees ] r16 f [ bes, f' ] | % 31
		r16 g16 [ ees g ] bes [ aes g f ] ees [ d ees g ] f [ ees d c ] | % 32
		d4 r16 f16 [ d f ] g [ ees bes ees ] r16 g [ ees g ] | % 33
		f16 [ d bes d ] r16 f16-. [ s16 f-. ] s16 g16-. [ s16 g-. ] s16 a-. [ s16 a-. ] | % 34
		s4 r16 a16 [ f a ] r16 bes [ f bes ] r16 c [ a c ] | % 35
		r16 d16 [ bes d ] ees [ d c bes ] aes [ g aes c ] bes [ aes g f ] | % 36
		g4 r16 g16 [ ees g ] ees [ aes ees aes ] des, [ bes' des, bes'] | % 37
		c,16 [ ees f g ] aes [ g f aes ] f [ bes f bes ] ees, [ c' ees, c' ] | % 38
		d,16 [ f ( g aes ] g [ f ees d )] ees [ bes' ( c des ] c [ bes aes g )] | % 39
		f16 [ d' aes d ] g, [ ees' bes ees ] aes, [ ees' c ees ] bes [ ees des ees ] | % 40
		r16 c16 [ bes c ] aes [ c g c ] f, [ c' e, c'] f, [ c' aes c ] | % 41
		r16 bes16 [ aes bes ] g [ bes f bes ] e, [ bes' d, bes'] e, [ bes' g bes ] | % 42
		aes16 [g f ees ] d [ ees d ees ] d [ ees d ees ] d [ ees d ees ] | % 43
		f16 [ aes g f ] ees [ d c bes ] a4 b4 | % 44
		c4 r16 ees [ c ees ] c [ f c f ] bes, [ g' bes, g' ] | % 45
		a,16 [ c d ees ] f [ c a c ] bes [ d f g ] a [ ees c ees ] | % 46
		d16 [ f bes c ] d [ bes g f ] e [ g bes d ] c [ a f ees ] | % 47
		d16 [ fis a c ] bes [ g ees d ] cis [ e g bes ] a [ fis d c ] | % 48
		b16 [ d fis a ] g [ ees c bes ] a [ g' a, g'] bes, [ g' bes, g' ] | % 49
		c, [ g' c, g' ] d [ g fis g ] ees [ g c, g'] a, [ fis' a, fis' ] | % 50
		g,16 [ bes' aes bes ] g [ bes f bes ] e, [ bes' f bes ] g [ bes c, bes' ]  | % 51
		r16 bes16 [ aes g ] f [ ees des c ] des [ e f aes, ] g [ bes f' e ] | % 52
		f,16 [ aes' g aes ] f [ aes ees aes ] d, [ aes' ees aes ] f [ aes bes, aes' ] | % 53
		r16 aes16 [ g f ] es [ des c bes ] c [ d es g, ] f [ es' d aes' ] | % 54
		g16 [ es bes g ] s2. | % 55
		s1 | % 56
		aes16 [ f' c aes ] f [ aes c d ] ees [ c aes g ] f [ aes c d ] | % 57
		ees16 [ c a g ] fis [ a c d ] ees [ c a g ] fis [ es' d c ] | % 58
		bes16 [ g' d bes ] g [ bes des ees] fes [ des bes aes ] g [ bes des ees ] | % 59
		fes16 [ des bes aes ] g [ bes des ees ] fes  [ des bes aes ] g [ f' ees des ] | % 60
		c16 [ bes aes g ] es'4 d es | % 61
		f4 r16 bes,16 [ c des ] c4 r16 d16 [ c d ]  | % 62
		s1 | % 63
		s4 r16 bes'16 [ bes, bes' ] c, [ bes' c, bes' ] d, [ aes' d, aes' ]  | % 64
		g16 [ es bes g ] r8 g'8 g8 [( f)] r8 d8 | % 65
		d8 [ [( ees)] r8 bes'8 bes ( a) r8 ees8  | % 66
		ees8 ( d) r16 f16 [ d f ] g [ ees bes ees ] r16 g [ ees g ] | % 67
		f16 [ d bes d ] r16 f16 [ f, f' ] g, [ f' g, f' ] a, [ ees' a, ees' ] | % 68
		s4 r8 d8 d8 [ c ] r8 a'8 | % 69
		a8 [ bes ] r8 aes8 aes ( g ) r8 e8 | % 70
		e8 ( f) f16 [ aes ees aes ] d, [ aes' bes, aes'] ees [ g d g ] | % 71
		c,16 [ g' aes, g' ] f [ aes f aes ] f [ g f g ] ees [ g ees g ] | % 72
		ees [ f ees f ] d [ f g aes ] bes [ des, bes' des, ] c [ ees f g ] | % 73
		aes8 r8 < f aes>8 r8 <f aes>4.  (g16 [ f ]) | % 74
		g16 [ (a g a) ] a8. [ bes16 ] bes8 r8 r4 | % 75
		s1 | % 76
		s4 r8 d,8 ees [ g f ees ] | % 77
		d8 [ aes' g f ] ees [ d c f ] | % 78
		d4 f bes e, | % 79
		f8 [ c f g ] aes4 d, | % 80
		ees8 [ f g a ] bes [ f ees d ] | % 81
		c4 r8 d8 ees [ c' bes aes ] | % 82
		g8 [ f ees aes ] d,16  [ f ees d ] bes'8 [ des, ] | % 83
		c4 r16 aes'16 [ g f ] bes4 r8 c8 | % 84
		c8 [( bes)] r8 aes8 aes [(g)] r8 ees8 | % 85
		ees8 [(d)] g4 aes bes | % 86
		bes8 [( aes)] r8 bes, bes [( aes)] r8 f'8 | % 87
		f8 [( e)] r8 f8 ees8 [ d c f ] | % 88
		ees8 [ d f ees ] r8 bes' [ aes g ] | % 89
		f8 [ ees d g ] ees4 f | % 90
		f8 [( ees)] r8 des8 des [( c )] r8 e8 | % 91
		e8 [( f )] s8 ees8 ees [( d )] r8 f | % 92
		fis8 [( g )] r8 f8 f [( ees )] r8 g | % 93
		g8 [( as)] r8 g8 g [( f )] r8 ees | % 94
		ees8 [( d )] bes'4 g aes | % 95
		bes4 ees, f g | % 96
		aes4 r8 aes8 g [ c bes aes ] | % 97
		aes8 [ g16 f ] g4 aes bes | % 98
		ees,4 r8 aes8 aes [( g)] r8 g8 | % 99
		g8 [( f )] r8 bes8 bes8 [( aes)] r8 aes | % 100
		aes8 [( g)] r8 f8 f [( ees)] r16 f16 [ g aes ] | % 101
		ees16 [( d c bes)] bes'8 [ aes ] g4 f | % 102
		ees4 \fermata  r4 r2 | % 103
			}
			
	sopranoTwo=	\relative c' {
		s1*9 | % 9
		s2 r16 f16 [ ees d ] c8 [ ees ] | % 10
		ees8 [ d16 c ] d8 [ f ] f [(ees)] s4 | % 11
		s4 r8 ees8 des8 [ c bes ees ] | % 12
		des8 [ c ] s2. | % 13
		s1 | % 14
		s2. s8 ees8 | % 15
		d8 [ (c) c (bes) ] s2| % 16
		s1 | % 17
		s4 s8 c8 c [(bes)] r8 c8 | % 18
		c8 [( b )] r8 d8 d [( c )] r8 des | % 19
		des8 [( c )] r8 s4. s4 | % 20
		s2 r8 ees8 [ des c ] | % 21
		bes8 [ des c bes ] aes4 bes | % 22
		c4 r8 bes8 bes [( c )] r8 d8 | % 23
		d8 [( ees )] r8 ees8 ees [( des)] r8 des | % 24
		des8 [( c)] r8 f8 f [( ees)] r8 ees | % 25
		ees8 [( d)] r8 g8 g[(f)] r8 f | % 26
		f8 [( ees)] r8 d8 d [(ees)] s4 | % 27
		s4 ees4 ees d | % 28
		bes4 s2.| % 29
		s1*4 | % 33
		s4 s8 f'16-. s16 f16-. s16 f16-. s16 ees16-. [ s16 ees16-. ] s16 | % 34
		d16 [ bes' d, bes' ]  ees,4 d ees | % 35
		f4 s2 d4 | % 36
		r16 ees16 [ bes g ] s2. | % 37
		s1*5 | % 42
		r4 c4 b c | % 43
		d4 s2. | % 44
		s1*20 | % 64
		s4 s8 ees8 ees8 [(d)] s4 | % 65
		s4 r8 d8 d [( c )] s4 | % 66
		s1*2 | % 68
		s2. r8 ees8 | % 69
		ees8 [( d)] r8 f8 f [( e )] r8 bes | % 70
		bes8 [( aes)] s2. | % 71
		s4 d8 [ c ] s2 | % 72
		s1 | % 73
		s4 c8 r8 bes4. r8 | % 74
		r4 ees4 s2 | % 78
		s1*8 | % 83
		s2 r16 f16 [ ees d ] c8 [ ees ] | % 84
		ees8 [ d16 c ] d8 [ f ] f [(ees)] s4 | % 85
		s4 r8 ees8 des8 [ c bes ees ] | % 86
		des8 [( c )] s2.| % 87
		s1 | % 88
		s2. s8 ees8 | % 89
		d8 [ (c) c (bes) ] s2| % 90
		s1 | % 91
		s4 s8 c8 c [( bes)] s8 c8 | % 92
		c8 [( b )] r8 d8 d [( c)] r8 des8 | % 93
		des8 [( c)] r8 s8 s2 | % 94
		s2 r8 ees8 [ des c ] | % 95
		bes8 [ des c bes ] s2 | % 96
		s4 r8 bes8 bes [( c )] r8 d | % 97
		d8 [( ees)] r8 ees8 ees [( des )] r8 des | % 98
		d8 [( c )] r8 f8 f [( ees )] r8 ees | % 99
		ees8 [( d)] r8 g g [( f )] r8 f | % 100
		f8 [( ees )] r8 d d [( ees)] s4 | % 101
		s4 ees4 ees d | % 102
		bes4 s2. | % 103
			}

soprano = << \sopranoOne \\ \sopranoTwo >>
	
	bassOne=	\relative c' {
		r1 | % 1
		r1 | % 2
		r4 bes4 ( g as | % 3
		bes4 ees, g a | % 4
		bes8 ) [ c bes aes ] g [ des' c bes ] | % 5
		aes4 r8 g8 f [ c' bes aes ] | % 6
		g4 r4 r8 d'8 [ c bes ] | % 7
		a8 [ g f bes ] g4 f | % 8
		bes4 c bes r8 bes8 | % 9
		aes4 r4 g a | % 10
		bes4 bes, g r8 g'8 | % 11
		g8 [( f)] ees,4 f g | % 12
		aes4 r8 g'8 g [( f)] r8 aes8 | % 13
		aes8 [(g )] a4 bes c | % 14
		c8 [ bes aes g ] f4 r8 s8 | % 15
		s2 aes8 [ g f bes ] | % 16
		aes8 [( g)] r8 bes8 bes [( aes)] r8 bes8 | % 17
		bes8 [( a)] r8 s8 s2 | % 18
		s1 | % 19
		s4. bes8 bes [(aes)] r8 g8 | % 20
		g8 [( f )] r4 s2 | % 21
		s1 | % 22
		s4 f4 g aes | % 23
		bes4 ees,, f g | % 24
		aes4 aes' bes c | % 25
		bes4 d, ees f | % 26
		g4 aes bes c | % 27
		f,4 <ees~ bes'>8 [ <ees c'>8 ] bes'4 aes | % 28
		g4 r16 bes16 [ g bes] c [ aes ees aes ] r16 c [ aes c ] | % 29
		bes16 [ g ees g ] r16 s16 bes16-. s16 bes16-. [ s16 bes16-. ] s16 aes16-. [ s16 aes-. ] s16 | % 30
		s4 aes4 g aes | % 31
		<g bes>4 ees g a | % 32
		r16 bes16 [ f d ] s2. | % 33
		s1 | % 34
		s1 | % 35
		bes4 bes' c bes, | % 36
		r16 s8. ees,4 f g | % 37
		aes4 f g a | % 38
		bes4 bes' g aes | % 39
		bes4 ees, f g | % 40
		aes4 r4 des r4 | % 41
		g,4 r4 c r4 | % 42
		f,4 fis g aes | % 43
		s4 g4 a16 [ g f ees ] d [ aes' g f ] | % 44
		r16 f16 [ees d ] c4 d e | % 45
		f4 ees d c | % 46
		bes4 bes' g a | % 47
		bes4 g e fis | % 48
		g4 ees c d | % 49
		ees4 bes c d | % 50
		g,4 bes c e | % 51
		f4 aes, bes c | % 52
		f,4 aes bes d | % 53
		ees4 g, aes bes | % 54
		s4 ees16 [ g bes c ] des [ bes g f ] ees [ g bes c ] | % 55
		des16 [ bes g f ] e [ g bes c ] des [ bes g f ] e16 [ des' c bes ] | % 56
		s1 | % 57
		s1 | % 58
		s1 | % 59
		s1 | % 60
		s4 f16 [ g f g ] f [ g f g ] f [ g f g ] | % 61
		aes16 [ bes aes bes ] g4 r16 bes16 [ aes g ] f4 | % 62
		ees'16 [ bes g bes ] r16 bes [ g bes ] c [ aes ees aes ] r16 c [ aes c ] | % 63
		bes16 [ g ees g ] g,4 aes bes | % 64
		ees,4 ees' bes' r8 aes8 | % 65
		aes8 [( g )] ees4 f r8 a8 | % 66
		a8 [( bes)] s4 r4 s4  | % 67
		s1 | % 68
		d16 [ bes f d ] r8 bes'8 bes8 [( a )] s4 | % 69
		bes,4 b c c, | % 70
		f4 s2. | % 71
		s2 b'8 [ g c bes ] | % 72
		a8 [ f bes aes ] g [ ees aes g ] | % 73
		f8 [ ( ees) ees (d) ] d [ c d bes ] | % 74
		ees8 [ d c f, ] d''16 [ bes a bes ] ees [ bes a bes ] | % 75
		f'16 [ aes, g f ] g [ bes c des ] c [ bes a g ] f [ a bes d ] | % 76
		ees16 [ bes g ees ] bes'4 ( g aes | % 77
		bes4 ees, g a | % 78
		bes8 ) [ c bes aes ] g [ des' c bes ] | % 79
		aes4 r8 g8 f8 [ c' bes aes ] | % 80
		g4 r4 r8 d'8 [ c bes ] | % 81
		a8 [ g f bes ] g4 f | % 82
		bes4 c bes r8 bes8 | % 83
		aes4 r4 s2| % 84
		bes4 bes, g r8 g'8 | % 85
		g8 [( f)] ees,4 f g | % 86
		s4 r8 g'8 g [( f)] r8 aes8 | % 87
		aes8 [( g)] a4 bes c | % 88
		c8 [ bes aes g ] f4 r8 ees'8 | % 89
		s2 aes,8 [ g f bes ] | % 90
		aes8 [( g )] r8bes bes [( aes)] r8 bes | % 91
		bes8 [( a )] r8 s8 s2 | % 92
		s1 | % 93
		s4. bes8 bes [( aes)] r8 g8 | % 94
		g8 [( f)] r4 s2 | % 95
		s2 aes4 bes | % 96
		c4 f, g aes | % 97
		bes4 ees,, f g | % 98
		aes4 aes' bes c | % 99
		bes4 d, ees f | % 100
		g4 aes bes c | % 101
		f,4 <ees ~ bes'>8 [ <ees c' >8 ] bes'4 aes | % 102
		g4 r4 r2 | % 103
			}
			
	bassTwo=	\relative c' {
		s1*5 | % 5
		s1 | % 6
		r4 ees,4 ( d ees | % 7
		f4 bes, c d | % 8
		ees4) aes2 g4 | % 9
		r16 g16 [ f ees ] f4 s2| % 10
		s2. aes,4 | % 11
		bes4 s2. | % 12
		s4 c aes bes | % 13
		c4 f, g a | % 14
		bes4 ees, d ees | % 15
		f4 bes, c d | % 16
		ees4 g aes g | % 17
		f4 a bes aes | % 18
		g4 b c bes | % 19
		aes4 aes, aes' aes, | % 20
		bes8 [bes' c d ] ees [ c bes aes ] | % 21
		g4 aes r8 des8 [ c bes ] | % 22
		f'8 [ ees ] d4 ees f | % 23
		g4 s2.| % 24
		s4 f4 g a | % 25
		bes4 bes, c d | % 26
		ees4 f, g aes ~ | % 27
		aes4 g8 [ aes ] bes4 bes, | % 28
		ees4 ees' r4 ees, | % 29
		r4 g4 aes bes | % 30
		ees,4 f' <ees, ees'> d' | % 31
		<ees, ees'>4 g c f, | % 32
		bes4 bes, r4 bes' | % 33
		r4 d4 ees f | % 34
		bes,4 r4 bes, r4 | % 35
		s4 g''4 f s4 | % 36
		ees4 s2.| % 37
		s1*6 | % 43
		b4 c f, g | % 44
		c,4 c' s2 | % 45
		s1*9 | % 54
		ees,4 r4 ees g | % 55
		bes4 g e' c | % 56
		f4 r4 f, a | % 57
		c4 a fis' d | % 58
		g4 r4 g, bes | % 59
		des4 bes g' ees| % 60
		aes8 r8 a,4 bes c | % 61
		d,4 ees aes bes | % 62
		ees,4 ees'r4 ees, | % 63
		r4 s2. | % 64
		s2. bes'4 | % 65
		ees,4 ees' f f,| % 66
		bes4 bes' r4 bes, | % 67
		r4 d,4 ees f | % 68
		bes,4 bes' f' f, | % 69
		s1*5 | % 7
		s2 bes4 g | % 75
		d4 ees aes bes | % 76
		ees,4 s2. | % 77
		s1*3 | % 80
		r4 ees'4 ( d ees | % 81
		f4 bes, c d | % 82
		ees4 ) aes2 g4 | % 83
		r16 g16 [ f ees ] f4 g a | % 84
		s2. aes,4 | % 85
		bes4 s2. | % 86
		aes4 c4 aes bes | % 87
		c4 f, g a | % 88
		bes4 ees, d ees | % 89
		f4 bes, c d | % 90
		ees4 g aes g | % 91
		f4 a bes aes | % 92
		g4 b c bes | % 93
		aes4 aes, aes' aes, | % 94
		bes8 [ bes' c d ] ees [ c bes aes ] | % 95
		g4 aes r8 des8 [ c bes ] | % 96
		f'8 [ ees ] d4 ees f | % 97
		g4 s2. | % 98
		s4 f4 g a | % 99
		bes4 bes, c d | % 100
		ees4 f, g aes ~ | % 101
		aes4 g8 [ aes ] bes4 bes, | % 102
		ees4 \fermata s2. | % 103

			}

bass = << \bassOne \\ \bassTwo >>


\score {
	\context PianoStaff <<
	\set PianoStaff.midiInstrument = #"acoustic grand"
	\set PianoStaff.instrumentName = #"Piano  "
	\time 4/4

	\new Staff = "RH" {  % Right hand 
			\clef treble
			\key ees \major
			\soprano
		}
		
	\new Staff = "LH" {  % Left hand 			
			\clef bass
			\key ees \major 
			\bass
		}
		>>

	\midi {
	}

	\layout  {
	}
}


