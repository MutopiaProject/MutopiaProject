\version "2.18.2"

\include "violin_common.ily"

violintwo =   \relative c'' {
	\time 4/4
	\key d \major

	R1*4
	\barNumberCheck #5
	\violinCommon
	d8 d,  cis cis'   b b, a a' |
	g g'   fis fis, e b' e, e' |
	fis4 r r2 \bar "|."
      }
