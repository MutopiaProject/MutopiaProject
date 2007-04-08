\version "2.6.2"

mIIspacing =  {
	s4.	s2.*7	\break	% START @ 1
	s2.*7		\break	% 8
	s2.*7		\break	% 15
	s2.*8		\break	% 22
	s2.*8		\break	% 30
	s2.*8		\break	% 38
	s2.*8		\break	% 46
	s2.*8		\break	% 54
	s2.*8		\break	% 62
	s2.*8		\break	% 70
	s2.*8		\break	% 78
	s2.*7		\break	% 86
	s2.*8		\break	% 93
	s2.*7		\break	% 101
	s2.*10		\break	% 108
	s2.*9		\break	% 118
	s2.*9		\break	% 127
	s2.*8		\break	% 136
	s2.*8		\break	% 144
	s2.*8		\break	% 152
	s2.*7		\break	% 160
	s2.*8		\break	% 167
	s2.*8		\break	% 175
	s2.*7		\break	% 183
	s2.*9		\break	% 191
}

mIIbarlines =  {
	\mark \markup { \bigger\bigger \column {
		\line { \bold {No. 2}}
		\line {Allegro molto vivace.}
	}}
	
	s4.
	s2.*6
	
	\mark \markup { \bigger {un poco rit.}}
	\tempo 4 = 130
	s2.
	\mark \markup { \bigger {in tempo}}
	\tempo 4 = 180
	
	s2.*47
	
	\mark \markup { \bigger {un poco rit.}}
	\tempo 4 = 130
	s2.
	\mark \markup { \bigger {in tempo}}
	\tempo 4 = 180
	
	s2.*27
	
	\mark \markup { \bigger {un poco rit.}}
	\tempo 4 = 130
	s2.
	\mark \markup { \bigger {in tempo}}
	\tempo 4 = 180
	
	s2.*11
	
	\mark \markup { \bigger {un poco rit.}}
	\tempo 4 = 130
	s2.
	\mark \markup { \bigger {in tempo}}
	\tempo 4 = 180
	
	s2.*60
	
	\mark \markup { \bigger {un poco rit.}}
	\tempo 4 = 130
	s2.
	\mark \markup { \bigger {in tempo}}
	\tempo 4 = 180
	
	s2.*42
	
	\bar "||"
	\key a \major
	\time 4/4
}