primo = \markup{ \italic "1-й хоръ." }
secondo = \markup{ \italic "2-й хоръ." }
both = \markup { \italic "Вмѣстѣ оба хора." }

sopNotes = {
	\set Score.tempoWholesPerMinute = #(ly:make-moment 76 4)
	\time 3/4 \key c \major
	r8 c''8 e''8 e''8 d''8 e''8 | d''4( c''4) c''8 d''8 | e''8 e''8 d''4. d''8 | c''2 c''4 |
	
	b'8 b'8 b'8 b'8 a'8 gis'8 | a'4.-> a'8 a'8 a'8 | gis'2 r4 | r8 c''8 e''4. e''8 | e''4 d''8 e''8 d''8 c''8 |
	c''8 d''8 e''4. e''8 | e''4 d''8 e''8 d''8 c''8 | c''2 c''4 | b'8 b'8 b'4-> b'8 b'8 | \time 4/4 b'4 b'8 b'8 b'4 a'8 gis'8 |
	a'4 a'4 gis'2 | \time 3/4 r8 c''8 e''4. e''8 | d''8 c''8 c''4 c''8 d''8 | e''4 e''8 e''8 d''8 e''8 | d''4 c''4 c''4 |
	
	b'8 b'8 b'4-> b'8 b'8 | b'8 b'8 b'8 b'8 b'8 b'8 | b'4 b'4 b'8 b'8 | \time 4/4 b'4 a'8 gis'8 a'4 a'4 | \time 3/4
	gis'2-> r4 | r8 c''8 e''4. e''8 | \time 4/4 d''8 c''8 c''8 c''8 c''4 c''8 d''8 | e''4 e''8 e''8 e''8 e''8 d''8 e''8 | \time 3/4
	d''4 c''4 c''4 | b'8 b'8 b'4 b'8 b'8 | b'4 b'4 b'8 b'8 | \time 4/4 b'8 b'8 a'8 gis'8 a'2 | \time 3/4 gis'2-> r4 |
	
	r8 c''8 e''8 e''8 d''8 e''8 | d''4 c''4 c''8 d''8 | e''8 e''8 e''4 e''8 e''8 | \time 4/4 e''8 e''16 e''16 d''8 e''8 d''4 c''8 c''8 | \time 3/4
	b'4 b'8 b'8 b'8 b'8 | b'4. b'8 b'8 b'8 | b'8 b'8 b'4 b'4 | \time 4/4 b'4 a'8 gis'8 a'4 a'4 | \time 3/4 gis'2-> r4 |
	r8 c''8 e''4 e''8 e''8 | d''4( c''8) r8 c''8([ d''8]) | e''4. e''8 e''8 e''8 | d''4( c''8) c''8 c''8 d''8 | e''2-> c''8 d''8 |
	
	e''4 e''4 e''8 e''8 | e''4. e''8 e''4 | \time 4/4 e''8 e''8 d''8 e''8 d''4 c''4 | \time 3/4 b'4. b'8 b'4 | \time 4/4 b'4 a'8 gis'8 b'4 b'4 | \time 3/4
	b'8 b'8 b'4 a'8 gis'8 | a'4 a'8 a'8 a'8 a'8 | gis'2-> r4 \bar "||" gis'4 gis'8 gis'8 gis'8 gis'8 | gis'4 gis'8 r8 gis'8 gis'8 |
	b'2 a'4 | gis'4 gis'8 r8 e'4 | gis'4 gis'8 r8 e'4 | gis'4 gis'8 r8 gis'8 a'8 | b'4 b'4 a'4 | gis'2 fis'4 |
	
	gis'2 a'8 b'8 | \time 4/4 c''4 b'4 d''4. d''8 | c''4. c''8 b'4. b'8 | b'8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 |
	a'2. a'8 b'8 | c''4 b'4 d''4. d''8 | c''4. c''8 b'4. b'8 | b'8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 |
	a'2. a'8 b'8 | c''4 b'4 d''4. d''8 | c''4. c''8 f''4. f''8 | b'8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 | a'2 r2 \bar "|."
}
altNotes = {
	r8 a'8 a'8 a'8 a'8 a'8 | a'2 a'8 a'8 | a'8 a'8 a'4. a'8 | a'2 a'4 |
	
	e'8 e'8 e'8 e'8 e'8 e'8 | e'4. e'8 dis'8 dis'8 | e'2 r4 | r8 a'8 a'4. a'8 | a'4 a'8 a'8 a'8 a'8 |
	a'8 a'8 a'4. a'8 | a'4 a'8 a'8 a'8 a'8 | a'2 a'4 | e'8 e'8 e'4 e'8 e'8 | e'4 e'8 e'8 e'4 e'8 e'8 |
	e'4 dis'4 e'2 | r8 a'8 a'4. a'8 | a'8 a'8 a'4 a'8 a'8 | a'4 a'8 a'8 a'8 a'8 | a'4 a'4 a'4 |
	
	e'8 e'8 e'4 e'8 e'8 | e'8 e'8 e'8 e'8 e'8 e'8 | e'4 e'4 e'8 e'8 | e'4 e'8 e'8 e'4 dis'4 |
	e'2 r4 | r8 a'8 a'4. a'8 | a'8 a'8 a'8 a'8 a'4 a'8 a'8 | a'4 a'8 a'8 a'8 a'8 a'8 a'8 |
	a'4 a'4 a'4 | e'8 e'8 e'4 e'8 e'8 | e'4 e'4 e'8 e'8 | e'8 e'8 e'8 e'8 e'4( dis'4) | e'2 r4 |
	
	r8 a'8 a'8 a'8 a'8 a'8 | a'4 a'4 a'8 a'8 | a'8 a'8 a'4 a'8 a'8 | a'8 a'16 a'16 a'8 a'8 a'4 a'8 a'8 |
	e'4 e'8 e'8 e'8 e'8 | e'4. e'8 e'8 e'8 | e'8 e'8 e'4 e'4 | e'4 e'8 e'8 e'4 dis'4 | e'2 r4 |
	r8 a'8 a'4 a'8 a'8 | a'4. r8 a'4 | a'4. a'8 a'8 a'8 | a'4. a'8 a'8 a'8 | a'2 a'8 a'8 |
	
	a'4 a'4 a'8 a'8 | a'4. a'8 a'4 | a'8 a'8 a'8 a'8 a'4 a'4 | e'4. e'8 e'4 | e'4 e'8 e'8 e'4 e'4 |
	e'8 e'8 e'4 e'8 e'8 | e'4 e'8 e'8 dis'8 dis'8 | e'2 r4 | e'4 e'8 e'8 e'8 e'8 | e'4 e'8 r8 e'8 e'8 |
	gis'2 e'4 | e'4 e'8 r8 cis'4 | e'4 e'8 r8 cis'4 | e'4 e'8 r8 e'8 e'8 | e'4 e'4 e'4 | e'2 dis'4 |

	e'2 e'8 e'8 | e'4 e'4 d'4. d'8 | e'4. e'8 dis'4. dis'8 | dis'8 dis'8 dis'8 dis'8 e'8 e'8 d'8 d'8 |
	c'2. e'8 e'8 | e'4 e'4 d'4. d'8 | e'4. e'8 dis'4. dis'8 | dis'8 dis'8 dis'8 dis'8 e'8 e'8 d'8 d'8 |
	c'2. e'8 e'8 | e'4 e'4 d'4. d'8 | e'4. e'8 f'4. f'8 | a'8 a'8 a'8 a'8 gis'8 gis'8 gis'8 gis'8 | e'2 r2 |
}
tenNotes = {
	\time 3/4 \key c \major
	r8 e'8 e'8 e'8 e'8 e'8 | e'2 e'8 e'8 | e'8 e'8 e'4. e'8 | e'2 e'4 |
	
	e'8 b8 b8 b8 b8 b8 | b4. b8 b8 b8 | b2 r4 | r8 e'8 e'4. e'8 | e'4 e'8 e'8 e'8 e'8 |
	e'8 e'8 e'4. e'8 | e'4 e'8 e'8 e'8 e'8 | e'2 e'4 | e'8 b8 b4 b8 b8 | b4 b8 b8 b4 b8 b8 |
	b4 b4 b2 | r8 e'8 e'4. e'8 | e'8 e'8 e'4 e'8 e'8 | e'4 e'8 e'8 e'8 e'8 | e'4 e'4 e'4 |
	
	e'8 b8 b4 b8 b8 | b8 b8 b8 b8 b8 b8 | b4 b4 b8 b8 | b4 b8 b8 b4 b4 |
	b2 r4 | r8 e'8 e'4. e'8 | e'8 e'8 e'8 e'8 e'4 e'8 e'8 | e'4 e'8 e'8 e'8 e'8 e'8 e'8 |
	e'4 e'4 e'4 | e'8 b8 b4 b8 b8 | b4 b4 b8 b8 | b8 b8 b8 b8 b2 | b2 r4 |
	
	r8 e'8 e'8 e'8 e'8 e'8 | e'4 e'4 e'8 e'8 | e'8 e'8 e'4 e'8 e'8 | e'8 e'16 e'16 e'8 e'8 e'4 e'8 e'8 |
	e'4 b8 b8 b8 b8 | b4. b8 b8 b8 | b8 b8 b4 b4 | b4 b8 b8 b4 b4 | b2 r4 |
	r8 e'8 e'4 e'8 e'8 | e'4. r8 e'4 | e'4. e'8 e'8 e'8 | e'4. e'8 e'8 e'8 | e'2 e'8 e'8 |
	
	e'4 e'4 e'8 e'8 | e'4. e'8 e'8 e'8 | e'8 e'8 e'8 e'8 e'4 e'4 | b4. b8 b4 | b4 b8 b8 b4 b4 |
	b8 b8 b4 b8 b8 | b4 b8 b8 b8 b8 | b2 r4 | b4 b8 b8 b8 b8 | cis'4 cis'8 r8 cis'8 cis'8 |
	dis'2 cis'4 | b4 b8 r8 a4 | b4 b8 r8 a4 | b4 b8 r8 cis'8 cis'8 | d'4 d'4 cis'4 | b2 b4 |
	
	b2 a8 gis8 | a4 b4 a4. a8 | a4. a8 fis4. fis8 | fis8 fis8 fis8 fis8 gis8 gis8 gis8 gis8 |
	e2. a8 gis8 | a4 b4 a4. a8 | a4. a8 fis4. fis8 | fis8 fis8 fis8 fis8 gis8 gis8 gis8 gis8 |
	e2. a8 gis8 | a4 b4 a4. a8 | a4. a8 a4. a8 | f'8 f'8 f'8 f'8 e'8 e'8 d'8 d'8 | c'2 r2 |
}
basNotes = {
	r8 a8 c'8 c'8 b8 c'8 | b4( a4) a8 b8 | c'8 c'8 b4. b8 | a2 a4 |
	
	gis8 gis8 gis8 gis8 fis8 e8 | fis4.-> fis8 b,8 b,8 | e2 r4 | r8 a8 c'4. c'8 | c'4 b8 c'8 b8 a8 |
	a8 b8 c'4. c'8 | c'4 b8 c'8 b8 a8 | a2 a4 | gis8 gis8 gis4-> gis8 gis8 | gis4 gis8 gis8 gis4 fis8 e8 |
	fis4 b,4 e2 | r8 a8 c'4. c'8 | b8 a8 a4 a8 b8 | c'4 c'8 c'8 b8 c'8 | b4 a4 a4 |
	
	gis8 gis8 gis4-> gis8 gis8 | gis8 gis8 gis8 gis8 gis8 gis8 | gis4 gis4 gis8 gis8 | gis4 fis8 e8 fis4 b,4 |
	e2-> r4 | r8 a8 c'4. c'8 | b8 a8 a8 a8 a4 a8 b8 | c'4 c'8 c'8 c'8 c'8 b8 c'8 |            
	b4 a4 a4 | gis8 gis8 gis4 gis8 gis8 | gis4 gis4 gis8 gis8 | gis8 gis8 fis8 e8 fis4( b,4) | e2-> r4 |
	
	r8 a8 c'8 c'8 b8 c'8 | b4 a4 a8 b8 | c'8 c'8 c'4 c'8 c'8 | c'8 c'16 c'16 b8 c'8 b4 a8 a8 |
	gis4 gis8 gis8 gis8 gis8 | gis4.  gis8 gis8 gis8 | gis8 gis8 gis4 gis4 |  gis4 fis8 e8 fis4 b,4 | e2-> r4 |
	r8 a8 c'4 c'8 c'8 | b4( a8) r8 a8([ b8]) | c'4. c'8 c'8 c'8 | b4( a8) a8 a8 b8 | c'2-> a8 b8 |
	
	c'4 c'4 c'8 c'8 | c'4. c'8 c'4 | c'8 c'8 b8 c'8 b4 a4 | gis4. gis8 gis4 | gis4 fis8 e8 gis4 gis4 |
	gis8 gis8 gis4 fis8 e8 | fis4 fis8 fis8 b,8 b,8 | e2-> r4 | e4 e8 e8 e8 e8 | cis4 cis8 r8 cis8 cis8 |
	gis2 a4 | e4 e8 r8 a,4 | e4 e8 r8 a,4 | e4 e8 r8 cis8 a,8 | gis,4 gis,4 a,4 | b,2 b,4 |
	
	e2 c8 b,8 | a,4 g,4 f,4. f,8 | a,4. a,8 b,4. b,8 | b,8 b,8 b,8 b,8 e8 e8 e8 e8 |
	a,2. c8 b,8 | a,4 g,4 f,4. f,8 | a,4. a,8 b,4. b,8 | b,8 b,8 b,8 b,8 e8 e8 e8 e8 |
	a,2. c8 b,8 | a,4 g,4 f,4. f,8 | a,4. a,8 d4. d8 | d8 d8 d8 d8 e8 e8 e8 e8 | a,2 r2 |
}
dyn = {
	\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Съ умѣренной скоростью."}
	\set hairpinToBarline = ##f
	\once\override DynamicText #'X-offset = #2
	s2.\mf | s2 s8\< s8\! | s4 s2\> | s2\! s4\p | \override TextScript #'self-alignment-X = #CENTER
	
	s2. | s2. | s2. \bar "||" s8 \once\override DynamicText #'X-offset = #-2 s8^\primo\mf s2 | s2. |
	s8\< s8\! s2 | s2. | s2 \once\override DynamicText #'X-offset = #-1 s4^\secondo\p | s2. | s1 |
	s2 s4\> s4\! | s8 \once\override DynamicText #'X-offset = #-2 s8^\primo\mf s2 | s2 s4\< | s2.\! | s4\> s4\! \once\override DynamicText #'X-offset = #-1 s4^\secondo\p |
	
	s2. | s2. | s4\> s4\! s4\p | s1 |
	s2. | s8 \once\override DynamicText #'X-offset = #-2 s8^\primo\mf s2 | s2. s8\< s8\! | s1 |
	s4\> s4\! \once\override DynamicText #'X-offset = #-1 s4^\secondo\p | s2. | s2. | s1 | s2. |
	
	s8 \once\override DynamicText #'X-offset = #-2 s8^\primo\mf s2 | s4\> s4\! s8\< s8\! | s2. | s2 s4\> s8\! \once\override DynamicText #'X-offset = #-1 s8^\secondo\p |
	s2. | s4.\> s4.\! | s2. | s1 | s2. |
	s8 \once\override DynamicText #'X-offset = #-2 s8^\primo\mf s2 | \set hairpinToBarline = ##t s4\> s4\! s4\< | s2.\! | s4\> s4\! s4\< | s2\! \set hairpinToBarline = ##f s8\< s8\! |
	
	s2. | s2. | s2 s4\> s4\! | \once\override DynamicText #'X-offset = #-1 s2.^\secondo\f | s1 |
	s2. | s2. | \override TextScript #'self-alignment-X = #LEFT s2. | \once\override DynamicText #'X-offset = #-1 s2.^\both\p | s2 s8\p\< s8\! |
	s2\> s4\! | s2 s4\p | s4\> s4\! s4\p | s4\> s4\! s4\p\< | s2 s4\! | s2\mf\> s4\! |
	
	s2\p \once\override DynamicText #'X-offset = #-1 s4\p^\markup{"" \translate #'(-2 . 0) \bold "Сдержанно."} | s4\< s4\! s2\> | s4.\! s8\p s2 | s1 |
	s2. s8\p\< s8\! | s2 s2\> | s4.\! s8\p s2 | s1 |
	s4 s2^\markup{\bold "Оченъ медленно."} \once\override DynamicText #'X-offset = #-1 s8\p\< s8\! | s2 s2\< | s4. s8\! s2\f | s2.\> s8 s8\! | s1\p | \mark\markup{ \musicglyph #"scripts.ufermata" }
}

text = \lyricmode {
	Во Цар -- стві -- и Тво -- емъ __ по -- мя -- ни насъ, Гос -- по -- ди, ег --
	
	да прі -- и -- де -- ши во Цар -- стві -- и Тво -- емъ. Бла -- же -- ни ни -- щі -- и ду -- хомъ
	я -- ко тѣхъ естъ Цар -- ство Не -- бес -- но -- е. Бла -- же -- ни пла -- чу -- щі -- и, я -- ко ті -- и у --
	тѣ -- шат -- ся. Бла -- же -- ни крот -- цы -- и, я -- ко ті -- и нас -- лѣд -- ятъ зем -- лю. Бла --
	
	же -- ни ал -- чу -- щі -- и, и жаж -- ду -- щі -- и прав -- ды, я -- ко ті -- и на -- сы -- тят --
	ся. Бла -- же -- ни ми -- ло -- сти -- ві -- и, я -- ко ті -- и по -- ми -- ло -- ва -- ни
	бу -- дутъ. Бла -- же -- ни чи -- сті -- и серд -- цемъ, я -- ко ті -- и Бо -- га уз -- рятъ.
	
	Бла -- же -- ни ми -- ро -- твор -- цы, я -- ко ті -- и Сы -- но -- ве Бо -- жі -- и на -- ре -- кут -- ся. Бла --
	же -- ни из -- гна -- ни прав -- ды ра -- ди, я -- ко тѣхъ есть Цар -- ство Не -- бес -- но -- е.
	Бла -- же -- ни ес -- те, __ ег -- да по -- но -- сятъ вамъ, __ и из -- же -- нутъ, и ре --
	
	кутъ всякъ золъ гла -- голъ на вы лжу -- ще ме -- не ра -- ди. Ра -- дуй -- тесь и ве -- се -- ли -- тесь,
	я -- ко мзда ва -- ша мно -- га на не -- бе -- сѣхъ. Сла -- ва От -- цу и Сы -- ну и Свя --
	то -- му Ду -- ху, и ны -- нѣ и при -- сно и во вѣ -- ки вѣ -- ковъ. А --
	
	минь. По -- мя -- ни насъ, Гос -- по -- ди, ег -- да прі -- и -- де -- ши во Цар -- стві -- и Тво --
	емъ. По -- мя -- ни насъ, Гос -- по -- ди, ег -- да прі -- и -- де -- ши во Цар -- стві -- и Тво --
	емъ. По -- мя -- ни насъ, Гос -- по -- ди, ег -- да прі -- и -- де -- ши во Цар -- стві -- и Тво -- емъ.
}

\score {
	\new ChoirStaff <<
		\new Staff = trebStaff {
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
		system-count = 17
		\context {
			\Score
			\override BarNumber #'extra-offset = #'(-0.75 . 0.25)
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -8 -15.5)))
		}
	}
	\header { piece = "6. Заповѣди Блаженства" }
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

