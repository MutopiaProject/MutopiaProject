#(set-global-staff-size 18)

\header {
  filename =    "o_magnum_mysterium.ly"
  title =       "O Magnum Mysterium"
  poet =        "from Matins of Christmas"
  subtitle =	"for mixed chorus, a cappella"
  instrument = "Four Part Voice"
  opus =        ""
  composer =    "Tomás Luis de Victoria (1549-1611)"
  date = "1572"

  mutopiatitle = "O Magnum Mysterium"
  mutopiacomposer = "VictoriaTLd"
  mutopiapoet = ""
  mutopiainstrument = "Voice"
  source = "Arista Edition"
  style = "Renaissance"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  typesetter = "Jeff Covey & Patrick Horgan"
  maintainer = "Jeff Covey & Patrick Horgan"
  maintainerEmail = "jeff.covey at pobox dot com & patrick at dbp-consulting dot com"
  maintainerWeb = "http://jeffcovey.net/"
  % brought up to 2.11.49 and minor edits by patrick@dbp-consulting.com
  lastupdated = "2008/06/30"

 footer = "Mutopia-2008/07/13-244"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

%{ thanks to jcn for all the help on this one!  :) %}

\version "2.11.49"

global =  {
	\key f \minor
	\time 4/4
	\skip 1*39  \bar "||"
	\skip 1*13  \bar "||" \time 3/4
	\skip 2.*14 \bar "||" \time 4/4
	\skip 1*8   \bar "|."
}

sopranoMelody =  \relative c'' {
	c1 f,2 c' ~ c4 c des des c2 r4
	f des ees f4. f8 f4 c des  c ~ 
	( c8[ bes aes g aes bes c aes]  bes[ aes]  aes[ g16 f] g2 ~ g ) f
% 10
	a1 bes2 a4. ( bes8 c4 )
	des4. ( c8 bes4 ~ bes a ) bes ( aes8 [ g ] f4 ) g aes2
% 15 
	r4 f' des ees f4. f8 f4 des bes c des4. des8 des4 c4. bes8 bes4 ( ~ bes a ) bes2
% 20
	r1 r4 des4 c4. a8 bes4 c des bes des4. des8 des4 des c2 c
% 25
	a4 c c4. c8 c4 d ees2 des?4 ( c8[ bes ] c2 des ) c r1
% 30
	r4 f, bes2 aes4 f g ( a ) bes4. ( c8 des!4 ) des c2 r r1
% 35
	r4 bes ees2 des4 bes c d ees4. ( des8 [ c bes ] bes4 ~
	bes  a8 [ g ] a4 ) a bes2 r
% 40
	a2. a4  a2 bes a4. ( bes8 c4 des ~  des8 [ c ] c4. bes8 bes4 )
	c a2 a4 bes4. bes8 bes2 
% 46
	r4 bes4. ( c8 [ des bes ] c4 ) f ees2 des4 f ees c
	des4. ( c8 [ bes aes ]  aes [ g16 f ]
% 50
	g4 ) g f c' ~ c aes2 des4 ( ~  des8 [ c ] bes2 a4 )
% 53 3/4 time starts here
	bes2 des4 c2 a4 bes4.  aes?8 ( [ bes c] ) des4 c2
	des2 bes4 aes2 f4 g4.  f8 ( [ g aes] )
% 60
	bes2 a4 bes2. r4 r ees des4. ( c8 [ des bes ] 
	c4 ) aes8 ( [ bes c des ] ) ees2 ees4 des4 f2
% 67 back to 4/4 time
	f1 r4 f  f8 ( [ ees des c ] bes4 ) ees4. ( des8 [ c bes ]
	a4 bes2 a4 ) bes1 ~ bes ~ bes ~ bes 
}

altoMelody =  \relative c' {
	r1 r2 f2 ~ f bes, f'2. f4 ges ges f2 r4
	f des ees f4. f8 f4 c des f2 ( e8 [ d ] e2 ) f
% 10
	f1 f2 f4. ( g8 aes?4 ) aes, bes4. ( c8 des4 ) c bes
	f' f ees c4. c8 
% 15
	c4 des4. c8 bes4 ( ~ bes a ) bes
	bes' f aes aes4. aes8 aes2 f4 ges4 f2 f ~ 
% 20
	f2 r2 r4 bes aes4. f8 g4 a bes f f4. f8 f4 g aes2 g
% 25
	f4 aes? aes4. aes8 aes4 aes bes c ( ~  c8 [ bes ] bes2 a4 )
	bes f aes?4. ( g16 [ aes ] bes4  aes8 [ g ] f4 ) c
% 30
	r2 r4 bes f'2 ees4 c d ees ( f8 [ ees f g ]
	aes4.  g16 [ aes ] bes4 ) aes8 ( [ g ] ) f2 r4 c
% 35
	f2 ees4 c  des8 ( [ ees f g ] aes2 ) bes4. ( aes8 [ ges f ] ges4
	f2. ) f4 d2 r
% 40
	f2. f4 f2 f f1 ~ f f2 r4 f ~ f f ges4. ges8
% 46
	f4  bes,8 ( [ c des ees f g ] aes4 ) aes aes2 f4 f g a
	bes4. ( aes?8 [ g f ] f4 ~ f )  e f aes ( ~ aes8 [ g f ees ] f2 )
	des4 ( ees ) f2
% 53 3/4 time starts here
	f2 bes4 aes2 f4 g4.  f8 ( [ g aes] ) bes2 a4 bes2 f4 f2 c4 ees2 ees4
% 60
	f4 f2 f2 des4 bes2 a4 bes2 bes'4 aes2 f4
	g4.  f8 ( [ g aes] ) bes2 a4
% 67 back to 4/4 time
	bes2 r4 f4  f8 ( [ ees des c ] bes4 ) bes' ( ~  bes8 [ aes ges f ] es4 ges )
	f2 r4 c des4. ( ees8 f4 ) ges ( ~ ges f ees4. f8 ges2 )
	f ~ f1
}

tenorMelody =  \relative c' {
	R1*7 r2 c2 ~ c f,2 
% 10
	c'2. c4 des des c2 r4 f des ees
	f4. f8 f4 c des c4. ( bes8 [ aes g ] 
% 15
	aes2 bes c ) des4 f des ees f4. f8 f4 ees des ( ees ) c2 bes4 des
% 20
	c4. a8 bes4 c des bes f'4. f8 ees4 c bes des des4. des8 des4 des
	ees f2 ( e4 )
% 25
	f f, f'4. f8 f4 f ees2 ges f r4 bes, f'2 ees4 c d ( ees )
% 30
	f8 ( [ ees des c bes c des bes ] c2. ) c4 bes2 r4 bes
	f'2 ees4 c des c4. (  bes8 [ aes g ]
% 35
	aes4 bes2 ) a4 bes des ees f ( ges4.  f8 [ ees des ] ees4
	des  c8 [ bes ] c4 ) c bes2 r
% 40
	c2. c4 c2 des c2. ( bes4 c2 des ) c4 c2 c4
% 45
	d4. d8 ees4  bes8 ( [ c des ees ] f2 ) des4
	ees ( des2 c4 ) des des ees f bes,2. des4 c1 aes bes2 c
% 53 3/4 time starts here
	bes2 bes4 f'2 f4 ees2 ees4 bes4 f'2 bes,2 des4
	c2 aes4 bes4.  aes8 ( [ bes c ] )
% 60
	des4 c2 bes2 f4 g4 ees2 f2 des'4 c2 aes4 bes2 bes4 bes4 c2
% 67 back to 4/4 time
	bes4 des  c8 ( [ bes aes g ] f4 ) bes8 ( [ c des ees f des ]
	ees4. f8  ges [ f ees des ] c4 bes ) c f  f8 ( [ es des c ] bes4 )
	des ( ees f ges4. f8 ees2. )  d?8 ( [ c ] d1 ) 
}

bassMelody =  \relative c {
	R1*9
% 10
	f1 bes,2 f' ~ f4 f ges ges f2 r4 f des ees f4. f8 
% 15
	f4 des ges2 f2 bes,4 bes bes' aes des,4. des8 des4 aes' bes ( ees, ) f2
	bes,4 bes'
% 20
	aes4. f8 g4 a bes2 r r r4 bes, bes'4. bes8 bes4 bes aes4. ( bes8 ) c2
% 25
	f,2 r r1 r2 r4 f4 bes2 aes4 f4 g aes ( bes  aes8 [ g ]
% 30
	f4. aes8 ges4 ) ges f2 r
	r4 ees4 bes'2 aes4 f g ( aes ) bes ( aes8 [ g ] f4. ees8
% 35
	des4  c8 [ bes ] c4 ) c bes bes' aes f ( ees1 f2. ) f4 bes,2 r
% 40
	f'2. f4 f2 bes, f'4. ( g8 a4 bes ~  bes8 [ a ] a4 bes2 )
	f4 f2 f4 bes4. bes8 ees,2
% 46
	bes'2. bes4 aes ( des, aes'2 ) des, r
	r1 r2 f ~ f des ges ( f )
% 53 3/4 time starts here
	bes,2 r4 r2. r r r2 bes4 f'2 f4 ees2 ees4
% 60
	bes f'2 bes,2 bes4 ees4 c2 bes2 bes4 f'2 f4
	ees2 ees4 ges4 f2
% 67 back to 4/4 time
	bes,4 bes'  aes8 ( [ g f ees des c bes aes ] bes2 ) ees1 ( f )
	bes,4 bes'  bes8 ( [ aes ges f ] ees4 d ) ees2 ~ ees
	bes ~ bes1
}

sopranoLyrics = \lyricmode {
	O ma -- gnum __ my -- ste -- ri -- um
	et ad -- mi -- ra -- bi -- le sa -- cra -- men __ tum,
	O ma -- gnum __ my -- ste -- ri -- um
	et ad -- mi -- ra -- bi -- le,
	et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
% 21
	ut a -- ni -- ma -- li -- a vi -- de -- rent Do -- mi -- num na -- tum,
	vi -- de -- rent Do -- mi -- num na -- tum
% 30
	ja -- cent -- tem in prae -- se -- pi -- o,
% 35
	ja -- cent -- tem in prae -- _ se -- pi -- o,
% 40
	O be -- a -- ta Vir -- go,  cu -- ius
% 45
	vi -- sce -- ra
	me -- ru -- e -- runt
	por -- ta -- re
% 49
	Do -- mi -- num Je -- sum Chri  -- 
% 53 3/4 time starts here
	stum.
	Al -- le -- lu -- ia,
	al -- le -- lu -- ia,
	al -- le -- lu -- ia,
	al -- le -- lu -- ia,
% 62
	al -- le -- lu -- ia,
	al -- le -- lu --
% 67 back to 4/4 time
	ia,
	al -- le -- lu -- ia. __
}

altoLyrics = \lyricmode {
% 2
	O _ma  -- gnum my -- ste -- ri -- um
	et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
% 10
	o ma -- gnum _my -- ste -- ri -- um,
	et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
	et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum, __
% 21
	ut a -- ni -- ma -- li -- a
	vi -- de -- rent Do -- mi -- num  na -- tum,
	vi -- de -- rent Do -- mi -- num na -- tum,
	ja -- cen -- tem
% 30
	ja -- cent -- tem in prae -- se -- pi -- o,
	ja -- cen -- tem in prae -- se -- pi -- o.
% 40
	O be -- a -- ta Vir -- go,
	cu -- jus vi -- sce -- ra me -- ru -- e -- runt por -- ta -- re
% 49
	Do -- mi -- num Je -- sum _Chri --
% 53 3/4 time starts here
	stum.
	Al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu --
% 67 back to 4/4 time
	ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja. __
}

tenorLyrics = \lyricmode {
% 8
	O _ma -- gnum my -- ste -- ri -- um
	et ad -- mi -- ra -- bi -- le sa -- cra -- men --
	-- tum,
	et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum, 
% 19
	ut a -- ni -- ma -- li -- a,
	ut a -- ni -- ma -- li -- a,
	vi -- de -- rent Do -- mi -- num na --
% 25
	tum, vi -- de -- rent Do -- mi -- num na -- tum
% 28
	ja -- cen -- tem in prae -- se -- pi -- o,
	ja -- cen -- tem in prae -- se -- pi -- o,
	in prae -- se -- pi --o.
% 40
	O be -- a -- ta Vir -- go, cu -- jus vi -- sce -- ra
	me -- ru -- e -- runt por -- ta -- re
% 49
	Do -- mi -- num Je -- sum Chri --
% 53 3/4 time starts here
	stum.
	Al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu ja, al -- le -- lu --
% 67 back to 4/4 time
	ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja. __
}

bassLyrics = \lyricmode {
% 10
	O ma -- gnum _my -- ste -- ri -- um
	et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
	et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
% 19
	ut a -- ni -- ma -- li -- a,
	vi -- de -- rent Do -- mi -- num _na --
% 25
	tum,
% 27
	ja -- cen -- tem in prae -- se -- pi -- o,
	ja -- cen -- tem in prae -- se -- pi --
	o, in prae -- se -- pi -- o.
% 40
	O be -- a -- ta Vir -- go,
	cu -- jus vi -- sce -- ra me -- ru -- e -- runt
% 50
	Je -- sum Chri --
% 53 3/4 time starts here
	stum.
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu --
% 67 back to 4/4 time
	ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja. __
}


sopranoTotal = \simultaneous {
	\new Staff = "soprano" { 
		\set Staff.instrumentName = "Soprano"
		\set Staff.midiInstrument = "violin"
		\clef "violin"
		\new Voice="soprano"<<
			\global
			\sopranoMelody
		>>
	}
	\context Lyrics = soprano \lyricsto soprano \sopranoLyrics
}

altoTotal = \simultaneous {
	\new Staff = "alto" { 
		\set Staff.instrumentName = "Alto"
		\set Staff.midiInstrument = "violin"
		\clef "violin"
		\context Voice=alto<< \global \altoMelody >>
	}
	\context Lyrics = alto \lyricsto alto \altoLyrics
}

tenorTotal = \simultaneous {
	\new Staff = "tenor" { 
		\set Staff.instrumentName = "Tenor"
		\set Staff.midiInstrument = "cello"
		\clef "violin_8"
		\context Voice=tenor<< \global \tenorMelody >>
	}
	\context Lyrics = tenor \lyricsto tenor \tenorLyrics
}

bassTotal = \simultaneous {
	\new Staff = "bass" { 
		\set Staff.instrumentName = "Bass"
		\set Staff.midiInstrument = "cello"
		\clef "bass"
		\context Voice=bass<< \global \bassMelody >>
	}
	\context Lyrics = bass \lyricsto bass \bassLyrics
}

#(define output-suffix "soprano")
\book {
	\paper {
		ragged-last-bottom=##f
	}
	\score {
		\sopranoTotal
		\layout{ }
		\midi {
			\context {
				\Score
				tempoWholesPerMinute = #(ly:make-moment 110 4)
			}
		}
	}
}

#(define output-suffix "alto")
\book {
	\paper {
		ragged-last-bottom=##f
	}
	\score {
		\altoTotal
		\layout{ }
		\midi {
			\context {
				\Score
				tempoWholesPerMinute = #(ly:make-moment 110 4)
			}
		}
	}
}

#(define output-suffix "tenor")
\book {
	\paper {
		ragged-last-bottom=##f
	}
	\score {
		\tenorTotal
		\layout{
			\context {
				\Score
				skipBars = ##t
			}
		}
		\midi {
			\context {
				\Score
				tempoWholesPerMinute = #(ly:make-moment 110 4)
			}
		}
	}
}

#(define output-suffix "bass")
\book {
	\paper {
		ragged-last-bottom=##f
	}
	\score {
		\bassTotal
		\layout{
			\context {
				\Score
				skipBars = ##t
			}
		}
		\midi {
			\context {
				\Score
				tempoWholesPerMinute = #(ly:make-moment 110 4)
			}
		}
	}
}

#(define output-suffix "choir")
\book {
	\paper {
		ragged-last-bottom=##t
		ragged-bottom=##f
		head-separation = 3
		page-top-space = 7
		%annotate-spacing = ##t
	}
	\score {
		\new ChoirStaff = "choir" <<
			\sopranoTotal
			\altoTotal
			\tenorTotal
			\bassTotal
		>>
		\layout {
			#(layout-set-staff-size 17)
			\context {
				\Score
				ragged-last-bottom = ##t
			}
		}
		\midi {
			\context {
				\Score
				tempoWholesPerMinute = #(ly:make-moment 110 4)
			}
		}
	}
}

#(define output-suffix "piano-reduction")
\book {
	\paper {
		ragged-last-page=##t
		ragged-bottom=##t
		between-system-space = 30
	}
	\score {
	  <<
		\new ChoirStaff = "choir" <<
			\sopranoTotal
			\altoTotal
			\tenorTotal
			\bassTotal
		>>
		\new PianoStaff <<
			\new Staff <<
				\set Staff.printPartCombineTexts = ##f
				\partcombine
				<< \global \sopranoMelody >>
				<< \global \altoMelody >>
			>>
			\new Staff <<
				\clef bass
				\set Staff.printPartCombineTexts = ##f
				\partcombine
				<< \global \tenorMelody >>
				<< \global \bassMelody >>
			>>
		>>
	  >>
	  \layout {
		\context {
			\Staff
			\override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
		}
	  }
	}
}
% EOF
