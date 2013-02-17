\version "2.16.1"

\header{

	title = "Suite in C Minor for Lute (trans. to A minor)"
	subtitle = "2. Fuga"
	opus = "BWV 997"
	composer = "Johann Sebastian Bach (1685-1750)"
	instrument= "Guitar"

	mutopiatitle = "Lute Suite BWV 997: 2. Fuga"
	mutopiacomposer = "BachJS"
	mutopiainstrument = "Lute, Guitar"
	date = "ca.1740-41"
	style = "Baroque"
	copyright = "Public Domain"
	filename = "bmv997-02fuga.ly"
	maintainer = "David Megginson"
	maintainerEmail = "david@megginson.com"
	source = "Unknown"

 footer = "Mutopia-2013/02/17-51"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

#(set-global-staff-size 16)
Treble = \new Voice = "treble" {
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 6/8
	\key a \minor
	\clef "treble_8"
	\voiceOne s1*6/8 |
	s4^\segno s s |
	s1*6/8 |
	s1*6/8 |
%5
	s1*6/8 |
	s1*6/8 |
	r8 e'' fis'' g'' a'' b'' |
	c''4. cis'' |
	d'' dis'' |
%10
	e''8 b' e''(  e'') dis''16 cis'' dis''8 |
	g''4. fis''4 b''8 |
	gis'' e'' a''(  a'') g''16 f'' g''8( |
	 g''4) f''8 e''4 a''8 |
	d''4. c''8 d''4( |
%15
	 d''8) g''4 f''4. |
	e'' d'' |
	c''8 e'' d''(  d'') c'' b' |
	a'4. r4 d''8( |
	 d'') b' c'' b'4.( |
%20
	 b'8) a'16 gis' a'8 d''4.( |
	 d''8) c''16 b' c'' d'' e''4.( |
	 e''8) d''16 c'' d'' e'' f''4.( |
	 f''8) g''16 f'' e'' d'' e''8 fis'' g''( |
	 g'') b'' a'' g'' fis'' e'' |
%25
	fis'' c''' b'' a'' g'' fis'' |
	g''4. fis'' |
	r8 e'' f'' g'' a'' bes'' |
	cis''4 d''8 e''4.( |
	 e''8) d'' e'' f'' g'' a'' |
%30
	b'4 c''8 d''4.( |
	 d''8) g' c''(  c'') b'16 a' b'8 |
	a'4 d''8(  d'') c''16 b' c''8 |
	b' b'' e'' c'''16 b'' a'' g'' f'' e'' |
	f'' e'' d'' c'' b' a' b' a' g' f' e' d' |
%35
	e'8 c''' b'' a''4. |
	r8 b'' a'' gis''4. |
	r8 a'' g'' f''4 e''8 |
	d''4.(  d''8) c'' b' |
	e'' d'' c'' f'' e'' d'' |
%40
	c'' d'' b'^\trill a' a''16 g'' f'' e'' |
	d'' e'' f'' e'' d'' c'' b' c'' d'' c'' b' a' |
	e''2.( |
	 e''4.)(  e''8) fis'' gis'' |
	a''4.(  a''8) b'' c''' |
%45
	f''4. fis'' |
	g'' gis'' |
	a''8 e'' a''(  a'') gis''16 fis'' gis''8 |
	a'' a' d'' c''16 b' b'8.^\trill a'16 |
	a'4^\fermata^"[fine]" c''8 b'16 c'' d'' f'' e'' d'' |
%50
	c'' b' a' gis' a' e' d' f' e' d' c' b |
	d' c' b a e''8 d''16 e'' f'' a'' g'' f'' |
	e'' d'' c'' b' c'' g' a' c'' b' a' g' f' |
	f' e' d' c' g'' g' bes' a' g' f' f'' a' |
	c'' b' a' g' e'' b' d'' c'' b' a' a''8 |
%55
	a''8. g''16 fis'' a'' g'' fis'' e'' d'' c'' b' |
	c''8 b'' a'' g'' fis'' e'' |
	dis'' c''' b'' a'' g'' fis'' |
	g''16 fis'' e'' dis'' e'' g' fis' e' fis' a' e'' dis'' |
	e''8 b' a' g' fis' e' |
%60
	dis''4. d'' |
	cis'' c'' |
	b'8 e'' a'(  a') b'16 c'' d'' b' |
	c'' b' c'' d'' b' c'' a'4 d''8( |
	 d''16) f'' e'' d'' cis'' d'' r e'' d'' cis'' b' cis'' |
%65
	d''8 a' d''(  d''16) e'' d'' cis'' d'' b' |
	cis''4 a''8 b' cis''4 |
	d''4. d''16 g' f' e' f' a' |
	d' g' fis' e' fis' a' c'' g' fis' e' fis' a' |
	d' c'' b' a' b' d'' g'' c'' b' a' b' d'' |
%70
	g' c'' b' a' b' d'' f'' c'' b' a' b' d'' |
	g' f'' e'' d'' e'' g'' c''' b'' a'' gis'' a'' c''' |
	d'' e'' d'' c'' d'' f'' b'' a'' g'' f'' g'' b'' |
	c'' d'' c'' b' c'' e'' a'' g'' f'' e'' f'' a'' |
	b' c'' b' a' b' d'' f'' a' gis' fis' gis' b' |
%75
	e'8 e'' fis'' g'' a'' b'' |
	c''4. cis'' |
	d'' dis'' |
	e''8 b' e''(  e'') dis''16 e'' fis'' dis'' |
	g''4. fis''( |
%80
	 fis''16) fis'' e'' dis'' e''8(  e''16) e'' d'' c'' d''8( |
	 d''16) d'' c'' b' c''8(  c''16) c'' b' a' b'8( |
	 b'16) b' e'' d'' c'' b' a' g'' fis'' e'' dis'' e'' |
	dis''8 fis'' g'' a'' c'' b' |
	r g'' a'' b'' dis'' e'' |
%85
	r c''16 a'' b' g'' a' fis'' g' e'' fisis' dis'' |
	d'' e'' d'' e'' d'' e'' cis'' e'' cis'' e'' cis'' e'' |
	c'' fis'' c'' fis'' c'' fis'' b' gis'' b' gis'' b' gis'' |
	a'' e'' c'' e'' b' e'' a' e'' f'' d'' g'' cis'' |
	f'' d'' b' f'' a' f'' g' d'' c'' f'' b' f'' |
%90
	e'' c'' a' e'' g' e'' f' c'' bes' e'' a' e'' |
	d'' b' gis' d'' fis' d'' e' b' a' d'' gis' d'' |
	c'' a' f' c'' e' c'' d' f' a' c'' b' d'' |
	gis'8 gis'' a'' b'' f'' e'' |
	r a'' b'' c''' d'' c'' |
%95
	r d''16 f'' c'' e'' b' d'' a' c'' gis' b' |
	g' a' g' a' g' a' a''4. |
	gis'' g'' |
	f'' fis'' |
	g'' gis'' |
%100
	a''8 e'' a''(  a'') gis''16 a'' b'' gis'' |
	c'''4. b''( |
	 b''16) b'' a'' gis'' a''8(  a''16) a'' gis'' f'' gis''8( |
	 g''16) g'' f'' e'' f''8(  f''16) f'' e'' d'' e''8( |
	 e''16) e'' a'' g'' f'' e'' d'' c'' b' a' gis' a' |
%105
	d''8. c''16 b' d'' c'' b' a' gis' a' c'' |
	f'8 e'' d'' c'' b' a' |
	gis' f'' e'' d'' c'' b' |
	c''16 dis'' fis'' gis'' a'' c'' b' a' b' d'' a'' gis'' |
	a''8 a' b' c'' d'' e''_"[dal segno]"_"al Fine" |
}
Middle = {
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 6/8
	\key a \minor
	\clef "treble_8"
	\voiceThree
	r8 a' b' c'' d'' e'' |
	f'4. fis' |
	g' gis' |
	a'8 e' a'(  a') gis'16 fis' gis'8 |
%5
	c''4. b'4 e''8 |
	a'4.(  a'8) b'16 a' g' fis' |
	g'4 a'8 b'4. |
	r8 b' a' g' fis' e' |
	fis' c'' b' a' g' fis' |
%10
	g'4. fis' |
	e'4 r8 r4 r8 |
	r4 c''8 b' e''4 |
	cis''8 a' d''(  d'') cis''16 b' cis''8( |
	 c'') b'16 a' b'8 a'4 a'8 |
%15
	b'4 c''8(  c'') b'16 a' b'8( |
	b') e' a'(  a') gis'16 fis' gis'8 |
	\context Voice = "treble" {a' c'' b'(  b') a' gis'} |
	a' e' d' c' b a |
	\voiceFour b f' e' d' c' b |
%20
	c'4. b |
	a4 b8 c' d' e' |
	f'4 r8 r4 r8 |
	r e' f' g' a' b' |
	c'4. cis' |
%25
	d' dis' |
	e'8 b' e''(  e'') dis''16 cis'' dis''8 |
	g''4 r8 r4 r8 |
	r bes'(  a') g' f' e' |
	f'4 s8 s4 s8 |
%30
	r a' g' f' e' d' |
	e'4. r8 d' g'( |
	 g') f'16 e' f' g' e'4 a'8( |
	 a') gis'16 fis' gis'8 a'4 r8 |
	s1*6/8 |
%35
	r8 e'' d'' c''4. |
	r8 d'' c'' b'4. |
	r4 e''8(  e'') d'' c''( |
	 c'') b' a' gis'4. |
	a'4 r8 a'4 r8 |
%40
	a'4 gis'8 a'4 s8 |
	s1*6/8 |
	r8 e' fis' gis' a' b' |
	c'4 r8 r4 r8 |
	r a' b' c'' d'' e'' |
%45
	a'4 r8 a'4 r8 |
	d'' f'' e'' d'' c'' b' |
	c''4 c''8 b'4. |
	e'8 a'4 a'8 gis'4 |
	<c' e'> r r |
%50
	s1*6/8 |
	r4 c''8(  c'') b'4 |
	s1*6/8 |
	s1*6/8 |
	s1*6/8 |
%55
	<fis' dis''>4 r r |
	s1*6/8 |
	s1*6/8 |
	s1*6/8 |
	s1*6/8 |
%60
	\voiceThree r16 c'' b' a' gis' a' r b' a' gis' fis' gis' |
	a'8 r4 r16 b' a' gis' a' fis' |
	gis'4 r8 r4 r8 |
	r e' d' c' b a |
	<<{gis'4. g'} \new Voice {\voiceFour b8 cis' d' cis' d' e'}>> |
%65
	fis'4. f' |
	e'8 a' d' d' e'16 f' g' e' |
	f' g' f' e' f' a' r4 r8 |
	s1*6/8 |
	s1*6/8 |
%70
	s1*6/8 |
	s1*6/8 |
	s1*6/8 |
	s1*6/8 |
	s1*6/8 |
%75
	s1*6/8 |
	s1*6/8 |
	s1*6/8 |
	b8 r r4 r |
	r8 b e'(  e') dis'16 e' fis' dis' |
%80
	\voiceFour b'4(  b'16) b' a'4(  a'16) a' |
	g'4(  g'16) g' fis'4(  fis'16) fis' |
	\context Voice = "bass" {e'4 r8 e'4 r8} |
	\context Voice = "treble" {fis' d'' e'' fis'' e' dis' |
	r e'' fis'' g'' a' g'} |
%85
	s1*6/8 |
	e'4 r8 e'4 r8 |
	dis'4 r8 d'4 r8 |
	c''4 r r |
	s1*6/8 |
%90
	s1*6/8 |
	s1*6/8 |
	s1*6/8 |
	r8 b' c'' d'' a' g' |
	r c'' d'' e'' gis' a' |
%95
	s1*6/8 |
	\voiceThree r4 r8 fis'16 a' fis' a' fis' a' |
	f' b' f' b' f' b' e' cis'' e' cis'' e' cis'' |
	s1*6/8 |
	s1*6/8 |
%100
	e'8 r r r4 r8 |
	r e' a'(  a') gis'16 a' b' gis' |
	\voiceFour e''4(  e''16) e'' d''4(  d''16) d'' |
	c''4(  c''16) c'' b'4(  b'16) b' |
	a'8 s4 s8 s4 |
%105
	<gis' b'> r r |
	s1*6/8 |
	s1*6/8 |
	s1*6/8 |
	s1*6/8 |
}
Bass = \new Voice = "bass" {
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 6/8
	\key a \minor
	\clef "treble_8"
	\voiceTwo
	r2. |
	r8 e' d' c' b a |
	b f' e' d' c' b |
	c'4. b |
%5
	a8 e' a'(  a') g'16 fis' g'8( |
	 g') fis' e' dis'4. |
	e'(  e'8) fis' g' |
	a4. r4 a8 |
	d'4. r4 b8 |
%10
	e'4 c'8 a4 b8 |
	e b e'(  e') d'16 c' d'8( |
	 d') c' f' d' e' e |
	a4 bes8 g a e' |
	fis' d' g'(  g') f'16 e' fis'8 |
%15
	f' e'16 d' e'8 d' g' g |
	c'4 c'8 b4 e8 |
	a a b c' d' e' |
	f4. fis |
	g gis |
%20
	a8 e a(  a) gis16 fis gis8 |
	a4 r8 r4 r8 |
	r d' c' b a g |
	c'4.(  c'4) b8 |
	a4. r4 a8 |
%25
	d'4. r4 b8 |
	e'4 c'8 a4 b8 |
	e4.(  e8) f g |
	a4 b8 cis'4. |
	d'4 r8 d' e' f' |
%30
	g4 a8 b4. |
	c' g |
	d' a |
	e a8 c' a |
	d' f' d' g b g |
%35
	c'4 r8 r f' e' |
	d'4 r8 r e' d' |
	c'4 cis'8 d'4 e'8 |
	f'4.(  f'8) e' d' |
	c' b a d' e' f' |
%40
	e' d' e' f'4 r8 |
	f4 r8 f4 r8 |
	e4 r8 r4 r8 |
	r a b c' d' e' |
	f4.(  f4) e'8 |
%45
	d' e' d' c' b a |
	b4 r8 e'4 r8 |
	a4 f'8 d' e' d' |
	c' f' d' e'4. |
	a8 e a(  a) gis4 |
%50
	a c'8 b4 e8 |
	a e a f' d' g' |
	c'4 e8 f d' g |
	c'4 e8 f4 d'8 |
	g4 gis8 a b c' |
%55
	b cis' dis' e' f' g' |
	a a16 c'' a c'' ais cis'' ais cis'' ais cis'' |
	b b' b dis'' b dis'' c' e'' c' e'' c' e'' |
	cis'8 b ais b4 b8 |
	e4.(  e8) fis g |
%60
	fis gis a gis a b |
	a a' g' fis' e' dis' |
	e' d' c' f' d' e' |
	a4 r8 a g f |
	e r r a r r |
%65
	d' d' c' bes a gis |
	a g f(  f) e a |
	d'4 r8 r d' c' |
	bes a g fis a d' |
	g4 r8 r g' f' |
%70
	e' d' c' b d' g |
	c' c' b a c'' a' |
	f' b' a' g' b' g' |
	e' a' g' f' a' f' |
	d' f' d' b d' b |
%75
	gis16 e' d' e' c' d' b d' a d' gisis d' |
	a a' g' bes' f' a' e' g' a f' g e' |
	f' b' a' c'' g' b' fis' a' b g' a fis' |
	g8 r c' a b b |
	e4 c'8 a b a |
%80
	g g c' fis b b |
	e e' a d' d' g |
	c'4 r8 c'4 r8 |
	b4 r8 r4 r8 |
	b4. r4 r8 |
%85
	b4. r8 b a |
	gis fis e a4 a8 |
	a4 a8 a4 a8 |
	a e' d' cis' b a |
	d' d' c' b a g |
%90
	c' c' b a g f |
	b b a gis fis e |
	a a g f e' d' |
	e'4 r8 r4 r8 |
	e'4 r8 r4 r8 |
%95
	e4 r8 r e' d' |
	cis' b a d'4 d'8 |
	d'4 d'8 d'4 d'8 |
	d'16 d'' c'' ees'' bes' d'' a' c'' d' bes' c' a' |
	bes e'' d'' f'' c'' e'' bes' d'' e' c'' d' bes' |
%100
	c'4 f'8 d' e' e |
	a4 f'8 d' e' d' |
	c' c' f' b e' e |
	a a' d' g g' c' |
	f4. r |
%105
	e8 fis gis a b c' |
	d'16 f' d' f' d' f' dis' fis' dis' fis' dis' fis' |
	e' g' e' g' e' g' f' a' f' a' f' a' |
	fis'8 e' dis' e'4 e8 |
	a4 r8 r4 r8 |
}

TrebleStaff = \new Staff = TrebleStaff <<
	\set Staff.midiInstrument = "acoustic guitar (nylon)"

	\transpose c' c \Treble
	\transpose c' c \Middle
	\transpose c' c \Bass
>>

\score {
	<<
		\TrebleStaff
	>>
	\layout {
	}
	
  \midi {
    \tempo 4 = 100
    }
}
