dtDown = { \once\override DynamicText #'extra-offset = #'(0 . -0.5) }
hpDown = { \once\override Hairpin #'extra-offset = #'(0 . -0.5) }
hpUp = { \once\override Hairpin #'extra-offset = #'(0 . 0.5) }

sopNotes = {
	b'8 b'8 c''8 d''8 c''2 | b'2 r2 | b'8 b'8 c''8 d''8 e''2 | d''2 r2 |
	
	d''8 d''8 c''8 b'8 c''2 | b'2 r2 | r4 b'8 e''8 d''4. b'8 | b'2 r2 | r8 b'8 e''4 d''4 d''4 | d''2 r2 |
	r2 b'2 | b'2 r2 | r8 c''8 c''4 c''8 c''8 d''8 d''8 | b'2 r2 | r8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 |
	e''4. e''8 b'4 b'4 | c''4. c''8 g'8 g'8 g'8 g'8 | a'4. a'8 a'8 g'8 g'8 g'8 | a'4 a'4 g'2 |
}
altNotes = {
	g'8 g'8 g'8 g'8 g'4( fis'4) | g'2 r2 | g'8 g'8 g'8 g'8 g'2 | g'2 r2 |
	
	g'8 g'8 g'8 g'8 g'4( fis'4) | g'2 r2 | r4 g'8 g'8 g'4. g'8 | g'2 r2 | r8 g'8 g'4 g'4 fis'4 | g'2 r2 |
	r2 g'2 | g'2 r2 | r8 a'8 a'4 a'8 a'8 a'8 a'8 | g'2 r2 | r8 g'8 g'8 g'8 g'8 g'8 g'8 g'8 |
	g'4. g'8 fis'4 fis'4 | e'4. e'8 d'8 d'8 d'8 d'8 | c'4. c'8 c'8 b8 b8 b8 | c'4 c'4 b2 |
}
tenNotes = {
	d'8 d'8 d'8 d'8 d'2 | d'2 r2 | d'8 d'8 d'8 d'8 c'2 | d'2 r2 |
	
	d'8 d'8 d'8 d'8 d'2 | d'2 r2 | r4 b8 b8 b4. d'8 | d'2 r2 | r8 b8 b4 b4 c'4 | b2 r2 |
	r2 d'2 | d'2 r2 | r8 e'8 e'4 e'8 e'8 fis'8 fis'8 | d'2 r2 | r8 b8 b8 b8 b8 b8 b8 b8 |
	b4. b8 b4 b4 | g4. g8 g8 g8 g8 g8 | e4. e8 e8 e8 e8 e8 | e4 fis4 d2 |
}
basNotes = {
	g8 g8 a8 b8 a2 | g2 r2 | g8 g8 a8 b8 c'2 | b2 r2 |
	
	b8 b8 a8 g8 a2 | g2 r2 | r4 g8 e8 g4. g8 | g2 r2 | r8 g8 e4 g4 d4 | g2 r2 |
	r2 g2 | g2 r2 | r8 a8 a4 a8 a8 d8 d8 | g2 r2 | r8 g8 g8 g8 g8 g8 g8 g8 |
	e4. e8 d4 d4 | c4. c8 b,8 b, b, b, | a,4. a,8 a,8 e8 e8 e8 | a,4 d4 g,2 |
}
dyn = {
	\set hairpinToBarline = ##f
	\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	s1*0^\markup{"" \translate #'(-14 . 0) \bold "Не скоро."}
	\dtDown \hpDown \once\override TextScript #'extra-offset = #'(1 . 0) s4.\p\<\startGroup^\markup{ \tiny "2 раза." } s8\! \hpUp s2\> | s2.\! s4\stopGroup \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	\once\override DynamicText #'X-offset = #1.5 \dtDown \hpDown \once\override TextScript #'extra-offset = #'(1 . 0) s4.\mf\<\startGroup^\markup{ \tiny "2 раза." } s8\! s2\> | s2.\! s4\stopGroup \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	
	s2\p s2\> | \noBreak s1\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	\once\override TextScript #'extra-offset = #'(1 . 0) s4\startGroup^\markup{ \tiny "6 разъ." } s4\mf s2\> | \noBreak s2.\! s4\stopGroup \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	s8 s8\mf s2. | \noBreak s1 \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	
	s2 s2\mf | \noBreak s1 \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	s8 s8\mf s2. | \noBreak s2\> s2\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	s8^\markup{"" \translate #'(-2 . 0) \bold "Скоро."} s8\f s2. |
	
	s1*3 | s2 s4\> s4\! \bar "|."
}

text = \lyricmode {
	Гос -- по -- ди по -- ми -- луй. Гос -- по -- ди по -- ми -- луй.
	Гос -- по -- ди по -- ми -- луй. По -- дай Гос -- по -- ди. Те -- бѣ Гос -- по -- ди.
	А -- минь. И ду -- хо -- ви тво -- е -- му. От -- ца и Сы -- на и Свя --
	та -- го Ду -- ха, Тро -- и -- цу е -- ди -- но -- сущ -- ну -- ю и не -- раз -- дѣль -- ну -- ю.
}

\score {
	\new ChoirStaff <<
		\new Staff = trebStaff \with { \consists Mark_engraver } {
			\clef treble \time 4/4 \key g \major
			<<
			\new Voice { \dynamicUp \dyn }
			\new Voice = sopVoice { \override Rest #'staff-position = #0 \autoBeamOff \voiceOne \sopNotes }
			\new Voice = altVoice { \override Rest #'transparent = ##t   \autoBeamOff \voiceTwo \altNotes }
			>>
		}
		\new Lyrics \lyricsto sopVoice { \text }
		\new Staff = bassStaff {
			\clef bass \time 4/4 \key g \major
			<<
			\new Voice = tenVoice { \override Rest #'transparent = ##t   \autoBeamOff \voiceOne \tenNotes }
			\new Voice = basVoice { \override Rest #'staff-position = #0 \autoBeamOff \voiceTwo \basNotes }
			>>
		}
 	>>
	\layout {
		system-count = 4
		\context {
			\Score
			\remove Bar_number_engraver
			\remove Mark_engraver
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -8 -15.5)))
		}
		\context {
			\Staff
			\consists Horizontal_bracket_engraver
			\override RehearsalMark #'outside-staff-priority = #-1000
			\override HorizontalBracket #'direction = #UP
			\override HorizontalBracket #'outside-staff-priority = #1000
			\override HorizontalBracket #'extra-offset = #'(0 . -1)
		}
	}
	\header { piece = "11. Послѣ Херувимской Пѣсни." }
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

