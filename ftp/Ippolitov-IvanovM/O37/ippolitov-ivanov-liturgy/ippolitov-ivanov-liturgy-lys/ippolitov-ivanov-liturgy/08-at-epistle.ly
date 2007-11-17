sopNotes = {
	\time 2/4 \key bes \major
	r4 <bes' d''>8 <bes' d''>8 | <c'' f''>2 | <bes' d''>8 r8 <bes' d''>8 <bes' d''>8 | <c'' f''>2 |
	<bes' d''>8 r8 <bes' d''>8 <bes' d''>8 | <a' c''>4( <bes' d''> | << \context Voice = sopVoice { ees''4 f''4) } \\ { \voiceThree c''2 } >> | <bes' d''>2^> |
	
	\time 3/4
	\cadenzaOn d''8 \cadenzaOff |  d''4 d''8 d''8 c''8 c''8 | c''2 r4 |
	\time 4/4 \key f \major
	c''8 c''8 c''8 c''8 d''4 d''8 d''8 | c''4 d''8 d''8 e''2 |
}
altNotes = {
	\time 2/4 \key bes \major
	r4 f'8 f'8 | a'2 | f'8 r8 f'8 f'8 | a'2 | f'8 r8 f'8 f'8 | g'4( f' | g' f') | f'2 |
	
	\time 3/4
	\cadenzaOn f'8 \cadenzaOff | f'4 f'8 f'8 e'8 e'8 | f'2 r4 |
	\time 4/4 \key f \major
	f'8 f'8 f'8 f'8 f'4 f'8 f'8 | f'4 f'8 f'8 g'2 |
}
tenNotes = {
	\time 2/4 \key bes \major
	r4 <d' f'>8 <d' f'> | <ees' f'>2 | <d' f'>8 r8 <d' f'>8 <d' f'> | <ees' f'>2 | <d' f'>8 r8 <d' f'>8 <d' f'>8 | ees'4( <d' f'> | <c' ees'>2) | d'2 |
	
	\time 3/4
	\cadenzaOn bes8 \cadenzaOff | bes4 bes8 bes8 bes8 bes8 | a2 r4 |
	\time 4/4 \key f \major
	a8 a8 a8 a8 a4 a8 a8 | a4 a8 a8 c'2 |
}
basNotes = {
	\time 2/4 \key bes \major
	r4 bes8 bes | bes2 | bes,8 r8 bes bes | bes2 | bes,8 r8 bes, bes, | bes2( ~ | bes4 a4) | bes2_> |
	
	\time 3/4
	\cadenzaOn bes8 \cadenzaOff | bes4 bes8 bes8 g8 g8 | f2 r4 |
	\time 4/4 \key f \major
	f8 f8 f8 f8 d4 d8 d8 | f4 d8 d8 c2 |
}
dyn = {
	\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\override DynamicText #'X-offset = #-2
	
	s4^\markup{"" \translate #'(-3 . 0) \bold "Не скоро."} s4\mf | s2\> | s4\! s4\mf | s2\> | s4\! s4\p |
	\once\override Hairpin #'extra-offset = #'(3 . 0) s2\< |
	\once\override Hairpin #'extra-offset = #'(5 . 0) s4\!\> s4\! | s2 \bar "||" \once\override Score.RehearsalMark #'extra-offset = #'(-3.25 . 0) \mark\markup{ \musicglyph #"scripts.ufermata" } \break
	
	\time 3/4
	\cadenzaOn s8\mf \cadenzaOff \bar "|" s2. | s2\> s4\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Скоро."}
	s1\f | s2 s4\> s4\! \bar "|." \mark\markup{ \musicglyph #"scripts.ufermata" }
}
text = \lyricmode {
	Ал -- ли -- луй -- я, ал -- ли -- луй -- я, ал -- ли -- луй -- я.
	И ду -- хо -- ви тво -- е -- му. Сла -- ва Те -- бѣ, Гос -- по -- ди, сла -- ва Те -- бѣ.
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
		system-count = 2
		\context {
			\Score
			\remove Mark_engraver
			\remove Bar_number_engraver
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -8.25 -16.5)))
		}
		\context {
			\Staff
			\override RehearsalMark #'outside-staff-priority = #-1000
		}
	}
	\header { piece = "8. Послѣ Чтенія Апостола" }
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

