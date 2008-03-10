\version "2.11.41"

#(set-global-staff-size 18)
#(ly:set-option 'point-and-click #f)

\paper {
	% We need a font with the Cyrillic "yat" character (U+0463).
	% I wish we had a better free font than DejaVu for this.
	% Adobe's Times Ten Cyrillic is ideal, but not free.
	% Or you could use the version of Times New Roman that ships with Windows Vista.
	#(define fonts (make-pango-font-tree "DejaVu Serif Condensed" "DejaVu Sans Condensed" "DejaVu Sans Mono" 0.9))
	ragged-last-bottom = ##f
	between-system-padding = 0
	indent = 1\in
}

\header {
	title = "Къ Богородицѣ прилежно"
	composer = "Александръ А. Архангельский (1846-1924)"
	
	%mutopia-specific headers:
	mutopiatitle = "To the Mother of God Let Us Earnestly Hasten"
	mutopiacomposer = "ArchangelskyA"
	mutopiainstrument = "Voice (SATB)"
	date = "19th century"
	source = "Unknown (pre-revolutionary Russian)"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2008/Feb/29"
 footer = "Mutopia-2008/03/10-1368"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = { \time 4/4 \key g \minor \dynamicUp \autoBeamOff \partial 2 }
narrowStaves = { \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((alignment-offsets . (0 -6 -11.5 -17.5 -23 -29 -34.5 -40.5))) }
medStaves    = { \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((alignment-offsets . (0 -6 -12.5 -18.5 -25 -31 -37.5 -43.5))) }
wideStaves   = { \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((alignment-offsets . (0 -6 -14   -20   -28 -34 -42   -48  ))) }
dtDown = { \once\override DynamicText #'extra-offset = #'(0 . -1.25) }
hpDown = { \once\override Hairpin     #'extra-offset = #'(0 . -1.25) }
tsDown = { \once\override TextScript  #'extra-offset = #'(0 . -0.75) }
dtDownExtra = { \once\override DynamicText #'extra-offset = #'(0 . -1.75) }
hpDownExtra = { \once\override Hairpin     #'extra-offset = #'(-0.5 . -1.75) }
hpHalfDown = { \once\override Hairpin     #'extra-offset = #'(0 . -0.67) }
dtHalfDown = { \once\override DynamicText #'extra-offset = #'(0 . -0.5) }

sopNotes = {
	\global \clef treble
	s1*0^\markup{ \large\bold "Умѣренно." } \set Score.tempoWholesPerMinute = #(ly:make-moment 70 4)
	\wideStaves
	g'4\p a' |
	%1
	bes'4. bes'8\< a'4 bes'\! | c''2\> bes'\! | a'8\< g' fis' g'\! bes'4(\> a')\! | g'2. g'4 |
	%5
	\break \wideStaves
	fis'2 fis'4 g' | a'2.\> g'4\! | bes'4 a' g' fis' | g'1 | a'2 bes' | c''4. bes'8 d''4 c'' | bes'2( c''4 bes') |
	%12
	\pageBreak \medStaves
	a'4 \dtDown a'\p a' c'' | bes'4( a' g') fis' | g'2 r4 d''4\f | g''1^> | f''2 ees'' | d''4 c'' bes' a'8([\< bes'])\! |
	%18
	\break \medStaves
	d''4(\> c'')\! bes' a' | g'2 fis'4 fis' | g'2. r8 fis'\p | \tsDown g'8^\markup{\hspace #-3 \small\italic "усиливая и ускоряя"} fis' g' a' bes'4 g'8 b' | c''8 b' c'' d'' ees''4 c''8 c'' |
	%23
	\break \medStaves
	\tsDown d''2(\f\>^\markup{ \hspace #-3 \small\italic "задерж." } c'')\! | b'2 g'4\p g' | g'1 | g'2 g'4\pp g' | g'1 | g'2.^\fermata \bar "||" g'4\p | c''2 c''4 c'' |
	%30
	\break \narrowStaves
	c''2\< d''\! | ees''2\> c''4\! r4 | R1*2 | r2 r4 b'4 | c''2 c''4 b' |
	%36
	\break \narrowStaves
	c''4 c''8([ d'']) c''4( b') | c''2 r2 | r4 g'4\p g' bes' | aes'2. f'4 | g'2. bes'4 | aes'2( f') |
	%42
	\break \narrowStaves
	<< { g'1 } {s2.\< s4\! } >> | fis'2 g'4 bes' | c''4.(\> bes'8)\! a'4 bes' | d''4(\> c'' bes')\! a' | g'2\p fis' | g'1^\fermata \bar "|."
}
altNotes = {
	\global \clef treble
	g'4\p g' |
	%1
	g'4. g'8\< g'4 g'\! | g'2\> g'\! | fis'8\< g' d' d'\! << { d'2 } { s4\> s4\! } >> | d'2. ees'4 |
	%5
	d'2 d'4 d' | fis'2.\> g'4\! | g'4 ees' d' d' | d'1 | f'2 f' | f'4. f'8 a'4 a' | f'1 |
	%12
	f'4 f'\p f' f' | f'4( ees' d') d' | d'2 r4 \dtDown g'4\f | g'1^> | c''2 bes' | a'4 a' g' << { g'4 } { s8\< s8\! } >> |
	%18
	<< { g'2 } {s4\> s4\! } >> g'4 ees' | d'2 d'4 d' | d'2. r8 d'8\p | d'8 d' d' d' d'4 d'8 g' | g'8 g' g' g' g'4 g'8 g' |
	%23
	<< { g'1 } { s2\f\> s2\! } >> | g'2 g'4\p f' | ees'1 | d'2 ees'4\pp d' | c'1 | b2.^\fermata g'4\p | ees'2 ees'4 ees' |
	%30
	ees'2\< f'\! | g'2\> ees'4\! r4 | R1*2 | r2 r4 g'4 | g'2 g'4 g' |
	%36
	g'4 g'8([ aes']) g'4( f') | ees'2 r2 | r4 ees'4\p ees' ees' | ees'2. ees'4 | ees'2. ees'4 | ees'1 |
	%42
	<< { ees'1 } { s2.\< s4\! } >> | d'2 d'4 g' | a'!4.(\> g'8)\! fis'4 g' | << { g'2. } { s2\> s4\! } >> ees'4 | d'2\p d' | d'1^\fermata |
}
tenNotes = {
	\global \clef "G_8"
	bes4\p c' |
	%1
	d'4. d'8\< c'4 d'\! | ees'2\> d'\! | c'8\< bes a bes\! d'4(\> c'\!) | bes2. a4 |
	%5
	a2 a4 bes | c'2.\> bes4\! | d'4 c' bes a | bes1 | c'2 d' | ees'4. d'8 f'4 ees' | d'2( ees'4 d') |
	%12
	c'4 c'\p c' ees' | d'4( c' bes) a | bes2 r4 bes4\f | d'1^> | f'2 bes | d'4 d' d' c'8([\< d'])\! |
	%18
	f'4(\> ees')\! d' c' | bes2 a4 a | bes2. r8 \dtDown a8\p | bes8 a bes c' d'4 bes8 d' | c'8 d' ees' f' g'4 ees'8 ees' |
	%23
	\dtDownExtra \hpDown g'4(\f\> f' ees'2)\! | d'2 ees'4\p d' | c'1 | b2 g4\pp f | ees1 | d2.^\fermata r4 | R1 |
	%30
	R1 | r2 r4 \dtHalfDown c'4\p | <b d'>2 <b d'>4 <b d'>\< | <b d'>2\! <c' ees'> | <d' f'>2 <b d'>4 d' | ees'2 c'4 d' |
	%36
	ees'8([ f']) g'([ f']) ees'4( d') | c'2 r2 | r4 bes4\p bes des' | c'2. ces'4 | bes2. des'4 | c'!2( ces') |
	%42
	<< { bes2( c') } { s2.\< s4\! } >> | c'2 bes4 d' | << { d'2 } { s4.\> s8\! } >> d'4 d' | \hpHalfDown f'4(\> ees' d')\! c' | bes2\p a | bes1^\fermata |
}

basNotes = {
	\global \clef bass
	g4\p g |
	%1
	g4. g8\< g4 g\! | \hpDownExtra g2\> <g, g>\! | d8\< d d d\! << { d2 } { s4\> s4\! } >> | d2. c4 |
	%5
	d2 d4 d | d2.\> g4\! | g4 c d d | g1 | f2 f | f4. f8 f4 f | bes2( a4 bes) |
	%12
	f4 \dtDown c\p a, f, | bes,4( c d) d | g2 r4 g4\f | bes1^> | a2 g | fis4 fis g << { g4 } { s8\< s8\! } >> |
	%18
	c4(\> a,)\! bes, c | d2 d4 d | g,2. r8 d8\p | g8 d bes, a, g,4 g,8 f | ees8 d c c c4 c8 c' |
	%23
	\dtDownExtra \hpDown b2(\f\> c')\! | g2 g4\p g | g1 | g2 g,4\pp g, | g,1 | g,2.^\fermata r4 | R1 |
	%30
	R1 | r2 r4 \dtDown c4\p | g2 g4 g\< | g2\! g | g2 g4 g | c'4( g) e d |
	%36
	c8([ d]) ees([ f]) g4( g,) | c2( d) | ees2\p ees4 ees | ees2. ees4 | ees2. ees4 | ees1 |
	%42
	\hpHalfDown ees4(\< d c bes,)\! | a,!2 g,4 g | \hpHalfDown fis4.(\> g8)\! d4 g | \hpHalfDown c4(\> a, bes,)\! c | d2\p d | g,1^\fermata |
}

sopText = \lyricmode {
	Къ~Бо -- го -- ро -- ди -- цѣ при -- леж -- но ны -- нѣ при -- те -- цемъ, __
	грѣш -- ні -- и и сми -- рен -- ні -- и, и при -- па -- демъ,
	въ~по -- ка -- я -- ні -- и зо -- ву -- ще изъ глу -- би -- ны __ ду --
	ши. Вла -- ды -- чи -- це, по -- мо -- зи, на __ ны __ ми -- ло -- сер -- до -- вав --
	ши. По -- тщи -- ся, по -- ги -- ба -- емъ, по -- тщи -- ся, по -- ги -- ба -- емъ, по -- тщи --
	ся, по -- ги -- ба -- емъ, по -- ги -- ба -- емъ. Отъ
	мно -- же -- ства пре -- грѣ -- ше -- ній,
	отъ
	мно -- же -- ства пре -- грѣ -- ше -- ній.
	Не от -- вра -- ти тво -- я ра -- би __ тщи.
	Тя бо е -- ди -- ну не -- деж -- ду и -- ма -- мы.
}
altText = \lyricmode {
	Къ~Бо -- го -- ро -- ди -- цѣ при -- леж -- но ны -- нѣ при -- те -- цемъ,
	грѣш -- ні -- и и сми -- рен -- ні -- и, и при -- па -- демъ,
	въ~по -- ка -- я -- ні -- и зо -- ву -- ще изъ глу -- би -- ны __ ду --
	ши. Вла -- ды -- чи -- це, по -- мо -- зи, на ны ми -- ло -- сер -- до -- вав --
	ши. По -- тщи -- ся, по -- ги -- ба -- емъ, по -- тщи -- ся, по -- ги -- ба -- емъ, по -- тщи --
	ся, по -- ги -- ба -- емъ, по -- ги -- ба -- емъ. Отъ
	мно -- же -- ства пре -- грѣ -- ше -- ній,
	отъ
	мно -- же -- ства пре -- грѣ -- ше -- ній.
	Не от -- вра -- ти тво -- я ра -- би тщи.
	Тя бо е -- ди -- ну не -- деж -- ду и -- ма -- мы.
}
tenText = \lyricmode {
	Къ~Бо -- го -- ро -- ди -- цѣ при -- леж -- но ны -- нѣ при -- те -- цемъ, __
	грѣш -- ні -- и и сми -- рен -- ні -- и, и при -- па -- демъ,
	въ~по -- ка -- я -- ні -- и зо -- ву -- ще изъ глу -- би -- ны __ ду --
	ши. Вла -- ды -- чи -- це, по -- мо -- зи, на __ ны __ ми -- ло -- сер -- до -- вав --
	ши. По -- тщи -- ся, по -- ги -- ба -- емъ, по -- тщи -- ся, по -- ги -- ба -- емъ, по -- тщи --
	ся, по -- ги -- ба -- емъ, по -- ги -- ба -- емъ.
	отъ
	мно -- же -- ства пре -- грѣ -- ше -- ній, отъ
	мно -- же -- ства пре -- грѣ -- ше -- ній.
	Не от -- вра -- ти тво -- я ра -- би __ тщи. __
	Тя бо е -- ди -- ну не -- деж -- ду и -- ма -- мы.
}
basText = \lyricmode {
	Къ~Бо -- го -- ро -- ди -- цѣ при -- леж -- но ны -- нѣ при -- те -- цемъ,
	грѣш -- ні -- и и сми -- рен -- ні -- и, и при -- па -- демъ,
	въ~по -- ка -- я -- ні -- и зо -- ву -- ще изъ глу -- би -- ны __ ду --
	ши. Вла -- ды -- чи -- це, по -- мо -- зи, на ны ми -- ло -- сер -- до -- вав --
	ши. По -- тщи -- ся, по -- ги -- ба -- емъ, по -- тщи -- ся, по -- ги -- ба -- емъ, по -- тщи --
	ся, по -- ги -- ба -- емъ, по -- ги -- ба -- емъ.
	отъ
	мно -- же -- ства пре -- грѣ -- ше -- ній, отъ
	мно -- же -- ства пре -- грѣ -- ше -- ній. __
	Не от -- вра -- ти тво -- я ра -- би тщи. __
	Тя бо е -- ди -- ну не -- деж -- ду и -- ма -- мы.
}
\score {
	\new ChoirStaff
	<<
	\new Staff { \set Staff.instrumentName = "Дисканты." \new Voice = sopVoice \sopNotes }
	\new Lyrics \lyricsto sopVoice \sopText
	\new Staff { \set Staff.instrumentName = "Альты." \new Voice = altVoice \altNotes }
	\new Lyrics \lyricsto altVoice \altText
	\new Staff { \set Staff.instrumentName = "Тенора." \new Voice = tenVoice \tenNotes }
	\new Lyrics \lyricsto tenVoice \tenText
	\new Staff { \set Staff.instrumentName = "Басы." \new Voice = basVoice \basNotes }
	\new Lyrics \lyricsto basVoice \basText
	>>
	
	\layout {
		\context {
			\Score
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -6 -11.5 -17.5 -23 -29 -34.5 -40.5)))
		}
		\context {
			\Voice
			\override DynamicText #'X-offset = #-2
			hairpinToBarline = ##f
		}
	}
}

\score {
	<<
	\new Staff {
		\set Staff.midiInstrument = "oboe"
		\new Voice { \sopNotes }
	}
	\new Staff {
		\set Staff.midiInstrument = "english horn"
		\new Voice { \altNotes }
	}
	\new Staff {
		\set Staff.midiInstrument = "viola"
		\new Voice { \tenNotes }
	}
	\new Staff {
		\set Staff.midiInstrument = "cello"
		\new Voice { \basNotes }
	}
	>>
	\midi {
		\context { \Voice \remove Dynamic_performer }
	}
}
