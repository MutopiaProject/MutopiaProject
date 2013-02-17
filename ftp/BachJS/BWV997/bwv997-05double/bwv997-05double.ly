\version "2.16.1"

\header{
	title = "Suite in C Minor for Lute (trans. to A minor)"
	subtitle = "5. Double"
	opus = "BWV 997"
	composer = "Johann Sebastian Bach (1685-1750)"
	instrument= "Guitar"

	mutopiatitle = "Lute Suite BWV 997: 5. Double"
	mutopiacomposer = "BachJS"
	mutopiainstrument = "Lute, Guitar"
	date = "ca.1740-41"
	style = "Baroque"
	copyright = "Public Domain"
	filename = "bmv997-05double.ly"
	maintainer = "David Megginson"
	maintainerEmail = "david@megginson.com"
	source = "Unknown"

 footer = "Mutopia-2013/02/17-54"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

#(set-global-staff-size 16)
Treble = {
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 6/8
	\key a \minor
	\clef "treble_8"
	\voiceOne
	\slurDown
\repeat "volta" 2 {
	\partial 16*3 f''16 e'' d'' |
	c'' e'' c'' a' gis'(  a') c'' e'' c'' a' gis'(  a') |
	c'' e'' c'' a' gis'(  a') a''8. a'16 c'' e'' |
	f''(  e'') d'' c'' b' a' gis' f''(  e'') d'' c'' b' |
	c''(  b') a' gis' a' e' c' e'(  d') c' b a |
%5
	s8 s16 gis' dis'' e'' s8 s16 a' dis'' e'' |
	s8 s16 d' b' d'' c''(  b') a' gis' a' c'' |
	d' c''(  b') a' b' d'' f''(  e'') d'' c'' b' a' |
	gis'16 s16 s4 s4 s8 |
	c'''16(  b'') a'' gis'' a'' c''' e'' f'' g'' bes'' a'' g'' |
%10
	f'' e'' d'' cis'' d'' f'' a' b' c'' e'' d'' c'' |
	b' a' g' fis' g' b' d'' e'' f'' a'' g'' f'' |
	e'' d'' c'' b' c'' e'' gis'(  a') b' d'' c'' b' |
	s8 s16 b' c'' dis'' s8 s16 c'' dis'' e'' |
	s8 s16 c'' fis'' g'' a'' fis'' dis'' s8 s16 |
%15
	r b''(  a'') g'' fis'' e'' r a''(  g'') fis'' e'' dis'' |
	e'' b' gis' e' b gis e8.
}
\repeat "volta" 2 {
	 c'''16[ b'' a''] |
	gis'' b'' gis'' e'' dis''(  e'') f'' b'' f'' d'' c'' b' |
	cis'' e'' cis'' a' gis'(  a') bes' e'' bes' g' f' e' |
	f' a'(  g') f' e' d' cis' bes''(  a'') g'' f'' e'' |
%20
	f''(  e'') d'' cis'' d'' a' f' a' d'(  f') a' c'' |
	b' e'(  f') d' r c'' d'' e' f' d' r d'' |
	e'' a'(  bes') g' r f'' g'' a'(  bes') g' r bes' |
	a' c'' d'' e'' f'' b' f''(  e'') d'' c'' g'' fis'' |
	g''4 r8 b'16 d'' f'' g'' b'' r |
%25
	r c'' g' fis' g' c'' d'' g' e'' g' f'' g' |
	r e'' d'' c'' d'' e'' f'' c'' g'' c'' a'' c'' |
	g'' c'' d'' bes' a' g' a' e'(  f') c' r a'' |
	b'' e''(  f'') d'' c'' b' c'' gis'(  a') e' r gis'' |
	fis''(  g'') a'' fis'' ees'' d'' c'' d'' ees'' c'' b' a' |
%30
	b'(  c'') d'' b' aes' g' f' g' aes' f' e' d' |
	e' g'(  a') b' c'' d'' e''(  g'') e'' c'' d'' b' |
	c'' g''(  e'') c'' g' e' r8 r16 c''' b'' a'' |
	gis'' f'' e'' d'' e'' gis'' a'' a' g'' f'' e'' d'' |
	cis'' bes' a' g' a' cis'' d'' a' c'' b' a' gis' |
%35
	b' a' c'' b' d'' c'' e'' d'' f''(  e'') d'' c'' |
	b' a' gis' fis' e' dis' e'8. \mordent f''16 e'' d'' |
	c'' e'' c'' a' gis'(  a') c'' e'' c'' a' gis'(  a') |
	c'' e'' c'' a' gis'(  a') a''8. a'16 c'' e'' |
	f''(  e'') d'' c'' b' a' gis' f''(  e'') d'' c'' b' |
%40
	c''(  b') a' gis' a' e' g'(  bes') cis'' e'' f'' g'' |
	f''(  e'') d'' cis'' d'' f'' a'(  b') c'' ees'' d'' c'' |
	b' a' g' fis' g' b' d'' e'' f'' a'' g'' f'' |
	e'' d'' c'' b' c'' e'' g'(  a') bes' d'' c'' bes' |
	a'(  g') f' e' f' a' c' d' e' g' f' e' |
%45
	s8 s16 e' f' gis' s8 s16 f' gis' a' |
	s8 s16 f' b' c'' d''(  b') gis' r16 r8 |
	r16 e' fis' gis' a' b' c'' e'' c'' a' b' gis'' |
	a''(  e'') c'' a' e' c' a8.
}
}
Bass = {
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 6/8
	\key a \minor
	\clef "treble_8"
	\voiceTwo
\repeat "volta" 2 {
	\partial 16*3 r16 r8 |
	a4 r8 g4 r8 |
	f4 r8 c'16(  a) e' r r8 |
	d'4 r8 e'4 r8 |
	a4 r8 r4 r8 |
%5
	e16 b d' s8 s16 fis a c' s8 s16 |
	gis a b s8 s16 a4 r8 |
	f4 r8 d'4 r8 |
	r16 e(  gis) b e' gis'  b'16 d'' e'' gis'' b'' d''' |
	a4 r8 c'4 r8 |
%10
	d'4 r8 f'4 r8 |
	g4 r8 b4 r8 |
	c'4 r8 e'4 r8 |
	fis'16 gis' a' s8 s16 e' gis' a' s8 s16 |
	dis' gis' a' s8 s16 b8. c''16 b' a' |
%15
	g'4 r8 b'4 r8 |
	e'4 r8 r r16
}
\repeat "volta" 2 {
	r8 r16 |
	e4 r8 gis4 r8 |
	g4 r8 cis'4 r8 |
	d'4 f8 e4 a8 |
%20
	d'4 r8 r f f |
	g r g b r g |
	c' r c' e' r c' |
	f'4 d'8 c'4 a8 |
	r16 g b d'(  f') g' r4 r16 f' |
%25
	e'8 r r b r r |
	c' r r d' r r |
	e' r c' f r f |
	gis r e a r a |
	d'4 r8 fis'4 r8 |
%30
	g'4 r8 b4 r8 |
	c'4 e'8 g'4 g8 |
	c'4 r8 c'4 r8 |
	b c' d' c' cis' d' |
	e' f' g' f' d' e' |
%35
	fis' gis' a' f' c' d' |
	e4.(  e8) gis e |
	a4 r8 g4 r8 |
	f4 r8 c'16(  a) e' r16 r8 |
	d'4 r8 e'4 r8 |
%40
	a4 r8 r4 r8 |
	d'4 r8 f4 r8 |
	g4 r8 b4 r8 |
	c'4 r8 e4 r8 |
	f4 r8 a4 r8 |
%45
	b16 cis' d' s8 s16 a cis' d' s8 s16 |
	gis cis' d' s8 s16 e8. f'16 e' d' |
	c'4 a8 e'4 e8 |
	a4. s8 s16
}
}

GuitarStaff = \new Staff = GuitarStaff <<
	\set Staff.midiInstrument = "acoustic guitar (nylon)"

	\transpose c' c \Treble
	\transpose c' c \Bass
>>

\score {
	<<
		\GuitarStaff
	>>
	\layout {
	}
	
  \midi {
    \tempo 4 = 80
    }
}
