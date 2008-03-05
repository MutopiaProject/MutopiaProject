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
	system-count = 9
	page-count = 3
}

\header {
	title = "Херувимская Пѣснь"
	composer = "Александръ А. Алябьевъ (1787-1851)"
	
	%mutopia-specific headers:
	mutopiatitle = "Cherubic Hymn"
	mutopiacomposer = "AlyabyevA"
	mutopiainstrument = "Voice (SATB)"
	date = "19th century"
	source = "Unknown (pre-revolutionary Russian)"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2008/Feb/29"
 footer = "Mutopia-2008/03/05-1361"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = {
	\time 4/4 \key d \major \dynamicUp \autoBeamOff
}

sopNotes = {
	\global \clef treble \override Voice.DynamicText #'extra-offset = #'(0 . -1.5)
	s1*0^\markup{\hspace #-6 \large\bold "Медленно."} \set Score.tempoWholesPerMinute = #(ly:make-moment 64 4)
	%1
	a'2\p a' | a'2. a'4 | a'2( g') | fis'2. r4 |
	%5
	e'2( a'4) cis'' | e''4( d'' cis'' b' | a'1) | a'2 ais'4 ais' | b'2( a'!4 gis' | a'4.) a'8 a'4 r4^\fermata \bar "||"
	%11
	a'4\p a' a' a'  | a'2. a'4 | a'2( g') | fis'2. r4 |
	%15
	e'2( a'4) cis'' | e''4( d'') cis''( b') | a'1 ~ | a'2 ais'4 ais' | b'2( a'!4 gis' | a'4.) a'8 a'4 r4^\fermata \bar "||"
	
	%21
	a'2\p a'4 a' | a'2 a'4 a' | a'2 g' | fis'2. r4 |
	%25
	e'2( a'4) cis'' | e''4( d'' cis'' b') | a'2 a' | a'4 r4 r2 |
	%29
	R1 | a'4 fis' fis'( e' | d'4.) d'8 d'4^\fermata r4 \bar "||"
	
	%32
	a'1 | a'2. r4 \bar "||" \break
	
	%34
	\set Score.tempoWholesPerMinute = #(ly:make-moment 110 4) \override Voice.DynamicText #'extra-offset = #'(0 . -0.5)
	d''4.\f^\markup{ \hspace #-3 \large\bold "Скоро." } d''8 d''4 d'' | d''2 dis''4. dis''8 | e''4( g'') fis'' e'' | d''2( cis'') | d''2. r4 |
	%39
	a'2( b'4) a'8 a' | a'2. a'4 | a'2( b'4) a' | a'2( ais') |
	%43
	b'2.( d''4) | cis''2 b' | a'4 a' d''2 ~ | d''4 cis'' e''2 ~ | e''4 d''8 d'' e''4 fis'' | g''4( fis'' e'') d'' | d''2( cis'') |
	%50
	d''4 fis'4( a') b' | c''1 | b'4 b'4( dis'') e'' | fis''1 | e''4 g''4( fis'') e'' | d''1( ~ | d''2 cis'') | d''2 a'4 a' | b'2( a'4 g') | a'1^\fermata \bar "|."
}
altNotes = {
	\global \clef treble
	%1
	fis'2\p fis' | g'2( fis'4) g' | fis'2( e') | d'2. r4 |
	%5
	cis'2. e'4 | gis'4( fis' e' d' | cis'4 e' d' cis') | d'4( e') fis' e' | d'4( fis' e' d' | cis'4.) cis'8 cis'4 r4^\fermata |
	%11
	fis'4\p fis' fis' fis' | g'2( fis'4) g' | fis'2( e') | d'2. r4 |
	%15
	cis'2. e'4 | gis'4( fis') e'( d') | cis'4^( e' d' cis' | d'4 e') fis' e' | d'4^( fis' e' d' | cis'4.) cis'8 cis'4 r4^\fermata |
	
	%21
	fis'2\p fis'4 fis' | g'2 fis'4 g' | fis'2 e' | d'2. r4 |
	%25
	cis'2. e'4 | gis'4( fis' e' d') | cis'4( e') d'( cis') | d'4 d'( e') fis' |
	%29
	a'4( g') fis' e' | d'2( cis' | d'4.) a8 a4^\fermata r4 |
	
	%32
	e'2( fis') | e'2. r4 |
	
	%34
	fis'4.\f fis'8 g'4 a' | b'2 a'4. a'8 | g'4( b') b' b' | a'2( g') | fis'2. r4 |
	%39
	cis'2 cis'4 cis' | d'4 fis' e' d' | cis'4 cis' cis' cis' | d'4( e' fis'2) |
	%43
	fis'1 | a'2 gis' | a'4 a' fis'2 | g'2 g' ~ | g'4 fis'8 fis' g'4 a' | b'2. b'4 | a'2( g'!) |
	%50
	fis'4 d'( fis') g' | a'1 | g'4 g'( fis') g' | a'1 | g'4 b'2 b'4 | a'1( ~ | a'2 g') | fis'2 fis'4 fis' | g'2( fis'4 e') | fis'1^\fermata |
}
tenNotes = {
	\global \clef "G_8"
	%1
	d'2\p a4( d') | <cis' e'>2( d'4) e' | d'4( a b cis') | d'2. r4 |
	%5
	R1 | R1 | a4( g! fis e) | fis2 fis4 fis | b2( cis'4 b | e4.) e8 e4 r4^\fermata |
	%11
	d'4\p d' a4 d' | <cis' e'>2( d'4) e' | d'4( a b cis') | d'2. r4 |
	%15
	R1 | R1 | a4( g fis e | fis2) fis4 fis | b2( cis'4 b | e4.) e8 e4 r4^\fermata |
	
	%21
	d'2\p a4 d' | <cis' e'>2 d'4 e' | d'4( a) b( cis') | d'2. r4 |
	%25
	R1*2 | a4( g!) fis( e) | fis4 fis( g) a |
	%29
	b2 a4 g | fis4( a g2 | fis4.) fis8 fis4^\fermata r4 |
	
	%32
	cis'2( d') | cis'2. r4 |
	
	%34
	d'4.\f d'8 d'4 d' | d'2 b4. b8 | b4( e') dis' e' | fis'2( e') | a2. r4 |
	%39
	g2 g4 g | fis4 a g fis | g4 g g g | fis2( fis'4 e') |
	%43
	d'4( e' fis' d') | e'2 d' | cis'4 r4 r d'4 | e'2 ~ e'8 a([ b cis']) | d'4 d'8 d' d'4 d' | d'2( e'4) f' | fis'!2( e') |
	%50
	a4 r4 r2 | r4 d'2 d'4 | d'4 d' r2 | r4 b4( cis') dis' | e'4 b dis' e' | fis'1( ~ | fis'2 e') | d'2 d'4 d' | d'2.( b4) | d'1^\fermata |
}
basNotes = {
	\global \clef bass
	%1
	d2\p d | a,2. a,4 | <d, d>1 | <d, d>2. r4 |
	%5
	R1 | <e, e>1^( | a,1) | d2 cis4 cis | b,4( d e2 | a,4.) a,8 a,4 r4^\fermata |
	%11
	d4\p d d d | a,2. a,4 | <d, d>1 | <d, d>2. r4 |
	%15
	R1 | <e, e>4 <e, e> <e, e> <e, e> | a,1( | d2) cis4 cis | b,4( d e2 | a,4.) a,8 a,4 r4^\fermata |
	
	%21
	d2\p d4 d | a,2 a,4 a, | <d, d>2 <d, d> | <d, d>2. r4 |
	%25
	R1 | <e, e>1 | a,1 | d1 |
	%29
	g,2 g, | a,1( | <d, d>4.) <d, d>8 <d, d>4^\fermata r4 |
	
	%32
	a,1 | a,2. r4 |
	
	%34
	d4.\f d8 e4 fis | g2 fis4. fis8 | e2 fis4 g | a2( a,) | d2. r4 |
	%39
	a,2 a,4 a, | <d, d>2. <d, d>4 | a,2. a,4 | d2( cis) |
	%43
	b,4( cis d b,) | e2 e | a,4 r4 r2 | R1 | r4 d4 d' c' | b4( a g) gis | a2( a,) |
	%50
	d4 r4 r2 | r4 d4( e) fis | g4 g, r2 | r4 b,2 b,4 | e4 e fis g | a2( fis4 d | a2 a,) | d2 d4 d | d1 | <d, d>1^\fermata |
}

sopText = \lyricmode {
	И -- же хе -- ру -- ви -- мы, тай -- но,
	тай -- но о -- бра -- зу -- ю -- ще.
	И жи -- во -- тво -- ря -- щей Трой -- цѣ,
	три -- свя -- ту -- ю пѣснь __ при -- пѣ -- ва -- ю -- ще.
	
	Вся -- ко -- е ны -- нѣ жи -- тей -- ско -- е
	от -- ло -- жимъ, от -- ло -- жимъ
	по -- пе -- че -- ні -- е.
	
	А -- минь.
	
	Я -- ко да Ца -- ря всѣхъ по -- ды -- мемъ, по -- ды -- мемъ,
	Ан -- гель -- ски -- ми не -- ви -- ди -- мо, __
	не -- ви -- ди -- мо до -- ри -- но -- си -- ма, до -- ри -- но -- си -- ма чин --
	ми. Ал -- ли -- лу -- іа, ал -- ли -- лу -- іа, ал -- ли -- лу -- іа, ал -- ли -- лу -- іа.
}
altText = \lyricmode {
	И -- же хе -- ру -- ви -- мы, тай -- но,
	тай -- но о -- бра -- зу -- ю -- ще.
	И жи -- во -- тво -- ря -- щей Трой -- цѣ,
	три -- свя -- ту -- ю пѣснь __ при -- пѣ -- ва -- ю -- ще.
	
	Вся -- ко -- е ны -- нѣ жи -- тей -- ско -- е
	от -- ло -- жимъ, от -- ло -- жимъ,
	от -- ло -- жимъ по -- пе -- че -- ні -- е.
	
	А -- минь.
	
	Я -- ко да Ца -- ря всѣхъ по -- ды -- мемъ, по -- ды -- мемъ,
	Ан -- гель -- ски -- ми не -- ви -- ди -- мо, не -- ви -- ди -- мо, __
	не -- ви -- ди -- мо до -- ри -- но -- си -- ма, до -- ри -- но -- си -- ма чин --
	ми. Ал -- ли -- лу -- іа, ал -- ли -- лу -- іа, ал -- ли -- лу -- іа, ал -- ли -- лу -- іа.
}
tenText = \lyricmode {
	И -- же хе -- ру -- ви -- мы,
	тай -- но о -- бра -- зу -- ю -- ще.
	И жи -- во -- тво -- ря -- щей Трой -- цѣ,
	пѣснь __ при -- пѣ -- ва -- ю -- ще.
	
	Вся -- ко -- е ны -- нѣ жи -- тей -- ско -- е
	от -- ло -- жимъ,
	от -- ло -- жимъ по -- пе -- че -- ні -- е.
	
	А -- минь.
	
	Я -- ко да Ца -- ря всѣхъ по -- ды -- мемъ, по -- ды -- мемъ,
	Ан -- гель -- ски -- ми не -- ви -- ди -- мо, не -- ви -- ди -- мо, __
	не -- ви -- ди -- мо до -- ри -- но -- си -- ма, до -- ри -- но -- си -- ма чин --
	ми. Ал -- ли -- лу -- іа, ал -- ли -- лу -- іа, ал -- ли -- лу -- іа, ал -- ли -- лу -- іа.
}
basText = \lyricmode {
	И -- же хе -- ру -- ви -- мы,
	тай -- но о -- бра -- зу -- ю -- ще.
	И жи -- во -- тво -- ря -- щей Трой -- цѣ,
	три -- свя -- ту -- ю пѣснь __ при -- пѣ -- ва -- ю -- ще.
	
	Вся -- ко -- е ны -- нѣ жи -- тей -- ско -- е
	от -- ло -- жимъ
	по -- пе -- че -- ні -- е.
	
	А -- минь.
	
	Я -- ко да Ца -- ря всѣхъ по -- ды -- мемъ, по -- ды -- мемъ,
	Ан -- гель -- ски -- ми не -- ви -- ди -- мо, __
	не -- ви -- ди -- мо до -- ри -- но -- си -- ма чин --
	ми. Ал -- ли -- лу -- іа, ал -- ли -- лу -- іа, ал -- ли -- лу -- іа, ал -- ли -- лу -- іа.
}
\score {
	\new ChoirStaff
	<<
	\new Staff { \set Staff.instrumentName = "С" \new Voice = sopVoice \sopNotes }
	\new Lyrics \lyricsto sopVoice \sopText
	\new Staff { \set Staff.instrumentName = "А" \new Voice = altVoice \altNotes }
	\new Lyrics \lyricsto altVoice \altText
	\new Staff { \set Staff.instrumentName = "Т" \new Voice = tenVoice \tenNotes }
	\new Lyrics \lyricsto tenVoice \tenText
	\new Staff { \set Staff.instrumentName = "Б" \new Voice = basVoice \basNotes }
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
			\override DynamicText #'extra-offset = #'(0 . -0.5)
		}
		\context {
			\Staff
			\override InstrumentName #'self-alignment-X = #RIGHT
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
	\midi {}
}
