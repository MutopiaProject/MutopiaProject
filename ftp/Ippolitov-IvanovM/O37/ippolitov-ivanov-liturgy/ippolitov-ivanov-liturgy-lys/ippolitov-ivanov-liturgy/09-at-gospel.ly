sopNotes = {
	\time 4/4 \key f \major
	e''8 e''8 e''8 e''8 f''4 e''8 e''8 | d''4 d''8 d''8 c''2 | a'8 a'8 a'8 a'8 c''4 a'4 | a'8 a'8 a'8 a'8 c''4 a'4 |
	
	\time 3/4 \key bes \major
	<a' c''>8 <a' c''>8 <a' c''>8 <a' c''>8 <a' c''>8 <a' c''>8 | <a' d''>8 <a' d''>8 <a' d''>8 <a' d''>8 <a' d''>8 <a' d''>8 |
	<bes' d''>4. <bes' d''>8 <bes' d''>8 <bes' d''>8 | <c'' f''>2 <bes' d''>4 |
	
	\time 4/4
	r2 <bes' d''>2 | <bes' d''>2 r2 | a'8 a'8 a'8 a'8 c''4 a'4 | r4 a'8 a'8 c''4. c''8 | a'2 r2 |
	
	\key c \major
	r4 a'4 a'2 | a'8 a'8 a'8 a'8 a'4 a'4 | r4 a'4 c''2 | c''8 c''8 c''8 a'8 c''4 c''4 | r4 a'4 b'2 |
}
altNotes = {
	\time 4/4 \key f \major
	g'8 g'8 a'8 a'8 a'4 a'8 a'8 | f'4 g'8 g'8 e'2 | f'8 f'8 f'8 f'8 <e' g'>4 f'4 | f'8 f'8 f'8 f'8 <ees' g'>4 <c' f'>4 |
	
	\time 3/4 \key bes \major
	f'8 f'8 f'8 f'8 f'8 f'8 | f'8 f'8 f'8 f'8 f'8 f'8 | f'4. f'8 f'8 f'8 | a'2 f'4 |
	
	\time 4/4
	r2 f'2 | f'2 r2 | f'8 f'8 f'8 f'8 <e' g'>4 <c' f'>4 | r4 f'8 f'8 <e' g'>4. <e' g'>8 | f'2 r2 |
	
	\key c \major
	r4 f'4 f'2 | f'8 f'8 f'8 f'8 f'4 f'4 | r4 a'4 a'2 | a'8 a'8 a'8 f'8 a'4 a'4 | r4 fis'4 g'2 |
}
tenNotes = {
	\time 4/4 \key f \major
	c'8 c'8 c'8 c'8 c'4 c'8 c'8 | a4 b8 b8 g2 | <a c'>8 <a c'>8 <a c'>8 <a c'>8 <bes c'>4 <a c'>4 | <f a>8 <f a>8 <f a>8 <f a>8 <g bes>4 <f a>4 |
	
	\time 3/4 \key bes \major
	<a c'>8 <a c'>8 <a c'>8 <a c'>8 <a c'>8 <a c'>8 | <a d'>8 <a d'>8 <a d'>8 <a d'>8 <a d'>8 <a d'>8 |
	<bes d'>4. <f d'>8 <f d'>8 <f d'>8 | <f ees'>2 <f d'>4 |
	
	\time 4/4
	r2 <f d'>2 | <f d'>2 r2 | <a c'>8 <a c'>8 <a c'>8 <a c'>8 <bes c'>4 <a c'>4 | r4 <a c'>8 <a c'>8 <bes c'>4. <bes c'>8 | <a c'>2 r2 |
	
	\key c \major
	r4 <a c'>4 <a c'>2 | <a c'>8 <a c'>8 <a c'>8 <a c'>8 <a b>4 <a c'>4 | r4 <b f'>4 <c' e'>2 | e'8 e'8 e'8 d'8 e'4 e'4 | r4 d'4 d'2 |
}
basNotes = {
	\time 4/4 \key f \major
	c'8 c'8 a8 a8 f4 a8 a8 | d4 g8 g8 c2 | f8 f8 f8 f8 f4 f4 | d8 d8 d8 d8 c4 f4 |
	
	\time 3/4 \key bes \major
	f8 f8 f8 f8 f8 f8 | d8 d8 d8 d8 d8 d8 | bes,4. bes,8 bes,8 bes,8 | bes,2 bes,4 |
	
	\time 4/4
	r2 bes,2 | bes,2 r2 | f8 f8 f8 f8 f4 f4 | r4 f8 f8 f4. f8 | f2 r2 |
	
	\key c \major
	r4 f4 f2 | f8 f8 f8 f8 d4 f4 | r4 d4 a2 | a8 a8 a8 d8 a4 a4 | r4 d4 g2 |
}
dyn = {
	\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\override DynamicText #'X-offset = #-2
	\time 4/4
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Скоро."} s1\f | s2 s4\> s4\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Скоро."} s2\mf\< s4\!\> s4\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	s2\mf\< s4\!\> s4\! \bar "||" \once\override Score.RehearsalMark #'extra-offset = #'(-6.5 . 0) \mark\markup{ \musicglyph #"scripts.ufermata" } \break
	
	\override DynamicText #'X-offset = #0
	s1*0^\markup{"" \translate #'(-9 . 0) \bold "Скоро."}
	s8\startGroup\p\< \once\override TextScript #'extra-offset = #'(-4 . 0) s8^\markup{\bold "Сугубая Ектенія." \hspace #2 \tiny "9 разъ" } s2 |
	s2. | s2.\!\f | s2\> s4\! \stopGroup \bar "||" \once\override Score.RehearsalMark #'extra-offset = #'(-3.5 . 0) \mark\markup{ \musicglyph #"scripts.ufermata" } \break
	\override DynamicText #'X-offset = #-2
	
	s2 s2\mf | s2\> s2\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	\override DynamicText #'X-offset = #1.5 \once\override TextScript #'extra-offset = #'(1 . 0) s2\p^\markup{ \tiny "6 разъ" }\startGroup\< s4\!\> s4\!\stopGroup \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	\override DynamicText #'X-offset = #-2 s4 s2.\mf | s2\> s2\! \bar "||" \break
	
	s4 s2.\mf \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	\override DynamicText #'X-offset = #0.5 \once\override TextScript #'extra-offset = #'(1 . 0) s2\mf\startGroup^\markup{ \tiny "2 раза" } s4\> s4\!\stopGroup \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	\override DynamicText #'X-offset = #-2 s4 s4\p\< s2\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	\override DynamicText #'X-offset = #0.5 \once\override TextScript #'extra-offset = #'(1 . 0) s2\p\startGroup^\markup{ \tiny "2 раза" }\< s4\!\> s4\!\stopGroup \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	\override DynamicText #'X-offset = #-2 s4 s2.\mf \bar "|." \mark\markup{ \musicglyph #"scripts.ufermata" }
}
text = \lyricmode {
	Сла -- ва Те -- бѣ, Гос -- по -- ди, сла -- ва Те -- бѣ. Гос -- по -- ди по -- ми -- луй. Гос -- по -- ди по -- ми -- луй.
	Гос -- по -- ди по -- ми -- луй, Гос -- по -- ди по -- ми -- луй, Гос -- по -- ди по -- ми -- луй.
	А -- минь. Гос -- по -- ди по -- ми -- луй. Те -- бѣ Гос -- по -- ди.
	А -- минь. Гос -- по -- ди по -- ми -- луй. А -- минь. Гос -- по -- ди по -- ми -- луй. А -- минь.
}

\score {
	\new ChoirStaff <<
		\new Staff = trebStaff \with { \consists Mark_engraver } {
			\clef treble
			<<
			\new Voice { \dynamicUp \dyn }
			\new Voice = sopVoice { \override Rest #'staff-position = #0 \autoBeamOff \voiceOne \sopNotes }
			\new Voice = altVoice { \override Rest #'transparent = ##t   \autoBeamOff \voiceTwo \altNotes }
			>>
		}
		\new Lyrics \lyricsto sopVoice { \text }
		\new Staff = bassStaff {
			\clef bass
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
			\remove Mark_engraver
			\remove Bar_number_engraver
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -8.25 -16.5)))
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
	\header { piece = "9. Послѣ Чтенія Евангелія" }
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

