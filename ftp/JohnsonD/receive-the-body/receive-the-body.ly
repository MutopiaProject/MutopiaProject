\version "2.12.0"

%#(set-global-staff-size 22)

\paper {
	%#(set-paper-size "letter")
	%#(define fonts (make-pango-font-tree "Goudy Bookletter 1911" "FreeSerif" "Mono" 1.1))
	left-margin = 0.5\in
	line-width = 7.5\in
	page-top-space = 0\in
	head-separation = 0\in
	%bottom-margin = 0.5\in
	%top-margin = 0.5\in
	between-system-padding = 0\in
	%between-system-spacing = 0\in
	ragged-last-bottom = ##f
	%system-count = 3
	% annotate-spacing = ##t
}

\header {
	title = "Receive The Body Of Christ"
	composer = "Daniel Johnson"
	%subsubtitle = "Kinonikón of Pascha"
	
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
	lastupdated = "2009/Feb/08"
	moreInfo = "While this text is appointed as the Communion Verse for Easter in the Eastern Orthodox tradition, those following Slavic practice sing it throughout the year as the faithful commune."

 footer = "Mutopia-2009/02/10-1011"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

sopMusic = {

	f'2(g'4 a'4) | a'1( | g'2 a'4 g'4 | f'2)
	g'4( a'4) | bes'2( a'2) | g'2 fis'2 | g'1 \breathe |
	
	g'4.( a'8 bes'4 c''4 | a'2) g'4( a'4) |
	f'4.( d'8) e'4 f'4 | g'2 g'4( a'4) | bes'2( a'2 | g'2) g'2 | a'1 \breathe \bar "||"
	
	f'2 g'4( a'4) | a'1( | g'2) a'4( g'4) | f'2 g'4 a'4 | bes'2( a'2 | g'2) fis'2 | g'1 \breathe |
	g'4.( a'8 bes'4) c''4 | a'2 g'4( a'4) | f'4.( d'8 e'4 f'4) \breathe |
	g'2 g'4( a'4) | bes'2( a'2 | g'2) g'2 | a'1 \bar "|."
}


altMusic = {
	R1 | f'2( e'4 d') | e'1( | d'2)
	d'4( f'4) | f'1 | d'2 d'2 | d'1 \breathe |
	
	e'4.( f'8 g'4 e'4 | f'2) e'2 |
	d'2 d'4 d' | e'2 e'4( f'4) | f'1( | e'2) e'2 | f'1 \breathe |
	
	R1 | f'2 e'4( d') | e'2. e'4 | d'2 d'4 f'4 | f'1( | d'2) d'2 | d'1 \breathe |
	e'4.( f'8 g'4) e'4 | f'2 e'2 | d'1 \breathe |
	e'2 e'4( f'4) | f'1( | e'2) e'2 | f'1 |
}

tenMusic = {
	a2( bes4 c'4) | \once\override Slur #'extra-offset = #'(-0.5 . -0.75) c'1( ~ | c'2 bes2 | a2)
	bes4( c'4) | d'2( c'2) | bes2 <a \tweak #'font-size #-3 c'>2 | bes1 \breathe |
	
	c'1 ~ | c'2. c'4 |
	d'2 d'4 d' | c'2 c'2 | d'2( c'2 ~ | c'2) c'2 | c'1 \breathe |
	
	a2 bes4( c'4) | c'1 ~ | c'2 bes2 | a2 bes4 c'4 | d'2( c'2 | bes2) <a \tweak #'font-size #-3 c'>2 | bes1 \breathe |
	c'1 ~ | c'2. c'4 | d'2 d'4 d'4 | \breathe
	c'2 c'2 | d'2( c'2 ~ | c'2) c'2 | c'1 |
}
basMusic = {
	R1 | f2( a2) | \once\override Slur #'extra-offset = #'(0 . 1) c'2( c2 | d2)
	g4( f4) | bes,2( f2) | g2 d2 | g1 \breathe |
	
	R1 | f8( g8 a8 bes8 c'4) bes4 |
	a4.( f8) g4 a4 | c'2 c4( f4) | bes,2( f2 | c2) c2 | f1 \breathe |
	
	R1 | f2 a2 | c'2 c2 | d2 g4 f4 | bes,2( f2 | g2) d2 | g1 \breathe |
	R1 | f8( g8 a8 bes8 c'4) bes4 | a4.( f8) g4 a4 \breathe |
	c'2 c4( f4) | bes,2( f2 | c2) c2 | f1 |
}

textCommon = \lyricmode {
	\repeat unfold 2 { \markup { \char ##x00a0 } }
	the Bo -- dy of Christ.
	Taste __ the
	foun -- tain of im -- mor -- ta -- li -- ty.
	
	\repeat unfold 5 { \markup { \char ##x00a0 } }
	Al -- le -- lu -- i -- a,
	\repeat unfold 5 { \markup { \char ##x00a0 } }
	Al -- le -- lu -- i -- a.
}
textSoprano = \lyricmode {
	Re -- ceive __
	\repeat unfold 5 { \markup { \char ##x00a0 } }
	\repeat unfold 10 { \markup { \char ##x00a0 } }
	
	Al -- le -- lu -- i -- a,
	\repeat unfold 5 { \markup { \char ##x00a0 } }
	\repeat unfold 5 { \markup { \char ##x00a0 } }
	\repeat unfold 5 { \markup { \char ##x00a0 } }
}
textAlto = \lyricmode {
	Re -- ceive __
	\repeat unfold 5 { \markup { \char ##x00a0 } }
	\repeat unfold 10 { \markup { \char ##x00a0 } }
	
	Al -- le -- lu -- i -- a,
	\set associatedVoice = sopVoice
	\repeat unfold 5 { \markup { \char ##x00a0 } }
	Al -- le -- lu -- i -- a, __
	\repeat unfold 5 { \markup { \char ##x00a0 } }
}
textTenor = \lyricmode {
	Re -- ceive __
	\repeat unfold 5 { \markup { \char ##x00a0 } }
	\repeat unfold 10 { \markup { \char ##x00a0 } }
	
	Al -- le -- lu -- i -- a,
	\repeat unfold 5 { \markup { \char ##x00a0 } }
	Al -- le -- lu -- i -- a,
	\repeat unfold 5 { \markup { \char ##x00a0 } }
}
textBass = \lyricmode {
	Re -- ceive __
	\repeat unfold 5 { \markup { \char ##x00a0 } }
	Taste __ \repeat unfold 9 { \markup { \char ##x00a0 } }
	
	Al -- le -- lu -- i -- a,
	\repeat unfold 5 { \markup { \char ##x00a0 } }
	Al -- le -- lu -- i -- a,
	\repeat unfold 5 { \markup { \char ##x00a0 } }
}

\score {
	<<
	\new ChoirStaff
		<<
		\new Lyrics = sopLyrics { s1 }
		\new Staff = trebleStaff {
			\clef treble \time 4/4 \key f \major
			<<
				\context Voice = sopVoice { \voiceOne \sopMusic }
				\context Voice = altVoice \with { \remove Breathing_sign_engraver } { \voiceTwo \altMusic }
			>>
		}
		

		\new Lyrics = altLyrics { s1 }
		\new Lyrics = mainLyrics { s1 }
		\new Lyrics = tenLyrics { s1 }
		
		\new Staff = bassStaff {
			\clef bass \time 4/4 \key f \major
			<<
				\context Voice = tenVoice { \voiceOne \tenMusic }
				\context Voice = basVoice \with { \remove Breathing_sign_engraver } { \voiceTwo \basMusic }
			>>
		}
		\new Lyrics = basLyrics { s1 }
		
		\context Lyrics = sopLyrics \lyricsto sopVoice \textSoprano
		\context Lyrics = altLyrics \lyricsto altVoice \textAlto
		\context Lyrics = mainLyrics \lyricsto sopVoice \textCommon
		\context Lyrics = tenLyrics \lyricsto tenVoice \textTenor
		\context Lyrics = basLyrics \lyricsto basVoice \textBass
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
                        \override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (
				0 -4
				-11.5 -13 -14.5
				-21 -26
			)))
                }

        }
}
\score {
	<<
	\new Staff { \set Staff.midiInstrument = "oboe" \sopMusic }
	\new Staff { \set Staff.midiInstrument = "english horn" \altMusic }
	\new Staff { \set Staff.midiInstrument = "viola" \tenMusic }
	\new Staff { \set Staff.midiInstrument = "cello" \basMusic }
	>>
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 80 4)
		}
	}

}

