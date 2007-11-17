\version "2.11.27"
dtDown = { \once\override DynamicText #'extra-offset = #'(0 . -1) }
hpDown = { \once\override Hairpin     #'extra-offset = #'(0 . -1) }
dtHalfDown = { \once\override DynamicText #'extra-offset = #'(0 . -0.5) }
hpHalfDown = { \once\override Hairpin     #'extra-offset = #'(0 . -0.5) }

global = { \key fis \minor \time 4/4 \dynamicUp \autoBeamOff }

sopNotes = {
	\global \clef treble 
	%1
	r2^\markup{\hspace #-4 \large \bold "Не скоро и сдержанно."} r4 fis'8\mf gis' | a'4 gis'8([ a']) b'([ a']) gis' fis' |
	%3
	a'4 e'8([\p fis']) gis'4 fis'8([ a']) | gis'4 a'8\mf\< b' cis''4 b'8([ cis''])\! |
	%5
	d''8\f([ cis'']) b' a' cis''4 b'8 d'' | cis''4 d''8\mf\< <cis'' e''> <d'' fis''>4.\!\f <d'' fis''>8 | <cis'' e''>8 r8 <b' d''>8([\f <a' cis''>]) <b' d''>4. <b' d''>8 |
	%8
	<a' cis''>8 r8 b'8\mf a' b'4. cis''8 | a'8\< a' a' b'\! cis''4\> b'8\! r8 | r4 fis'8\mf b' a'4 a' |
	
	%11
	gis'4 gis' fis'8 r8 r4 | r2  fis'4\p\< gis'8 a'\! | b'8\mf r8 r4 r2 |
	%14
	b'4\mf\< cis''8 d'' e''\! r8 e''8([\f fis'']) | g''2 fis''4( e'') | d''4( e'') d''2 | cis''2 cis''4 cis'' |
	%18
	b'8 r8 r4 r2 | R1 | r2 r8 e'8\mf e' e' |
	
	%21
	fis'4\< gis'8([ a']) b'8\! r8 a'8 a' | gis'8 a' fis' fis' e' gis'\f a' b' | cis''8\< cis'' d'' e'' fis''4\! e''8 e'' |
	%24
	d''4-> cis''8 b' a' r8 a'8\f a' | d''4. d''8 cis'' cis'' b' d'' | cis''4( b') cis'' r4 |
	%27
	cis''8\f\< cis'' d'' e'' fis''4\! e''8 fis'' | g''8([ fis'']) e''([ d'']) fis''4 e''8([ g'']) | fis''8 r8 fis''8\f fis'' e'' e'' e'' d'' |
	
	%30
	e''4\> e''8\! r8 r4 e''8\p e'' | d''8 d'' cis'' b' cis''4\> cis''8\! r8 | r4 b'8\p\< a' b'4\! b' | a'2.\> gis'8\!\p\<^\markup{\italic\small "Задерживая"} fis' |
	%34
	a'4\! gis'\> fis'8\! r8 a'8\p\<^\markup{\italic\small "Медленно"} a'\! | g'2\> fis'\! | fis'4\p fis'8 fis' fis' r8 a'8\p\< a' | g'4.\! g'8 << { fis'2 } { s4\> s4\! } >> |
	%38
	\newSpacingSection
	fis'4\p fis'8 fis' fis' r8 a'4\f | cis''2-> fis''-> | cis''4\f( d'') a'4( b') | cis''1 | a'2 fis'\pp | fis'1 ~ | fis'4 r4 r2\fermata \bar "|."
}

altNotes = {
	\global \clef treble
	%1
	r2 r4 fis'8\mf fis' | fis'4 fis' fis' e'8 fis' | e'4 e'\p e' e' | e'4 \dtDown \hpDown e'8\mf\< e' e'4 << { a' } { s8 s8\! } >> |
	%5
	\dtDown a'4\f fis'8 fis' a'4 a'8 a' | a'4 \dtDown \hpDown a'8\mf\< a' \dtDown a'4.\!\f a'8 | a'8 r8 fis'4\f fis'4. gis'8 |
	%8
	a'8 r8 g'8\mf fis' g'4. g'8 | fis'8\< fis' e' gis'\! a'4\> fis'8\! r8 | r4 d'8\mf fis' fis'4 fis' |
	
	%11
	fis'4 eis'4 cis'8 r8 r4 | r2 fis'4\p\< fis'8 fis'\! | fis'8\mf r8 r4 r2 |
	%14
	g'4\mf\< g'8 b' b'\! r8 b'4\f | b'2 cis'' | b'2 b' | b'2 ais'4 ais' |
	%18
	fis'8 r8 r4 r2 | R1 | r2 r8 e'8\mf e' e' |
	
	%21
	e'4\< e' e'8\! r8 e'8 e' | e'8 e' e' dis' e' e'\f e' gis' | a'8\< a' a' a' a'4\! a'8 a' |
	%24
	a'4-> a'8 gis' e' r8 e'\f e' | a'4. a'8 a' a' a' a' | a'2 a'4 r4 |
	%27
	\dtDown \hpDown a'8\f\< a' a' a' a'4\! g'8 a' | b'4 g' a' g' | a'8 r8 a'8\f a' g' g' g' g' |
	
	%30
	g'4\> g'8\! r8 r4 g'8\p g' | fis'8 fis' fis' fis' fis'4\> fis'8\! r8 | r4 d'8\p\< cis' d'4\! d' | cis'2.\> d'8\!\p\< d' |
	%34
	fis'4\! eis'\> cis'8\! r8 fis'8\p\< fis'\! | e'2\> d'\! | d'4\p cis'8 b cis' r8 fis'8\p\< fis' | e'4.\! e'8 << { d'2 } { s4\> s4\! } >> |
	%38
	d'4\p cis'8 b cis' r8 fis'4\f | a'2-> d''-> | \dtDown a'4(\f b') fis'( gis') | a'1 | fis'2 fis'\pp | fis'1 ~ | fis'4 r4 r2\fermata |
}

tenNotes = {
	\global \clef "G_8"
	%1
	r2 r4 d'8\mf <b d'> | <fis cis'>4 <d b>8([ <fis cis'>]) << \context Voice = tenVoice { \voiceOne d'4 \oneVoice } \\ { \voiceTwo b8([ d']) } >> e'8 d' |
	%3
	<a cis'>4 <a cis'>\p b a | b4 \dtDown \hpDown a8\mf\< gis a4 d'8([ e'])\! |
	%5
	\dtHalfDown fis'8([\f e']) d' d' e'4 d'8 d' | e'4 \dtHalfDown \hpHalfDown e'8\mf\< <cis' e'> \dtHalfDown <d' fis'>4.\!\f <d' fis'>8 | <cis' e'>8 r8 <b d'>8\f([ <a cis'>]) <b d'>4. <b d'>8 |
	%8
	<a cis'>8 r8 d'8\mf d' d'4. cis'8 | cis'8\< d' e' e'\! e'4\> d'8\! r8 | r4 b8\mf d' cis'4 b |
	
	%11
	d'4 cis'8([ b]) a8 r8 r4 | r2 fis4\p\< gis8 a\! | b8\mf r8 r4 r2 |
	%14
	b4\mf\< cis'8 d' e'\! r8 b8([\f dis']) | e'2 cis'4( fis') | fis'4( g') fis'( e') | g'2 fis'4 e' |
	%18
	d'8 r8 b8\mf b cis'4 << \context Voice = tenVoice { \voiceOne dis'8([ e']) \oneVoice } \\ { cis'4 } >> |
	<cis' fis'>8 r8 <cis' e'>4 <cis' dis'> <cis' e'>8 <cis' fis'> | <cis' e'>8 <cis' fis'>16 <cis' fis'> <cis' dis'>8 <bis dis'> cis'8 e'\mf e' d' |
	
	%21
	cis'4\< b8([ <a cis'>]) <gis b>\! r8 <a cis'> <a cis'> | b8 cis' a b e e'\f e' e' | e'8\< e' d' cis' d'4\! cis'8 cis' |
	%24
	d'4-> e'8 d' cis' r8 cis'8\f cis' | d'4. d'8 e' e' d' d' | e'4( d') e' r4 |
	%27
	e'8\f\< e' d' cis' d'4\! d'8 d' | d'4 b d' d' | d'8 r8 d'8\f d' b b b b |
	
	%30
	b4\> b8\! r8 r4 b8\p b | b8 b a gis a4\> a8\! r8 | r4 fis8\p\< fis fis4\! gis | e2.\> b8\!\p\< a |
	%34
	cis'4\! b\> a8\! r8 cis'8\p\< cis'\! | b2\> a\! | gis4\p a8 b a r8 cis'8\p\< cis' | b4.\! b8 << { a2 } { s4\> s4\! } >> |
	%38
	gis4\p a8 b a r8 r4 | R1 | R1 | r2 \dtDown <fis a>2\p | <fis a>2 <fis a> | <fis a>1 ~ | <fis a>4 r4 r2\fermata |
}

basNotes = {
	\global \clef bass
	%1
	R1 | R1 | r4 a4\p e cis | e8([ d]) \dtDown \hpDown cis8\mf\< b, a,8([ g]) fis([ e])\! |
	%5
	\dtDown d8([\f a]) b d' a4 fis8 fis | a8([ g]) fis8\mf\< e d4.\!\f d8 | a8 r8 \dtDown b8([\f fis]) b4. e8 |
	%8
	fis8 r8 \dtDown g8\mf d g4. e8 | fis8\< d cis b,\! a,4\> b,8\! r8 | r4 b,8\mf gis, cis4 d |
	
	%11
	b,4 cis fis,8 r8 cis8 cis | e8 r8 e4-> e8([\< d]) b,8 cis\! | d8\mf d g4 g g8 g |
	%14
	g8\mf\<([ fis]) e fis g\! r8 g8([\f fis]) | e8([ d cis b,]) ais,4( gis,8[ ais,]) | b,4( e) fis( g) | e2 fis4 fis |
	%18
	b8 r8 \dtHalfDown b8\mf b b4 a8([ gis]) | a8 r8 gis4 fis gis8 a | gis8 a16 a fis8 gis cis r8 r4 |
	
	%21
	R1 | r2 r8 \once\override DynamicText #'extra-offset = #'(-1.5 . -3) d'!\f cis' b | a8\< g fis e d4\! e8 e |
	%24
	fis4-> e8 e a r8 \dtHalfDown g\f g | fis4. fis8 a a fis fis | a4( fis) a r4 |
	%27
	\dtDown \hpDown a8\f\< g fis e d([\! c]) b, a, | g,8([ b,]) e([ g]) d'4 b | d'8 r8 d\f d e e e g |
	
	%30
	e4\> e8\! r8 r4 e8\p e | b,8 b, fis d fis4\> fis8\! r8 | r4 b,8\p\< fis, b,4\! e | a,2.\> b,8\!\p\< d |
	%34
	cis4\! cis\> fis,8\! r8 \once\override TextScript #'extra-offset = #'(-1.75 . 1) \dtHalfDown \hpHalfDown <fis, cis>8\mf\<_\markup{\dynamic "p"} <fis, cis>\! << \context Voice = basVoice { \voiceOne \hpDown e4(\> d8[ cis]) d2\! \oneVoice } \\ { \autoBeamOff \override Stem #'length = #3.25 fis,2 fis, } >> |
	%36
	<fis, b,>4\p <fis, cis>8 <fis, d> <fis, cis> r8 <fis, cis>8\p\< <fis, cis> | << \context Voice = basVoice { \voiceOne e4\!( d8) \oneVoice } \\ { \once\override Stem #'length = #3.25 fis,4. } >> <fis, cis>8 << { <fis, d>2 } { s4\> s4\! } >> |
	%38
	<fis, b,>4\p <fis, cis>8 <fis, d> <fis, cis> r8 r4 | R1 | R1 | r2 \dtDown <fis, cis>2\p | <fis, cis>2 <fis, cis> | <fis, cis>1 ~ | <fis, cis>4 r4 r2\fermata |
}

sopText = \lyricmode {
	У -- твер -- ди -- ся серд -- це мо -- е во Гос -- по -- дѣ, воз -- не -- се -- ся
	рогъ мой о Бо -- зѣ мо -- емъ, раз -- ши -- ри -- ша -- ся ус -- та мо --
	я, на вра -- ги мо -- я, воз -- ве -- се -- лит -- ся о спа -- се -- ні --
	
	и тво -- емъ. Я -- ко Гос -- подь
	я -- ко Богъ нашъ, и __ нѣсть святъ, нѣсть святъ па -- че Те --
	бе. И да не
	
	хва -- лит -- ся силь -- ный си -- ло -- ю сво -- е -- ю, да не хва -- лит -- ся бо -- га -- тый, бо --
	гат -- стомъ сво -- имъ. Но о семъ да хва -- лит -- ся хва -- ляй -- ся,
	е -- же ра -- зу -- мѣ -- ти и зна -- ти Гос -- по -- да и тво -- ри -- ти судъ и
	
	пра -- вду, и тво -- ри -- ти судъ и пра -- вду про -- сре -- дѣ зем -- ли, про -- сре --
	дѣ зем -- ли. Я -- ко нѣсть святъ, я -- ко Гос -- подь и нѣсть пра -- ве -- денъ,
	я -- ко Богъ нашъ, и нѣсть святъ, нѣсть святъ па -- че Те -- бе. __
}
altText = \lyricmode {
	У -- твер -- ди -- ся серд -- це мо -- е во Гос -- по -- дѣ, воз -- не -- се -- ся
	рогъ мой о Бо -- зѣ мо -- емъ, раз -- ши -- ри -- ша -- ся ус -- та мо
	я, на вра -- ги мо -- я, воз -- ве -- се -- лит -- ся о спа -- се -- ні --
	
	и тво -- емъ. Я -- ко Гос -- подь
	я -- ко Богъ нашъ, и нѣсть святъ, нѣсть святъ па -- че Те --
	бе. И да не
	
	хва -- лит -- ся силь -- ный си -- ло -- ю сво -- е -- ю, да не хва -- лит -- ся бо -- га -- тый, бо --
	гат -- стомъ сво -- имъ. Но о семъ да хва -- лит -- ся хва -- ляй -- ся,
	е -- же ра -- зу -- мѣ -- ти и зна -- ти Гос -- по -- да и тво -- ри -- ти судъ и
	
	пра -- вду, и тво -- ри -- ти судъ и пра -- вду про -- сре -- дѣ зем -- ли, про -- сре --
	дѣ зем -- ли. Я -- ко нѣсть святъ, я -- ко Гос -- подь и нѣсть пра -- ве -- денъ,
	я -- ко Богъ нашъ, и нѣсть святъ, нѣсть святъ па -- че Те -- бе. __
}
tenText = \lyricmode {
	У -- твер -- ди -- ся серд -- це мо -- е во Гос -- по -- дѣ, воз -- не -- се -- ся
	рогъ мой о Бо -- зѣ мо -- емъ, раз -- ши -- ри -- ша -- ся ус -- та мо
	я, на вра -- ги мо -- я, воз -- ве -- се -- лит -- ся о спа -- се -- ні --
	
	и тво -- емъ. Я -- ко Гос -- подь
	я -- ко Богъ нашъ, и __ нѣсть святъ, нѣсть святъ па -- че Те --
	бе. Да не хва -- лит -- ся пре -- муд -- рый пре -- му -- дро -- сті -- ю сво -- ей. И да не
	
	хва -- лит -- ся силь -- ный си -- ло -- ю сво -- е -- ю, да не хва -- лит -- ся бо -- га -- тый, бо --
	гат -- стомъ сво -- имъ. Но о семъ да хва -- лит -- ся хва -- ляй -- ся,
	е -- же ра -- зу -- мѣ -- ти и зна -- ти Гос -- по -- да и тво -- ри -- ти судъ и
	
	пра -- вду, и тво -- ри -- ти судъ и пра -- вду про -- сре -- дѣ зем -- ли, про -- сре --
	дѣ зем -- ли. Я -- ко нѣсть святъ, я -- ко Гос -- подь и нѣсть пра -- ве -- денъ,
	я -- ко Богъ нашъ, па -- че Те -- бе. __
}
basText = \lyricmode {
	во Гос -- по -- дѣ, воз -- не -- се -- ся
	рогъ мой о Бо -- зѣ мо -- емъ, раз -- ши -- ри -- ша -- ся ус -- та мо
	я, на вра -- ги мо -- я, воз -- ве -- се -- лит -- ся о спа -- се -- ні --
	
	и тво -- емъ. Я -- ко нѣсть святъ, я -- ко Гос -- подь и нѣсть пра -- ве -- денъ,
	я -- ко Богъ нашъ, и __ нѣсть __ святъ, нѣсть святъ па -- че Те --
	бе. Да не хва -- лит -- ся пре -- муд -- рый пре -- му -- дро -- сті -- ю сво -- ей.
	
	и да не хва -- лит -- ся бо -- га -- тый, бо --
	гат -- стомъ сво -- имъ. Но о семъ да хва -- лит -- ся хва -- ляй -- ся,
	е -- же ра -- зу -- мѣ -- ти и зна -- ти Гос -- по -- да и тво -- ри -- ти судъ и
	
	пра -- вду, и тво -- ри -- ти судъ и пра -- вду про -- сре -- дѣ зем -- ли, про -- сре --
	дѣ зем -- ли. Я -- ко нѣсть святъ, я -- ко Гос -- подь и нѣсть пра -- ве -- денъ,
	я -- ко Богъ нашъ, па -- че Те -- бе. __
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
		\new Staff = tenStaff {
			\new Voice = tenVoice { \autoBeamOff \dynamicUp \tenNotes }
		}
		\new Lyrics = tenLyrics { s1 }
		\new Staff = basStaff {
			\new Voice = basVoice { \autoBeamOff \dynamicUp \basNotes }
		}
		\new Lyrics = basLyrics { s1 }
		
		\context Lyrics = sopLyrics \lyricsto sopVoice { \sopText }
		\context Lyrics = altLyrics \lyricsto altVoice { \altText }
 		\context Lyrics = tenLyrics \lyricsto tenVoice { \tenText }
		\context Lyrics = basLyrics \lyricsto basVoice { \basText }
	>>
	\layout {
		system-count = 12
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
	\header {
		piece = \markup {
			\center-align {
				"17. Причастный Стихъ"
				\tiny \sans "Книга исхода. Пѣснь ІІІ."
			}
		}
	}
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
			tempoWholesPerMinute = #(ly:make-moment 70 4)
		}
		\context {
			\Voice
			\remove Dynamic_performer
		}
	}
}
