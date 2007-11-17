global = { \key c \major \time 3/2 \dynamicUp \autoBeamOff }

dtDown = { \once\override DynamicText #'extra-offset = #'(0 . -1) }
hpDown = { \once\override Hairpin     #'extra-offset = #'(0 . -1) }
dtHalfDown = { \once\override DynamicText #'extra-offset = #'(0 . -0.5) }
hpHalfDown = { \once\override Hairpin     #'extra-offset = #'(0 . -0.5) }

lowLyricLayout = {
	\overrideProperty
	#"Score.NonMusicalPaperColumn"
	#'line-break-system-details
	#'((alignment-offsets .
		(
			0 -5.5
			-12 -19
			-25.5 -31
			-37.5 -44.5
		)
	))	
}

sopNotes = {
	\global \clef treble
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Очень медленно."} \set Score.tempoWholesPerMinute = #(ly:make-moment 50 2)
	%1
	r4 g'4\p c''2\> b' | a'4\! r4 r2 r2 | r4 a'4\mf e''2\> d'' | c''4\! r4 r2 r2 |
	%5
	r4 c''4\f g''2 f''4( e'') | d''4 r4 \dtDown f''2->\f e''4 d'' | c''4. c''8 c''4 c''\< e'' d''\! | c''2\> b'4\!\p a' c'' b' |
	
	%9
	a'4 r4 r2 r2 | r2 a'2\p f''4 e'' | e''4.\> d''8 d''4\! r4 r2 | r2 e''4\mf e'' g'' f'' |
	%13
	f''4.\> e''8 e''4\! \dtDown\hpDown <c'' e''>4\f\< <c'' f''> <e'' g''>\! | <f'' a''>2\> a'4\! a'\mf\< b' cis''\! |
	%15
	d''4 a' f''2\f e''4( d'') | d''4.\> c''8 c''2\! r4 <c'' e''>4\mf |
	%17
	\hpDown <e'' g''>4\< <d'' f''>8 <c'' e''>\! <c'' e''>4.\> <b' d''>8 <b' d''>4\! <b' d''>\mf |
	%18
	<d'' f''>4 <c'' e''>8 <b' d''>8 <b' d''>4 <b' d''>8\< <c'' e''> <d'' f''>4\! <c'' e''>8 <b' d''> |
	%19
	r4 <b' d''>8\mf\> c'' c''4\! r4 c''4\f c'' |
	%20
	e''4.\> d''8 c''4\! r4 c''4\f c'' | e''4 d'' d''4.\> c''8 c''4\! r4 |
	%22
	<d'' f''>4.\f <c'' e''>8 <b' d''>4 <b' d''>8\< <b' d''>\! <e'' g''>4. <d'' f''>8 |
	%23
	<c'' e''>4 r4 e''4\f d''8 c'' d''4\> d''\! | f''2->\f e''4 d'' d''4.(\> c''8)\! | c''4 r4 r2 r4 a'4\mf | \break
	%26
	\lowLyricLayout
	f''4 e'' e''\> d''\! r2 | d''2\f\< e''4 f''\! f''4.( e''8) | e''2 e'2\p\< g'4 a'\! | g'2(\> f')\! e'2\p ~ | e'2 r2 r2 \bar "|." \mark\markup{ \musicglyph #"scripts.ufermata" }
}

altNotes = {
	\global \clef treble
	%1
	r4 e'4\p a'2\> g' | f'4\! r4 r2 r2 | r4 f'4\mf c''2\> b' | a'4\! r4 r2 r2 |
	%5
	r4 \dtDown a'4\f e''2 d''4( c'') | a'4 r4 \dtDown d''2->\f c''4 b' | a'4. a'8 a'4 a'\< a' a'\! | a'2\> e'4\!\p e' a' e' |
	
	%9
	e'4 r4 r2 r2 | r2 f'2\p d''4 c'' | c''4.\> b'8 b'4\! r4 r2 | r2 c''4\mf c'' e'' d'' |
	%13
	d''4.\> c''8 c''4\! \dtHalfDown\hpHalfDown c''4\f\< c'' c''\! | c''2\> f'4\! \dtDown\hpDown a'4\mf\< a' a'\! |
	%15
	f'4 f' \dtDown a'2\f g'4( f') | f'4.\> e'8 e'2\! r4 \dtHalfDown <e' g'>4\mf |
	%17
	<c' e'>4\< <d' f'>8 <e' g'>\! \hpHalfDown <f' a'>4.\> <f' a'>8 <f' a'>4\! \dtDown <f' a'>\mf |
	%18
	<d' f'>4 <e' g'>8 <f' a'> <f' a'>4 <f' a'>8\< <e' g'> <d' f'>4\! <e' g'>8 <f' a'> |
	%19
	r4 \dtHalfDown \hpHalfDown <f' a'>8\mf\> <e' g'> <e' g'>4\! r4 \dtHalfDown g'4\f g' |
	%20
	\hpHalfDown c''4.\> b'8 a'4\! r4 \dtDown a'4\f a' | c''4 b'4 \hpDown b'4.\> a'8 a'4\! r4 | \dtDown a'4.\f g'8 g'4 g'8\< g'\! b'4. a'8 |
	%23
	a'4 r4 \dtDown g'4\f f'8 e' f'4\> f'\! | \dtDown a'2->\f g'4 f' f'4.(\> e'8)\! | e'4 r4 r2 r4 f'4\mf |
	%26
	d''4 c'' c''\> b'\! r2 | b'2\f\< c''4 d''\! d''4.( c''8) | c''2 c'\p\< d'4 f'\! | g'2\>( g2)\! g2\p ~ | g2 r2 r2 |
}

tenNotes = {
	\global \clef "G_8"
	%1
	R1. | r4 f4\p c'2\> b | a4\! r4 r2 r2 | r4 \dtDown a4\mf e'2\> d'\! |
	%5
	c'4 \dtDown a\f a2 b4( c') | d'4 r4 \dtDown a2->\f c'4 f' | e'4. e'8 e'4 e'\< g' f'\! | e'2\> d'4\!\p c' e' d' |
	
	%9
	c'4 r4 <c e>2\p <a c'>4 <g b> | <g b>4.\> <f a>8 <f a>4\! r4 r2 | r2 \dtDown <g b>4\mf <g b> <e' g'> <d' f'> | <d' f'>4.\> <c' e'>8 <c' e'>4\! r4 r2 |
	%13
	r2 r4 c'4\f\< c' <c' e'>\! | <c' f'>2\> c'4\! \dtDown\hpDown a4\mf\< a a\! | a4 a \dtHalfDown g2\f a4( b) | b4.\> g8 g2\! r2 |
	%17
	R1. | R1. | r2 r2 e'4\f e' |
	%20
	c'4.\> d'8 e'4\! r4 e'\f e' | c'4 d' d'4.\> e'8 e'4\! r4 | \dtDown a4.\f c'8 d'4 b8\< b\! b4. d'8 |
	%23
	e'4 r4 \dtDown a4\f a8 a a4\> a\! | g2->\f a4 b b4.\> g8\! | g4 <c e>4\p <a c'> <g b> <g b>\> <f a>\! |
	%26
	r2 r4 \dtDown <g b>4\mf <e' g'> <d' f'> | <d' f'>4\> <d' f'>\! <c' e'>\< <b d'>\! <b d'>4.( <c' e'>8) | <c' e'>2 a2\p\< b4 c'\! | c'2(\> b)\! c'2\p ~ | c'2 r2 r2 |
}

basNotes = {
	\global \clef bass
	%1
	R1. | r4 d4\p a2\> g | f4\! r4 r2 r2 | r4 f4\mf c'2\> b\! |
	%5
	a4 \dtDown a\f d2 d4( e) | f4 r4 d2->\f e4 g | a4. a8 a4 a\< <d a> <d a>\! | <e a>2\> e4\!\p e <e fis> <e gis> |
	
	%9
	<a, a>4 r4
	<<
	{ \dynamicUp \dtDown c2\p a4 g | g4._\> f8 f4\! r4 r2 | r2 \dtDown g4\mf g e'4 d' | d'4._\> c'8 c'4\! r4 r2 }
	\\
	{ r2 r2 | R1. | R1. | R1. }
	>>
	%13
	r2 r4 \dtDown\hpDown c'\f\< a g\! | f2\> f4\! \dtHalfDown\hpHalfDown a\mf\< f e\! | d4 d g,2\f g, | c4.\> c8 c2\! r2 |
	%17
	R1. | R1. | r2 r2 \dtDown c'4\f c' |
	
	%20
	\hpDown a4.\> b8 c'4\! r4 \dtDown c'\f c' | a4 b b4.\> c'8 c'4\! r4 | d4.\f e8 g4 g8\< g\! e4. f8 |
	%23
	a4 r4 d\f d8 a, d4\> d\! | g,2->\f g,4 g, << { <c, c>2 } { s4.\> s8\! } >> | <c, c>4 \dtDown <c, c>\p <c, c>1 ~ |
	%26
	<c, c>4 <c, c> <c, c>1 ~ | <c, c>4\< <c, c> <c, c> <c, c>\! << { <c, c>2 } { s4.\> s8\! } >> | <c, c>2 a,2\p\< g,4 f,\! | e,2(\> g,)\! <c, c>2\p ~ | <c, c>2 r2 r2 |
}

sopText = \lyricmode {
	До -- стой -- но есть, до -- стой -- но есть,
	до -- стой -- но есть я -- ко во ис -- тин -- ну бла -- жи -- ти тя, Бо -- го -- ро -- ди --
	
	цу, при -- сно -- бла -- жен -- ну -- ю и пре -- не -- по --
	роч -- ну -- ю и Ма -- терь Бо -- га, и Ма -- терь Бо -- га, Бо -- га на -- ше -- го. Чест --
	нѣй -- шу -- ю Хе -- ру -- вимъ и слав -- нѣй -- шу -- ю безъ сра -- ве -- ні -- я Се -- ра -- фимъ, безъ ис --

	тлѣ -- ні -- я Бо -- га Сло -- ва рожд -- шу -- ю, су -- щу -- ю Бо -- го -- ро -- ди --
	цу тя ве -- ли -- ча -- емъ, тя ве -- ли -- ча -- емъ, тя
	ве -- ли -- ча -- емъ, тя ве -- ли -- ча -- емъ, тя ве -- ли -- ча -- емъ. __
}
altText = \lyricmode {
	До -- стой -- но есть, до -- стой -- но есть,
	до -- стой -- но есть я -- ко во ис -- тин -- ну бла -- жи -- ти тя, Бо -- го -- ро -- ди --

	цу, при -- сно -- бла -- жен -- ну -- ю и пре -- не -- по --
	роч -- ну -- ю и Ма -- терь Бо -- га, и Ма -- терь Бо -- га, Бо -- га на -- ше -- го. Чест --
	нѣй -- шу -- ю Хе -- ру -- вимъ и слав -- нѣй -- шу -- ю безъ сра -- ве -- ні -- я Се -- ра -- фимъ, безъ ис --

	тлѣ -- ні -- я Бо -- га Сло -- ва рожд -- шу -- ю, су -- щу -- ю Бо -- го -- ро -- ди --
	цу тя ве -- ли -- ча -- емъ, тя ве -- ли -- ча -- емъ, тя
	ве -- ли -- ча -- емъ, тя ве -- ли -- ча -- емъ, тя ве -- ли -- ча -- емъ. __
}
tenText = \lyricmode {
	До -- стой -- но есть, до -- стой -- но
	есть, до -- стой -- но есть я -- ко во ис -- тин -- ну бла -- жи -- ти тя, Бо -- го -- ро -- ди --

	цу, при -- сно -- бла -- жен -- ну -- ю и пре -- не -- по -- роч -- ну -- ю
	и Ма -- терь Бо -- га, и Ма -- терь Бо -- га, Бо -- га на -- ше -- го.
	безъ ис --

	тлѣ -- ні -- я Бо -- га Сло -- ва рожд -- шу -- ю, су -- щу -- ю Бо -- го -- ро -- ди --
	цу тя ве -- ли -- ча -- емъ, тя ве -- ли -- ча -- емъ, тя ве -- ли -- ча -- емъ,
	тя ве -- ли -- ча -- емъ, ве -- ли -- ча -- емъ, тя ве -- ли -- ча -- емъ. __
}
basText = \lyricmode {
	До -- стой -- но есть, до -- стой -- но
	есть, до -- стой -- но есть я -- ко во ис -- тин -- ну бла -- жи -- ти тя, Бо -- го -- ро -- ди --
	
	цу,
	и Ма -- терь Бо -- га, и Ма -- терь Бо -- га, Бо -- га на -- ше -- го.
	безъ ис --

	тлѣ -- ні -- я Бо -- га Сло -- ва рожд -- шу -- ю, су -- щу -- ю Бо -- го -- ро -- ди --
	\override LyricText     #'extra-offset = #'(0 . -1)
	\override LyricHyphen   #'extra-offset = #'(0 . -1)
	\override LyricExtender #'extra-offset = #'(0 . -1)
	цу тя ве -- ли -- ча -- емъ, тя ве -- ли -- ча -- емъ, тя ве --
	\revert LyricText     #'extra-offset
	\revert LyricHyphen   #'extra-offset
	\revert LyricExtender #'extra-offset
	ли -- ча -- емъ, ве -- ли -- ча -- емъ, тя ве -- ли -- ча -- емъ. __
}

\score {
	\new ChoirStaff <<
		\new Staff = sopStaff {
			\new Voice = sopVoice { \sopNotes }
		}
		\new Lyrics = sopLyrics { s1. }
		\new Staff = altStaff {
			\new Voice = altVoice { \altNotes }
		}
		\new Lyrics = altLyrics { s1. }
		\new Staff = tenStaff {
			\new Voice = tenVoice { \tenNotes }
		}
		\new Lyrics = tenLyrics { s1. }
		\new Staff = basStaff {
			\new Voice = basVoice { \basNotes }
		}
		\new Lyrics = basLyrics { s1. }
		
		\context Lyrics = sopLyrics \lyricsto sopVoice { \sopText }
		\context Lyrics = altLyrics \lyricsto altVoice { \altText }
 		\context Lyrics = tenLyrics \lyricsto tenVoice { \tenText }
		\context Lyrics = basLyrics \lyricsto basVoice { \basText }
	>>
	\layout {
		system-count = 8
		\context {
			\Score
			\override NonMusicalPaperColumn
				#'line-break-system-details
				#'alignment-offsets =
				#'(
					0 -5.5
					-12 -17.5
					-24 -29.5
					-36 -41.5
				)
			\override RehearsalMark #'break-visibility = #begin-of-line-invisible
		}
		\context {
			\Voice
			hairpinToBarline = ##f
			\override DynamicText #'X-offset = #-2
		}
	}
	\header { piece = "15. Достойно Есть" }
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
			tempoWholesPerMinute = #(ly:make-moment 90 4)
		}
		\context {
			\Voice
			\remove Dynamic_performer
		}
	}
}

sopNotes = {
	%И всѣхъ и вся.
	r2^\markup{\hspace #-6 \large\bold "Скоро."} c''2\f | <b' e''>2 <b' g''> | << { c''1 } { s2\> s2\! } >> \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	%Аминь.
	r2 c''2\f | << { e''1 } { s2\> s2\! } >> \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	%И со духомъ твоимъ.
	r2^\markup{\hspace #-2.5 \large\bold "Скоро."} c''4\f\< d''\! | e''2 c''4 d'' | e''2\> r2\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" } \break
	
	\time 3/2
	s1.*0^\markup{\hspace #-2.5 \large\bold "Не оченъ скоро."}
	%Господи помилуй 1
	c''8\p c'' c'' c'' c''2\> c''2\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	%Господи помилуй 2
	c''8\p c'' c'' c'' c''2\> c''2\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	%Господи помилуй 3
	c''8\mf c'' c'' c'' c''2\> c''2\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	%Господи помилуй 4
	c''8\mf c'' c'' c'' c''2\> c''2\! \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" } \break
	
	%Господи помилуй 5
	c''8\f c'' c'' c'' e''2( d'') | c''2 r2 r2 \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	\time 4/4
	%Подай Господи.
	r2\startGroup c''4^\markup{ \tiny "6 разъ." }\mf\< d''\! | e''4.\> c''8 c''2\!\stopGroup \bar "||" \mark\markup{ \musicglyph #"scripts.ufermata" }
	%Тебѣ Господи.
	r2 c''4\f\< d''\! | e''4.\> c''8 c''2\! \bar "|." \mark\markup{ \musicglyph #"scripts.ufermata" }	
}
altNotes = {
	%И всѣхъ и вся.
	r2 a'2 | g'2 g' | g'1 |
	%Аминь.
	r2 a'2 | g'1 |
	%И со духомъ твоимъ.
	r2 a'4 b' | b'2 a'4 b' | c''2 r2 |
	%Господи помилуй 1
	g'8 g' g' g' g'2 g' |
	%Господи помилуй 2
	a'8 a' a' a' a'2 a' |
	%Господи помилуй 3
	g'8 g' g' g' g'2 g' |
	%Господи помилуй 4
	g'8 g' g' g' g'2 g' |
	
	%Господи помилуй 5
	a'8 a' a' a' c''2( b') | g'2 r2 r2 |
	%Подай Господи.
	r2 a'4 b' | b'4. a'8 a'2 |
	%Тебѣ Господи.
	r2 a'4 b' | b'4. a'8 a'2 |
}
tenNotes = {
	%И всѣхъ и вся.
	r2 <c' e'>2 | <b e'> <b f'> | <c' e'>1 |
	%Аминь.
	r2 c' | c'1 |
	%И со духомъ твоимъ.
	r2 e'4 g' | g'2 e'4 g' | g'2 r2 |
	
	%Господи помилуй 1
	e'8 e' e' e' e'2 e' |
	%Господи помилуй 2
	e'8 e' e' e' e'2 e' |
	%Господи помилуй 3
	c'8 c' c' c' c'2 c' |
	%Господи помилуй 4
	e'8 e' e' e' e'2 e' |
	
	%Господи помилуй 5
	e'8 e' e' e' g'2( f') | e'2 r2 r2 |
	%Подай Господи.
	r2 e'4 g' | g'4. e'8 e'2 |
	%Тебѣ Господи.
	r2 e'4 g' | g'4. e'8 e'2 |
}
basNotes = {
	%И всѣхъ и вся.
	r2 a | e2 d | c1 |
	%Аминь.
	r2 f | c1 |
	%И со духомъ твоимъ.
	r2 a4 g | e2 a4 g | c2 r2 |
	
	%Господи помилуй 1
	c'8 c' c' c' c'2 c' |
	%Господи помилуй 2
	a8 a a a a2 a |
	%Господи помилуй 3
	e8 e e e e2 e |
	%Господи помилуй 4
	fis8 fis fis fis fis2 fis |
	
	%Господи помилуй 5
	fis8 fis fis fis g1 | c2 r2 r2 |
	%Подай Господи.
	r2 a4 g | e4. a8 a2 |
	%Тебѣ Господи.
	r2 a4 g | c4. c8 c2 |
}

text = \lyricmode {
	И всѣхъ и вся.
	А -- минь.
	И со ду -- хомъ тво -- имъ.
	
	Гос -- по -- ди по -- ми -- луй.
	Гос -- по -- ди по -- ми -- луй.
	Гос -- по -- ди по -- ми -- луй.
	Гос -- по -- ди по -- ми -- луй.
	
	Гос -- по -- ди по -- ми -- луй.
	По -- дай Гос -- по -- ди.
	Те -- бѣ Гос -- по -- ди.

}

\score {
	\new ChoirStaff <<
	\new Staff = trebStaff \with { \consists Mark_engraver } {
			\clef treble \time 4/4 \key c \major
			<<
			\new Voice = sopVoice { \override Rest #'staff-position = #0 \autoBeamOff \voiceOne \dynamicUp \sopNotes }
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
		indent = 0
		\context {
			\Score
			\remove Bar_number_engraver
			\remove Mark_engraver
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -7.75 -15.5)))
			\override TimeSignature #'break-visibility = #end-of-line-invisible
		}
		\context {
			\Staff
			\consists Horizontal_bracket_engraver
			\override HorizontalBracket #'direction = #UP
			\override HorizontalBracket #'outside-staff-priority = #1000
			\override HorizontalBracket #'extra-offset = #'(0 . -1)
			\override RehearsalMark #'outside-staff-priority = #-1000
			\override RehearsalMark #'break-visibility = #begin-of-line-invisible
			\override RehearsalMark #'font-size = #1
		}
	}
}
