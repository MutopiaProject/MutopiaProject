\version "2.11.35"

global = { \time 4/4 \key d \minor }
brLeft = { \once\override BreathingSign #'extra-offset = #'(-2.5 . 0) \breathe }
dtLeft = { \once\override DynamicText #'X-offset = #-3.5 }
dtDown = { \once\override DynamicText #'extra-offset = #'(0 . -1) }
hpDown = { \once\override Hairpin #'extra-offset = #'(0 . -1) }
tsDown = { \once\override TextScript #'extra-offset = #'(2 . -2) }

\paper {
	% We need a font with the Cyrillic "yat" character (U+0463).
	% I wish we had a better free font than DejaVu for this.
	% Adobe's Times Ten Cyrillic is ideal, but not free.
	% Or you could use the version of Times New Roman that ships with Windows Vista.
	#(define fonts (make-pango-font-tree "DejaVu Serif Condensed" "DejaVu Sans Condensed" "DejaVu Sans Mono" 1))
	ragged-last-bottom = ##f
	between-system-padding = 0
}

\header {
	title = "Свѣте Тихій"
	composer = "Александр Копылов (1854–1911)"
	
	%mutopia-specific headers:
	mutopiatitle = "Gladsome Light"
	mutopiacomposer = "KopylovA"
	mutopiainstrument = "Voice (SATB)"
	date = "19th century"
	source = "Unknown (pre-revolutionary Russian)"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2008/Feb/20"
 footer = "Mutopia-2008/02/21-1324"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

sopNotes = {
	\global \dynamicUp
	s1*0^\markup{ \hspace #-6 \large\bold "Не очень медленно" }
	%1
	f'2.\p g'4 | a'1 | f'2. a'4 | g'2. a'4 | f'2 f'4 a' |
	%6
	\time 6/4 g'2. g'4 g' a' | \time 4/4 f'2. a'4 | g'2. a'4 | f'2. \brLeft a'4 | \time 3/4 a'4 b' cis'' |
	%11
	\time 4/4 d''2. a'4 | a'2 \tsDown \hpDown a'4\<^\markup{ \small\italic "rit." } a' | \time 3/4 a'4 b' cis'' |
	%14
	\time 4/4 \dtDown \dtLeft d''2.\f^\fermata \brLeft d''4^\markup{\override #'(baseline-skip . 1.25) \column { \small\italic "a tempo" \dynamic "mp" } } | \time 6/4 c''2\< c''4 c'' c'' d''\! |
	%16
	\time 4/4 bes'2 bes' | \time 6/4 bes'2 bes'4 bes' bes'\> c'' | a'2 a'2.\! \brLeft a'4\p | \time 4/4 g'2. a'4^\markup{\small\italic "cresc."} | f'2.( g'4) |
	%21
	\time 6/4 \hpDown a'2.\< a'4 a' a' | \time 4/4 a'4 \tsDown a'^\markup{ \small\italic "rit." } b' cis'' | d''1 |
	%24
	\dtDown \dtLeft d''2.\ff \brLeft d''4^\markup{\override #'(baseline-skip . 1.25) \column { \small\italic "a tempo" \dynamic "mf" } } |
	%25
	d''2 d''4 d'' | d''2. d''4 |
	%27
	\time 6/4 c''2 c''4 c'' c''2 | \time 4/4 bes'2 bes'4 c'' | \time 6/4 a'2.\> a'4 a' a' | \time 4/4 a'2. a'4 | a'1\! \breathe |
	%32
	g'2.\p\< a'4 | f'2 f'4 a' | g'2. a'4 | f'1\! \breathe | \time 6/4 a'2.\mf\< a'4 a' a' | \time 4/4 cis''1 | d''1\!^\fermata \bar "|."
}
altNotes = {
	\global
	%1
	d'2. cis'4 | d'1 | d'2. d'4 | d'2. cis'4 | d'2 d'4 d' |
	%6
	d'2. d'4 d' cis' | d'2. f'4 | f'2( e'4) e' | d'2. e'4 | e'4 a' a' |
	%11
	a'2. g'4 | f'2 e'4 e' | e'4 a' a' | a'2. a'4 | a'2 a'4 a' a' a' |
	%16
	g'2 g' | g'2 g'4 g' g' e' | e'2 d'2. d'4 | d'2. cis'4 | d'1 |
	%21
	d'2. d'4 e' e' | e'4 e' a' a' | a'1 | a'2. a'4 | a'2 a'4 a' | g'2. g'4 |
	%27
	g'2 g'4 g' f'2 | f'2 f'4 f' | e'2. e'4 e' f' | e'2. d'4 d'1 |
	%32
	d'2. cis'4 | d'2 d'4 d' | d'2. cis'4 | d'1 | f'2. f'4 f' f' | e'1 | fis'1 |
}
tenNotes = {
	\global
	%1
	a2. a4 | a1 | a2. a4 | bes2. a4 | a2 a4 a |
	%6
	bes2. bes4 bes a | a2. d'4 | d'2. cis'4 | a2. \brLeft cis'4 | cis'4 d' e' |
	%11
	d'2. cis'4 | d'2 cis'4 cis' | cis'4 d' e' | d'2. \brLeft d'4 | d'2 d'4 d' d' d' |
	%16
	d'2 d' | c'2 c'4 c' c' c' | c'2 c'2. \brLeft a4 | b2. a4 | a1 |
	%21
	a2. a4 cis' cis' | cis'4 cis' d' e' | f'1 | f'2. \brLeft f'4 | fis'2 e'4 fis' | d'2. f'4 |
	%27
	e'2 d'4 e' c'2 | d'2 d'4 d' | d'2( cis'4) cis' cis' cis' | a2. a4 | a1 \breathe |
	%32
	bes2. a4 a2 a4 a | bes2. a4 | a1 \breathe | d'2. d'4 d' d' | a1 | a1 |
}
basNotes = {
	\global
	%1
	d2. e4 | f1 | d2. f4 | e2. a,4 | d2 d4 f |
	%6
	e2. e4 e a, | d2. c4 | bes,2. a,4 | d2. a4 | a4 a a |
	%11
	f2. e4 | d2 a4 a | a4 a g | f2._\fermata f4 | fis2 fis4 fis fis fis |
	%16
	g2 f | e2 e4 e e c | f2 f2. f4 | e2. a,4 | d2.( e4) |
	%21
	f2. f4 a a | a4 a a a | d1 | d2. d'4 | c'2 c'4 c' | bes2. bes4 |
	%27
	bes2 bes4 bes a2 | g2 g4 g | g2. g4 g g | f2. f4 | f1 |
	%32
	e2. a,4 | d2 d4 f | e2. a,4 | d1 | a2. a4 a a | a,1 | d1_\fermata |
}
text = \lyricmode {
	%1
	Свѣ -- те ти -- хій свя -- ты -- я сла -- вы Без --
	%6
	смерт -- на -- го От -- ца, Не -- бес -- на -- го, Свя -- та -- го, Бла --
	%11
	жен -- на -- го, І -- и -- су -- се Хри -- сте! При -- шед -- ше на за -- падъ
	%16
	солн -- ца, ви -- дѣв -- ше свѣтъ ве -- чер -- ній по -- емъ От -- ца, __
	%21
	Сы -- на и Свя -- та -- го Ду -- ха Бо -- га. До -- сто -- инъ е -- си во
	%27
	вся вре -- ме -- на пѣтъ бы -- ти гла -- сы пре -- по -- доб -- ны -- ми,
	%32
	Сы -- не Бо -- жій, жи -- вотъ да -- яй, тѣм -- же міръ Тя сла -- витъ.
}

\score {
	\new ChoirStaff
	<<
	\new Staff { \clef treble
	<<
		\new Voice = sopVoice { \override Rest #'staff-position = #0 \voiceOne \sopNotes }
		\new Voice { \override Rest #'stencil = ##f \voiceTwo \altNotes }
	>>
	}
	\new Lyrics \lyricsto sopVoice { \text }
	\new Staff { \clef bass
	<<
		\new Voice { \override Rest #'staff-position = #0 \voiceOne \tenNotes }
		\new Voice { \override Rest #'stencil = ##f \voiceTwo \basNotes }
	>>
	}
	>>
	
	\layout {
		system-count = 8
		\context {
			\Score
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -8.5 -16)))
		}
		\context {
			\Staff
			\override TimeSignature #'style = #'()
		}
		\context {
			\Voice
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
		\context { \Score tempoWholesPerMinute = #(ly:make-moment 96 4) }
		\context { \Voice \remove Dynamic_performer }
	}
}
