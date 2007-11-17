narrowLayout = {
	\overrideProperty
	#"Score.NonMusicalPaperColumn"
	#'line-break-system-details
	#'((alignment-offsets . ( 0 -8 -16 )))
}

sopNotes = {
	\time 3/4 \partial 4
	a'8 a'8 | b'4 c''8 r8 a'8 a'8 | b'4 c''8 a'8 b'8 c''8 | d''2 c''8 c''8 | b'2-> b'4 |
	%5
	c''8 c''8 c''4. d''8 | d''4 d''8 r8 d''8 d''8 | d''8 e''8 c''4 c''8 r8 | r8 c''8 d''4 d''8 c''8 | d''4. r8 a'8 b'8 |
	%10
	c''4 d''8 r8 c''8 d''8 | e''4 f''8 r8 e''8 f''8 | g''2( f''4) | e''2. \bar "||"
	%14
	\time 4/4 d''4. d''8 d''4 r8 d''8 | d''8 d''8 d''8 d''8 d''4. c''8 | d''8 r8 d''8 c''8 d''4 b'4 | c''2 r2 \bar "||"
	%18
	\narrowLayout \key d \minor \time 3/4 r4 r4 cis''4 | cis''2\fermata a'8 b'8 | cis''4 d''8 r8 a'8 b'8 | cis''4 d''8 cis'' d'' e'' | \time 4/4 g''4 f''8 f'' e''4 d'' |
	%23
	\narrowLayout \time 3/4 cis''2 a'8 b'8 | cis''4 d''8 r8 a'8 b'8 | cis''4 d''8 cis'' d'' e'' | \time 4/4 g''4 f''8 f'' e''4 d'' |\time 3/4 cis''2 a'8 b'8 |
	%28
	\narrowLayout cis''4 d''8 r8 a'8 b'8 | cis''4 d''8 cis'' d'' e'' | \time 4/4 g''4 f''8 f'' e''4 d'' | \time 3/4 cis''2 r4 \bar "||" \break
	%32
	\narrowLayout a'4 a'8 a'8 a'8 a'8 | b'8 b'8 b'8 b'8 b'8 b'8 | cis''4 cis''8 r8 cis''4 | d''4 d''8 r8 d''4 | a'4 a'8 r8 a'8 a'8 | \pageBreak
	%37
	\narrowLayout f'4 f'4 f'4 | g'2 g'4 | a'4. cis''8 d''8 e''8 | \time 4/4 g''4 f''8 f''8 e''4 e''4 | \time 3/4 d''2 a'8 b'8 |
	%42
	\narrowLayout cis''4 d''8 r8 a'8 b'8 | cis''4 d''8 cis'' d'' e'' | \time 4/4 g''4 f''8 f'' e''4 e'' | d''2-> r2 \bar "|."
}
altNotes = {
	\time 3/4 \partial 4
	f'8 f'8 | a'4 a'8 r8 f'8 f'8 | a'4 a'8 f'8 a'8 a'8 | a'2 a'8 a'8 | gis'2 gis'4 |
	a'8 a'8 a'4. b'8 | b'4 b'8 r8 b'8 b'8 | b'8 b'8 a'4 a'8 r8 | r8 a'8 a'4 a'8 a'8 | a'4. r8 f'8 f'8 |
	
	f'4 f'8 r8 a'8 a'8 | a'4 a'8 r8 c''8 c''8 | c''2( g'4) | g'2. | a'4. a'8 a'4 r8 a'8 | a'8 a'8 a'8 a'8 a'4. a'8 |
	a'8 r8 a'8 a'8 a'4 g'4 | g'2 r2 | \key d \minor r4 r4 e'4 | e'2 f'8 f'8 | e'4 d'8 r8 f'8 f'8 |
	e'4 d'8 e'8 f' g' | bes'4 a'8 a'8 a'4 gis'4 | a'2 f'8 f'8 | e'4 d'8 r8 f'8 f'8 |

	e'4 d'8 e'8 f' g' | bes'4 a'8 a'8 a'4 gis'4 | a'2 f'8 f'8 | e'4 d'8 r8 f'8 f'8 | e'4 d'8 e'8 f' g' |
	bes'4 a'8 a'8 a'4 gis'4 | a'2 r4 | e'4 e'8 e'8 e'8 e'8 | a'8 a'8 a'8 a'8 a'8 a'8 | a'4 a'8 r8 a'4 |
	a'4 a'8 r8 a'4 | a'4 a'8 r8 e'8 e'8 | d'4 d'4 d'4 | d'2 d'4 | cis'4. e'8 f'8 g'8 | bes'4 bes'8 bes'8 bes'4 a'8([ g']) |
	
	f'2 f'8 f'8 | e'4 d'8 r8 f'8 f'8 | e'4 d'8 e'8 f' g' | bes'4 bes'8 bes'8 bes'4 a'8([ g']) | f'2 r2 |
}
tenNotes = {
	\time 3/4 \partial 4
	c'8 c'8 | f'4 e'8 r8 c'8 c'8 | f'4 e'8 c'8 f'8 e'8 | f'2 e'8 e'8 | e'2 e'4 |
	e'8 e'8 e'4. g'8 | g'4 g'8 r8 g'8 g'8 | g'8 g'8 e'4 e'8 r8 | r8 e'8 f'4 f'8 f'8 | f'4. r8 d'8 d'8 |
	
	a4 a8 r8 c'8 c'8 | c'4 c'8 r8 c'8 d'8 | e'2( b4) | c'2. | f'4. f'8 f'4 r8 f'8 | f'8 f'8 f'8 f'8 f'4. e'8 |
	f'8 r8 f'8 e'8 f'4 d'4 | e'2 r2 | \key d \minor r4 r4 a4 | a2 a8 a8 | a4 a8 r8 a8 a8 |
	a4 a8 a8 a8 c'8 | d'4 d'8 d'8 cis'4 d'4 | e'2 a8 a8 | a4 a8 r8 a8 a8 |

	a4 a8 a8 a8 c'8 | d'4 d'8 d'8 cis'4 d'4 | e'2 a8 a8 | a4 a8 r8 a8 a8 | a4 a8 a8 a8 c'8 |
	d'4 d'8 d'8 cis'4 d'4 | e'2 r4 | cis'4 cis'8 cis'8 cis'8 cis'8 | d'8 d'8 d'8 d'8 d'8 d'8 | e'4 e'8 r8 e'4 |
	f'4 f'8 r8 f'4 | e'4 e'8 r8 a8 a8 | bes4 f4 f4 | e2 e4 | e4. a8 a8 c'8 | d'4 d'8 d'8 d'4 cis'4 |
	
	a2 a8 a8 | a4 a8 r8 a8 a8 | a4 a8 a8 a8 c'8 | d'4 d'8 d'8 d'4 cis'4 | a2 r2 |
}
basNotes = {
	\time 3/4 \partial 4
	f8 f8 | d4 a,8 r8 f8 f8 | d4 a,8 f8 d8 a,8 | d2 a8 a8 | e2-> e4 |
	a8 a8 a4. g8 | g4 g8 r8 g8 g8 | g8 e8 a4 a8 r8 | r8 a,8 d4 d8 f8 | d4. r8 d8 d8 |
	
	f4 d8 r8 f8 f8 | a4 f8 r8 a8 a8 | g2. | c2. | d4. d8 d4 r8 d8 | d8 d8 d8 d8 d4. a,8 |
	d8 r8 d8 a,8 d4 g,4 | c2 r2 | \key d \minor r4 r4 a,4 | a,2\fermata d8 d8 | a4 f8 r8 d8 d8 |
	a4 f8 a8 d8 c8 | g4 d8 d8 a4 bes4 | a2 d8 d8 | a4 f8 r8 d8 d8 |

	a4 f8 a8 d8 c8 | g4 d8 d8 a4 bes4 | a2 d8 d8 | a4 f8 r8 d8 d8 | a4 f8 a8 d8 c8 |
	g4 d8 d8 a4 bes4 | a2 r4 | a4 a8 a8 a8 a8 | f8 f8 f8 f8 f8 f8 | e4 e8 r8 e4 |
	d4 d8 r8 d4 | c4 c8 r8 c8 c8 | bes,4 bes, bes, | bes,2 bes,4 | a,4. a,8 d8 c8 | g4 bes8 bes g4 a4 |
	
	d2 d8 d8 | a4 f8 r8 d8 d8 | a4 f8 a8 d8 c8 | g4 bes8 bes8 g4 a4 | d2-> r2 |
}
dyn = {
	\time 3/4 \partial 4
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Не скоро."}
	\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\override DynamicText #'X-offset = #-1
	s8\p\< s8\! | s4\> s4\! s8\< s8\! | s4\> s8\! s8\p\< s8 s8\! | s2.\mf | s2 s4\p |
	s2\< s8 s8\! | s4\> s4\! s4\mf | s4 s4\> s4\! | s8 s8\f s2 | s4\> s4\! s8\p\< s8\! |
	
	s2 s4\mf\< | s2\! s4\f | s2. | s2\> s4\! | \pageBreak \once\override Staff.RehearsalMark #'extra-offset = #'(-3.25 . 0) \mark\markup{ \musicglyph #"scripts.ufermata" } s1*0^\markup{"" \translate #'(-3 . 0) \bold "Умѣренно."} s1\f | s1 |
	s1 | s2\> s2\! | \once\override Staff.RehearsalMark #'extra-offset = #'(-5.5 . 0) \mark\markup{ \musicglyph #"scripts.ufermata" } s2^\markup{"" \translate #'(-3 . 0) \bold "Медленно."} s4\f | s2 s4\mf | s4\> s4\! s4\mf |
	s4\> s8\! \once\override Hairpin #'extra-offset = #'(0.5 . -0.5)  s4\< s8\! | s1\f | s2\> s4\!\mf | s4\> s4\! s4\mf |
	
	s4\> s8\! \once\override Hairpin #'extra-offset = #'(0.5 . -0.5)  s4\< s8\! | s1\f | s2\> s4\!\p | s4\> s4\! s4\p | s4\> s8\! \once\override Hairpin #'extra-offset = #'(0.5 . -0.5)  s4\< s8\! |
	s1\f | s2\> s4\! | s1*0^\markup{"" \translate #'(-3 . 0) \bold "Немного скорѣе."} s2.\p | s2\< s8 s8 | s4\!\mf\> s2\! |
	s4\> s2\! | s4\> s4\! s4\mf | s2.^\markup{\italic "замедляя" } | s2.\> | s4.\! s1*0^\markup{"" \translate #'(-3 . 0) \bold "Медленно."} s4\p\< s8\! | s1\f |
	
	s2\> s4\!\f | s4\> s2\! | s4\> s8\! \once\override Hairpin #'extra-offset = #'(0.5 . -0.5) s4\< s8\! | \override DynamicText #'X-offset = #-2 s1\ff | s1 | \mark\markup{ \musicglyph #"scripts.ufermata" }
}

text = \lyricmode {
	Прі -- и -- ди -- те, по -- кло -- ним -- ся и при -- да -- демъ ко Хри -- сту, спа --
	си ны, Сы -- не Бо -- жій, вос -- кре -- сый изъ мерт -- выхъ, по -- ю -- щі -- я Ти, ал -- ли --
	
	луй -- я, ал -- ли -- луй -- я, ал -- ли -- луй -- я. Гос -- по -- ди, спа -- си бла -- го -- чес -- ти -- вы --
	я и ус -- лы -- ши ны. А -- минь. Свя -- тый Бо -- же, Свя -- тый
	крѣп -- кій, Свя -- тый без -- смерт -- ный по -- ми -- луй насъ. Свя -- тый Бо -- же, Свя -- тый

	крѣп -- кій, Свя -- тый без -- смерт -- ный по -- ми -- луй насъ. Свя -- тый Бо -- же, Свя -- тый крѣп -- кій, Свя -- тый без --
	смерт -- ный по -- ми -- луй насъ. Сла -- ва От -- цу и Сы -- ну и Свя -- то -- му Ду -- ху и
	ны -- нѣ, и прис -- но, и во вѣ -- ки вѣ -- ковъ. А -- минь. Свя -- тый без -- смерт -- ный по -- ми -- луй
	
	насъ. Свя -- тый Бо -- же, Свя -- тый крѣп -- кій, Свя -- тый без -- смерт -- ный по -- ми -- луй насъ.
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
		system-count = 10
		\context {
			\Score
			\remove Mark_engraver
			\override BarNumber #'extra-offset = #'(-0.75 . 0.25)
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -8.25 -16.5)))
		}
		\context {
			\Staff
			\override RehearsalMark #'outside-staff-priority = #-1000
		}
	}
	\header { piece = "7. Послѣ Малого Входа" }
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

