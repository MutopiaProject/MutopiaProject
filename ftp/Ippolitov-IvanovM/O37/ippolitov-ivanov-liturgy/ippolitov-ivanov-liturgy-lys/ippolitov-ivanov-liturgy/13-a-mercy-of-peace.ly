divisiLayoutII = {
	\overrideProperty
	#"Score.NonMusicalPaperColumn"
	#'line-break-system-details
	#'((alignment-offsets . (
		0
		-5.5
		-11.5
		-13.5
		-21.5
		-27.5
	)))
}
divisiLayoutI = {
	\overrideProperty
	#"Score.NonMusicalPaperColumn"
	#'line-break-system-details
	#'((alignment-offsets . (
		-0
		-6
		-8
		-8
		-16
		-22
	)))
}


sopNotes = {
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Медленно."} \set Score.tempoWholesPerMinute = #(ly:make-moment 60 4)
	% Милость
	b'2 a' | fis'2 fis' | b'2 b'4 a' | fis'2 e' | fis'2 r2 | \break
	% И со духомъ
	g'4 a' b'2 | g'4 a' b'2 |
	% Имамы
	b'4. c''8 d''4 c''8([ b']) | c''4 c'' b'2 | \break
	% Достойно
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Съ умѣренною скоростью."} \set Score.tempoWholesPerMinute = #(ly:make-moment 76 4) \newSpacingSection
	r2 r4 b'4 | d''4 c''8 b'8 e''4 d''8 c'' | d''2 r4
	b'8 c'' | d''8 d'' d'' d'' d''4 c''8([ b']) | c''2 b'8 r8
	b'8 c'' | d''4 c''8([ b']) c''2 | b'2
	b'4. b'8 | b'8 b' c'' d'' e''2 | d''2
	d''4 c''8 b' | c''2 b' |
	% Святъ
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Скоро."} \set Score.tempoWholesPerMinute = #(ly:make-moment 110 4)
	b'2 d'' | g''2.-> b'8 c'' | d''4( e'') b'4 a'4 | \break \divisiLayoutI c''2.
	c''4 | b'2 b'8 b' cis'' dis'' | e''4 e''2-> c''4 | b'2 a' | g'8 r8 r4 r4
	\context Voice = sopDivisi { \voiceOne
		r4 | \break \divisiLayoutII r4 g''4 g''2( | b'4) c'' d''2 ~ | d''2 g'4 \once\override Rest #'staff-position = #0 r4 |
		r2 r4 g''4 | g''2( b'4) c'' |
	}
	b'2( a') | b'8 r8
	b'4 b' b' | cis''4 dis'' e'' e'' | d''2 g'4 c'' | b'2( a') | g'8 r8
	g'4 b' c'' | d''1 | g'2 r2\fermata |
	% Аминь
	\set Score.tempoWholesPerMinute = #(ly:make-moment 80 4)
	r2 b'2 | d''1 |
	% Аминь
	c''1 | b'1 |
}

altNotes = {
	% Милость
	g'2 e' | dis'2 dis' | e'2 e'4 e' | dis'2 e' | dis'2 r2 |
	% И со духомъ
	e'4 fis' fis'2 | e'4 fis' g'2 |
	% Имамы
	g'4. g'8 g'4 g' | g'4 fis' g'2 |
	% Достойно
	r2 r4 g'4 | g'4 g'8 g' g'4 g'8 g' | g'2 r4
	g'8 g' | g'8 g' g' g' g'4 g' | g'4( fis') g'8 r8
	g'8 g' | g'4 g' g'( fis') | g'2
	g'4. g'8 | g'8 g' g' g' g'2 | g'2 g'4
	g'8 g' | g'4( fis') g'2 |
	% Святъ
	g'2 a' | g'2. fis'8 g' | g'2 g'4 fis' | a'2.
	a'4 | fis'2 dis'8 dis' e' fis' | g'4 g'2 g'4 | g'2 fis'2 | d'8 r8 r4 r4
	\context Voice = altDivisi { \voiceTwo
		d''4 | c''2( b' | g'4) g' g'2( | fis'2) g'4 s4 |
		r4 d''4 c''2( | b'2 g'4) g' |
	}
	g'2( a') | fis'8 r8
	fis'4 fis' fis' | b'4 b' b' c'' | b'2 g'4 g' | g'2( fis') | e'8 r8
	e'4 g' g' | g'2( fis') | d'2 r2 |
	% Аминь
	r2 g'2 | g'1 |
	% Аминь
	fis'1 | g'1 |
}

tenNotes = {
	% Милость
	d'2 c' | b2 b | b2 b4 c' | b2 c' | b2 r2 |
	% И со духомъ
	b4 d' d'2 | b4 d' d'2 |
	% Имамы
	d'4. d'8 d'4 d' | d'4 d' d'2 |
	% Достойно
	r2 r4 d'4 | d'4 d'8 d' c'4 d'8 d' | d'2 r4
	d'8 d' | d'8 d' d' d' d'4 d' | d'2 d'8 r8
	d'8 d' | d'4 d' d'2 | d'2
	d'4. d'8 | d'8 d' d' d' c'2 | d'2
	d'4 d'8 d' | d'2 d' |
	% Святъ
	d'2 d' | b2. b8 e' | d'4( c') b d' | e'2.
	e'4 | dis'2 b8 b b b | b4 c'2 c'4 | d'2 c' | b8 r8
	\context Voice = tenDivisi { \voiceOne
		<b g'>4 <d' fis'>2 | <e' g'>4 e' d'2 ~ | d'4 e' b2( | <a c'>2) <g b>4
		<b g'>4 | <d' fis'>2 <e' g'>4 e' | d'2. e'4 |
	}
	d'2( e') | dis'8 r8
	dis'4 dis' dis' | e'4 fis' g' g' | g'2 b4 e' | d'2( c') | b8 r8
	b4 d' e' | d'2( c') | b2 r2 |
	% Аминь
	r2 d'2 | d'1 |
	% Аминь
	d'1 | d'1 |
}

basNotes = {
	% Милость
	g2 a | b2 b4( a) | g2 g4 a | b2 c' | b2 r2 |
	% И со духомъ
	e4 d b,2 | e4 d g,2 |
	% Имамы
	g4. a8 b4 a8([ g]) | a4 a g2 |
	% Достойно
	r2 r4 g4 | b4 a8 g c'4 b8 a | b2 r4
	g8 a | b8 b b b b4 a8([ g]) | a2 g8 r8
	g8 a | b4 a8([ g]) a2 | g2
	g4. g8 | g8 g a b c'2 | b2
	b4 a8 g | a2 g |
	% Святъ
	g2 fis | e2.-> d8 c | b,4( c) d d | a2.
	a4 | b2 a8 a g fis | e4 c2-> e4 | d2 d | g,8 r8
	\context Voice = basDivisi { \voiceTwo
		g,4 g,2 | g,2 g, | g,4 g, g,2 ~ | g,2 g,4
		g,4 | g,1 ~ | g,2. g,4 |
	}
	g,2( c) | b,8 r8
	a4 a a | g4 fis e c | d2 e4 c | d1 | e8 r8
	e4 d c | b,2( a,) | g,2 r2\fermata |
	% Аминь
	r2 g2 | b1 |
	% Аминь
	a1 | g1 |
}

dyn = {
	\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	% Милость
	s1\p | s2\> s2\! | s1\p | s1 | s2\> s2\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
	% И со духомъ
	s1\mf | s1 \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
	% Имамы
	s2\p\< s2\! | s2\> s2\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
	% Достойно
	s2. s4\mf | s1 | s2.
	s4\mf | s1 | s2\> s4\!
	s4\< | s2\! s2\> | s2\!
	s2\mf\< | s4. s8\! s2\> | s2\!
	s2\mf | s2\> s2\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
	% Святъ
	s1\f | s1*2 | s2.
	s4\f | s2 s2\< | s1\! | s1 | s4
	s2.\f | s1*2 | s2.
	s4\f | s1*3 | s4
	s2.\mf\< | s2. s4\! | s1*2 | s4
	s2\mf\< s4\! | s1\> | s1\! \bar "||"
	% Аминь
	s2 s2\mf | s2\> s2\! \bar "||" \mark\markup { \musicglyph #"scripts.ufermata" }
	% Аминь
	s1\p | s2\> s2\! \bar "|."
}

text = \lyricmode {
	Ми -- лость ми -- ра, жерт -- ву хва -- ле -- ні -- я.

	И со ду -- хомъ тво -- имъ.

	И -- ма -- мы ко Гос -- по -- ду.

	Дос -- той -- но и пра -- вед -- но естъ,
	по -- кло -- ня -- ти -- ся От -- цу и Сы -- ну,
	и Свя -- то -- му Ду -- ху.
	Тро -- и -- цѣ е -- ди -- но -- сущ -- нѣй
	и не -- раз -- дѣль -- нѣй.

	Святъ, Святъ, Святъ Гос -- подь Богъ __ Са -- ва -- офъ.
	Ис -- полнь не -- бо и зем -- ля сла -- вы Тво -- е -- я,
	\override LyricText #'extra-offset = #'(0 . 1) \override LyricHyphen #'extra-offset = #'(0 . 1)
	въ~выш -- нихъ, бла -- го -- сло -- венъ гря -- дый во и -- мя Гос -- под --
	\revert LyricText #'extra-offset \revert LyricHyphen #'extra-offset
	не, о -- сан -- на въ~выш -- нихъ.
	
	А -- минь.
	А -- минь.
}

sopText = \lyricmode {
	о -- сан -- на въ~выш -- нихъ, о -- сан -- на
}
altText = \lyricmode {
	о -- сан -- на въ~выш -- нихъ, о -- сан -- на
}
tenText = \lyricmode {
	о -- сан -- на, о -- сан -- на въ~выш -- нихъ, о -- сан -- на, о -- сан -- на
}
basText = \lyricmode {
	о -- сан -- на, о -- сан -- на въ~выш -- нихъ, о -- сан -- на
}

\score {
	\new ChoirStaff <<
		\new Lyrics = sopDivisiLyrics { s1 }
		\new Staff = trebStaff \with { \consists Mark_engraver } {
			\clef treble \time 4/4 \key g \major
			<<
			\new Voice { \dynamicUp \dyn }
			\new Voice = sopVoice { \override Rest #'staff-position = #0 \autoBeamOff \voiceOne \sopNotes }
			\new Voice = altVoice { \override Rest #'transparent = ##t   \autoBeamOff \voiceTwo \altNotes }
			>>
		}
		\new Lyrics = altDivisiLyrics { s1 }
		\new Lyrics \lyricsto sopVoice { \text }
		\new Lyrics = tenDivisiLyrics { s1 }
		\new Staff = bassStaff {
			\clef bass \time 4/4 \key g \major
			<<
			\new Voice = tenVoice { \override Rest #'transparent = ##t   \autoBeamOff \voiceOne \tenNotes }
			\new Voice = basVoice { \override Rest #'staff-position = #0 \autoBeamOff \voiceTwo \basNotes }
			>>
		}
		\new Lyrics = basDivisiLyrics { s1 }
		
		\context Lyrics = sopDivisiLyrics \lyricsto sopDivisi { \sopText }
 		\context Lyrics = altDivisiLyrics \lyricsto altDivisi { \altText }
		\context Lyrics = tenDivisiLyrics \lyricsto tenDivisi { \tenText }
		\context Lyrics = basDivisiLyrics \lyricsto basDivisi { \basText }
	>>
	\layout {
		system-count = 9
		\context {
			\Score
			\remove Mark_engraver
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . ( 0 -9 -17 )))
		}
		\context {
			\Staff
			\override RehearsalMark #'outside-staff-priority = #-1000
		}
	}
	\header { piece = "13. Милость Мира" }
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
  \midi { }
}

