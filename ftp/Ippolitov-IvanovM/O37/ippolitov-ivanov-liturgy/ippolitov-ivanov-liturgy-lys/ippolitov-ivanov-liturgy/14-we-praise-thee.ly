\version "2.11.27"

bbLayout = {
	\overrideProperty
	#"Score.NonMusicalPaperColumn"
	#'line-break-system-details
	#'((alignment-offsets .
		(
			0 -5.5
			-12 -17.5
			-24 -29.5
			-31.5 -36.5 -42
		)
	))
}
ttbbLayout = {
	\overrideProperty
	#"Score.NonMusicalPaperColumn"
	#'line-break-system-details
	#'((alignment-offsets .
		(
			0 -5.5
			-12 -17.5
			-19.5 -24.5 -30
			-32 -38 -43.5
		)
	))
}

global = { \key e \minor \time 3/4 \partial 4 \dynamicUp \autoBeamOff }

sopNotes = {
	\global \clef treble 
	%0
	g'4\mf | b'2\> a'4 | g'2\! e'4\p | g'2\> f'4 | e'4\! r4 e'4 | fis'4.\< fis'8 g' a'\! |
	%6
	\bbLayout
	b'2^> e'4\p | fis'4. fis'8\< g' a' | b'8\! r8 b'4.\mf\> b'8 |
	%9
	b'2 ~ b'8\! r8 | R2. | 
	\ttbbLayout
	R2. | R2. |
	%13
	c''!4\mf\> c'' b'8\! r8 | r4 r4 r8 b'8\f | fis''4( e'') dis''8 b' | e''8 r8 r8 b'8\f e''8([ d'']) |
	%17
	c''8 b' c''4( b'8) a'8 | d''8 c''\< b'4 a'\! | g'2\f fis'4 | e'2.\> |
	%21
	b'2\!\p a'4 | g'2. | << { fis'2. } { s2\> s4\! } >> | e'2.\> ~ |
	%25
	e'4\! r4 r4^\fermata \bar "|."
}

altNotes = {
	\global \clef treble
	%0
	e'4\mf | e'2\> dis'4 | e'2\! c'4\p | c'2\> b4 | c'4\! r4 e'4\p |
	%5
	e'4.\< e'8 e' e'\! | e'2^> e'4\p | e'4. e'8\< e' e' | e'8\! r8 e'4\mf\>( dis'8) dis' |
	%9
	e'2 ~ e'8\! r8 | R2.*2 | r4 r4 r8 e'8\mf | a'4\> g'8 a' fis'\! r8 |
	%14
	R2. | r4 r8 fis'8\f fis'4 | e'8 e' e'2 ~ | e'8 e'8\f a' g' fis' fis' |
	%18
	g'8 fis'\< g'4 e'\! | e'2\f dis'4 | e'2.\> | e'2\!\p e'4 |
	%22
	e'2. | << { dis'2. } { s2\> s4\! } >> | b2.\> ~ | b4\! r4 r4^\fermata |
}

tenNotes = {
	\global \clef "G_8"
	%0
	b4\mf | b2\> b4 | b2\! g4\p | g2\> g4 | g4\! r4 g4\p |
	%5
	a4.\< a8 b c'\! | b2^> g4\p | a4. a8\< b c' | b8\! r8 b4\mf\>( a8) a |
	%9
	g2 ~ g8\! r8 | r4 r4 r8 b8\mf | e'4 d'8 e' c' r8 | R2. |
	%13
	r4 r4 r8
	<<
	\context Voice = ctnVoice { \voiceOne \dynamicUp \autoBeamOff
		\once\override DynamicText #'extra-offset = #'(0 . -2) b8\f |
		%14
		fis'4 e'8 fis' dis'4 ~ | dis'8 dis' e'([ c']) b b |
	}
	\\
	\context Voice = tenVoice { \voiceTwo
		r8 |
		%14
		R2. | r8 a8 c'4 b8 b |
		\oneVoice
	}
	>> b4 ~ b8 b a([ b]) | c'8 e' e'([ c' d']) d' |
	%17
	d'8 d'\< d'4 c'\! | b2\f a4 | g2.\> | b2\!\p c'4 | b2. |
	%22
	<< { a2. } { s2\> s4\! } >> | g2.\> ~ | g4\! r4 r4^\fermata |
}

basNotes = {
	\global \clef bass
	%0
	e4\mf | g2\> fis4 | g2\! c4\p | e2\> d4 | c4\! r4 c4\p |
	%5
	c4.\< c8 b, a,\! | g,2^> c4\p | c4. c8\< b, a, | g,8\! r8 fis,4\mf\>( b,8) b, |
	%9
	e2 ~ e8\! 
	<<
	\context Voice = barVoice { \voiceOne \dynamicUp \autoBeamOff
		r8 | r4 r4 r8 g8 |
		%11
		g8([ e]) fis gis a a | c'4 b8 c' a([ g]) | fis4 e dis8 r8 |
	}
	\\
	\context Voice = basVoice { \voiceTwo
		e8 | g4 fis8 g e d |
		%11
		c4 b,8 e a, r8 | R2.*2 |
		\oneVoice \dynamicUp
	}
	>> R2. |
	%15
	r4 r8 \stemUp\slurDown \once\override DynamicText #'extra-offset = #'(0 . -2) <fis, fis>8\f <b, b>([ <a, a>]) \stemNeutral\slurNeutral |
	%16
	\once\override Hairpin #'extra-offset = #'(-2.5 . -1) <g, g>8\< <b, b> <e e'>\! <d d'> <c c'>([ <b, b>]) |
	%17
	\stemUp \slurDown <a, a>8 <g, g> <fis, fis>([ <a, e> d]) \stemNeutral \slurNeutral c | b,8 a,\< g,4 a,\! | b,2\f b,4 |
	%19
	c2.\> | g,2\!\p a,4 | b,2. | << { <b,, b,>2. } { s2\> s4\! } >> |
	%23
	<e, b,>2.\> ~ | <e, b,>4\! r4 r4^\fermata |
}

sopText = \lyricmode {
	Те -- бе по -- емъ, Те -- бе по -- емъ, Те -- бе бла -- го -- сло --
	вимъ, Те -- бе бла -- го -- сло -- вимъ, Гос -- по -- ди,
	
	Бо -- же нашъ, и
	мо -- лим -- ти -- ся, и мо -- лим -- ти -- ся, __ и
	мо -- лим -- ти -- ся, Бо -- же нашъ, Бо -- же, Бо -- же нашъ. __
}
altText = \lyricmode {
	Те -- бе по -- емъ, Те -- бе по -- емъ, Те -- бе бла -- го -- сло --
	вимъ, Те -- бе бла -- го -- сло -- вимъ, Гос -- по -- ди,
	
	и мо -- лим -- ти -- ся, 
	и мо -- лим -- ти -- ся, __ и мо -- лим -- ти -- ся,
	мо -- лим -- ти -- ся, Бо -- же нашъ, Бо -- же, Бо -- же
	\override LyricText #'extra-offset = #'(0 . -0.5) \override LyricExtender #'extra-offset = #'(0 . -0.5) 
	нашъ. __
}
tenText = \lyricmode {
	Те -- бе по -- емъ, Те -- бе по -- емъ, Те -- бе бла -- го -- сло --
	вимъ, Те -- бе бла -- го -- сло -- вимъ, Гос -- по -- ди, и
	
	мо -- лим -- ти -- ся, и мо -- лим -- ти -- ся, __
	и мо -- лим -- ти -- ся, __ и
	мо -- лим -- ти -- ся, Бо -- же нашъ, Бо -- же, Бо -- же нашъ. __
}
basText = \lyricmode {
	Те -- бе по -- емъ, Те -- бе по -- емъ, Те -- бе бла -- го -- сло --
	вимъ, Те -- бе бла -- го -- сло -- вимъ, Гос -- по -- ди, и мо -- лим -- ти -- ся, и
	
	мо -- лим -- ти -- ся,
	и мо -- лим -- ти -- ся, и мо -- лим -- ти -- ся, __ и
	мо -- лим -- ти -- ся,
	\override LyricText #'extra-offset = #'(0 . -0.75) \override LyricHyphen #'extra-offset = #'(0 . -0.75) \override LyricExtender #'extra-offset = #'(0 . -0.75) 
	Бо -- же нашъ, Бо -- же, Бо -- \once\override LyricText #'extra-offset = #'(0 . -1) же \once\override LyricText #'extra-offset = #'(0 . -0.75) нашъ. __
}
ctnText = \lyricmode {
	и мо -- лим -- ти -- ся,
}
barText = \lyricmode {
	и мо -- лим -- ти -- ся, и мо -- лим -- ти -- ся, Бо -- же нашъ,
}

\score {
	\new ChoirStaff <<
		\new Staff = sopStaff {
			\new Voice = sopVoice { \autoBeamOff \dynamicUp \sopNotes }
		}
		\new Lyrics = sopLyrics { s1 }
		\new Staff = altStaff {
			\new Voice = altVoice { \autoBeamOff \dynamicUp \altNotes }
		}
		\new Lyrics = altLyrics { s1 }
		\new Lyrics = ctnLyrics { s1 }
		\new Staff = tenStaff {
			\new Voice = tenVoice { \autoBeamOff \dynamicUp \tenNotes }
		}
		\new Lyrics = tenLyrics { s1 }
		\new Lyrics = barLyrics { s1 }
		\new Staff = basStaff {
			\new Voice = basVoice { \autoBeamOff \dynamicUp \basNotes }
		}
		\new Lyrics = basLyrics { s1 }
		
		\context Lyrics = sopLyrics \lyricsto sopVoice { \sopText }
		\context Lyrics = altLyrics \lyricsto altVoice { \altText }
		\context Lyrics = ctnLyrics \lyricsto ctnVoice { \ctnText }
 		\context Lyrics = tenLyrics \lyricsto tenVoice { \tenText }
		\context Lyrics = barLyrics \lyricsto barVoice { \barText }
		\context Lyrics = basLyrics \lyricsto basVoice { \basText }
	>>
	\layout {
		system-count = 5
		\context {
			\Score
			\remove Mark_engraver
			\override NonMusicalPaperColumn
				#'line-break-system-details
				#'alignment-offsets =
				#'(
					0 -5.5
					-12 -17.5
					-24 -29.5
					-36 -41.5
				)
			
		}
		\context {
			\Voice
			hairpinToBarline = ##f
			\override DynamicText #'X-offset = #-2
		}
	}
	\header { piece = "14. Тебе Поемъ" }
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
