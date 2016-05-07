\version "2.18.2"

largoViola = {
  \transpose g g' {
	\key g \minor
	\time 4/4
	\clef alto
	% 1
	\set Staff.midiInstrument = #"pizzicato strings"
	r8 f\p^\markup{\italic pizz.} bes r r f a r |
	r d g r r a ees' r |
	r bes d' r r d g r |
	r c' e' r r c f r |
	% 2
	r bes d' r r c' c r |
	r c' f' r r f' e' r |
	r f a r r d f r |
	r f b, r r d f r |
	% 3
	r ees g r r g c' r |
	r c f r r ees d r |
	\mark "H"
	r c ees r r a c' r |
	r bes d' r r bes aes r |
	% 4
	r ees g r r g c' r |
	r f a r r bes g r |
	r g c r r f bes r |
	r f a r r d g r |
	% 5
	r f ees r r bes f r |
	r f bes r r g f r |
	r g a r r d g r |
	r c a, r r
	\set Staff.midiInstrument = #"viola"
	ees^\markup{\italic{coll’ arco}} bes, g, |
	d1\fermata
  }
}
