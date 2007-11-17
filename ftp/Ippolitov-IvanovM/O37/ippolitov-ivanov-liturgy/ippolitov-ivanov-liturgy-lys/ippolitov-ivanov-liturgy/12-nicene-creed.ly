dtDown = { \once\override DynamicText #'extra-offset = #'(0 . -1) }
hpDown = { \once\override Hairpin #'extra-offset = #'(0 . -1) }
dtDownExtra = { \once\override DynamicText #'extra-offset = #'(-0.25 . -2) }
hpDownExtra = { \once\override Hairpin #'extra-offset = #'(-0.25 . -2) }
lyrDown = {
	\override LyricText #'extra-offset = #'(0 . -1)
	\override LyricHyphen #'extra-offset = #'(0 . -1)
	\override LyricExtender #'extra-offset = #'(0 . -1)
}
lyrNormal = {
	\revert LyricText #'extra-offset
	\revert LyricHyphen #'extra-offset
	\revert LyricExtender #'extra-offset
}
lyrHalfDown = {
	\override LyricText #'extra-offset = #'(0 . -0.5)
	\override LyricHyphen #'extra-offset = #'(0 . -0.5)
	\override LyricExtender #'extra-offset = #'(0 . -0.5)
}


divisiLayoutI = {
	\overrideProperty
	#"Score.NonMusicalPaperColumn"
	#'line-break-system-details
	#'((alignment-offsets .
		(
			1 -5 -10.5
			-16 -21.5
			-24 -30 -35.5
			-42 -47.5
		)
	))
}
divisiLayoutII = {
	\overrideProperty
	#"Score.NonMusicalPaperColumn"
	#'line-break-system-details
	#'((alignment-offsets .
		(
			0 -5 -10.5
			-16 -21.5
			-24 -28.5 -34
			-40.5 -46
		)
	))
}
divisiLayoutIII = {
	\overrideProperty
	#"Score.NonMusicalPaperColumn"
	#'line-break-system-details
	#'((alignment-offsets .
		(
			-0 -4 -10.5
			-16 -21.5
			-25 -29.5 -36
			-42.5 -49
		)
	))
}
lowAltoLayout = {
	\overrideProperty
	#"Score.NonMusicalPaperColumn"
	#'line-break-system-details
	#'((alignment-offsets .
		(
			0 0 0 -5.5
			-12 -18.5
			0 -25 0 -30.5
			-37 -42.5
		)
	))
}

sopNotes = {

	s1*0^\markup{"" \translate #'(-3 . 0) \bold "Скоро."} \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	% 1
	fis'4.\mf fis'8 fis'8 r8 fis'8\p fis'8 | fis'4 fis'8 fis'8 fis'4 fis'8 fis'8 |
	fis'8 r8 fis'8 fis'8 fis'8 fis'8 fis'8 fis'8 |
	% 4
	fis'8 r8 fis'4.^>\p fis'8 e'8 fis'8 | g'8 r8 g'4.\< g'8 fis'8 g'8 | a'4 g'8 a'8 b'4.\! b'8 | b'2\> r8\! b'8\p b'8 b'8 |
	% 8
	b'4 b'8 b'8 b'4. b'8 | b'8 r8 b'8\p b'8 b'4 b'8 b'8 | b'4 cis''8\< cis''8 d''4. d''8 | d''8 <b' d''>8 <cis'' e''>8 <cis'' e''>8 <d'' fis''>4.\!\f <d'' fis''>8 |
	% 12
	<d'' fis''>8 r8 r4 <d'' fis''>8\f <d'' fis''>8 <d'' fis''>8 <d'' fis''>8 |
	<d'' fis''>4. <d'' fis''>8 <d'' fis''>4. <d'' fis''>8 | <d'' fis''>8 r8 r4 d''4\f d''8 d''8 |
	<cis'' fis''>2-> cis''4\mf cis''8 cis''8 |
	% 16
	d''4\> cis''8\! r8 cis''8\mf cis''8 e''8 d''8 | cis''8 cis''8 e''8 d''8 cis''4. b'8 |
	cis''8 r8 r4 r4 <ais' cis''>4\mf | <b' d''>4\> <ais' cis''>8\! r8 r2 |
	% 20
	r8 <ais' cis''>8\p\< <ais' cis''> <ais' cis''>\! <b' fis''>4\> <ais' cis''>8\! r8 |
	r8 <ais' cis''>8\mf <ais' cis''> <ais' cis''> <b' d''>4 <ais' cis''>8 <b' d''> | <b' e''>4 <b' d''>2-> <ais' cis''>8 <gis' b'>8 |
	<ais' cis''>2\> <ais' cis''>8\! r8 r4 |
	% 24
	b'2\p a'8 a' a' b' | g'4 r8 g'8\mf c''4 c''8 c'' | b'4 b'8 b' a' a' a' r8 | a'8\p a' a' fis' g'2^> |
	% 28 
	r8 b'8\mf b' b' e''4 e''8 e'' | d''8 d'' d'' e'' c'' c'' c'' c'' |  b'4 b' a'\> a'\! | \divisiLayoutI a'8\p a' a' a' b'4.\> b'8 | \break
	%32
	\divisiLayoutI
	b'2\! r4
	
	<<
		\new Voice = sopVoiceII { \voiceOne \autoBeamOff \dynamicUp
			\once\override DynamicText #'extra-offset = #'(-3 . -2.5)
			b'4\mf | cis''!8 dis'' e'' fis''16 fis'' g''2 ~ |
			g''2 ~ g''8 r8 \once\override DynamicText #'extra-offset = #'(0.1 . -1.25) \once\override Hairpin #'extra-offset = #'(0 . -1) g'8\mf\< g'8\! | \break
			\divisiLayoutI
			a'8([ b']) c'' d'' e''2 ~ | 
			%36
			e''2 ~ e''8 e'' e'' e'' | f''2 e''8 e'' e'' e'' | \break
			\divisiLayoutII f''2( e''8) e'' \once\override DynamicText #'extra-offset = #'(3 . -7.25) e''\f e'' | d''2 c''8 b' a' b' |
			% 40
			c''2. \once\override DynamicText #'extra-offset = #'(-2 . -2) g'8\mf a' | \break
			\divisiLayoutIII
			b'2. \dtDown fis'8\p g' | \noBreak a'4. a'8 fis'2 ~ | \noBreak fis'2
		}
		\\
		\context Voice = sopVoice { \voiceTwo
			r4 | r2 r4 g''4 |
			fis''8 fis'' e''8 e''16 e''16 d''8 r8 r4 | r2 r4 e''8 e'' |
			%36
			\override Hairpin #'height = #0.4
			d''4 c''8 c'' b' b' \once\override Hairpin #'extra-offset = #'(-0.2 . -1) e''8\< e''\! | \once\override Hairpin #'extra-offset = #'(0.2 . -1)  e''4(\> d'') b'8\! \once\override Hairpin #'extra-offset = #'(-0.2 . -1) e''\< e'' e''\! |
			\revert Hairpin #'height
			e''4( d'' b'8) b' r4 | R1 |
			%40
			r4 a'8 a' g' f' g' r8 | r4 g'8 g' fis' e' fis' r8 | r4 e'8 e' dis'2 ~ | dis'2
			\oneVoice
		}
	>> <dis' fis'>4\p <dis' fis'> | \break
	%44
	<e' gis'>4.\> <e' gis'>8 <e' gis'>\! r8 gis'8\f gis' | a'4. a'8\< a' a' b' cis'' |
	d''4\! d''8\ff d'' d''4 d''8 r8 | r4 d''8 d''8 e''4 fis''8 fis'' | 
	% 48
	g''4 r8 g''8\f d''4 d''8 e'' | b'4. b'8 b'8 r8 d''4\f | g''4. g''8 d''4 e'' | b'2 b'8\< b' b' c''\! | 
	% 52
	d''2\> d''8\! b' b' c'' | d''4. d''8 d''4 c''8([ b']) | c''4 c''8 c'' b'4 r8 b'8\p | b'4 b'8 b' b'4\> b'8\! r8 | 
	% 56
	ais'4. ais'8 ais' ais' ais' ais' | b'4.\> b'8 b'4\! r4 | b'8\p b' b' b' ais'4 ais'8 ais' | b'4.\> b'8 b'4\! r4 | 
	% 60
	b'8\p b' b' b' b'4. b'8 | b'8 b' b' b' b' b' b' b' | b'4.\> b'8 b'8\! r8 b'4 | a'4 a'8 a' a'4 a' | 
	% 64
	a'4\> a'8\! r8 a'4\p a' | g'4 g'8 g' g'4 g'8 g' | fis'4. fis'8 fis'8 r8 fis'8 fis' | e'4. e'8 e'4 e' | 
	% 68
	d'4\> d'8\! r8 \dtDown \hpDown fis'4\p\< a'4\! | d''4.\mf fis'8\> fis'\! r8 g'4 | a'4 a'8 b' fis'4. fis'8 | d'8 r8 r4 d'4\p d'8 d' | 
	% 72
	e'4. e'8 e'4 e' | d'2 fis'2\p\< | a'4 a'8 a' b'4 b'8 b'\! | cis''4\> cis''8\! r8 cis''4\mf cis''8\< cis'' | 
	% 76
	d''8 d'' d'' d''\! d''4\> d''8\! r8 | r2 <cis'' e''>2\f | << \context Voice = sopVoice { <d'' fis''>1 } \\ { \dynamicUp s2\> s2\! } >> \bar "|." \mark\markup{ \musicglyph #"scripts.ufermata" }
}
altNotes = {
	%1
	d'4.\mf d'8 d'8 r8 d'8\p d'8 | d'4 d'8 d'8 d'4 d'8 d'8 | e'8 r8 e'8 e'8 e'8 e'8 e'8 e'8 |
	%4
	dis'8 r8 dis'4.^>\p dis'8 cis'8 dis'8 | e'8 r8 e'4.\< e'8 dis'8 e'8 | fis'4 e'8 fis'8 g'4.\! g'8 | g'2\> r8\! g'8\p g'8 g'8 |
	%8
	g'4 g'8 g'8 g'4. g'8 | g'8 r8 g'8\p g'8 g'4 g'8 g'8 | d'4 \hpDown fis'8\< fis'8 fis'4. fis'8 | fis'8 fis'8 a'8 a'8 \dtDown a'4.\!\f a'8 |
	%12
	a'8 r8 r4 \dtDown a'8\f a'8 a'8 a'8 | gis'4. gis'8 a'4. a'8 | a'8 r8 r4 \dtDown gis'4\f gis'8 gis'8 | ais'2^> fis'4\mf fis'8 fis'8 |
	%16
	fis'4\> fis'8\! r8 fis'8\f fis'8 fis'8 fis'8 | fis'8 fis'8 fis'8 fis'8 fis'4. fis'8 | fis'8 r8 fis'4 fis'2 ~ | fis'4\> fis'8\! r8 fis'4 fis'8 fis'8 |
	%20
	fis'2. fis'8 r8 | r8 fis'8\mf fis' fis' fis'4 fis'8 fis' | g'4 fis'2->  fis'8 fis'8 | fis'2\> fis'8\! r8 r4 |
	%24
	d'2\p d'8 d' d' d' | b4 r8 b8\mf e'4 e'8 e' | d'4 d'8 d' c' c' c' r8 | c'8\p c' c' c' b2^> |
	%28
	r8 g'8\mf g' g' b'4 b'8 b' | b'8 b' b' b' a' a' a' a' | fis'4 fis' e'\> e'\! | e'8\p e' e' e' dis'4.\> dis'8 |
	%32
	dis'2\! r2 | r2 r4 e''4\f | d''8 d'' c'' c''16 c'' b'8 r8 r4 | r2 r4 \once\override DynamicText #'X-offset = #-3.5 \dtDown c''8\f c'' |
	%36
	b'4 a'8 a' gis' gis' r4 | r4 \dtDown a'8\f a' gis' gis' r4 | r4 a'8 a' gis' gis' r4 | R1 |
	%40
	r4 f'8\mf f' e' d' e' r8 | r4 e'8\mf e' d' c' d' r8 | r4 e'8 e'8 dis'2 ~ | dis'2 b4\p b |
	%44
	b4.\> b8 b8\! r8 e'8\f e' | e'4. e'8\< e' e' a' a' | a'4\! \dtDown a'8\ff a' a'4 a'8 r8 | r4 fis'8 fis' g'4 a'8 a' |
	%48
	b'4 r8 b'8\f a'4 a'8 g'8 | fis'4. fis'8 fis'8 r8 \dtDown <fis' a'>4\f | <g' d''>4. <g' b'>8 a'4 g' | fis'2 fis'8\< fis' fis' g'\! |
	%52
	g'2\> g'8\! g' g' g' | g'4. g'8 g'4 g' | g' fis'8 fis'8 g'4 r8 g'\p | g'4 g'8 g' g'4\> g'8\! r8 |
	%56
	fis'4. fis'8 fis' fis' fis' fis' | fis'4.\> fis'8 fis'4\! r4 | g'8\p g' g' g' fis'4 fis'8 fis' | fis'4.\> fis'8 fis'4\! r4 |
	%60
	fis'8\p fis' fis' fis' g'4. g'8 | g'8 g' g' g' fis' fis' fis' fis' | e'4.\> e'8 e'8\! r8 e'4 | e'4 e'8 e' e'4 e' |
	%64
	d'4\> d'8\! r8 d'4\p d' | d'4 d'8 d' cis'4 cis'8 cis' | d'4. d'8 d'8 r8 d'8 d' | b4. b8 a4 a |
	%68
	a4\> a8\! r8 d'4\p\< e'\! | d'4.\mf cis'8\> cis'\! r8 b4 | d'4 d'8 d' cis'4. cis'8 | b8 r8 r4 b4\p b8 b |
	%72
	d'4. d'8 cis'4 cis' | a2 d'2\p\< | e'4 e'8 e' fis'4 fis'8 fis'\! | a'4\> a'8\! r8 a'4\mf a'8\< a' |
	%76
	b'8 b' b' b'\! b'4\> b'8\! r8 | r2 \dtDown a'2\f | << \context Voice = altVoice { a'1 } \\ { \dynamicUp s2\> s2\! } >> |
}
tenNotes = {
	\dtDown a4.\mf a8 a8 r8 a8\p a8 | a4 a8 a8 a4 a8 a8 | a8 r8 a8 a8 a8 a8 a8 a8 |
	%4
	b8 r8 b4.^>\p b8 b8 b8 | b8 r8 b4.\< b8 b8 b8 | d'4 d'8 d'8 d'4.\! d'8 | d'2\> r8\! d'8\p d'8 d'8 |
	%8
	cis'4 cis'8 cis'8 d'4. d'8 | d'8 r8 d'8\p d'8 cis'4 cis'8 cis'8 | b4 \hpDown ais8\< ais8 b4. b8 | b8 <b d'>8 <cis' e'>8 <cis' e'>8 \dtDown <d' fis'>4.\!\f <d' fis'>8 |
	%12
	<d' fis'>8 r8 r4 <d' fis'>8\f <d' fis'>8 <d' fis'>8 <d' fis'>8 | <d' fis'>4. <d' fis'>8 <d' fis'>4. <d' fis'>8 | <d' fis'>8 r8 r4 \dtDown <d' fis'>4\f <d' fis'>8 <d' fis'>8 | <cis' fis'>2-> <ais cis'>4\mf <ais cis'>8 <ais cis'>8 |
	%16
	b4\> <ais cis'>8\! r8 <ais cis'>8\mf <ais cis'>8 cis'8 b8 | <ais cis'>8 <ais cis'>8 cis'8 b8 <ais cis'>4. <gis d'>8 | <ais cis'>8 r8 r4 r4 <ais! cis'>4\mf | <b d'>4\> <ais cis'>8\! r8 r2 |
	%20
	r8 <ais cis'>8\p\< <ais cis'>8 <ais cis'>8\! <gis b>4\> <ais cis'>8\! r8 | r8 <ais cis'>8\mf <ais cis'>8 <ais cis'>8 <b d'>4 <ais cis'>8 <b d'>8 | <b e'>4 <b d'>2-> <ais cis'>8 <gis b>8 | <ais cis'>2\> <ais cis'>8\! r8 r4 |
	%24
	\dtDown fis2\p fis8 fis fis fis | e4 r8 e8\mf g4 g8 g | g4 g8 g e e e r8 | e8\p e e d d2^> |
	%28
	r8 d'8\mf d' d' g'4 g'8 g' | g'8 g' g' g' e' e' e' e' | dis'4 dis'4 e'4\> a4\! | a8\p a a a fis4.\> fis8 |
	%32
	fis2\! r4
	
	<<
	\new Voice = tenVoiceII { \voiceOne \autoBeamOff \dynamicUp
		\once\override DynamicText #'extra-offset = #'(-3 . -2.5)
		b4\mf | cis'!8 dis' e' fis'16 fis' g'2 ~ |
		g'2 ~ g'8 r8 \once\override DynamicText #'extra-offset = #'(0.1 . -1.25) \once\override Hairpin #'extra-offset = #'(0 . -1) g8\mf\< g8\! |
		a8([ b]) c' d' e'2 ~ |
		%36
		e'2 ~ e'8 e' e' e' | f'2 e'8 e' e' e' | f'2( e'8) e' \once\override DynamicText #'extra-offset = #'(3 . -7.25) e'\f e' | d'2 c'8 b a b |
		%40
		c'2. \once\override DynamicText #'extra-offset = #'(-2 . -2) g8\mf a | b2. \dtDown fis8\p g | a4. a8 fis2 ~ | fis2
	}
	\\
	\context Voice = tenVoice { \voiceTwo
		r4 | r2 r4 g'4 | fis'8 fis' e'8 e'16 e'16 d'8 r8 r4 | r2 r4 e'8 e' |
		%36
		\override Hairpin #'height = #0.4
		d'4 c'8 c' b b \once\override Hairpin #'extra-offset = #'(-0.2 . -1) e'8\< e'\! | \once\override Hairpin #'extra-offset = #'(0.2 . -1.25) e'4(\> d') b8\! \once\override Hairpin #'extra-offset = #'(-0.2 . -1) e'\< e' e'\! | e'4( d' b8) b r4 | R1 |
		\revert Hairpin #'height
		%40
		r4 a8 a g f g r8 | r4 g8 g fis e fis r8 | r4 e8 e fis2 ~ | fis2
		\oneVoice
	}
	>> fis4\p fis |
	%44
	gis4.\> gis8 gis\! r8 b8\f b | cis'4. cis'8\< cis' cis' d' e' | fis'4\! fis'8\ff fis' fis'4 fis'8 r8 | r4 d'8 d' d'4 d'8 d' |
	%48
	d'4 r8 d'8\f d'4 d'8 b | b4. b8 b8 r8 d'4\f | d'4. d'8 d'4 b | b2 b8\< b d' e'\! |
	%52
	d'2\> d'8\! d' d' d' | d'4. d'8 d'4 d' | d'4 d'8 d' d'4 r8 d'8\p | d'4 d'8 d' cis'4\> cis'8\! r8 |
	%56
	cis'4. cis'8 cis' cis' cis' cis' | b4.\> b8 b4\! r4 | cis'8\p cis' cis' cis' cis'4 cis'8 cis' | b4.\> b8 b4\! r4 |
	%60
	b8\p b b b cis'4. cis'8 | cis'8 cis' cis' cis' d' d' d' d' | cis'4.\> cis'8 cis'8\! r8 cis'4 | cis'4 cis'8 cis' cis'4 cis' |
	%64
	a4\> a8\! r8 \dtDown a4\p a | b4 b8 b a4 a8 a | a4. a8 a r8 a8 a | g4. g8 g4 g |
	%68
	fis4\> fis8\! r8 \dtDown \hpDown a4\p\< a\! | fis4.\mf fis8\> fis\! r8 d4 | d4 d8 d fis4. fis8 | fis8 r8 r4 fis4\p fis8 fis |
	%72
	e4. e8 g4 g | fis2 d'2\p\< | cis'4 cis'8 cis' d'4 d'8 d'\! | e'4\> e'8\! r8 e'4\mf e'8\< e' |
	%76
	g'8 g' g' g'\! g'4\> g'8\! r8 | r2 \dtDown <cis' g'>2\f | << \context Voice = tenVoice { <d' fis'>1 } \\ { \dynamicUp s2\> s2\! } >> |
}
basNotes = {
	d4.\mf d8 d8 r8 d8\p d8 | d4 d8 d8 d4 d8 d8 | c8 r8 c8 c8 c8 c8 c8 c8 |
	%4
	b,8 r8 b,4.^>\p b,8 g,8 b,8 | e8 r8 e4.\< e8 b,8 e8 | d4 b,8 d8 g4.\! g8 | g2\> r8\! g8\p g8 g8 |
	%8
	e4 e8 e8 g4. g8 | g8 r8 g8\p g8 e4 e8 e8 | g4 \hpDownExtra fis8\< fis8 b4. b8 | b8 b8 a8 a8 \dtDownExtra d'4.\!\f d'8 |
	%12
	d'8 r8 r4 \dtDownExtra d'8\f d'8 d'8 d'8 | b4. b8 d'4. d'8 | d'8 r8 r4 \dtDown b4\f b8 b8 | fis2^> r2 |
	%16
	R1*2 | r2 r4 fis4\mf | b4\> fis8\! r8 r2 |
	%20
	r8 fis8\p\< fis fis\! d4\> fis8\! r8 | r8 fis\mf fis fis b4 fis8 b | e4 b2^> fis8 d8 | fis2\> fis8\! r8 r4 |
	%24
	b2\p d8 d d b | e4 r8 e8\mf c4 c8 c | g4 g,8 g, a, a, a, r8 | a,8\p a, a, d g,2^> |
	%28
	r8 g8\mf g g e4 e8 e | g8 g g e a a a a | b4 b c'\> c\! | c8\p c c c b,4.\> b,8 |
	%32
	b,2\! r2 | r2 r4 \dtDownExtra e'4\f | d'8 d' c' c'16 c' b8 r8 r4 | r2 r4 \once\override DynamicText #'X-offset = #-3.5 \dtDownExtra c'8\f c' |
	%36
	b4 a8 a e e r4 | r4 b,8 b, e e r4 | r4 \dtDown b,8\f b, e e r4 | R1 |
	%40
	r4 f8\mf f e d e r8 | r4 e8\mf e d c d r8 | r4 c8 c b,2 ~ | b,2 b,4\p b,4 |
	%44
	<e, e>4.\> <e, e>8 <e, e>8\! r8 e8\f e | a4. a8\< g! g fis e | d4\! d8\ff d c'4 c'8 r8 | r4 c'8 c' b4 a8 a |
	%48
	g4 r8 g8\f fis4 fis8 e | d4. d8 d r8 \once\override DynamicText #'X-offset = #-3.5 \dtDown c'4\f | b4. g8 fis4 e | d2 d8\< d d c\! |
	%52
	b,2\> b,8\! g, g, a, | b,4. b,8 b,4 a,8([ g,]) | a,4 a,8 a, g,4 r8 g\p | g4 g8 g8 e4\> e8\! r8 |
	%56
	fis4. fis8 fis fis fis fis | d4.\> d8 d4\! r4 | e8\p e e e fis4 fis8 fis | d4.\> d8 d4\! r4 |
	%60
	d8\p d d d e4. e8 | e8 e e e fis fis fis fis | g4.\> g8 g8\! r8 g4 | g4 g8 g g4 g |
	%64
	fis4\> fis8\! r8 fis4\p fis | e4 e8 e e4 e8 e | d4. d8 d r8 d8 d | d4. d8 cis4 cis |
	%68
	d4\> d8\! r8 \dtDown \hpDown d4\p\< cis\! | \dtDown b,4.\mf a,8\> a,\! r8 g,4 | fis,4 fis,8 g, a,4. a,8 | b,8 r8 r4 b,4\p b,8 b, |
	%72
	g,4. b,8 a,4 a, | d2 \dtDown \hpDown d'2\p\< | cis'4 cis'8 cis' b4 b8 b\! | a4\> a8\! r8 a4\mf a8\< a |
	%76
	g g g g\! g4\> g8\! r8 | r2 \dtDown <e a>2\f | << \context Voice = basVoice { <d a>1 } \\ { \dynamicUp s2\> s2\! } >> |
}

sopText = \lyricmode {
	Вѣ -- ру -- ю во е -- ди -- на -- го Бо -- га От -- ца, Все -- дер -- жи -- те -- ля, Твор --
	ца не -- бу и зем -- ли, ви -- ди -- мымъ же всѣмъ и не -- ви -- ди -- мымъ. И во е --
	
	ди -- на -- го Гос -- по -- да І -- и -- су -- са Хри -- ста, Сы -- на Бо -- жі -- я, Е -- ди -- но -- род -- на --
	го, И -- же отъ От -- ца рож -- ден -- на -- го преж -- де всѣхъ вѣкъ: Свѣ -- та отъ
	Свѣ -- та, Бо -- га ис -- тин -- на отъ Бо -- га ис -- тин -- на, рож -- ден -- на
	
	не со -- тво -- рен -- на, е -- ди -- но -- сущ -- на От -- цу, Им -- же вся бы -- ша.
	Насъ ра -- ди че -- ло -- вѣкъ и на -- ше -- го ра -- ди спа -- се -- ні -- я сшед -- ша -- го съ~не -- бесъ
	и во -- пло -- тив -- ша -- го -- ся отъ Ду -- ха Свя -- та и Ма -- рі -- и Дѣ -- вы,
	
	и во -- че -- ло -- вѣч -- ша -- ся. Рас -- пя -- та -- го же за -- ны
	при Пон -- тій -- стѣмъ Пи -- ла -- тѣ и стра -- дав -- ша, и по -- гре --
	бен -- на. И вос -- крес -- ша -- го
	
	и вос -- крес -- ша -- го въ~тре -- тій день __ по  пи -- са -- ні -- емъ. И воз --
	шед -- ша -- го на не -- бе -- са, и сѣ -- дя -- ща о -- дес -- ну -- ю От -- ца. И па -- ки гря --
	ду -- ща -- го со сла -- во -- ю су -- ди -- ти жи -- вымъ и мер -- твымъ, Е -- го -- же
	
	Цар -- стві -- ю не бу -- детъ кон -- ца. И въ~Ду -- ха Свя -- та -- го, Гос -- по -- да, жи -- во -- тво --
	ря -- ща -- го, И -- же отъ От -- ца ис -- хо -- дя -- ща -- го, И -- же со От -- цемъ и
	Сы -- номъ спо -- кла -- ня -- е -- ма и ссла -- ви -- ма, гла -- го -- лав -- ша -- го про -- ро -- ки. Во е --
	
	ди -- ну свя -- ту -- ю, со -- бор -- ну -- ю и А -- пос -- толь -- ску -- ю Цер -- ковь. Ис -- по --
	вѣ -- ду -- ю е -- ди -- но кре -- ще -- ні -- е во ос -- та -- вле -- ні -- е грѣ -- ховъ. Ча --
	ю вос -- кре -- се -- ні -- я мерт -- выхъ, и жиз -- ни бу -- ду -- ща -- го вѣ -- ка. А -- минь.
}
sopTextII = \lyricmode {
	Рас -- пя -- та -- го же за -- ны __ при Пон --
	тій -- стѣмъ Пи -- ла -- тѣ и стра -- дав -- ша, и по -- гре --
	бен -- на. И вос -- крес -- ша -- го въ~тре -- тій день въ~тре -- тій
	
	день по пи -- са -- ні -- ю __ 
}

altText = \lyricmode {
	Вѣ -- ру -- ю во е -- ди -- на -- го Бо -- га От -- ца, Все -- дер -- жи -- те -- ля, Твор --
	ца не -- бу и зем -- ли, ви -- ди -- мымъ же всѣмъ и не -- ви -- ди -- мымъ. И во е --
	
	ди -- на -- го Гос -- по -- да І -- и -- су -- са Хри -- ста, Сы -- на Бо -- жі -- я, Е -- ди -- но -- род -- на --
	го, И -- же отъ От -- ца рож -- ден -- на -- го преж -- де всѣхъ вѣкъ: Свѣ -- та отъ
	Свѣ -- та, Бо -- га ис -- тин -- на отъ Бо -- га ис -- тин -- на, рож -- ден -- на не со -- тво -- 
	
	рен -- на, е -- ди -- но -- сущ -- на От -- цу, Им -- же вся бы -- ша.
	Насъ ра -- ди че -- ло -- вѣкъ и на -- ше -- го ра -- ди спа -- се -- ні -- я сшед -- ша -- го съ~не -- бесъ
	и во -- пло -- тив -- ша -- го -- ся отъ Ду -- ха Свя -- та и Ма -- рі -- и Дѣ -- вы,

	и во -- че -- ло -- вѣч -- ша -- ся.
	Рас -- пя -- та -- го же за -- ны
	при Пон -- тій -- стѣмъ Пи -- ла -- тѣ и стра -- дав -- ша,
	по -- гре -- бен -- на. И вос -- крес -- ша -- го
	
	и вос -- крес -- ша -- го въ~тре -- тій день __ по пи -- са -- ні -- емъ. И воз --
	шед -- ша -- го на не -- бе -- са, и сѣ -- дя -- ща о -- дес -- ну -- ю От -- ца. И па -- ки гря --
	ду -- ща -- го со сла -- во -- ю су -- ди -- ти жи -- вымъ и мер -- твымъ, Е -- го -- же
	
	Цар -- стві -- ю не бу -- детъ кон -- ца. И въ~Ду -- ха Свя -- та -- го, Гос -- по -- да, жи -- во -- тво --
	ря -- ща -- го, И -- же отъ От -- ца ис -- хо -- дя -- ща -- го, И -- же со От -- цемъ и
	Сы -- номъ спо -- кла -- ня -- е -- ма и ссла -- ви -- ма, гла -- го -- лав -- ша -- го про -- ро -- ки. Во е --
	
	ди -- ну свя -- ту -- ю, со -- бор -- ну -- ю и А -- \lyrDown пос -- толь -- ску -- ю Цер -- ковь. \lyrNormal Ис -- по --
	вѣ -- ду -- ю е -- ди -- но кре -- ще -- ні -- \lyrHalfDown е во ос -- та -- вле -- ні -- е грѣ -- ховъ. Ча --
	ю вос -- кре -- се -- ні -- я \lyrNormal мерт -- выхъ, и жиз -- ни бу -- ду -- ща -- го вѣ -- ка. А -- минь.
}
tenText = \lyricmode {
	Вѣ -- ру -- ю во е -- ди -- на -- го Бо -- га От -- ца, Все -- дер -- жи -- те -- ля, Твор --
	ца не -- бу и зем -- ли, ви -- ди -- мымъ же всѣмъ и не -- ви -- ди -- мымъ. И во е --
	
	ди -- на -- го Гос -- по -- да І -- и -- су -- са Хри -- ста, Сы -- на Бо -- жі -- я, Е -- ди -- но -- род -- на --
	го, И -- же отъ От -- ца рож -- ден -- на -- го преж -- де всѣхъ вѣкъ: Свѣ -- та отъ
	Свѣ -- та, Бо -- га ис -- тин -- на отъ Бо -- га ис -- тин -- на, рож -- ден -- на
	
	не со -- тво -- рен -- на, е -- ди -- но -- сущ -- на От -- цу, Им -- же вся бы -- ша.
	Насъ ра -- ди че -- ло -- вѣкъ и на -- ше -- го ра -- ди спа -- се -- ні -- я сшед -- ша -- го съ~не -- бесъ
	и во -- пло -- тив -- ша -- го -- ся отъ Ду -- ха Свя -- та и Ма -- рі -- и Дѣ -- вы,

	и во -- че -- ло -- вѣч -- ша -- ся. Рас -- пя -- та -- го же за -- ны
	при Пон -- тій -- стѣмъ Пи -- ла -- тѣ и стра -- дав -- ша, и по -- гре --
	бен -- на. И вос -- крес -- ша -- го
	
	и вос -- крес -- ша -- го въ~тре -- тій день __ по  пи -- са -- ні -- емъ. И воз --
	шед -- ша -- го на не -- бе -- са, и сѣ -- дя -- ща о -- дес -- ну -- ю От -- ца. И па -- ки гря --
	ду -- ща -- го со сла -- во -- ю су -- ди -- ти жи -- вымъ и мер -- твымъ, Е -- го -- же
	
	Цар -- стві -- ю не бу -- детъ кон -- ца. И въ~Ду -- ха Свя -- та -- го, Гос -- по -- да, жи -- во -- тво --
	ря -- ща -- го, И -- же отъ От -- ца ис -- хо -- дя -- ща -- го, И -- же со От -- цемъ и
	Сы -- номъ спо -- кла -- ня -- е -- ма и ссла -- ви -- ма, гла -- го -- лав -- ша -- го про -- ро -- ки. Во е --
	
	ди -- ну свя -- ту -- ю, со -- бор -- ну -- ю и А -- пос -- толь -- ску -- ю Цер -- ковь. Ис -- по --
	вѣ -- ду -- ю е -- ди -- но кре -- ще -- ні -- е во ос -- та -- вле -- ні -- е грѣ -- ховъ. Ча --
	ю вос -- кре -- се -- ні -- я мерт -- выхъ, и жиз -- ни бу -- ду -- ща -- го вѣ -- ка. А -- минь.
}
tenTextII = \lyricmode {
	Рас -- пя -- та -- го же за -- ны __ при Пон --
	тій -- стѣмъ Пи -- ла -- тѣ и стра -- дав -- ша, и по -- гре --
	бен -- на. И вос -- крес -- ша -- го въ~тре -- тій день въ~тре -- тій
	
	день по пи -- са -- ні -- ю __
}
basText = \lyricmode {
	Вѣ -- ру -- ю во е -- ди -- на -- го Бо -- га От -- ца, Все -- дер -- жи -- те -- ля, Твор --
	ца не -- бу и зем -- ли, ви -- ди -- мымъ же всѣмъ и не -- ви -- ди -- мымъ. И во е --
	
	ди -- на -- го Гос -- по -- да І -- и -- су -- са Хри -- ста, Сы -- на Бо -- жі -- я, Е -- ди -- но -- род -- на --
	го, И -- же отъ От -- ца рож -- ден -- на -- го преж -- де всѣхъ вѣкъ:
	рож -- ден -- на
	
	не со -- тво -- рен -- на, е -- ди -- но -- сущ -- на От -- цу, Им -- же вся бы -- ша.
	Насъ ра -- ди че -- ло -- вѣкъ и на -- ше -- го ра -- ди спа -- се -- ні -- я сшед -- ша -- го съ~не -- бесъ
	и во -- пло -- тив -- ша -- го -- ся отъ Ду -- ха Свя -- та и Ма -- рі -- и Дѣ -- вы,

	и во -- че -- ло -- вѣч -- ша -- ся.
	Рас -- пя -- та -- го же за -- ны
	при Пон -- тій -- стѣмъ Пи -- ла -- тѣ и стра -- дав -- ша,
	по -- гре -- бен -- на. И вос -- крес -- ша -- го

	и вос -- крес -- ша -- го въ~тре -- тій день __ по пи -- са -- ні -- емъ. И воз --
	шед -- ша -- го на не -- бе -- са, и сѣ -- дя -- ща о -- дес -- ну -- ю От -- ца. И па -- ки гря --
	ду -- ща -- го со сла -- во -- ю су -- ди -- ти жи -- вымъ и мер -- твымъ, Е -- го -- же
	
	Цар -- стві -- ю не бу -- детъ кон -- ца. И въ~Ду -- ха Свя -- та -- го, Гос -- по -- да, жи -- во -- тво --
	ря -- ща -- го, И -- же отъ От -- ца ис -- хо -- дя -- ща -- го, И -- же со От -- цемъ и
	Сы -- номъ спо -- кла -- ня -- е -- ма и ссла -- ви -- ма, гла -- го -- лав -- ша -- го про -- ро -- ки. Во е --
	
	ди -- ну свя -- ту -- ю, со -- бор -- ну -- ю и А -- пос -- толь -- ску -- ю Цер -- ковь. Ис -- по --
	вѣ -- ду -- ю е -- ди -- но кре -- ще -- ні -- е во ос -- та -- вле -- ні -- е грѣ -- ховъ. Ча --
	ю вос -- кре -- се -- ні -- я мерт -- выхъ, и жиз -- ни бу -- ду -- ща -- го вѣ -- ка. А -- минь.
}

\score {
	\new ChoirStaff <<
		\new Lyrics = sopLyricsII { s1 }
		\new Staff = sopStaff {
			\clef treble \key d \major
			\new Voice = sopVoice { \autoBeamOff \dynamicUp \sopNotes }
		}
		\new Lyrics = sopLyrics { s1 }
		\new Staff = altStaff {
			\clef treble \key d \major
			\new Voice = altVoice { \autoBeamOff \dynamicUp \altNotes }
		}
		\new Lyrics = altLyrics { s1 }
		\new Lyrics = tenLyricsII { s1 }
		\new Staff = tenStaff {
			\clef "G_8" \key d \major
			\new Voice = tenVoice { \autoBeamOff \dynamicUp \tenNotes }
		}
		\new Lyrics = tenLyrics { s1 }
		\new Staff = basStaff {
			\clef bass \key d \major
			\new Voice = basVoice { \autoBeamOff \dynamicUp \basNotes }
		}
		\new Lyrics = basLyrics { s1 }
		
		\context Lyrics = sopLyricsII \lyricsto sopVoiceII { \sopTextII }
		\context Lyrics = sopLyrics \lyricsto sopVoice { \sopText }
		\context Lyrics = altLyrics \lyricsto altVoice { \altText }
		
		\context Lyrics = tenLyricsII \lyricsto tenVoiceII { \tenTextII }
 		\context Lyrics = tenLyrics \lyricsto tenVoice { \tenText }
		\context Lyrics = basLyrics \lyricsto basVoice { \basText }
	>>
	\layout {
		system-count = 21
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
			
		}
		\context {
			\Voice
			hairpinToBarline = ##f
			\override DynamicText #'X-offset = #-2
		}
	}
	\header { piece = "12. Символъ Вѣры." }
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
	}
}
