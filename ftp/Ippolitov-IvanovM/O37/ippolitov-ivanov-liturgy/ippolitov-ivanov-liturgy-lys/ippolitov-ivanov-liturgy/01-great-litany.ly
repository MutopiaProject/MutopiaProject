global = { \key e \minor \time 4/4 \dynamicUp \autoBeamOff }

sopNotes = {
	\arpeggioBracket <g' c''>1\arpeggio | <g' c''>1-> |
	<g' c''>8 <g' c''>8 <g' c''>8 <f' a'>8 <g' c''>4 <g' c''>4 |
	<a' c''>8 <a' c''>8 <a' c''>8 <f' a'>8 <a' c''>4 <a' c''>4 | \break

	<a' c''>8 <a' c''>8 <a' c''>8 <a' d''>8 <a' c''>4 <a' c''>4 |
	<a' c''>8 <a' c''>8 <a' c''>8 <a' d''>8 <a' d''>4 <a' d''>4 |
	<b' d''>8 <b' d''>8 <b' d''>8 <b' e''>8 <b' e''>4 <b' e''>4 | \break

	<c'' e''>8 <c'' e''>8 <c'' e''>8 <c'' e''>8 <c'' f''>4 <c'' e''>4 |
	<a' d''>8 <a' d''>8 <a' d''>8 <a' c''>8 <a' d''>4 <a' c''>4 |
	<g' b'>8 <g' b'>8 <g' b'>8 <g' c''>8 <f' a'>4 <f' a'>4 | \break
	
	<f' a'>8 <f' a'>8 <f' a'>8 <f' b'>8 <e' g'>4 <e' g'>4 |
	<e' g'>8 <e' g'>8 <e' g'>8 <e' a'>8 <d' f'>4 <d' f'>4 |
	f'8 f'8 f'8 f'8 e'4 e'4 |
	e'8 e'8 e'8 e'8 d'4 d'4 | \break
	
	d'8 d'8 d'8 d'8 c'4 c'4 |
	r4 <f' a'>4 <f' a'>2 | <g' c''>4. <g' c''>8 <g' c''>2 |
	r2 <a' c''>2 | <c'' e''>1 |
}
altNotes = {
	e'1 | e'1 |
	e'8 e'8 e'8 d'8 e'4 e'4 |
	e'8 e'8 e'8 d'8 e'4 e'4 |

	f'8 f'8 f'8 f'8 f'4 f'4 |
	f'8 f'8 f'8 f'8 f'4 f'4 |
	g'8 g'8 g'8 g'8 g'4 g'4 |

	a'8 a'8 a'8 a'8 a'4 g'4 | % error in original gives a' as last note
	f'8 f'8 f'8 f'8 f'4 e'4 |
	e'8 e'8 e'8 e'8 c'4 c'4 |
	
	c'8 c'8 c'8 c'8 b4 b4 |
	b8 b8 b8 b8 a4 a4 |
	d'8 d'8 d'8 d'8 d'4 d'4 |
	c'8 c'8 c'8 c'8 a4 a4 |
	
	b8 b8 b8 b8 c'4 c'4 |
	r4 d'4 d'2 | e'4. e'8 e'2 |
	r2 f'2 | g'1 |

}
tenNotes = {
	\arpeggioBracket <g c'>1\arpeggio | <g c'>1 |
	<g c'>8 <g c'>8 <g c'>8 <f a>8 <g c'>4 <g c'>4 |
	<a c'>8 <a c'>8 <a c'>8 <a d'>8 <a c'>4 <a c'>4 |

	<a c'>8 <a c'>8 <a c'>8 <a d'>8 <a c'>4 <a c'>4 |
	<a c'>8 <a c'>8 <a c'>8 <a d'>8 <a d'>4 <a d'>4 |
	<b d'>8 <b d'>8 <b d'>8 <b e'>8 <b e'>4 <b e'>4 |

	<c' e'>8 <c' e'>8 <c' e'>8 <c' e'>8 <c' f'>4 <c' e'>4 |
	<a d'>8 <a d'>8 <a d'>8 <a c'>8 <a d'>4 <a c'>4 |
	<g b>8 <g b>8 <g b>8 <g c'>8 <f a>4 <f a>4 |
	
	<f a>8 <f a>8 <f a>8 <f b>8 <e g>4 <e g>4 |
	<e g>8 <e g>8 <e g>8 <e a>8 <f a>4 <f a>4 |
	a8 a8 a8 a8 gis4 gis4 |
	a8 a8 a8 a8 f4 f4 |
	
	g8 g8 g8 g8 <e g>4 <e g>4 |
	r4 <f a>4 <f a>2 | <g c'>4. <g c'>8 <g c'>2 |
	r2 <a c'>2 | <g c'>1 |
}
basNotes = {
	c1 | c1-> |
	c8 c8 c8 d8 c4 c4 |
	a8 a8 a8 d8 a4 a4 |

	f8 f8 f8 d8 f4 f4 |
	f8 f8 f8 d8 d4 d4 |
	g8 g8 g8 e8 e4 e4 |

	a8 a8 a8 a8 f4 c4 |
	d8 d8 d8 f8 d4 a,4 |
	e8 e8 e8 c8 f4 f4 |
	
	f8 f8 f8 d8 e4 e4 |
	e8 e8 e8 c8 d4 d4 |
	d8 d8 d8 d8 b,4 b,4 |
	a,8 a,8 a,8 a,8 d4 d4 |
	
	g,8 g,8 g,8 g,8 c4 c4 |
	r4 d4 d2 | c4. c8 c2 |
	r2 f2 | c1 |
}
dyn = {
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Съ умѣренной скоростью."}
	\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	s1\f | s4 s2\> s4\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	s2\f s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
	s2\f s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }

        s2\f s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
        s2\mf s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
        s2\mf s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }

	s2\f s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
	s2\f s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
	s2\mf s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }

	s2\mf s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
	s2\p s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
	s2\p s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
	s2\f s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }

	s2\f s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
	s8 s8\mf s2. | s2 s4\> s4\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
	s4 s4\mf s2 | s4 s2\> s4\! \bar "|." \mark\markup { \musicglyph #"scripts.ufermata" }
}

text = \lyricmode {
	А -- минь. Гос -- по -- ди по -- ми -- луй. Гос -- по -- ди по -- ми -- луй.
	Гос -- по -- ди по -- ми -- луй. Гос -- по -- ди по -- ми -- луй. Гос -- по -- ди по -- ми -- луй. 
	Гос -- по -- ди по -- ми -- луй. Гос -- по -- ди по -- ми -- луй. Гос -- по -- ди по -- ми -- луй. 
	Гос -- по -- ди по -- ми -- луй. Гос -- по -- ди по -- ми -- луй. Гос -- по -- ди по -- ми -- луй. Гос -- по -- ди по -- ми -- луй. 
	Гос -- по -- ди по -- ми -- луй. Те -- бѣ Гос -- по -- ди. А -- минь.
}

\score {
	\new ChoirStaff <<
		\new Staff = trebStaff {
			\clef treble \time 4/4 \key c \major
			<<
			\new Voice { \dynamicUp \override DynamicText #'X-offset = #1 \dyn }
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
		\context {
			\Score
			\remove Bar_number_engraver
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -8 -15.5)))
		}
	}
	\header { piece = "1. Первая Ектенія" }
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

