sopNotes = {
	a'8 a'8 a'8 a'8 c''4 c''4 |
	c''8 c''8 c''8 d''8 e''4 e''4 |
	r4 e''4 e''2 | g''4. c''8 c''2 |
	r4 d''4 e''2 ~ | e''2 r2 |
}
altNotes = {
	e'8 e'8 e'8 e'8 g'4 g'4 |
	a'8 a'8 a'8 g'8 g'4 g'4 |
	r4 g'4 g'2 | g'4. g'8 g'2 |
	r4 g'4 g'2 ~ | g'2 r2 |
}
tenNotes = {
	c'8 c'8 c'8 c'8 c'4 c'4 |
	c'8 c'8 c'8 b8 c'4 c'4 |
	r4 c'4 c'2 | c'4. c'8 c'2 |
	r4 b4 c'2 ~ | c'2 r2 |
}
basNotes = {
	a8 a8 a8 a8 e4 e4 |
	f8 f8 f8 d8 c4 c4 |
	r4 c'4 c'2 | e4. e8 e2 |
	r4 g4 c2 ~ | c2 r2 |
}
dyn = {
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Не скоро."}
	\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	s2\mf s4\> s4\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	\once\override DynamicText #'X-offset = #1 
	s2\mf s4\> s4\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	s4 s2.\f | s1 \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	\set hairpinToBarline = ##f
	s4 s4\f s2\> | s2\! s2 \bar "|." \mark\markup{ \musicglyph #"scripts.ufermata" }
}

text = \lyricmode {
	Гос -- по -- ди по -- ми -- луй.
	Гос -- по -- ди по -- ми -- луй.
	Те -- бѣ Гос -- по -- ди.
	А -- минь.
}

\score {
	\new ChoirStaff <<
		\new Staff = trebStaff \with { \consists Mark_engraver } {
			\clef treble \time 4/4 \key c \major
			<<
			\new Voice { \dynamicUp \dyn }
			\new Voice = sopVoice { \override Rest #'staff-position = #0 \autoBeamOff \voiceOne \sopNotes }
			\new Voice = altVoice { \override Rest #'transparent = ##t   \autoBeamOff \voiceTwo \altNotes }
			>>
		}
		\new Lyrics \lyricsto sopVoice { \text }
		\new Staff = bassStaff {
			\clef bass \time 4/4 \key c \major
			<<
			\new Voice = tenVoice { \override Rest #'transparent = ##t   \autoBeamOff \voiceOne \tenNotes }
			\new Voice = basVoice { \override Rest #'staff-position = #0 \autoBeamOff \voiceTwo \basNotes }
			>>
		}
 	>>
	\layout {
		system-count = 1
		indent = 0\in
		\context {
			\Score
			\remove Bar_number_engraver
			\remove Mark_engraver
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -8 -15.5)))
		}
		\context {
			\Staff
			\override RehearsalMark #'outside-staff-priority = #-1000
		}
	}
	\header { piece = "5. Малая Ектенія" }
}
\score {
  <<
    \new Staff  {
      \set Staff.midiInstrument = "oboe"
      \new Voice { \sopNotes }
    }
    \new Staff {
      \set Staff.midiInstrument = "violin"
      \new Voice { \altNotes }
    }
    \context Staff {
      \set Staff.midiInstrument = "viola"
      \new Voice { \tenNotes }
    }
    \context Staff {
      \set Staff.midiInstrument = "cello"
      \new Voice { \basNotes }
    }
  >>
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 76 4)
    }
  }
}

