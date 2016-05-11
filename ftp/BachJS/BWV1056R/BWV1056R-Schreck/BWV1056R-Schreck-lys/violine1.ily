\version "2.18.2"

largoViolineI = {
  \transpose g g' {
	\key g \minor
	\time 4/4
	% 1
	\set Staff.midiInstrument = #"pizzicato strings"
	r8 d'\p^\markup{\italic pizz.} f' r r c' f' r |
	r bes ees' r r ees' c'' r |
	r f' bes' r r bes' d'' r |
	r g' c'' r r a' c'' r |
	% 2
	r f' bes' r r g' bes' r |
	r bes' a' r r g' bes' r |
	r a' c'' r r f' b r |
	r d' g r r f b r |
	% 3
	r c' ees' r r ees' g' r |
	r f b' r r c'' b' r |
	\mark "H" r g' c'' r r c' f' r |
	r f' bes' r r bes' d'' r |
	% 4
	r bes ees' r r ees'' a' r |
	r c'' ees' r r f' bes' r |
	r e' f' r r d' f' r |
	r c' f' r r bes ees' r |
	r ees' c'' r r f' d'' r |
	r c'' g' r r g' c' r |
	r des' c' r r d' bes' r |
	r a' d' r r
	\set Staff.midiInstrument = #"violin"
	\once \omit DynamicText
	bes\p^\markup{\italic{coll’ arco}} g g'~ |
	g'\dim a'16( g') g'( fis') fis'( e') fis'2\fermata\pp |
	\bar "||"
  }
}
