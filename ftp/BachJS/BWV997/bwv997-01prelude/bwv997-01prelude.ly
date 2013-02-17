\version "2.16.1"

\header{

	title = "Suite in C Minor for Lute (trans. to A minor)"
	subtitle = "1. Prelude"
	opus = "BWV 997"
	composer = "Johann Sebastian Bach (1685-1750)"
	instrument= "Guitar"

	mutopiatitle = "Lute Suite BWV 997: 1. Prelude"
	mutopiacomposer = "BachJS"
	mutopiainstrument = "Lute, Guitar"
	date = "ca.1740-41"
	style = "Baroque"
	copyright = "Public Domain"
	filename = "bmv997-01prelude.ly"
	maintainer = "David Megginson"
	maintainerEmail = "david@megginson.com"
	source = "Unknown"

 footer = "Mutopia-2013/02/17-50"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

#(set-global-staff-size 16)

Treble = {
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 4/4
	\key a \minor
	\clef "treble_8"
	\voiceOne
	\slurDown

	r8  a'16[ b' c''8 e''] gis''(  a'') r a'' |
	r  a'16[ b' c''8 e''] gis''(  a'') r a'' |
	r  a'16[ b' c''8 e''] gis''(  a'') r a'' |
	r16 g'' f'' e'' d'' c'' b' a' gis'(  a') b' f' e'8 d'' |
%5
	c''16( b'  a'8) r16 gis' a' b' c'' e'' d'' c'' f'' e'' d'' c'' |
	d'' f'' g'8 r16 a' b' c'' d'' f'' e'' d'' g'' f'' e'' d'' |
	e'' d'' e'' g'' b' a' b' g'' c''(  b') c'' g'' d''(  c'') d'' f'' |
	e'' d'' e'' c'' e'' b' e'' a' gis' fis' gis' fis'' gis' e'' gis' d'' |
	c'' b' c'' e'' a''8 c'''(  c'''16) e'' dis''8(  dis''16) e'' fis'' g'' |
%10
	a'' c'' b'8(  b'16) cis'' dis'' e'' fis'' gis' a'8(  a'16) c'' b' a' |
	g' b' e'' dis'' e'' b' c'' ais' b' dis'' fis'' e'' fis'' b' c'' ais' |
	b' e'' g'' fis'' g'' b' c'' ais' b' fis'' a''8(  a''16) c'' b' a' |
	g' b' e'' fis'' g''8 fis'' \trill e''16 a' gis'8(  gis'16) b' c'' d'' |
	c'' f' e'8(  e'16) g' a' b' a' e' dis'8(  dis'16) c''' b'' a'' |
%15
	g'' a'' b'' e'' g'' fis'' e'' dis'' e'' g'' ais'8(  ais'16) cis'' b' ais' |
	b' cis'' dis'' e'' fis''8 a' g' e'' fis' dis'' |
	r e'16 fis' g'8 b' dis''(  e'') r e'' |
	r e'16 fis' g'8 b' dis''(  e'') r e'' |
	r e'16 fis' g'8 b' dis''(  e'') r e'' |
%20
	r16 d'' c'' b' a' g' fis' e' dis'(  e') fis' c' b8 a' |
	g'16 fis' e'8 r16 dis' e' fis' g' a' b' g' c'' b' a' g' |
	a' c'' b' a' gis' a' b' c'' d'' f'' e'' d'' e'' d'' c'' b' |
	c'' b' a'8 r16 gis' a' b' c'' e'' d'' c'' f'' e'' d'' c'' |
	d'' f'' e'' d'' cis'' d'' e'' f'' g'' bes'' a'' g'' a'' g'' f'' e'' |
%25
	f''( e''  f'') a'' cis''( b'  cis'') a'' d''( cis''  d'') a'' e''( d''  e'') g'' |
	f'' e'' d'' e'' f'' d'' f'' c'' bes' a' bes' a'' bes' g'' bes' f'' |
	e'' d'' c'' d'' e'' c'' e'' bes' a' g' a' g'' a' f'' a' e'' |
	d'' c'' bes' c'' d'' bes' d'' a' g' f' g' f'' g' e'' g' d'' |
	cis'' b' a'8 r16 e' f' g' cis' bes' a' g' e'' g' f' e' |
%30
	f' a' g' f' d'' f' e' d' cis' bes' a' g' e'' g' f' e' |
	f' a' g' f' d'' f' e' d' ees' f' ees' d' ees' aes' g' fis' |
	g' aes' g' fis' g' ees'' d'' cis'' d''8 a' g''16 f'' e'' \trill d'' |
	d''8 f''16 d'' a'8 bes' r e''16 f'' a''8 bes'' |
	r e''16 c'' gis'8 a' r dis''16 e'' gis''8 a'' |
%35
	r16 g'' f'' e'' d'' c'' b' a' gis' a' b' f' e' d'' c'' b' |
	c''( b'  c'') e'' gis'( fis'  gis') e'' a'( gis'  a') e'' b'( a'  b') d'' |
	c'' b' a' b' c'' a' c'' g' f'( e'  f') e'' f' d'' f' c'' |
	b' a' g' a' b' g' b' f' e'( d'  e') d'' e' c'' e' b' |
	a' g' f' g' a' f' a' e' dis'( cis'  dis') c'' dis' b' dis' a' |
%40
	gis' f'' e'' d'' b'' f'' e'' d'' gis' f'' e'' d'' b'' f'' e'' d'' |
	cis'' bes' a' g' e'' bes' a' g' cis' bes' a' g' e'' bes' a' g' |
	fis' ees'' d'' c'' a'' ees'' d'' c'' fis' ees'' d'' c'' a'' ees'' d'' c'' |
	b' aes' g' f' d'' aes' g' f' b aes' g' f' d'' aes' g' f' |
	e' des'' c'' bes' g'' des'' c'' bes' e' des'' c'' bes' g'' des'' c'' bes' |
%45
	a' g' a' cis'' d''8 f''(  f''16) a' gis'8(  gis'16) a' b' c'' |
	d'' f' e'8(  e'16) fis' gis' a' b' cis' d'8(  d'16) f' e' d' |
	c' e' a' gis' a' e' f' dis' e' gis' b' a' b' e' f' dis' |
	e' a' c'' b' c'' e' f' dis' e' b' d''8(  d''16) f'' e'' d'' |
	c'' e'' a'' b'' c'''8 b'' \trill a''16 d'' cis''8(  cis''16) e'' f'' g'' |
%50
	f'' bes' a'8(  a'16) c'' d'' e'' d'' a' gis'8(  gis'16) f'' e'' d'' |
	c'' d'' c'' b' c'' f'' e'' dis'' e'' f'' e'' dis'' e'' bes'' a'' gis'' |
	a''8 e'' d'''16 c''' b'' a'' a'' b'' c''' a'' c''' b'' a'' g'' |
	fis'' g'' a'' fis'' a'' g'' fis'' e'' <b' dis'' a''>4 r |
	<b' e'' gis''> r16 e'' fis'' gis'' a'' b'' c''' d''' e''' d''' f''' e''' |
%55
	d''' c''' b'' a'' gis'' f'' e'' d'' c''8 a'' b' gis'' \trill |
	<c'' e'' a''>4 r r2 \bar "|."
}
Bass = {
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 4/4
	\key a \minor
	\clef "treble_8"
	\voiceTwo

	a4 r r g' |
	f' r r e' |
	d' r r c' |
	d' r e r |
%5
	a c' f' a |
	b d' g' b |
	c' f' e' g' |
	c' c' b e |
	a g' fis' e' |
%10
	dis' fis' dis' b |
	e' b dis' b |
	e' b dis' b |
	e'8 c' a b c'4 b |
	a g fis b |
%15
	e8 g a b c' e' g' cis' |
	dis' fis' dis' b e' c' a b |
	e4 r r d' |
	c' r r b |
	a r r g |
%20
	a r b r |
	e g c' e |
	f d' b gis |
	a c' f' a |
	b g' e' cis' |
%25
	d' g' f' a |
	d' d' g8 f' e' d' |
	c'4 c' f8 e' d' c' |
	bes a g f e d' cis' e' |
	a4 a e cis' |
%30
	a a e cis' |
	d' f g r8 a |
	bes4 r8 e' f' d' a' a |
	d'4 r8 d'16 cis' d'4 r8 d' |
	c'4 r8 c'16 b c'4 r8 c' |
%35
	b4 r e r |
	a d' c' e' |
	a a d'8 c' b a |
	g4 g c'8 b a g |
	f e d' c' b a fis b |
%40
	e4 e e r |
	a a a r |
	d' d' d' r |
	g g g r |
	c' c' c' r |
%45
	f f' b d' |
	gis b e gis |
	a e gis e |
	a e gis e |
	a8 f' d' e' f'4 e' |
%50
	d' c' b e |
	a r8 b c'4 r8 d' |
	c' a e' e' <fis' dis''>4 r |
	<a' c''> r b r |
	d' r c' r |
%55
	<gis' b' e''> r a'8 f' d' e' |
	<a a'>4 s s2 \bar "|."
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
    \tempo 4 = 60
    }
}
