\version "2.11.22"
#(set-global-staff-size 18)
%#(ly:set-option 'point-and-click #f)

\paper {
	%#(set-paper-size "letter")
	%#(define fonts (make-pango-font-tree "Utopia" "Luxi Sans" "Luxi Mono" 0.9))
	left-margin = 0.5\in
	line-width = 7.5\in
	head-separation = 0\in
	bottom-margin = 0.25\in
	between-system-padding = 0\in
	between-system-spacing = 0\in
	ragged-last-bottom = ##f
	print-page-number = ##t
	system-count = 12

	bookTitleMarkup = \markup {
		\column {
			\fill-line { \override #'(font-size . 4) \bold \fromproperty #'header:title }
			\fill-line {
				""
				\override #'(baseline-skip . 2)
				\column {
					\right-align { \line { \fromproperty #'header:composer \fromproperty #'header:composerdates }}
					\right-align { \fromproperty #'header:opus }
				}
			}
		}
	}
	scoreTitleMarkup = ##f
}

\header {
	title = "Popule Meus"
	composer = "Juozas Naujalis"
	composerdates = "(1869-1934)"
	opus = "Op. 7, No. 2"

	mutopiatitle = "Popule Meus"
	mutopiacomposer = "NaujalisJ"
	mutopiapoet = ""
	mutopiaopus = "Op. 7, No. 2"
	mutopiainstrument = "Voice (SATB)"
	date = "19th century"
	source = "C. Witanowski, 1901"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2007/Apr/29"
 footer = "Mutopia-2007/04/30-970"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = { \key d \minor \time 4/4 \dynamicUp \autoBeamOff \partial 2 }
shiftHp = { \once\override Hairpin #'extra-offset = #'(4.5 . 0) }
versicle = \markup { "V" \translate #'(-2.5 . 0.325) \rotate #70 "—" }
refrain = \markup { "R" \translate #'(-2.5 . 0.325) \rotate #70 "—" }

sopNotes = {
	\global \clef treble
	\set Score.tempoWholesPerMinute = #(ly:make-moment 70 4)
	% Line 1
	% UGH. Ugly hack to get 3 systems on first page in US Letter size.
	\once\override TextScript #'extra-offset = #'(-4 . 10.5)
	a'2\p_\markup{\large\bold "Andante."} | a'4\< a'4 a'2\! ~ | a'2\> a'4\! a'4\< | c''4 c''4 c''2(\! | bes'1)\> | a'1\!\fermata | bes'4\mf c''4 d''4 d''8 d''8 |
	% Line 2
	\override TextScript #'font-shape = #'italic \override TextScript #'font-size = #-1 
	d''4 d''4 d''2 | cis''2^"rit." \shiftHp d''4\> a'4 | g'2\! e'2\fermata \bar "||" f'2 a'4 d''4 | c''4 bes'4 a'2 | r4 c''4 c''2 |
	% Line 3
	bes'4 a'4 c''2 | a'2. r4 | bes'4\f bes'2 bes'4 | d''2 d''2 | d''4 e''4 f''4. e''8 | d''2.( cis''4) | d''1 \bar "||" \break
	% Line 4
	\time 3/4 a'4.\p a'8 a'4 | bes'2 g'4 | a'2 r4 \bar "||" \time 4/4 c''2\f d''2 | c''2 c''2\fermata \bar "||" \time 3/4 a'4.\p a'8 a'4 | bes'2 g'4 | a'2 r4 \bar "||"
	% Line 5
	\time 4/4 c''2.\f c''4 | f''4.( e''8 d''2) | c''1\fermata \bar "||" a'4.\p a'8 a'4 a'4 | c''4. c''8 c''4 d''4 | d''2 c''2 | bes'2 a'2\fermata \bar "||"
	% Line 6
	a'4.\mf a'8 a'4 a'4 | g'2 f'2 | g'4^"rit." a'4 c''4 f'4 | << \context Voice = sopVoice { g'4.( f'8 e'2) } \\ { s2.^\> s4\! } >> | f'1\fermata \bar "||"
	\set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
	\override Score.RehearsalMark #'break-align-symbol = #'left-edge \override Score.RehearsalMark #'self-alignment-X = #LEFT \mark\markup{\bold "Allegro."}
	d''\breve*1/2\ff |
	% Line 7
	d''2 a'4 a'4 | a'2 a'2 | bes'4 c''4 bes'2\> | a'2.\! r4 | << \context Voice = sopVoice { g'\breve*1/2 } \\ { s2.^\p^\< s4\! } >> | a'4\> a'4 g'2\! |
	% Line 8
	c''4 c''8 c''8 d''4 d''4 | f''2 c''4 d''4 | c''4. bes'8 a'2 | bes'4^"accel." bes'4 bes'2 | a'2 g'2 | a'4 a'4 a'2 |
	% Line 9
	c''4 c''4 c''2 | b'2 r2 | c''\breve*1/2 | c''2 c''2 | d''2 f''4 f''4 | e''2 cis''2 |
	% Line 10
	r4 d''4 d''4 d''8 d''8 | d''4 d''4 c''4 bes'4 | c''2 a'2 | f'4^"rit." g'4 a'4 g'4 | f'2(\> e'2) | d'1\!\p \bar "||" \break
	% Line 11
	g'2\f c''2 | c''\breve*1/2 | bes'2 a'2 | r4 g'4 g'4 g'4 | a'2\< a'4 a'4\! | << \context Voice = sopVoice { c''2 b'2\fermata } \\ { s4^\> s8\! s2 } >> \bar "||" c''\breve*1/2 |
	% Line 12
	c''4 a'4 a'4 a'4^"rit." | g'2( e') | f'1\fermata \bar "||" \mark\markup{\bold "Andante."} \set Score.tempoWholesPerMinute = #(ly:make-moment 70 4)
	r2 a'2 | a'4\< a'4 a'2\! ~ | a'2\> a'4\! a'4\< | c''4 c''4 c''2(\! |
	% Line 13
	bes'1)\> | a'1\!\fermata | bes'4 c''4 d''4 d''8 d''8 | d''4 d''4 d''2\breathe | cis''2^"rit." d''4 a'4 | g'2( e'2) | d'1\fermata \bar "|."
}

text = {
	\lyricmode {
		Po -- pu -- le me -- us, quid fe -- ci ti -- bi? aut in quo con -- tri --
		sta -- vi te? res -- pon -- de mi -- hi. Qui -- a e -- du -- xi te de ter --
		ra Æ -- gy -- pti pa -- ra -- sti cru -- cem Sal -- va -- to -- ri tu -- o.
		A -- gi -- os o The -- os. San -- ctus De -- us. A -- gi -- os i -- schy -- ros.
		San -- ctus for -- tis. A -- gi -- os a -- tha -- na -- tos, e -- lei -- son i -- mas.
		San -- ctus im -- mor -- ta -- lis, mi -- se -- re -- re no -- bis.
	}
	\set stanza = \versicle
	\override Score.PaperColumn #'keep-inside-line = ##t
	\lyricmode {
		\once\override LyricText #'self-alignment-X = #-0.75
		Quid_ultra_debui
		fa -- ce -- re ti -- bi: et non fe -- ci? \once\override LyricText #'self-alignment-X = #-0.75 Ego_quidam_plan- ta -- vi te
		vi -- ne -- am me -- am spe -- ci -- o -- sis -- si -- mam: et tu fa -- cta es mi -- hi ni --
		mis a -- ma -- ra: \once\override LyricText #'self-alignment-X = #-0.75 aceto_namque_ si -- tim me -- am po -- ta -- sti:
		et lan -- ce -- a per -- fo -- ra -- sti la -- tus Sal -- va -- to -- ri tu -- o.
		E -- go \once\override LyricText #'self-alignment-X = #-0.75 \markup{ \concat{ "propter te " \raise #2 \musicglyph #'"scripts.rcomma" " flagelavi Æ - " } } gy -- ptum cum pri -- mo -- ge -- ni -- tis su -- is: \once\override LyricText #'self-alignment-X = #-0.75 et_tu_me_flagel --
		la -- tum tra -- di -- di -- sti: Po -- pu -- le me -- us, quid fe -- ci ti --
		bi? aut in quo con -- tri -- sta -- vi te? res -- pon -- de mi -- hi.
	}
}

altNotes = {
	\global \clef treble
	\override TextScript #'font-shape = #'italic \override TextScript #'font-size = #-1 
	% Line 1
	f'2\p | f'4\< e'4 d'2(\! | cis'2)\> d'4\! d'4\< | e'4 e'4 f'2\!( | d'2\> g'2) | e'1\!\fermata | g'4\mf a'4 bes'4 bes'8 bes'8 | 
	% Line 2
	bes'4. a'8 g'2 | g'2^"rit." \shiftHp f'4\> f'4 | d'2\! cis'2\fermata | d'2 e'4 d'4 | f'4. e'8 f'2 | r4 f'4 f'2 |
	% Line 3
	d'4 f'2 e'4 | f'2. r4 | d'4\f d'2 g'4 | bes'4.( a'8 g'4) bes'4 | a'4 a'4 gis'4 gis'4 | a'1 | f'1 |
	% Line 4
	f'4.\p f'8 f'4 | f'2 e'4 | f'2 r4 | f'2\f f'2 | f'4( e'4) f'2\fermata | f'4.\p f'8 f'4 | f'2 e'4 | f'2 r4 |
	% Line 5
	f'2(\f a'4) g'4 | f'1 | e'1\fermata | f'4.\p f'8 f'4 f'4 | f'4. f'8 f'4 f'4 | f'4.( g'8 a'4) g'4 | f'2 f'2\fermata |
	% Line 6
	f'4.\mf f'8 f'4 f'4 | e'2 d'2 | c'4^"rit." c'4 c'4 d'4 | d'2.(\> cis'4)\! | d'1\fermata |
	f'\breve*1/2\ff |
	% Line 7
	f'2 f'4 f'4 | f'2 f'2 | g'4 f' f'4(\> e'4) | f'2.\! r4 | << \context Voice = altVoice { e'\breve*1/2 } \\ { s2.^\p^\< s4\! } >> | c'4\> c'4 c'2\! |
	% Line 8
	e'4 e'8 e'8 d'4 f'4 | f'2 f'4 f'4 | f'4 e'4 f'2 | d'4^"accel." d'4 c'2 | c'2 c'2 | c'4 c'4 c'2 |
	% Line 9
	f'4 f'4 f'2 | d'2 r2 | e'\breve*1/2 | f'2 f'2 | f'2 f'4 a'4 | gis'2 a'2 |
	% Line 10
	r4 f'4 f'4 f'8 f'8 | f'4 f'4 f'4 g'4 | g'2 f'2 | d'4^"rit." e'4 f'4 e'4 | d'2.\>( cis'4) | d'1\!\p |
	% Line 11
	e'2\f e'2 | f'\breve*1/2 | f'2 f'2 | r4 e'4 e'4 e'4 | f'2\< f'4 f'4\! | << \context Voice = altVoice { f'2 d'2\fermata } \\ { s4^\> s8\! s2 } >> | e'\breve*1/2 |
	% Line 12
	f'4 f'4 f'4 f'4^"rit." | d'2( cis'2) | d'1\fermata | r2 f'2 | f'4\< e'4 d'2(\! | cis'2)\> d'4\! d'4\< | e'4 e'4 f'2\!( |
	% Line 13
	d'2\> g'2) | e'1\!\fermata | g'4 a'4 bes'4 bes'8 bes'8 | bes'4. a'8 g'2\breathe | g'2^"rit." f'4 f'4 | d'2.( cis'4) | d'1\fermata |
}

tenNotes = {
	\global \clef "G_8"
	\override TextScript #'font-shape = #'italic \override TextScript #'font-size = #-1 
	% Line 1
	d'2\p | a4\< g4 f2(\! ~ | f4\> e4) f2\! | r4 g4\< a4 a4\! | bes2(\> d'2 ~ | d'2)\! cis'2\fermata | d'4\mf f'4 f'4 f'8 f'8 |
	% Line 2
	g'4 d'8([ c'8]) bes2 | a4(^"rit." g4) \shiftHp a4\> a4 | bes2\! a2\fermata | a2 a4 bes4 | c'4 c'4 c'2 | r4 a4 a2 |
	% Line 3
	bes4 d'4 g4.( c'8) | c'2. r4 | \once\override DynamicText #'extra-offset = #'(0 . -0.75) g'4\f g'2 d'4 | d'2. g'4 | f'4 e'4 d'4. e'8 | f'2( e'2) | d'1 |
	% Line 4
	c'4.\p c'8 c'4 | d'2 c'4 | c'2 r4 | \once\override DynamicText #'extra-offset = #'(0 . -0.75) a2\f bes4( a4) | g2 a2\fermata | c'4.\p c'8 c'4 | d'2 c'4 | c'2 r4 |
	% Line 5
	\once\override DynamicText #'extra-offset = #'(0 . -0.75) 
	a2(\f c'4) g4 | a2( <g b>2) | <g c'>1\fermata | c'4.\p c'8 c'4 c'4 | a4. a8 a4 a4 | d'4.( e'8 f'4) e'4 | d'2 c'2\fermata |
	% Line 6
	d'4.\mf d'8 c'4 c'4 | c'4( bes4) a2 | g4^"rit." f4 f4 f4 | bes4.(\> a8 g4 a4)\! | a1\fermata |
	bes\breve*1/2\ff |
	% Line 7
	a2 a4 a4 | a2 d'2 | d'4 c'4 d'4\>( bes4) | c'2.\! r4 | << \context Voice = tenVoice { c'\breve*1/2 } \\ { s2.^\p^\< s4\! } >> | a4\> f4 e2\! |
	% Line 8
	g4 g8 a8 bes4 bes4 | a2 a4 a4 | g4 c'4 c'2 | bes4^"accel." bes4 g2 | f2 e2 | f4 f4 f2 |
	% Line 9
	a4 a4 a2 | g2 r2 | g\breve*1/2 | a2 a2 | a2 d'4 c'4 | b2 a2 |
	% Line 10
	r4 a4 a4 a8 a8 | bes!4 bes4 c'4 d'4 | c'2 c'2 | d'4^"rit." bes4 c'4 bes4 | a2(\> g2) | f1\!\p |
	% Line 11
	c'2\f g2 | a\breve*1/2 | d'2 c'2 | r4 c'4 c'4 c'4 | c'2\< c'4 c'4\! | << \context Voice = tenVoice { a2 g2\fermata } \\ { s4^\> s8\! s2 } >> | g\breve*1/2 |
	% Line 12
	a4 c'4 d'4 a4^"rit." | bes2( a2) | a1\fermata | r2 d'2 | a4\< g4 f2(\! ~ | f4\> e4) f2\! | r4 g4\< a4 a4\! |
	% Line 13
	bes2(\> d'2 ~ | d'2)\! cis'2\fermata | d'4 f'4 f'4 f'8 f'8 | g'4 d'8([ c'8]) bes2\breathe | a4(^"rit." g4) a4 a4 | bes2( a2) | f1\fermata |
}

basNotes = {
	\global \clef bass
	\override TextScript #'font-shape = #'italic \override TextScript #'font-size = #-1 
	% Line 1
	d2\p | d4\< d4 d2\!( | a,2)\> d2\! | r4 c4\< f4 f4\! | g1\> | a1\!\fermata | g4\mf f4 bes4 bes8 a8 |
	% Line 2
	g4 g4 g2 | e2^"rit." \shiftHp d4\> d4 | g,2\! a,2\fermata | d2 c4 bes,4 | a,4 g,4 f,2 | r4 f4 f2 |
	% Line 3
	g4 d4 c2 | f2. r4 | g4\f g2 g4 | g4.( a8 bes4) g4 | d4 c4 bes,4 bes4 | a1 | <d a>1 |
	% Line 4
	f4.\p f8 f4 | bes,2 c4 | f2 r4 | f2\f bes,2 | c2 f2\fermata | f4.\p f8 f4 | bes,2 c4 | f2 r4 |
	% Line 5
	f2.\f e4 | d2( g,2) | c1\fermata | f4.\p f8 f4 f4 | f4. f8 f4 d4 | bes,2 a,2 | bes,2 f2\fermata |
	% Line 6
	d4.\mf d8 f4 f | c2 d2 | e4^"rit." f4 a,4 bes,4 | g,4(\> bes,2 a,4)\! | d1\fermata |
	bes,\breve*1/2\ff |
	% Line 7
	d2 d4 d4 | d2 d2 | g4 a4 g2\> | f2.\! r4 | << \context Voice = basVoice { c\breve*1/2 } \\ { s2.^\p^\< s4\! } >> | f4\> f4 c2\! |
	% Line 8
	c4 c8 c8 bes,4 bes,4 | d2 f4 f4 | c4 c4 f2 | g4^"accel." g4 e2 | f2 c2 | f4 f4 f2 |
	% Line 9
	f4 f4 f2 | g2 r2 | c\breve*1/2 | f2 f2 | d2 d4 d4 | e2 a,2 |
	% Line 10
	r4 d4 d4 d8 d8 | bes,4 bes,4 a,4 g,4 | e2 f2 | bes4^"rit." g4 f4 c4 | d2(\> a,2) | d1\!\p |
	% Line 11
	\once\override DynamicText #'extra-offset = #'(0 . -0.75)
	c2\f c2 | f\breve*1/2 | bes,2 f2 | r4 c4 c4 c4 | f2\< f4 f4\! | << \context Voice = basVoice { f2 g2\fermata } \\ { s4^\> s8\! s2 } >> | c\breve*1/2 |
	% Line 12
	f4 f4 d4 d4^"rit." | g,2( a,2) | d1\fermata | r2 d2 | d4\< d4 d2\!( | a,2)\> d2\! | r4 c4\< f4 f4\! |
	% Line 13
	g1\> | a1\!\fermata | g4 f4 bes4 bes8 a8 | g4 g4 g2\breathe | e2^"rit." d4 d4 | g,2( a,2) | d1\fermata |
}

\score {
	\new ChoirStaff <<
		\new Staff = sopStaff {
			\set Staff.midiInstrument = "oboe"
			\set Staff.instrumentName = \markup { \tiny \caps "Cantus" }
			\new Voice = sopVoice { \sopNotes }
		}
		\new Lyrics \lyricsto sopVoice { \text }
		\new Staff = altStaff {
			\set Staff.midiInstrument = "violin"
			\set Staff.instrumentName = \markup { \tiny \caps "Altus" }
			\new Voice = altVoice { \altNotes }
 		}
		\new Lyrics \lyricsto altVoice { \text }
		\context Staff = tenStaff {
			\set Staff.midiInstrument = "viola"
			\set Staff.instrumentName = \markup { \tiny \caps "Tenor" }
			\new Voice = tenVoice { \tenNotes }
		}
		\new Lyrics \lyricsto tenVoice { \text }
		\context Staff = basStaff {
			\set Staff.midiInstrument = "cello"
			\set Staff.instrumentName = \markup { \tiny \caps "Bassus" }
			\new Voice = basVoice { \basNotes }
		}
		\new Lyrics \lyricsto basVoice { \text }
 	>>
	\layout {
		\context {
			\Score
			\override BarNumber #'extra-offset = #'(-1 . 0.5)
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (
							  0 -5.75
							-11.75 -17.5
							-23.5 -29.25
							-35.25 -41)))
		}
		\context {
			\Staff
			\override InstrumentName #'extra-offset = #'(-1 . 0)
		}
	}
	\midi {
		\context {
			\Voice
			\remove Dynamic_performer
		}
	}
}
