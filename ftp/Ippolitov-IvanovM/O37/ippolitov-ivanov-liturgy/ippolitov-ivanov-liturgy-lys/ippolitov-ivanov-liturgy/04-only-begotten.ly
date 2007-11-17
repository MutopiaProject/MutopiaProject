dtDown = { \once\override DynamicText #'extra-offset = #'(0 . -1) }
hpDown = { \once\override Hairpin #'extra-offset = #'(0 . -1) }

sopNotes = {
	\time 3/4
	s2.*0^\markup{"" \translate #'(-3 . 0) \bold "Съ умѣренной скоростью."}
	c''4\f c''8 b'8 a'8 b'8 | c''8 c''8 c''8 b'8 a'8 b'8 | c''4\> c''8\! r8 c''4\f | e''4\> d''8\! r8 d''4 |
	%5
	f''4\> e''8\! r8 e''8\f e''8 | g''2 f''8 f''8 | e''2 d''4 | e''2 r4 \bar "||"
	%9
	\time 4/4 r2 r8 e'8\p fis'8 gis'8 | a'4 b'4 c''4 b'8 b'8 | d''4\f c''4 b'4\> b'8\! b'8 |
	%12
	e''4. c''8 b'4 b'8 b'8 | d''4 c''4 b'4. b'8\mf | a'4 a'8 b'8 g'4 g'8 a'8 |
	%15
	f'2\> d'4\! r4 | r2 r4 a'8\p b'8 | c''4 d''4 e''4 d''8 d''8 | f''2\< e''4 e''8 e''8\! |
	%19
	g''4\f f''4 e''8 e''8 d''8 d''8 | f''2 e''4 d''4 | e''4 e''8 r8 c''4\mf c''4 | b'4\> b'4\! r8 b'8 b'8 b'8 |
	%23
	a'4 a'8 a'8 a'8 r8 c''4\f | e''4. b'8 b'8 r8 <b' e''>8\< <dis'' fis''>8 | <e'' g''>2\! e''4 r4 |
	%26
	<c'' e''>4\f <c'' e''>8 e''8 <dis'' fis''>4. <dis'' fis''>8 | <e'' g''>2\> e''8\! r8 r4 |
	%28
	r4 cis''8\f dis''8 e''4 fis''4 | g''4\< fis''4\! a''2 | g''8 r8 g''8 g''8 f''4. f''8 |
	%31
	c''4 c''4 b'4 b'8 b'8 | b'4 b'4 a'2\> | a'8\! r8 a'4\mf\< e''2 | a'2\!\> r4\! a'4\p |
	%35
	c''2( b'2) | << \context Voice = sopVoice { a'1 } \\ { s2.^\> s4\! } >> \bar "|."
}
altNotes = {
	\dtDown g'4\f g'8 g'8 f'8 g'8 | g'8 g'8 g'8 g'8 f'8 g'8 | g'4\> g'8\! r8 \dtDown g'4\f | g'4\> g'8\! r8 g'4 |
	a'4\> a'8\! r8 \dtDown a'8\f a'8 | b'2 a'8 a'8 | g'2 a'4 | gis'2 r4 | r4 e'4\mf e'4 e'4 | e'4 gis'4 a'4 gis'8 gis'8 |
	
	\dtDown a'4\f a'4 gis'4\> gis'8\! gis'8 | a'4. a'8 gis'4 gis'8 gis'8 | a'4 a'4 gis'4. \once\override DynamicText #'extra-offset = #'(0 . -0.75) gis'8\mf | a'4 f'8 f'8 e'4 e'8 e'8 |
	d'2\> b4\! r4 | g'4\p g'4 g'2 ~ | g'4 <g' b'>4 <g' c''>4 g'8 g'8 | f'2\< g'4 g'8 g'8\! |
	\dtDown g'4\f c''4 b'8 b'8 b'8 b'8 | a'2 g'4 g'4 | g'4 g'8 r8 g'4\mf a'4 | fis'4\> fis'4\! r8 fis'8 gis'8 gis'8 |
	
	e'4 e'8 e'8 e'8 r8 \dtDown a'4\f | b'4. e'8 e'8 r8 b'8\< b'8 | b'2\! b'4 r4  | \once\override DynamicText #'extra-offset = #'(0 . -0.75) g'4\f g'8 g'8 b'4. b'8 |
	b'2\> b'8\! r8 b'4\f | b'2 b'4 b'4 | b'4\< b'4\! a'2 | b'8 r8 b'8 b'8 a'4. a'8 |
	g'4 g'4 f'4 f'8 f'8 | e'4 e'4 c'2\> | c'8\! r8 \dtDown \hpDown f'4\mf\< a'2 | \hpDown f'2\!\> r4\! f'4\p | a'2( e'2) | << \context Voice = altVoice { e'1 } \\ { s2.^\> s4\! } >> |
}
tenNotes = {
	e'4\f e'8 e'8 c'8 e'8 | e'8 e'8 e'8 e'8 c'8 e'8 | e'4\> e'8\! r8 e'4\f | c'4\> b8\! r8 b4 |
	d'4\> c'8\! r8 c'8\f c'8 | e'2 c'8 c'8 | c'2 a4 | b2 r4 | r2 r8 e'8\p d'8 d'8 | c'4 e'4 e'4 e'8 e'8 |
	
	f'4\f e'4 e'4\> e'8\! e'8 | e'4. e'8 e'4 e'8 e'8 | f'4 e'4 e'4. e'8\mf | c'4 c'8 b8 b4 b8 a8 |
	a2\> g4\! r4 | r2 r4 f'8\p f'8 | e'4 d'4 c'4 d'8 d'8 | c'2\< c'4 c'8 c'8\! |
	d'4\f f'4 b8 b8 b8 b8 | d'2 b4 b4 | c'4 c'8 r8 e'4\mf e'4 | dis'4\> dis'4\! r8 dis'8 e'8 e'8 |
	
	c'4 c'8 c'8 c'8 r8 e'4\f | e'4. e'8 e'8 r8 <b e'>8\< <dis' fis'>8 | <e' g'>2\! e'4 r4 | <c' e'>4\f <c' e'>8 e' <dis' fis'>4. <dis' fis'>8 |
	<e' g'>2\> e'8\! r8 b4\f | b2 b4 dis'4 | e'4\< fis'4\! e'2 | e'8 r8 e'8 e'8 c'4. c'8 |
	c'4 c'4 a4 a8 a8 | gis4 gis4 a2\> | a8\! r8 c'4\mf\< e'2 | d'2\!\> r4\! f'4\p | e'2( d'2) | << \context Voice = tenVoice { c'1 } \\ { s2.^\> s4\! } >> |
}
basNotes = {
	\dtDown c4\f c8 e8 f8 e8 | c8 c8 c8 e8 f8 e8 | c4\> c8\! r8 \dtDown c4\f | c'4\> g8\! r8 g4 |
	%5
	\once\override Hairpin #'extra-offset = #'(0 . -0.5) d'4\> a8\! r8 a8\f a8 | e2 f8 f8 | c2 f4 |
	%8
	e2 r4 | R1 | r2 a4\mf e8 e8 |
	%11
	d4\f a4 e4\> e8\! e8 | c4. a,8 e4 e8 e8 | d4 a4 e4. e8\mf f4 f8 d8 e4 e8 c8 |
	%14
	d2\> g,4\! r4 | R1 | r2 r4 b8\p b8 | a2\< c'4 c'8 c'8\! |
	%18
	\once\override DynamicText #'extra-offset = #'(0 . -0.75) b4\f a4 g8 g8 g8 g8 | d2 e4 g4 | c'4 c8 r8 \dtDown c4\mf a,4 | b,4\> b,4\! r8 b,8 e8 e8 |
	%22
	a,4 a,8 a,8 a,8 r8 a4\f | g4. g8 g8 r8 g8\< fis8 | e2\! g4 r4 |
	%25
	\once\override DynamicText #'extra-offset = #'(0 . -0.85) c'4\f c'8 c'8 b4. b8 | e2\> g8\! r8 r4 |
	%27
	r4 a8\f a8 g4 fis4 | e4\< d4\! c2 | e8 r8 e8 e8 f4. f8 |
	%30
	c4 c4 d4 d8 d8 | e4 e4 f2\> | f8\! r8 \dtDown \hpDown f4\mf\< c2 | \hpDown d2\!\> r4\! d4\p |
	%34
	\slurDown e2( ~ <e, e>2) | << \context Voice = basVoice { a,1 } \\ { s2.^\> s4\! } >> |
}

sopText = \lyricmode {
	Сла -- ва От -- цу, и Сы -- ну, и Свя -- то -- му Ду -- ху, и ны -- нѣ, и
	прис -- но, и во вѣ -- ки вѣ -- ковъ. А -- минь. Е -- ди -- но -- род -- ный Сы -- нѣ и
	Сло -- ве Бо -- жій без -- смер -- тенъ сый и из -- во -- ли -- вый спа -- се -- ні -- я на -- ше -- го
	ра -- ди во -- пло -- ти -- ти -- ся отъ Свя -- ты -- я Бо -- го --
	ро -- ди -- цы и при -- сно Дѣ -- вы Ма -- рі -- и, не -- пре -- лож -- но во -- че -- ло --
	вѣ -- чи -- вый -- ся. Расп -- ный -- ся -- же Хрис -- те Бо -- же, смер -- ті -- ю смерть по --
	пра -- вый. Е -- динъ сый Свя -- ты -- я Трой -- цы, спро -- сла -- вля -- е --
	мый От -- цу и Свя -- то -- му Ду -- ху, спа -- си насъ, спа -- си __ насъ.
}
altText = \lyricmode {
	Сла -- ва От -- цу, и Сы -- ну, и Свя -- то -- му Ду -- ху, и ны -- нѣ, и
	прис -- но, и во вѣ -- ки вѣ -- ковъ. А -- минь. Е -- ди -- но -- род -- ный Сы -- нѣ и
	Сло -- ве Бо -- жій без -- смер -- тенъ сый и из -- во -- ли -- вый спа -- се -- ні -- я на -- ше -- го
	ра -- ди во -- пло -- ти -- ти -- ся отъ Свя -- ты -- я Бо -- го --
	ро -- ди -- цы и при -- сно Дѣ -- вы Ма -- рі -- и, не -- пре -- лож -- но во -- че -- ло --
	вѣ -- чи -- вый -- ся. Расп -- ный -- ся -- же Хрис -- те Бо -- же, смер -- ті -- ю смерть по --
	пра -- вый. Е -- динъ сый Свя -- ты -- я Трой -- цы, спро -- сла -- вля -- е --
	мый От -- цу и Свя -- то -- му Ду -- ху, спа -- си насъ, спа -- си __ насъ.
}
tenText = \lyricmode {
	Сла -- ва От -- цу, и Сы -- ну, и Свя -- то -- му Ду -- ху, и ны -- нѣ, и
	прис -- но, и во вѣ -- ки вѣ -- ковъ. А -- минь. Е -- ди -- но -- род -- ный Сы -- нѣ и
	Сло -- ве Бо -- жій без -- смер -- тенъ сый и из -- во -- ли -- вый спа -- се -- ні -- я на -- ше -- го
	ра -- ди во -- пло -- ти -- ти -- ся отъ Свя -- ты -- я Бо -- го --
	ро -- ди -- цы и при -- сно Дѣ -- вы Ма -- рі -- и, не -- пре -- лож -- но во -- че -- ло --
	вѣ -- чи -- вый -- ся. Расп -- ный -- ся -- же Хрис -- те Бо -- же, смер -- ті -- ю смерть по --
	пра -- вый. Е -- динъ сый Свя -- ты -- я Трой -- цы, спро -- сла -- вля -- е --
	мый От -- цу и Свя -- то -- му Ду -- ху, спа -- си насъ, спа -- си __ насъ.
}
basText = \lyricmode {
	Сла -- ва От -- цу, и Сы -- ну, и Свя -- то -- му Ду -- ху, и ны -- нѣ, и
	прис -- но, и во вѣ -- ки вѣ -- ковъ. А -- минь. Сы -- нѣ и
	Сло -- ве Бо -- жій без -- смер -- тенъ сый и из -- во -- ли -- вый спа -- се -- ні -- я на -- ше -- го
	ра -- ди отъ Свя -- ты -- я Бо -- го --
	ро -- ди -- цы и при -- сно Дѣ -- вы Ма -- рі -- и, не -- пре -- лож -- но во -- че -- ло --
	вѣ -- чи -- вый -- ся. Расп -- ный -- ся -- же Хрис -- те Бо -- же, смер -- ті -- ю смерть по --
	пра -- вый. Е -- динъ сый Свя -- ты -- я Трой -- цы, спро -- сла -- вля -- е --
	мый От -- цу и Свя -- то -- му Ду -- ху, спа -- си насъ, спа -- си __ насъ.
}

\score {
	\new ChoirStaff <<
		\new Staff = sopStaff {
			\clef treble \key c \major
			\new Voice = sopVoice { \autoBeamOff \dynamicUp \sopNotes }
		}
		\new Lyrics \lyricsto sopVoice { \sopText }
		\new Staff = altStaff {
			\clef treble \time 3/4 \key c \major
			\new Voice = altVoice { \autoBeamOff \dynamicUp \altNotes }
		}
		\new Lyrics \lyricsto altVoice { \altText }
		\new Staff = tenStaff {
			\clef "G_8" \time 3/4 \key c \major
			\new Voice = tenVoice { \autoBeamOff \dynamicUp \tenNotes }
		}
		\new Lyrics \lyricsto tenVoice { \tenText }
		\new Staff = basStaff {
			\clef bass \time 3/4 \key c \major
			\new Voice = basVoice { \autoBeamOff \dynamicUp \basNotes }
		}
		\new Lyrics \lyricsto basVoice { \basText }
 	>>
	\layout {
		system-count = 8
		\context {
			\Score
			\override BarNumber #'extra-offset = #'(-0.75 . 0.25)
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (
					0 -5.5
					-12 -17.5
					-24 -29.5
					-36 -41.5)))
		}
		\context {
			\Voice
			hairpinToBarline = ##f
			\override DynamicText #'X-offset = #-1.75
		}
	}
	\header{ piece = "4. „Единородный Сынѣ“" }
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

