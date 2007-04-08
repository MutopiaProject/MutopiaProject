\version "2.6.0"
tr = \markup {\musicglyph #"scripts.rcomma"}
po = \markup {\teeny \musicglyph #"scripts.ufermata"}
forte = \markup {\italic {f.}}
piano = \markup {\italic {p.}}

basseII =	
        	\context Staff << 
		\new Voice {\voiceOne 
		\time 3/2
		\key c \major
                \clef alto
		\relative c' {
\slurNeutral
\stemNeutral
e2 \once \override TextScript #'extra-offset = #'(2.7 . -2.5) d2.^\tr (d4)
\once \override TextScript #'extra-offset = #'(2.5 . -3) c2^\tr c1
c2 \once \override TextScript #'extra-offset = #'(2.7 . -2.5) d2.^\tr (c4)
\once \override TextScript #'extra-offset = #'(2.7 . -4) b2^\tr b1
c2 \once \override TextScript #'extra-offset = #'(2.7 . -2.5) d2.^\tr (c4)
\once \override TextScript #'extra-offset = #'(2.7 . -4) b2^\tr b1
e2 \once \override TextScript #'extra-offset = #'(2.7 . -2) e2.^\tr (e4)
a,2 a1
d4 (e) \once \override TextScript #'extra-offset = #'(2.7 . -4) a,2.^\tr (a4)
b2 b1
d4 (e) \once \override TextScript #'extra-offset = #'(2.7 . -4) a,2.^\tr (a4)
b2 b1
\bar ":|:"
b2 \once \override TextScript #'extra-offset = #'(2.7 . -4) b2.^\tr (b4)
c2 c1
a2 \once \override TextScript #'extra-offset = #'(2.7 . -2.5) d2.^\tr (d4)
d2 d1
a2 \once \override TextScript #'extra-offset = #'(2.7 . -2.5) d2.^\tr (d4)
d2 d1
e2 \once \override TextScript #'extra-offset = #'(2.7 . -4) b2.^\tr (b4)
e,2 e1
a4 (c) \once \override TextScript #'extra-offset = #'(2.7 . -2.5) c2.^\tr (b4)
c2 c1
a4 (c) \once \override TextScript #'extra-offset = #'(2.7 . -2.5) c2.^\tr (b4)
c2 c1
\bar ":|"

}
}	

		\new Voice  {\voiceTwo 
		\relative c' {
\stemDown


	}
	}
		

		\new Voice  {\voiceOne
		\relative c {
\override Stem #'transparent = ##t


		}
		}
>>

		

		