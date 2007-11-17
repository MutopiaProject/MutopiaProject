sopNotes = {
	<a' c''>8 <a' c''>8 <a' c''>8 <a' d''>8 <c'' e''>4 <c'' e''>4 |
	<a' c''>8 <a' c''>8 <a' c''>8 <a' d''>8 <c'' e''>4 <c'' e''>4 |
	r4 <g' c''>4 <a' c''>2 | <b' d''>4. <g' c''>8 <g' c''>2 |
	r2 <g' c''>2 | <g' c''>1 |
}
altNotes = {
	e'8 e'8 e'8 f'8 g'4 g'4 |
	f'8 f'8 f'8 f'8 g'4 g'4 |
	r4 e'4 e'2 | g'4. e'8 e'2 |
	r2 e'2 | e'1 |
}
tenNotes = {
	<a c'>8 <a c'>8 <a c'>8 <a d'>8 <c' e'>4 <c' e'>4 |
	<a c'>8 <a c'>8 <a c'>8 <a d'>8 <c' e'>4 <c' e'>4 |
	r4 c'4 c'2 | <b d'>4. <g c'>8 <g c'>2 |
	r2 <g c'>2 | <g c'>1 |
}
basNotes = {
	a8 a8 a8 <f a>8 <c g>4 <c g>4 |
	f8 f8 f8 f8 <c g>4 <c g>4 |
	r4 c'4 a2 | g4. c8 c2 |
	r2 c2 | c1 |
}
dyn = {
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Съ умѣренной скоростью."}
	\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	s2\mf s4\> s4\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	\once\override DynamicText #'X-offset = #1 
	s2\mf s4\> s4\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	s4 s2.\mf | s1 \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	s2 s2\mf | s2\> s2\! \bar "|."
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
		indent = 0\in
		system-count = 1
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
	\header { piece = "3. Малая Ектенія" }
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

