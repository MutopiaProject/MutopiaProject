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
	system-count = 6

	bookTitleMarkup = \markup {
		\column {
			\fill-line { \override #'(font-size . 4) \bold \fromproperty #'header:title }
			\fill-line { \override #'(font-size . 1) \bold \fromproperty #'header:subtitle }
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
	title = "Caligaverunt"
	subtitle = "Feria VI in Parasceve ad Matutinem: Responsorium IX"
	composer = "Juozas Naujalis"
	composerdates = "(1869-1934)"
	opus = "Op. 7, No. 1"
	%tagline = ""

	mutopiatitle = "Caligaverunt"
	mutopiacomposer = "NaujalisJ"
	mutopiapoet = ""
	mutopiaopus = "Op. 7, No. 1"
	mutopiainstrument = "Voice (SATB)"
	date = "19th century"
	source = "C. Witanowski, 1901"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2007/Apr/26"
 footer = "Mutopia-2007/04/29-967"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = { \key e \minor \time 4/4 \dynamicUp \autoBeamOff }

sopNotes = {
	\global \clef treble
	% Line 1
	% UGH. Ugly hack to get 3 systems on first page in US Letter size.
	\once\override TextScript #'extra-offset = #'(-4 . 10.5)
	b'4.(\p_\markup{\bold "Largo."} a'8) g'4 fis'4 | e'2. fis'4 | g'4.( a'8) b'4 b'4 | c''2\< b'4\! d'' | e''4.( d''8 c''4) b'4 |
	
	\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\override Score.RehearsalMark #'self-alignment-X = #1

	% Line 2
	a'4( d''4) d''2\fermata | b'4\p a'4 c''4 b'4 | a'2 g'2 | a'2. a'4 | b'2\breathe b'4^\markup{\small \italic "rit."} b'4 | a'4.\> fis'8 g'4 fis'4\! |
	% Line 3
	e'2\pp r2 | r4 e'4\f e''4. d''8 | c''4 c''4\> b'4. g'8 | a'2.\! r4 | b'2.\pp a'4 | g'2 g'2 |
	% Line 4
	a'4. a'8 b'2 | e'4\< fis'4 a'4\! g'4 | << \context Voice = sopVoice { fis'1( ~ } \\ { s2 s2^\markup{\small \italic "rit."} } >> | fis'4 e'2 dis'4) | e'1\fermata \bar "||"
	\mark\markup { \small \italic "Fine." }
	\time 3/4 R2.*2 |
	% Line 5
	R2. | r4 r4 fis'4\f | g'4 b' b'8 c''8 | d''2 d''4 | d''4 e''4. e''8 | e''4\breathe g''2 | e''4^\markup{\small \italic "rit."} d''2 |
	\once\override DynamicText #'extra-offset = #'(-2 . -2) d''2.\p\fermata \bar "||"
	% Line 6
	\time 4/4
	b'2.\pp b'8([ a'8]) | g'2 fis'2 | a'4. g'8 fis'2 ~ | fis'2 g'4 b'8([ c''8]) | d''4^\markup{\small \italic "rit."} c''8([ b'8]) a'2( |
	<< \context Voice = sopVoice { fis'1) } \\ { s4^\< s8\! s8^\> s2\! } >> | g'1\fermata \bar "|." \mark\markup {\small\italic "D. C. al Fine."}
}

sopText = \lyricmode {
	Ca -- li -- ga -- ve -- runt o -- cu -- li me -- i a fle -- tu
	me -- o, qui -- a e -- lon -- ga -- tus est a me, qui con -- so -- la -- ba -- tur
	me, Vi -- de -- te, o -- mnes po -- pu -- li. Si est do -- lor
	si -- mi -- lis si -- cut do -- lor me -- us.
	qui tran -- si -- tis per vi -- am, at -- ten -- di -- te et vi -- de -- te
	Si est do -- lor si -- mi -- lis __ si -- cut do -- lor me -- us.
}

altNotes = {
	\global \clef treble
	% Line 1
	g'4.(\p fis'8) e'4 b4 | e'2. dis'4 | e'4.( fis'8) g'4 fis'4 | e'2\< d'4\! g'4 | g'( c''8[ b'] a'4) g'4 ~ |
	% Line 2
	g'4 fis'4 g'2\fermata | g'4 fis'4 e'4 g'4 | fis'2 e'2 | e'2 e'2 | dis'2\breathe e'4^\markup{\small \italic "rit."} e'4 | e'4.\> e'8 e'4 dis'4\! |
	% Line 3
	b2\pp r2 | r4 e'4\f e'4 fis'8([ gis'8]) | a'4 fis'4\> g'!4. g'8 | fis'2.\! r4 | d'2.\pp dis'4 | e'4 c'4 g'2 ~ |
	% Line 4
	g'2 g'4( fis') | e'2 r2 | c'4 e'4 e'4^\markup{\small \italic "rit."} d'8([ c'8]) | b1 b1\fermata |
	\time 3/4
	b'2\p a'4 | gis'2( b'4 ~ |
	% Line 5
	b'4 a'8[ g'!8 fis'8 e'8]) | dis'2\breathe dis'4\f | e'4 e'4 e'8 e'8 | fis'2 g'4 | g'4 g'4. g'8 | g'4\breathe g'2 | g'2^\markup{\small \italic "rit."} fis'4 | \once\override DynamicText #'extra-offset = #'(-2 . -2) g'2.\p\fermata |
	% Line 6
	g'2.\pp g'8([ fis'8]) | e'2. d'4 | c'4( e'2) e'4 | dis'2 e'4 e'4 | fis'4^\markup{\small \italic "rit."} g'4 e'2( ~ | << \context Voice = altVoice { e'4 dis'8[ cis'8] dis'2) } \\ { s4^\< s8\! s8^\> s2\! } >> e'1\fermata |
}

altText = \lyricmode {
	Ca -- li -- ga -- ve -- runt o -- cu -- li me -- i a fle -- tu __
	me -- o, qui -- a e -- lon -- ga -- tus est a me, qui con -- so -- la -- ba -- tur
	me, Vi -- de -- te, o -- mnes po -- pu -- li. Si est do -- lor si --
	mi -- lis si -- cut do -- lor me -- us. O vos o --
	mnes qui tran -- si -- tis per vi -- am, at -- ten -- di -- te et vi -- de -- te
	Si est do -- lor si -- mi -- lis si -- cut do -- lor me -- us.
}

tenNotes = {
	\global \clef "G_8"
	% Line 1
	R1 | b4.(\p a8) g4 fis4 | e2. fis4 | g4\< g8 a8 b2\! | c'4 e'4 e'4 e'4 |
	% Line 2
	a2 b2\fermata | R1 | d'4\p c'4 e'4 d' | c'4. b8 a4 e4 | fis2\breathe g4^\markup{\small \italic "rit."} g4 | a4\> c'4 b4. a8\! |
	% Line 3
	g2\pp r4 e4\f | e'4.( d'8 c'4) d'4 | e'4 d'8([\> c'8]) d'4. b8 | a2.\! r4 | g2\pp g2 | g4( e'2) ees'4 |
	% Line 4
	ees'2 d'2 | c'2 r2 | a4 c'4 c'4^\markup{\small \italic "rit."} b8([ a]) | g2( fis2) | g1\fermata |
	\time 3/4
	R2. | e'2\p d'4 |
	% Line 5
	c'2. | b2\breathe b4\f | b4 g4 g8 g8 | a2 b4 | b4 b4. b8 | c'4\breathe e'4.( d'8) | c'8([^\markup{\small \italic "rit."} b8]) a2 | \once\override DynamicText #'extra-offset = #'(-2 . -2) b2.\p\fermata |
	% Line 6
	d'2(\pp e'4) b4 | b2 b2 | c'2. a4 | b2 b4 g4 | a4^\markup{\small \italic "rit."} g4 a4( c'4 | << \context Voice = tenVoice { b1) } \\ { s4^\< s8\! s8^\> s2\! } >> | b1\fermata |
}

tenText = \lyricmode {
	Ca -- li -- ga -- ve -- runt o -- cu -- li me -- i a fle -- tu
	me -- o, qui -- a e -- lon -- ga -- tus est a me, qui con -- so -- la -- ba -- tur
	me, Vi -- de -- te, o -- mnes po -- pu -- li. Si est do -- lor
	si -- mi -- lis si -- cut do -- lor me -- us. O vos
	o -- mnes qui tran -- si -- tis per vi -- am, at -- ten -- di -- te et vi -- de -- te
	Si est do -- lor si -- mi -- lis si -- cut do -- lor me -- us.
}

basNotes = {
	\global \clef bass
	% Line 1
	R1 | g4.(\p fis8) e4 b,4 | e2. d4 | c4\< c8 c8 g,2\! | c4 a,4 c4 cis4 |
	% Line 2
	d2 g,2\fermata | R1 | d4 a4 e4. e8 | a,4 a,4 c4 c4 | b,2\breathe e4^\markup{\small \italic "rit."} e4 | c4\> a,4 b,4. b,8\! |
	% Line 3
	\once\override DynamicText #'extra-offset = #'(0 . -1)
	<e, e>2\pp r2 | r4 c4\f c'4. b8 | a4 a4\> g4. g8 | d2.\! r4 | g,2\pp b,2 | c2. c4 |
	% Line 4
	c2 g,2 | a,2 r2 | a,4. a,8 a,4^\markup{\small \italic "rit."} a,4 | b,1 | <e, e>1\fermata |
	\time 3/4
	R2. | e2\p e4 |
	% Line 5
	a,2. | b,2\breathe b,4\f | e4 e4 e8 e8 | d2 g4 | g4 e4. e8 | c4\breathe c2 | c4^\markup{\small \italic "rit."} d2 | \once\override DynamicText #'extra-offset = #'(-2 . -2) g,2.\p\fermata |
	% Line 6
	g2\pp e2 | e2 b,2 | a,2. c4 | b,2 e2( | d4)^\markup{\small \italic "rit."} e4 c4 a,4 | << \context Voice = basVoice { b,1 } \\ { s4^\< s8\! s8^\> s2\! } >> | e1\fermata |
}

basText = \lyricmode {
	Ca -- li -- ga -- ve -- runt o -- cu -- li me -- i a fle -- tu
	me -- o, qui -- a e -- lon -- ga -- tus est a me, qui con -- so -- la -- ba -- tur
	me, Vi -- de -- te, o -- mnes po -- pu -- li. Si est do -- lor
	si -- mi -- lis si -- cut do -- lor me -- us. O vos
	o -- mnes qui tran -- si -- tis per vi -- am, at -- ten -- di -- te et vi -- de -- te
	Si est do -- lor si -- mi -- lis si -- cut do -- lor me -- us.
}

\score {
	\new ChoirStaff <<
		\new Staff = sopStaff {
			\set Staff.midiInstrument = "oboe"
			\set Staff.instrumentName = \markup { \tiny \caps "Cantus" }
			\new Voice = sopVoice { \sopNotes }
		}
		\new Lyrics \lyricsto sopVoice { \sopText }
		\new Staff = altStaff {
			\set Staff.midiInstrument = "violin"
			\set Staff.instrumentName = \markup { \tiny \caps "Altus" }
			\new Voice = altVoice { \altNotes }
 		}
		\new Lyrics \lyricsto altVoice { \altText }
		\context Staff = tenStaff {
			\set Staff.midiInstrument = "viola"
			\set Staff.instrumentName = \markup { \tiny \caps "Tenor" }
			\new Voice = tenVoice { \tenNotes }
		}
		\new Lyrics \lyricsto tenVoice { \tenText }
		\context Staff = basStaff {
			\set Staff.midiInstrument = "cello"
			\set Staff.instrumentName = \markup { \tiny \caps "Bassus" }
			\new Voice = basVoice { \basNotes }
		}
		\new Lyrics \lyricsto basVoice { \basText }
 	>>
	\layout {
		\context {
			\Score
			\remove Bar_number_engraver
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
			\Score
			tempoWholesPerMinute = #(ly:make-moment 66 4)
		}
		\context {
			\Voice
			\remove Dynamic_performer
		}
	}
}
