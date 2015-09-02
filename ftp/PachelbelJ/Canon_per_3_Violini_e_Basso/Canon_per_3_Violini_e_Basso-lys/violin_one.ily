\version "2.18.2"

\include "violin_common.ily"

violinone =  \relative c'' {
	\time 4/4
	\key d \major
	R1*2
	\violinCommon
	d8 d,  cis cis'   b b, a a' |
	g g'   fis fis, e b' e, e' |
	fis fis,   e e'   d d,   cis cis' |
	b b'  a a,  g8. e'16   a,8 a |
	a4 r r2 \bar "|."
      }
