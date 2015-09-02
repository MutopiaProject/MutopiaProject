\version "2.18.2"

violoncello = \relative c {
	\time 4/4
	\key d \major
	\repeat unfold 28 {
	  d4 a b fis |
	  g d g a | 
	}
	d r 4 r 2 \bar "|."
}
