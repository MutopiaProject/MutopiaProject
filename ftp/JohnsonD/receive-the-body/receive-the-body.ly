\version "2.11.27"

#(set-global-staff-size 18)

\paper {
	%#(define fonts (make-pango-font-tree "Utopia" "Sans" "Mono" 0.9))
	left-margin = 0.5\in
	line-width = 7.5\in
	page-top-space = 0\in
	head-separation = 0\in
	bottom-margin = 0.25\in
	between-system-padding = 0\in
	between-system-spacing = 0\in
	ragged-last-bottom = ##f
	system-count = 3
}

\header {
	title = "Receive The Body Of Christ"
	composer = "Daniel Johnson"
	
	mutopiatitle = "Receive The Body Of Christ"
	mutopiacomposer = "JohnsonD"
	mutopiapoet = "Traditional Greek - Public Domain translation"
	mutopiaopus = ""
	mutopiainstrument = "Voice (SATB)"
	date = "2006"
	source = "Original Composition"
	copyright = "Public Domain"
	style = "Hymn"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2007/Jul/26"
	moreInfo = "While this text is appointed as the Communion Verse for Easter in the Eastern Orthodox tradition, those following Slavic practice sing it throughout the year as the faithful commune."
 footer = "Mutopia-2007/07/26-1011"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

sopMusic = {
	f'2(^\markup{\hspace #-3 \large\bold "Slowly" " (" \tiny\smaller{ \note #"4" #1 } "= 70)"} g'4 a'4) | a'1( | g'2 a'4 g'4 | f'2) g'4( a'4) | bes'2( a'2) | g'2 fis'2 | g'1 \breathe |
	g'4.( a'8 bes'4 c''4 | a'2) g'4( a'4) | f'4.( d'8 e'4 f'4) | g'2 g'4( a'4) | bes'2 a'2 | g'2 g'2 | a'1 \breathe \bar "||"
	f'2 g'4( a'4) | a'1( | g'2) a'4( g'4) | f'2 g'4 a'4 | bes'2( a'2 | g'2) fis'2 | g'1 \breathe |
	g'4.( a'8 bes'4) c''4 | a'2 g'4( a'4) | f'4.( d'8 e'4 f'4) \breathe | g'2 g'4( a'4) | bes'2( a'2 | g'2) g'2 | a'1 \bar "|."
}

sopText = \lyricmode {
	Re -- ceive __ the Bo -- dy of Christ.
	Taste __ the foun -- tain of im -- mor -- ta -- li -- ty.
	Al -- le -- lu -- i -- a, Al -- le -- lu -- i -- a, Al -- le -- lu -- i -- a, __ Al -- le -- lu -- i -- a.
}

altMusic = {
	R1 | f'2( e'2) | e'1( | d'2) d'4( f'4) | f'1 | d'2 d'2 | d'1 \breathe |
	e'4.( f'8 g'4 e'4 | f'2) e'2 | d'1 | e'2 e'4( f'4) | f'2 f'2 | e'2 e'2 | f'1 \breathe |
	R1 | f'2 e'2 | e'2. e'4 | d'2 d'4 f'4 | f'1( | d'2) d'2 | d'1 \breathe |
	e'4.( f'8 g'4) e'4 | f'2 e'2 | d'1 \breathe | e'2 e'4( f'4) | f'1( | e'2) e'2 | f'1 |
}
altText = \lyricmode {
	Re -- ceive __ the Bo -- dy of Christ.
	Taste __ the foun -- tain of im -- mor -- ta -- li -- ty.
	Al -- le -- lu -- i -- a, Al -- le -- lu -- i -- a, Al -- le -- lu -- i -- a, Al -- le -- lu -- i -- a.
}

tenMusic = {
	a2( bes4 c'4) | c'1( ~ | c'2 bes2 | a2) bes4( c'4) | d'2( c'2) | bes2 c'2 | bes1 \breathe |
	R1 | c'2. c'4 | d'1 | c'2 c'2 | d'2 c'2 | c'2 c'2 | c'1 \breathe |
	a2 bes4( c'4) | c'1 ~ | c'2 bes2 | a2 bes4 c'4 | d'2( c'2 | bes2) c'2 | bes1 \breathe |
	R1 | c'2. c'4 | d'2 d'4 d'4 | \breathe c'2 c'2 | d'2( c'2 ~ | c'2) c'2 | c'1 |
}
tenText = \lyricmode {
	Re -- ceive __ the Bo -- dy of Christ.
	Taste the foun -- tain of im -- mor -- ta -- li -- ty.
	Al -- le -- lu -- i -- a, Al -- le -- lu -- i -- a, Al -- le -- lu -- i -- a, Al -- le -- lu -- i -- a.
}
basMusic = {
	R1 | f2( a2) | c'2( c2 | d2) g4( f4) | bes,2( f2) | g2 <d a>2 | g1 \breathe |
	R1 | f8( g8 a8 bes8 c'4) bes4 | a4.( f8 g4 a4) | c'2 c4( f4) | bes,2 f2 | c2 c2 | f1 \breathe |
	R1 | f2 a2 | c'2 c2 | d2 g4 f4 | bes,2( f2 | g2) <d a>2 | g1 \breathe |
	R1 | f8( g8 a8 bes8 c'4) bes4 | a4.( f8) g4 a4 \breathe | c'2 c4( f4) | bes,2( f2 | c2) c2 | f1 |
}
basText = \lyricmode {
	Re -- ceive __ the Bo -- dy of Christ.
	Taste the foun -- tain of im -- mor -- ta -- li -- ty.
	Al -- le -- lu -- i -- a, Al -- le -- lu -- i -- a, Al -- le -- lu -- i -- a, Al -- le -- lu -- i -- a.
}
\score {
	<<
	\context ChoirStaff <<
		\context Staff = sopStaff {
			\set Staff.instrumentName = "Soprano"
			\set Staff.midiInstrument = "oboe"
			\clef treble \time 4/4 \key f \major
			\context Voice = sop { \sopMusic }
		}
		\context Lyrics = sop \lyricsto sop \sopText

		\context Staff = altStaff {
			\set Staff.instrumentName = "Alto"
			\set Staff.midiInstrument = "english horn"
			\clef treble \time 4/4 \key f \major
			\context Voice = alt { \altMusic }
		}
		\context Lyrics = alt \lyricsto alt \altText

		\context Staff = tenStaff {
			\set Staff.instrumentName = "Tenor"
			\set Staff.midiInstrument = "viola"
			\clef "G_8" \time 4/4 \key f \major
			\context Voice = ten { \tenMusic }
		}
		\context Lyrics = ten \lyricsto ten \tenText

		\context Staff = basStaff {
			\set Staff.instrumentName = "Bass"
			\set Staff.midiInstrument = "cello"
			\clef bass \time 4/4 \key f \major
			\context Voice = bas { \basMusic }
		}
		\context Lyrics = bas \lyricsto bas \basText
		>>
	>>
	\layout{
		\context {
			\Staff
			\override BreathingSign #'extra-offset = #'(0 . 1)
		}
		\context {
			\Score
			\remove Bar_number_engraver
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -5.5 -11 -16.75 -22 -27.5 -33 -38.5)))
		}
	}
	
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 70 4)
		}
	}
}
