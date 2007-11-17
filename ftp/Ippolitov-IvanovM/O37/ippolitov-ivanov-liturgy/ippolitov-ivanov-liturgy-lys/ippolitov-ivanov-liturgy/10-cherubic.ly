dtDown = { \once\override DynamicText #'extra-offset = #'(0 . -1) }
hpDown = { \once\override Hairpin #'extra-offset = #'(0 . -1) }

tightLayout = {
	\overrideProperty
	#"Score.NonMusicalPaperColumn"
	#'line-break-system-details
	#'((alignment-offsets .
		(
			0 -5.5
			-12 -17.5
			-24 -29.5
			-36 -41.5
		)
	))
}

tbLayout = {
	\overrideProperty
	#"Score.NonMusicalPaperColumn"
	#'line-break-system-details
	#'((alignment-offsets .
		(
			  0
			-11
			-22 -28
			-35 -41
		)
	))
}

sopNotes = {
	\time 4/4
	\tightLayout
	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Медленно."}
	%1
	b'2\p\< <a' d''>2 | <b' e''>4 <b' e''>4\! <d'' fis''>2\> | <a' d''>4\! r4 <d'' g''>2\p | d''2 <b' e''>2\p | 
	%5
	b'2 g'4\p\< c''4 | b'2\! << \context Voice = sopVoice { a'2 } \\ { \dynamicUp s4\> s4\! } >> | \tightLayout g'2 r2 |
	%8
	R1*4 | fis'8\p\< fis'8 fis'8 fis'8\! g'4\> e'4\! |
	%13
	\tightLayout \slurUp fis'4.( e'8) \slurNeutral << \context Voice = sopVoice { fis'2 } \\ { \dynamicUp s4\> s4\! } >> | fis'8\p\< fis' fis' fis'\! a'4\> g'8 g'8\! | fis'4 e'4 fis'2 | R1 |
	%17
	b'4\f b'4 e''2 | d''2 c''2 | a'4\f e'4 c''2->( | b'2 a'2) | gis'2 << { a'2 } { s4\> s4\! } >> | R1 |
	%23
	r2 e'4\p\< e'4 | g'2\! << { fis'2 } { s4\> s4\! } >> | e'2\p r2 | b'2\p\< <a' d''>4 <a' d''>4 |
	%27
	<b' e''>2 <b' e''>4 <b' e''>4\! | <d'' fis''>2.\f <a' d''>4\> | <a' d''>2\! <d'' g''>4\f <d'' g''>4 |
	%30
	<< { d''2 } { s4\> s4\! } >> e''4\f e''4 | b'2 g'4 c''4 | b'2 a'2 | g'2 r2 | 
	%34
	\tbLayout R1*4 \bar "||" R2*4 \bar "||" \break
	
	%\tbLayout
	\set Score.tempoWholesPerMinute = #(ly:make-moment 110 4) r2^\markup{"" \translate #'(-2 . 0) \bold "Скоро."} g'2\f | d'4 e'8 fis'8 g'4 a'8 b'8 | c''4( b') a' g' |
	d''2\f d''4 d''4 | d''2. d''4 | c''2\f b'4 d''8 d''8 | c''4 e''8 e''8 dis''4 dis''4 |
	
	e''4(\f g''4) fis''4 <fis'' a''>8 <fis'' a''>8 | <e'' g''>4( fis''4) e''4 e''4 | e''2 d''4 e''4 | a'2\< b'4( cis''4)\! | d''4\< e'' <d'' fis''> <d'' g''>\! |
	\once\override DynamicText #'extra-offset = #'(0 . -0.5) <fis'' a''>2\ff( <e'' g''>2) | <d'' fis''>4( <cis'' e''>4 d''4) <d'' e''>4 | <d'' fis''>2( <cis'' e''>2) | d''2\> r2\! | d''2\mf b'4 c''4 | d''2. c''8([\< d'']) |
	e''2.\! fis''4 | d''8 r8 d''4\p\< d''4 d''4\! | d''2 c''2 | b'2\> b'4\! r4 | r2 b'4\p\< b'4 | c''2 d''2\! |
	
	d''4\f\< d''4 e''2\! | <dis'' fis''>2 <dis'' fis''>4\ff <dis'' fis''>4 | <e'' g''>4 <d''! fis''>4 <b' e''>4 <b' d''>4 | <c'' e''>4 <b' d''>4 <a' c''>4 <g' b'>4 | <fis' ais'>2\> <fis' ais'>4\! r4 |
	<fis' b'>4\mf <dis' fis'>4 <e' g'>2\> | <e' g'>4\! r4 <d' fis'>4\p <d' fis'>4 | <d' g'>2 <d' g'>2\> ~ | <d' g'>2\! r2 | R1*2 \bar "|."
}
altNotes = {
	\time 4/4
	%1
	g'2\p\< <fis' a'>2 | <e' g'>4 <e' g'>4\! <d' a'>2\> | <d' fis'>4\! r4 g'2\p | g'4( fis'4) e'2\p |
	%5
	e'4( dis'4) e'4\p\< g'4 | g'2\! g'4(\> fis'4)\! | d'2 r2 |
	%8
	R1*4 | dis'8\p\< dis' dis' dis'\! e'4\> b4\! |
	%13
	dis'4.( e'8) << { dis'2 } { s4\> s4\! } >> | dis'8\p\< dis' dis' dis'\! e'4\> e'8 e'8\! | dis'4 e'4 dis'2 | R1 |
	%17
	dis'4\f dis'4 e'2 | b'2 a'2 | R1 | gis'4\f gis' a'2 |
	%21
	e'2 << { e'2 } { s4\> s4\! } >> | e'4\p e'4 e'4 e'4 | e'2 e'4\p\< e'4 | e'2\! e'4(\> dis'4)\! |
	%25
	b2\p r2 | g'2\p\< fis'4 fis'4 | <e' g'>2 <e' g'>4 <e' g'>4\! | \dtDown <d' a'>2.\f <d' fis'>4\> | <d' fis'>2\! g'4\f g'4 |
	%30
	g'4(\> fis'4)\! e'4\f e'4 | e'4( dis'4) e'4 g'4 | g'2 fis'2 | d'2 r2 | R1*2 |
	%36
	R1*7 |
	b'2\f a'2 | g'4 b'4 b'2 | \dtDown a'2\f e'4 fis'8 gis'8 | a'4 c''8 c''8 b'4 b'4 |
	
	b'2\f b'4 b'8 b'8 | b'2 ais'4 b'4 | cis''2 b'4 b'4 | << \context Voice = altVoice { fis'2 a'2 } \\ { \dynamicUp s2.\< s4\! } >> | fis'4\< a' d'' b'\! |
	\once\override DynamicText #'extra-offset = #'(0 . -0.5) d''2\ff( a'2) | a'2. b'4 | a'1 | a'2\> r2\! | g'2\mf g'4 g'4 | g'2. g'4\< |
	g'2.\! g'4 | g'8 r8 g'4\p\< f'4 f'4\! | e'2 e'2 | dis'2\> dis'4\! r4 | r2 <e' gis'>4\p\< <e' gis'>4 | <e' a'>2 <g'! b'>2\! |
	
	\dtDown \hpDown <g' b'>4\f\< <g' b'>4 g'2\! | b'2 b'4\ff b'4 | b'4 b'4 g'4 g'4 | g'4 g'4 e'4 e'4 | cis'2\> cis'4\! r4 |
	dis'4\mf b4 b2\> | c'4\! r4 c'4\p c'4 | b2 b2\> ~ | b2\! r2 | R1*2 |
}
tenNotes = {
	\time 4/4
	%1
	\dtDown \hpDown g'2\p\< fis'2 | e'4 e'4\! d'2\> | d'4\! r4 d'2\p | c'2 b2\p |
	%5
	a2 b4\p\< e'4 | d'2\! << { c'2 } { s4\> s4\! } >> | b2 e'2\p\> | d'4\! r4 c'2\p\> |
	%9
	b4\! r4 g4\p <g c'>4 | <g b>2\> <fis a>2 | <d g>2\! r2 | b8\p\< b8 b8 b8\! b4\> g4\! |
	%13
	b4.( g8) << { b2 } { s4\> s4\! } >> | b8\p\< b b b\! c'4\> b8 b8\! | b4 g4 b2 | e'4\f b4 g'2-> |
	%17
	fis'2 e'2 ~ | e'2 r2 | R1 | e'4\f e'4 e'2 |
	%21
	d'2 << { c'2 } { s4\> s4\! } >> | R1 | r2 g4\p\< g4 | b2\! << { a2 } { s4\> s4\! } >> |
	%25
	g2\p r2 | g'2\p\< fis'4 fis'4 | e'2 e'4 e'4\! | d'2.\f d'4\> |
	%29
	d'2\! d'4\f d'4 | << { c'2 } { s4\> s4\! } >> b4\f b4 | a2 b4 e'4 | d'2 c'2 |
	%33
	b2 e'4\mf e'4 | d'2 c'4\p c'4 | b2 g4\p <g c'>4 | <g b>2 <fis a>2 |
	%37
	<d g>2 r2 | r2 \dtDown <g b>2\p | << { <g b>1 } { s2\> s2\! } >> |
	
	%40
	R1*3 | \dtDown g'2\f d'4 e'8 fis'8 | g'4( f'4) e'4 gis'4 |
	%45
	e'2\f e'4 e'8 e'8 | e'4 e'8 e'8 fis'4 fis'4 |
	%47
	<< \context Voice = tenVoice { \voiceOne \once\override DynamicText #'extra-offset = #'(-0.75 . -3) g'4(\f e'4) \oneVoice } \\ { e'2 } >> <b dis'>4 <cis' e'>8 <dis' fis'>8 |
	%48
	<< \context Voice = tenVoice { \voiceOne g'2 \oneVoice } \\ { e'4( d'!) } >> <cis' g'>4 <b g'> |
	%49
	<< \context Voice = tenVoice { \voiceOne fis'2 \oneVoice } \\ { ais4( fis) } >> <b fis'>4 e'4 |
	%50
	<< \context Voice = tenVoice { d'2 a2 } \\ { \dynamicUp s2.\< s4\! } >> | a4\< cis'4 d'4 b4\! |
	%52
	\dtDown a2\f b4 cis'4 | d'4\<( e'4) fis'4 g'4\! | \once\override DynamicText #'extra-offset = #'(-2 . -2.5) a'2\ff( g'2) | fis'2\> r2\! |
	%56
	d'2\mf d'4 d'4 | d'2. d'4\< | c'2.\! d'4 | d'8 r8 d'4\p\< b4 b4\! |
	%60
	b2 a2 | a2\> a4\! r4 | r2 <gis b>4\p\< <gis b>4 | <a c'>2 <b d'>2\! |
	%64
	<b d'>4\f\< <b d'>4 e'2\! | <dis' fis'>2 <dis' fis'>4\ff <dis' fis'>4 | <e' g'>4 <d' fis'>4 <b e'>4 <b d'>4 | <c' e'>4 d'4 c' b |
	%68
	ais2\> ais4\! r4 | b4\mf b4 b2\> | a4\! r4 a4\p a4 | g2 g2\> ~ | g2\! <g b>4\pp <g b> | <g b>2 <g b>2\> ~ | <g b>2\! r2 |
}
basNotes = {
	\time 4/4
	%1
	R1 | R1 | r2 \dtDown b2\p | a2 g2\p |
	%5
	fis2 \dtDown \hpDown e4\p\< c4 | d2\! << { d2 } { s4\> s4\! } >> | g,2 <c g>2\p\> | <b, g>4\! r4 \dtDown \hpDown <a, e>2\p\> |
	%9
	<g, e>4\! r4 <c e>4\p <a, e>4 | <d, d>2\> <d, c>2 | <g, b,>2\! r2 | b,8\p\< b, b, b,\! e4\> e4\! |
	%13
	b,4.( c8) << { b,2 } { s4\> s4\! } >> | b,8\p\< b, b, b,\! a,4\> e8 e8\! | b,4 c4 b,2 | R1 |
	%17
	a4\f a4 g2 | g2 a2 | R1 | d4\f d c2 | b,2 << { a,2 } { s4\> s4\! } >> | R1 |
	%23
	r2 c4\p\< c | b,2\! << { <b,, b,>2 } { s4\> s4\! } >> | \dtDown <e, e>2\p r2 | R1*3 |
	%29
	r2 \dtDown b4\f b4 | << { a2 } { s4\> s4\! } >> g4\f g4 | fis2 e4 c4 | d2 <d, d>2 |
	%33
	g,2 <c g>4\mf <c g>4 | <b, g>2 \dtDown <a, e>4\p <a, e>4 | <g, e>2 <c e>4\p <a, e>4 |
	%36
	<d, d>2 <d, c>2 | <g, b,>2 r2 | r2 \dtDown <g, d>2\p | << { <g, d>1 } { s2\> s2\! } >> | R1*3 |
	%43
	\once\override DynamicText #'extra-offset = #'(-0.5 . -2) d'2\f c'2 | b4 a gis( e) | \dtDown a2\f gis4 e8 e8 | a4 g!8 g8 fis4 b4 |
	%47
	\once\override DynamicText #'extra-offset = #'(-1 . -2.5) \set doubleSlurs = ##t <e e'>2\f <b, b>4 <cis cis'>8 <dis dis'>8 |
	%48
	<e e'>4( <d! d'!>4) <cis cis'>4 <b, b>4 | <ais, ais>4( <fis, fis>4) <b, b>4 <g, g>4 \set doubleSlurs = ##f |
	%50
	<< \context Voice = basVoice { <a, a>2 a,2 | a,2 a,2 } \\ { \dynamicUp s2.\< s4\! | s2.\< s4\! } >> |
	%52
	\dtDown a2\f a2 | a,2\< a,4 a,4\! | \once\override DynamicText #'extra-offset = #'(-2 . -1.25) a2(\ff a,2) | d2\> r2\! | \once\override DynamicText #'extra-offset = #'(0 . -0.25) b2\mf g4 a4 | b2. a8([\< b8]) |
	%58
	c'2.\! d'4 | b8 r8 b4\p\< <a b>4 <a b>4\! | gis2 a4( g4) | fis2\> fis4\! r4 | r2 e4\p\< e4 | a2 g!2\! |
	
	\dtDown \hpDown g4\f\< g4 c'2\! | b2 \once\override DynamicText #'extra-offset = #'(0 . -0.5) b4\ff b4 | <e e'>4 b4 e4 g4 | c'4 g a e | fis2\> fis4\! r4 |
	b,4\mf b,4 e2\> | a,4\! r4 d4\p d4 | <g, d>2 <g, d>2\> ~ | <g, d>2\! <g, d>4\pp <g, d>4 | <g, d>2 <g, d>2\> ~ | <g, d>2\! r2 |
}

sopText = \lyricmode {
	И -- же хе -- ру -- ви -- мы, тай -- но, тай -- но о -- бра -- зу -- ю --
	ще, и жи -- во -- тво -- ря -- щей
	
	Трой -- це три -- свя -- ту -- ю пѣснь при -- пѣ -- ва -- ю -- ще,
	три -- свя -- ту -- ю пѣснь при -- пѣ -- ва -- ю -- ще,
	при -- пѣ -- ва -- ю -- ще. Вся -- ко -- е ны -- нѣ жи -- тей -- ско -- е от -- ло --
	
	жимъ, от -- ло -- жимъ по -- пе -- че -- ні -- е,
	Я -- ко да Ца -- ря всѣхъ по -- ди -- мемъ, по --
	ди -- мемъ, по -- ди -- мемъ, я -- ко да Ца -- ря всѣхъ по -- ди -- мемъ,
	
	я -- ко да Ца -- ря всѣхъ по -- ди -- мемъ, по -- ди -- мемъ, я -- ко да Ца --
	ря __ всѣхъ __ по -- ди -- мемъ Ан -- гель -- ски -- ми не --
	ви -- ди -- мо до -- ри -- но -- си -- ма чин -- ми. Ал -- ли -- луй -- я,
	
	ал -- ли -- луй -- я, ал -- ли -- луй -- я, ал -- ли -- луй -- я, ал -- ли -- луй -- я,
	ал -- ли -- луй -- я, ал -- ли -- луй -- я. __
}
altText = \lyricmode {
	И -- же хе -- ру -- ви -- мы, тай -- но, тай -- но о -- бра -- зу -- ю --
	ще, и жи -- во -- тво -- ря -- щей
	
	Трой -- це три -- свя -- ту -- ю пѣснь при -- пѣ -- ва -- ю -- ще,
	три -- свя -- ту -- ю пѣснь при -- пѣ -- ва -- ю -- ще, три -- свя -- ту -- ю
	пѣснь при -- пѣ -- ва -- ю -- ще. Вся -- ко -- е ны -- нѣ жи -- тей -- ско -- е от -- ло --
	
	жимъ, от -- ло -- жимъ по -- пе -- че -- ні -- е,
	Я -- ко да Ца -- ря, я -- ко да Ца -- ря всѣхъ по -- ди -- мемъ,
	
	я -- ко да Ца -- ря всѣхъ по -- ди -- мемъ, по -- ди -- мемъ, я -- ко да Ца --
	ря __ всѣхъ по -- ди -- мемъ Ан -- гель -- ски -- ми не --
	ви -- ди -- мо до -- ри -- но -- си -- ма чин -- ми. Ал -- ли -- луй -- я,
	
	ал -- ли -- луй -- я, ал -- ли -- луй -- я, ал -- ли -- луй -- я, ал -- ли -- луй -- я,
	ал -- ли -- луй -- я, ал -- ли -- луй -- я. __
}
tenText = \lyricmode {
	И -- же хе -- ру -- ви -- мы, тай -- но, тай -- но о -- бра -- зу -- ю --
	ще, тай -- но, тай -- но о -- бра -- зу -- ю -- ще, и жи -- во -- тво -- ря -- щей
	
	Трой -- це три -- свя -- ту -- ю пѣснь при -- пѣ -- ва -- ю -- ще, три -- свя -- ту --
	ю пѣснь __ при -- пѣ -- ва -- ю -- ще,
	при -- пѣ -- ва -- ю -- ще. Вся -- ко -- е ны -- нѣ жи -- тей -- ско -- е от -- ло --
	
	жимъ, от -- ло -- жимъ по -- пе -- че -- ні -- е, от -- ло -- жимъ, от -- ло -- жимъ по -- пе --
	че -- ні -- е. А -- минь.
	Я -- ко да Ца -- ря всѣхъ по -- ди -- мемъ, да Ца -- ря всѣхъ по -- ди -- мемъ,
	
	я -- ко да Ца -- ря всѣхъ по -- ди -- мемъ, по -- ди -- мемъ, я -- ко да Ца --
	ря всѣхъ по -- ди -- мемъ, по -- ди -- мемъ Ан -- гель -- ски -- ми не --
	ви -- ди -- мо до -- ри -- но -- си -- ма чин -- ми. Ал -- ли -- луй -- я,
	
	ал -- ли -- луй -- я, ал -- ли -- луй -- я, ал -- ли -- луй -- я, ал -- ли -- луй -- я,
	ал -- ли -- луй -- я, ал -- ли -- луй -- я, __ ал -- ли -- луй -- я. __
}
basText = \lyricmode {
	тай -- но, тай -- но о -- бра -- зу -- ю --
	ще, тай -- но, тай -- но о -- бра -- зу -- ю -- ще, и жи -- во -- тво -- ря -- щей
	
	Трой -- це три -- свя -- ту -- ю пѣснь при -- пѣ -- ва -- ю -- ще,
	три -- свя -- ту -- ю пѣснь при -- пѣ -- ва -- ю -- ще,
	при -- пѣ -- ва -- \once\override LyricText #'extra-offset = #'(0 . -0.5) ю -- ще. от -- ло --
	
	жимъ, от -- ло -- жимъ по -- пе -- че -- ні -- е, от -- ло -- жимъ, от -- ло -- жимъ по -- пе --
	че -- ні -- е. А -- минь.
	Я -- ко да Ца -- ря, я -- ко да Ца -- ря всѣхъ по -- ди -- мемъ,
	
	я -- ко да Ца -- ря всѣхъ по -- ди -- мемъ, по -- ди -- мемъ, я -- ко
	да Ца -- ря всѣхъ по -- ди -- мемъ Ан -- гель -- ски -- ми не --
	ви -- ди -- мо до -- ри -- но -- си -- ма чин -- ми. Ал -- ли -- луй -- я,
	
	ал -- ли -- луй -- я, ал -- ли -- луй -- я, ал -- ли -- луй -- я, ал -- ли -- луй -- я,
	ал -- ли -- луй -- я, ал -- ли -- луй -- я, __ ал -- ли -- луй -- я. __
}

\score {
	\new ChoirStaff <<
		\new Staff = sopStaff {
			\clef treble \key g \major
			\new Voice = sopVoice { \autoBeamOff \dynamicUp \sopNotes }
		}
		\new Lyrics \lyricsto sopVoice { \sopText }
		\new Staff = altStaff {
			\clef treble \key g \major
			\new Voice = altVoice { \autoBeamOff \dynamicUp \altNotes }
		}
		\new Lyrics \lyricsto altVoice { \altText }
		\new Staff = tenStaff {
			\clef "G_8" \key g \major
			\new Voice = tenVoice { \autoBeamOff \dynamicUp \tenNotes }
		}
		\new Lyrics \lyricsto tenVoice { \tenText }
		\new Staff = basStaff {
			\clef bass \key g \major
			\new Voice = basVoice { \autoBeamOff \dynamicUp \basNotes }
		}
		\new Lyrics \lyricsto basVoice { \basText }
 	>>
	\layout {
		system-count = 14
		\context {
			\Score
			\override BarNumber #'extra-offset = #'(-0.75 . 0.25)
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (
							  0 -6
							-12.25 -18.25
							-24.5 -30.5
							-36.75 -42.75)))
		}
		\context {
			\Voice
			hairpinToBarline = ##f
			\override DynamicText #'X-offset = #-1.5
		}
	}
	\header { piece = "10. Херувимская Пѣснь." }
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
      tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
}
