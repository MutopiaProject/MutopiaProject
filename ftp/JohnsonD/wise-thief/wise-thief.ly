\version "2.12.0"

\header {
	title = "The Wise Thief"
	subtitle = "(Trio)"
	composer = "Daniel Johnson"

	mutopiatitle = "The Wise Thief"
	mutopiacomposer = "JohnsonD"
	mutopiapoet = "Traditional Slavonic - Public Domain translation"
	mutopiaopus = ""
	mutopiainstrument = "Voice (SSA)"
	date = "2007"
	source = "Original Composition"
	copyright = "Public Domain"
	style = "Hymn"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2009/Feb/08"
	moreInfo = "According to Russian Orthodox practice, this text is sung at Matins of Good Friday (also known as the service of the Twelve Passion Gospels), and in the Russian tradition it is the emotional high point of the service. The text should be sung thrice, and since the 19th century (?) it has become customary to sing it at least once as a trio."

 footer = "Mutopia-2009/02/10-1012"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
	system-count = 3
	between-system-padding = 10
	between-system-spacing = 0
	%ragged-last-bottom = ##f
	%#(define fonts (make-pango-font-tree "Goudy Bookletter 1911" "Sans" "Mono" 1))
}

hpDown = { \once\override Hairpin #'extra-offset = #'(0 . -0.75) }
dtDown = { \once\override DynamicText #'extra-offset = #'(0 . -0.75) }


sopNotes = {
	s1*0^\markup { \hspace #-3 \large \bold "Adagio teneroso" }
	\clef treble \time 4/4 \key e \minor \partial 4 \dynamicUp
	b'4\p | b'1 | b'2.
	b'4 | c''2\< d''\! | e''2\> d''4\! b' | c''2 d'' | b'1 |
	b'4 b' b' b' | ais'2 ais'4 ais' | b'2\fermata
	
	b'4\mf b' | e''2 d''4 c'' | b'2.
	b'4 | ais'4. ais'8 ais'4 cis'' | b'2.\> e'4\!\p | g'1( | fis') | e'1 \bar "|."
}

altNotes = {
	\clef treble \time 4/4 \key e \minor \partial 4 \slurDown \dynamicUp
	g'4\p | g'2( fis'4 e') | fis'2.
	g'4 | \hpDown g'(\< a') b'2\! | \hpDown g'4(\> a') g'\! g' | g'2 fis' | d'1 |
	g'4 g' fis' fis' | g'2 fis'4 fis' | fis'2\fermata
	
	\dtDown b'4\mf b' | c''4( b'8 a') a'4 a' | g'2.
	g'4 | g'4. g'8 fis'4 fis'| \hpDown fis'(\> a' g') \dtDown c'\!\p | e'1( ~ | e'2 dis') | b1 |
}

tenNotes = {
	\clef treble \time 4/4 \key e \minor \partial 4 \dynamicUp
	e'4\p | e'2( dis'4 cis') | dis'2. 
	e'4 | e'2\< fis'4(\! g') | c'2\> b4\! d' | a2 a | g1 |
	e'4 e' dis' dis' | e'( cis') cis' e' | dis'2\fermata
	
	\dtDown b'4\mf b' | g'2 fis'4 dis' | e'2( d'!4)
	d'4 | e'4. e'8 cis'4 e' | dis'4(\> fis' e') a\!\p | b2( c' | a2 b4 a) | g1 |
}

text = \lyricmode {
	The wise __ thief
	didst Thou \once\override LyricText #'self-alignment-X = #-1 make wor -- thy of Pa -- ra -- dise
	in a sin -- gle mo -- ment, O Lord.
	By the wood of Thy \once\override LyricText #'self-alignment-X = #-1 Cross,
	il -- lu -- mine me as well, __
	and save __ me.
}

\score {
	\new ChoirStaff
	<<
	\new Staff {
		\clef treble
		\set Staff.midiInstrument = "oboe"
		\new Voice = sopVoice { \sopNotes }
	}
	\new Lyrics = upperLyrics { s4 }
	\new Staff {
		\clef treble
		\set Staff.midiInstrument = "english horn"
		\new Voice = altVoice { \altNotes }
	}
	\new Lyrics = lowerLyrics { s4 }
	\new Staff {
		\clef treble
		\set Staff.midiInstrument = "viola"
		\new Voice = tenVoice { \tenNotes }
	}

	\context Lyrics = upperLyrics \lyricsto altVoice \text
	\context Lyrics = lowerLyrics \lyricsto altVoice \text
	>>

	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
		\context {
			\Lyrics
			\remove Lyric_performer
		}
	}
	\layout {
		\context {
			\Score
			\remove Bar_number_engraver
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -6.25 -11.5 -17.75 -23)))
		}
	}
}
