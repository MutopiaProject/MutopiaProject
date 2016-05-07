\version "2.18.2"

largoViolineII = {
  \transpose g g' {
	\key g \minor
	\time 4/4
	% 1
	\set Staff.midiInstrument = #"pizzicato strings"
	r8 bes\p^\markup{\italic pizz.} d' r r a c' r |
	r g bes r r c' a' r |
	r d' f' r r g' bes' r |
	r e' g' r r f' a' r |
	% 2
	r d' f' r r e' g' r |
	r g' c' r r d' c' r |
	r c' f' r r aes' d' r |
	r b d' r r d' g r |
	% 3
	r g c' r r c' ees' r |
	r f' d' r r a' g' r |
	\mark "H" r ees' g' r r f' a' r |
	r d' f' r r ees' f' r |
	% 4
	r g' bes' r r c'' ees' r |
	r ees' c' r r d' d' r |
	r bes a r r bes d' r |
	r a c' r r g d' r |
	r c' a' r r d' bes' r |
	r c' des' r r c' a r |
	r bes f r r bes ees r |
	r a f r r 
	\set Staff.midiInstrument = #"violin"
	\once \omit DynamicText
	g\p^\markup{\italic{coll’ arco}} g' c' |
	bes\dim c'16( bes) bes( a) a( g) a2\fermata\pp |
	\bar "||"
  }
}
