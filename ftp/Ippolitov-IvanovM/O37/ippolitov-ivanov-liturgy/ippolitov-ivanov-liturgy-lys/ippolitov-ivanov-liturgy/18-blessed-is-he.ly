
sopNotes = {
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Скоро."} \set Score.tempoWholesPerMinute = #(ly:make-moment 80 4)
	%1
	r8 a'8\p a' a' a' a' a' a' | a'4\< a'8 b' cis''4\!\f\> cis''8\! r8 | r4 cis''8\f d'' e''4 a'8 d'' | cis''2 b' | << { cis''1 } { s2\> s2\! } >> \bar "||" \break
	
	\key d \major s1*0^\markup{"" \translate #'(-2 . 0) \bold "Скоро."}
	%6
	<cis'' e''>8\p <cis'' e''> <cis'' e''> <b' d''>  <cis'' e''>4.\>  <cis'' e''>8 |  <cis'' e''>8\! r8  <cis'' e''>4  <cis'' e''>\>  <cis'' e''>8\! r8 |
	%8
	<cis'' e''>4\p <cis'' e''>8 <b' d''> <cis'' e''>4.\> <cis'' e''>8\! | <cis'' e''>8 r8 <cis'' e''>8\mf <b' d''> <cis'' e''>4 <cis'' e''> | r4 <cis'' e''>8\< <cis'' fis''> <e'' g''>4\!\f <e'' g''>8 <d'' fis''> |
	%11
	<cis'' e''>4 r4 <b' d''>8\mf  <b' d''> <b' d''> <b' d''> | <b' d''>4.\>  <b' d''>8  <b' d''>\! r8 <b' d''> <b' d''> | <b' e''>4 <cis'' e''> <b' d''> r4 |
	%14
	<b' d''>8\mf\< <b' d''> <b' d''> <b' d''>\! <b' e''>4( <a' cis''>) | <a' d''>2-> r2 \bar "||"
	
	\key c \major s1*0^\markup{"" \translate #'(-2 . 0) \bold "Скоро."}
	%16
	r2 b'2\f | b'2.^\fermata b'8\f b' | b'8 b' b' b' d''2 |
	%19
	d''4 d''8 d'' b'4 b'8 b' | b'8 b' b'4 c''4. b'8 | c''2 c''8\mf\< c'' c'' c'' |
	%22
	c''8\! r8 <c'' f''>2\f <c'' f''>8 <c'' f''> | <c'' e''>2-> <a' d''>4\mf <a' d''>8 <a' d''> | <a' d''>8 <a' d''> <a' d''> <a' d''> <a' d''>4 <a' d''>8 <a' c''> | <a' d''>4. <a' d''>8 <a' d''> r8 <a' d''>4\mf |
	%26
	<a' d''>8 <a' d''> <a' d''> <a' d''> <a' d''> <a' d''> <a' d''> <a' d''> | <a' d''>8 <a' d''> <a' d''> <a' d''> <a' d''> <a' c''> <a' d''> <g' b'> | <g' c''>2\> <g' c''>4\! r4 |
	%29
	<g' c''>8\mf <g' c''> <g' c''> <g' c''> <g' c''> <g' c''> <g' c''> <g' c''> | <a' c''>4\> <a' c''>8\! r8 <a' c''>\mf <a' c''> <a' c''> <a' c''> | <a' c''>4 <a' c''>8 <a' c''> <a' c''>4\> <a' c''>8 <a' c''>\! |
	%32
	<a' c''>8 r8 <a' c''>\mf <a' c''> <a' d''>2 | <b' d''>8 r8 <b' d''>\< <b' d''> <b' e''>2 | <c'' e''>8\! r8 <c'' e''>\f <c'' e''> << \context Voice = sopVoice { g''2 } \\ { \voiceThree c''4( b') } >> | <c'' e''>2 r2 \bar "||:"
	
	s1*0^\markup{"" \translate #'(-2 . 0) \bold "Скоро."}
	%36
	<g' c''>8\f <g' c''> <g' c''> <f' a'> <g' c''>4\> <g' c''>\! \bar ":|"
	%37
	r4 <f' a'>8\f <f' a'> <g' c''>4. <g' c''>8 | \noBreak <g' c''>2-> r2 \bar "||"
	%39
	r2 <c'' e''>2\f | \noBreak <c'' e''>2-> r2 \bar "||"
	
	\time 3/4
	%41
	r8^\markup{"" \translate #'(-2 . 0) \bold "Скоро."} <c'' e''>8\f <c'' e''> <c'' e''> <c'' e''> <c'' e''> | <c'' f''>2( <d'' g''>4) | <c'' e''>2 r4 \bar "||"
	\time 4/4
	%44
	c''8\f c'' c'' c'' e''4 e'' \bar "||"
	%45
	r2 <d'' g''>2\f | \noBreak <c'' e''>2-> r2 \bar "||"
	
	%47
	r4^\markup{"" \translate #'(-2 . 0) \bold "Скоро."} <a' c''>8\p <a' c''> \hideNotes <g' b'>\< <g' b'> \unHideNotes <g' b'>\breve*1/16 \hideNotes <g' b'>8 \bar "" \noBreak <g' b'>8 <g' b'> <g' b'>4 \unHideNotes <a' d''>4\!\mf <a' d''> |
	%49
	r4 <a' d''>8\mf <a' d''> \hideNotes <a' c''>\< <a' c''> \unHideNotes <a' c''>\breve*1/16 \hideNotes <a' c''>8 \bar "" \noBreak <a' c''>8 <a' c''> <a' c''>4 \unHideNotes <c'' f''>4\!\f <c'' f''> |
	%51
	r4 <c'' f''>8\f <c'' f''> \hideNotes <c'' e''>\< <c'' e''> \unHideNotes <c'' e''>\breve*1/8 \bar "" \noBreak \hideNotes <c'' e''>4 <c'' e''> <c'' e''> <c'' e''> \bar "" \noBreak \unHideNotes << \context Voice = sopVoice { g''2\!\ff } \\ { \voiceThree c''4( b') } >> <c'' e''>1*1/2-> \bar "||"
	
	\time 3/4 s1*0^\markup{"" \translate #'(-2 . 0) \bold "Скоро."}
	%54
	r4 r <b' d''>4\f | \noBreak <c'' e''>2.-> \bar "||"
	%56
	c''4\f c''8 c'' c'' c'' | c''8 c'' c'' c'' c'' c'' | c''4\> c''8\! r8 c''4\f |
	%59
	c''4\> c''8\! r8 c''4\< | c''4\!\> c''8\! r8 c''8 c'' | c''4 c''8 c'' b' b' | << { c''2. } { s2\> s4\! } >> \bar "||"
	
	s1*0^\markup{"" \translate #'(-2 . 0) \bold "Скоро."}
	%63
	c''8\p\< c'' c'' c'' c'' c'' | c''8 c'' c'' c'' c'' c'' | c''8 c'' c'' c'' c'' c''\! | c''4\f d'' d'' | e''2.-> \bar "||"
	%68
	r8^\markup{"" \translate #'(-2 . 0) \bold "Скоро."} <g' c''>8\f <g' c''> <g' c''> \hideNotes <g' c''>16 \unHideNotes <g' c''>\breve*1/16 \hideNotes <g' c''>16 \unHideNotes |
	%69
	<g' c''>4\ff <g' c''>8 <g' c''> <a' c''> <a' c''> | <a' d''>4 <a' d''>8 <a' d''> <a' d''> <a' c''> | <a' d''>2\mf\<( <c'' e''>4)\! | <c'' e''>2.\ff \bar "|."
}

altNotes = {
	%1
	r8 fis'8 fis' fis' fis' fis' fis' fis' | fis'4 fis'8 gis' a'4 a'8 r8 | r4 a'8 a' a'4 fis'8 fis' | e'2 e' | e'1 |
	%6
	a'8 a' a' a' a'4. a'8 | a'8 r8 a'4 a' a'8 r8 |
	%8
	a'4 a'8 a' a'4. a'8 | a'8 r8 a'8 a' a'4 a' | r4 a'8 a' b'4 b'8 a' |
	%11
	a'4 r4 fis'8 fis' fis' fis' | g'4. g'8 g' r8 g' g' | g'4 g' fis'4 r4 |
	%14
	fis'8 fis' fis' fis' g'2 | fis'2 r2 |
	%16
	r2 g'2 | g'2. g'8 g' | g'8 g' g' g' a'2 |
	%19
	a'4 a'8 a' gis'4 gis'8 gis' | gis'8 gis' gis'4 a'4. a'8 | a'2 a'8 a' a' a' |
	%22
	a'8 r8 a'2 a'8 a' | g'2 f'4 f'8 f' | f'8 f' f' f' f'4 f'8 e' | f'4. f'8 f' r8 f'4 |
	%26
	f'8 f' f' f' f' f' f' f' | f'8 f' f' f' f' e' f' d' | e'2 e'4 r4 |
	%29
	e'8 e' e' e' e' e' e' e' | e'4 e'8 r8 e' e' e' e' | e'4 e'8 e' f'4 f'8 f' |
	%32
	f'8 r8 f' f' f'2 | g'8 r8 g'8 g' g'2 | a'8 r8 a' a' g'2 | g'2 r2 |
	%36
	e'8 e' e' d' e'4 e' | r4 d'8 d' e'4. e'8 | e'2 r2 | r2 g' | g'2 r |
	%41
	r8 g' g' g' g' g' | a'2( b'4) | g'2 r4 |
	%44
	a'8 a' a' a' c''4 c'' |
	%45
	r2 b'2 | g'2 r2 |
	%47
	r4 e'8 e' \hideNotes e' e' \unHideNotes e'\breve*1/16 \hideNotes e' | e'8 e' e'4 \unHideNotes f'4 f' |
	r4 f'8 f' \hideNotes a' a' \unHideNotes a'\breve*1/16 \hideNotes a' | a'8 a' a'4 \unHideNotes a'4 a' |
	r4 a'8 a' \hideNotes g' g' \unHideNotes g'\breve*1/8 \hideNotes  | g'4 g' g' g' | \unHideNotes g'2 g'1*1/2 |
	%54
	r4 r g'4 | g'2. |
	%56
	e'4 e'8 e' e' e' | f'8 f' f' f' e' f' | g'4 g'8 r8 g'4 |
	%59
	b'4 a'8 r8 g'4 | b'4 a'8 r8 g' g' | g'4 f'8 e' f' f' | e'2. |
	%63
	e'8 e' e' e' e' e' | f'8 f' f' f' e' f' | g'8 g' g' g' f' g' | a'4 <f' a'> <g' b'> | <g' c''>2. |
	%68
	r8 e'8 e' e' \hideNotes e'16 \unHideNotes e'\breve*1/16 \hideNotes e'16 \unHideNotes |
	%69
	e'4 e'8 e' e' e' | f'4 f'8 f' f' e' | f'2( g'4) | g'2. |
}

tenNotes = {
	%1
	r8 cis'8 cis' cis' cis' cis' cis' cis' | cis'4 cis'8 e'8 e'4 e'8 r8 | r4 e'8 d' cis'4 a8 a | a2 gis | a1 |
	%6
	\key d \major
	<cis' e'>8 <cis' e'> <cis' e'> <b d'> <cis' e'>4. <cis' e'>8 | <cis' e'>8 r8 <cis' e'>4 <cis' e'> <cis' e'>8 r8 |
	%8
	<cis' e'>4 <cis' e'>8 <b d'> <cis' e'>4. <cis' e'>8 | <cis' e'>8 r8 <cis' e'>8 <b d'> <cis' e'>4 <cis' e'> | r4 <cis' e'>8 <cis' fis'> <e' g'>4 <e' g'>8 <d' fis'> |
	%11
	<cis' e'>4 r4 <b d'>8 <b d'> <b d'> <b d'> |  <b d'>4. <b d'>8  <b d'> r8 <b d'> <b d'> | <b e'>4 <cis' e'> d' r4 |
	%14
	<b d'>8 <b d'> <b d'> <b d'> <b e'>4( <a cis'>) | <a d'>2 r2 |
	%16
	\key c \major
	r2 d'2 | d'2. d'8 d' | d'8 d' d' d' d'2 |
	%19
	d'4 d'8 d' e'4 e'8 e' | e'8 e' e'4 e'4. d'8 | e'2 e'8 e' e' e' |
	%22
	e'8 r8 <c' f'>2 <c' f'>8 <c' f'> | <c' e'>2 <a d'>4 <a d'>8 <a d'> | <a d'>8 <a d'> <a d'> <a d'> <a d'>4 <a d'>8 <a c'> | <a d'>4. <a d'>8 <a d'> r8 <a d'>4 |
	%26
	<a d'>8 <a d'> <a d'> <a d'> <a d'> <a d'> <a d'> <a d'> | <a d'> <a d'> <a d'> <a d'> <a d'> <a c'> <a d'> <g b> | <g c'>2 <g c'>4 r4 |
	%29
	<g c'>8 <g c'> <g c'> <g c'> <g c'> <g c'> <g c'> <g c'> | <a c'>4 <a c'>8 r8 <a c'> <a c'> <a c'> <a c'> | <a c'>4 <a c'>8 <a c'> <a c'>4 <a c'>8 <a c'> |
	%32
	<a c'>8 r8 <a c'> <a c'> <a d'>2 | <b d'>8 r8 <b d'> <b d'> <b e'>2 | <c' e'>8 r8 <c' e'> <c' e'> <e' g'>4( <d' f'>) | <c' e'>2 r2 |
	%36
	<g c'>8 <g c'> <g c'> <f a> <g c'>4 <g c'> | r4 <f a>8 <f a> <g c'>4. <g c'>8 | <g c'>2 r2 | r2 <c' e'>2 | <c' e'>2 r2 |
	%41
	r8 e'8 e' e' e' e' | d'2( f'4) | e'2 r4 |
	%45
	e'8 e' e' e' g'4 g' |
	%46
	r2 f'2 | e'2 r2 |
	%47
	r4 <a c'>8 <a c'> \hideNotes <g b>  <g b>  \unHideNotes <g b>\breve*1/16  \hideNotes <g b>8  | <g b>8  <g b>  <g b>4  \unHideNotes <a d'>4 <a d'> |
	r4 <a d'>8 <a d'> \hideNotes <a c'> <a c'> \unHideNotes <a c'>\breve*1/16 \hideNotes <a c'>8 | <a c'>8 <a c'> <a c'>4 \unHideNotes <a c'>4 <a c'> |
	r4 <a c'>8 <a c'> \hideNotes <g c'> <g c'> \unHideNotes <g c'>\breve*1/8 | \hideNotes <g c'>4 <g c'> <g c'> <g c'> | \unHideNotes << \context Voice = tenVoice { c'4( f') } \\ { \voiceThree g2 } >> <g e'>1*1/2 |
	%54
	r4 r <b d'> | <c' e'>2. |
	%56
	g4 g8 g g g | g8 g g g g g | g4 g8 r8 g4 |
	%59
	c'4 c'8 r8 c'4 | c'4 c'8 r8 g8 g | g4 g8 g g g | g2. |
	%63
	g8 g g g g g | g g g g g g | g c' c' c' c' c' | c'4 <a d'> <b d'> | <c' e'>2. |
	%68
	r8 <g c'>8 <g c'> <g c'> \hideNotes <g c'>16 \unHideNotes <g c'>\breve*1/16 \hideNotes <g c'>16 \unHideNotes |
	%69
	<g c'>4 <g c'>8 <g c'> <a c'> <a c'> | <a d'>4 <a d'>8 <a d'> <a d'> <a c'> | <a d'>2( <c' e'>4) | <c' e'>2. |
}

basNotes = {
	%1
	r8 fis8 fis fis fis fis fis fis | fis4 fis8 e a4 a8 r8 | r4 g8 fis e4 d8 b, | e2 e | a,1 |
	%6
	<g a>8 <g a> <g a> <fis a> <g a>4. <g a>8 | <g a>8 r8 <g a>4 <g a> <g a>8 r8 |
	%8
	<g a>4 <g a>8 <fis a> <g a>4. <g a>8 | <g a>8 r8 <g a>8 <fis a> <g a>4 <g a> | r4 <g a>8 <fis a> <e b>4 <e b>8 <fis a> |
	%11
	a4 r4 b8 b b b | g4. g8 g r8 g g | e4 a b r4 |
	%14
	b8 b b b e4( a) | d2-> r2 |
	%16
	r2 g2 | g2._\fermata g8 g | g8 g g g f2 |
	%19
	f4 f8 f e4 e8 e | e8 e e4 a4. f8 | a2 a8 a a a |
	%22
	a8 r8 f2 f8 f | c2-> d4 d8 d | d8 d d d d4 d8 a, | d4. d8 d r8 d4 |
	%26
	d8 d d d d d d d | d8 d d d d a, d g, | c2 c4 r4 |
	%29
	c8 c c c c c c c | a4 a8 r8 a a a a | a4 a8 a f4 f8 f |
	%32
	f8 r8 f f d2 | g8 r8 g g e2 | a8 r8 a a g2 | c2 r2 |
	%36
	c8 c c d c4 c | r4 d8 d c4. c8 | c2-> r2 | r2 c2 | c2-> r2 |
	%41
	r8 c'8 c' c' c' c' | c'2. | c'2-> r4 |
	%44
	a8 a a a g4 g |
	%45
	r2 g | c2-> r2 |
	%47
	r4 a8 a \hideNotes e e \unHideNotes e\breve*1/16 \hideNotes e8 | e8 e e4 \unHideNotes d d |
	r4 d8 d \hideNotes a a \unHideNotes a\breve*1/16 \hideNotes a8 | a8 a a4 \unHideNotes f f |
	r4 f8 f \hideNotes c c \unHideNotes c\breve*1/8 | \hideNotes c4 c c c | \unHideNotes e4( d) c1*1/2-> |
	%54
	r4 r g | c'2.-> |
	%56
	c4 c8 c c c | d d d d c d | e4 e8 r8 e4 |
	%59
	g4 f8 r8 e4 | g4 f8 r8 e8 e | e4 d8 c d d | c2. |
	%63
	c8 c c c c c | d d d d c d | e e e e d e | f4 d g | c2.-> |
	%68
	r8 c8 c c \hideNotes c16 \unHideNotes c\breve*1/16 \hideNotes c16 \unHideNotes |
	%69
	c4 c8 c a, a, | d4 d8 d d a, | d2( c4) | c2. |
}

text = \lyricmode {
	Бла -- го -- сло -- венъ гря -- дый во и -- мя Гос -- под -- не, Богъ Гос -- подъ и я -- ви -- ся намъ.
	
	Ви -- дѣ -- хомъ свѣтъ ис -- тин -- ный, прі -- я -- хомъ
	Ду -- ха не -- бес -- на -- го, об -- рѣ -- то -- хомъ вѣ -- ру ис -- тин -- ну --
	ю, не -- раз -- дѣль -- нѣй Тро -- и -- цѣ по -- кла -- ня -- ем -- ся
	Та бо насъ спа -- сла __ есть.
	
	А -- минь. Да ис -- пол -- нят -- ся ус -- та
	на -- ша хва -- ле -- ні -- я Тво -- е -- го, Гос -- по -- ди, я -- ко да по --
	емъ сла -- ву Тво -- ю, я -- ко спо -- до -- билъ е -- си насъ при -- ча -- сти -- ти -- ся Свя --
	тымъ Тво -- имъ бо -- жест -- вен -- нымъ без -- смерт -- нымъ и жи -- во -- тво -- ря -- щимъ тай -- намъ,
	соб -- лю -- ди насъ во Тво -- ей свя -- ты -- ни, весь день по -- у -- ча -- ти -- ся прав -- дѣ Тво --
	ей: ал -- ли -- луй -- я, ал -- ли -- луй -- я, ал -- ли -- луй -- я.
	
	Гос -- по -- ди по -- ми -- луй. Те -- бѣ Гос -- по -- ди. А -- минь.
	О и -- ме -- ни Гос -- под -- ни. Гос -- по -- ди по -- ми -- луй. А -- минь.
	
	Бу -- ди имя Господне благословенно отъ нынѣ и во вѣ -- ка.
	Бу -- ди имя Господне благословенно отъ нынѣ и во вѣ -- ка.
	Бу -- ди имя Господне благословенно отъ нынѣ и во вѣ -- ка.
	
	А -- минь.
	
	Сла -- ва От -- цу, и Сы -- ну, и Свя -- то -- му Ду -- ху, и
	ны -- нѣ, и прис -- но и во вѣ -- ки вѣ -- ковъ. А -- минь.
	Гос -- по -- ди по -- ми -- луй, Гос -- по -- ди по -- ми -- луй, Гос -- по -- ди по -- ми -- луй, бла -- го -- сло -- ви.
	
	Бла -- го -- чес -- тивѣйшаго, Смодержавнѣйшаго, "и т. д."
	Гос -- по -- ди сох -- ра -- ни ихъ на мно -- ги лѣ -- та.
}

\score {
	\new ChoirStaff <<
		\new Staff = trebStaff \with { \consists Mark_engraver } {
			\clef treble \time 4/4 \key fis \minor
			<<
			\new Voice = sopVoice { \override Rest #'staff-position = #0 \autoBeamOff \voiceOne \dynamicUp \sopNotes }
			\new Voice = altVoice { \override Rest #'transparent = ##t   \autoBeamOff \voiceTwo \altNotes }
			>>
		}
		\new Lyrics \lyricsto sopVoice { \text }
		\new Staff = bassStaff {
			\clef bass \time 4/4 \key fis \minor
			<<
			\new Voice = tenVoice { \override Rest #'transparent = ##t   \autoBeamOff \voiceOne \tenNotes }
			\new Voice = basVoice { \override Rest #'staff-position = #0 \autoBeamOff \voiceTwo \basNotes }
			>>
		}
	>>
	\layout {
		system-count = 21
		\context {
			\Score
			\remove Mark_engraver
			\remove Bar_number_engraver
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . ( 0 -7.75 -16 )))
		}
		\context {
			\Staff
			\override RehearsalMark #'outside-staff-priority = #-1000
		}
	}
	\header { piece = "18. Благословенъ Грядый" }
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
  \midi { \context { \Voice \remove Dynamic_performer } }
}

