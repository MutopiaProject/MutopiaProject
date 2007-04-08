\version "2.6.0"
tr = \markup {\musicglyph #"scripts.rcomma"}
po = \markup {\teeny \musicglyph #"scripts.ufermata"}
forte = \markup {\italic {f.}}
piano = \markup {\italic {p.}}

basseI =	
        	\context Staff << 
		\new Voice {\voiceOne 
		\time 3/2
		\key c \major
                \clef alto
		\relative c' {
\slurNeutral
\stemNeutral
g'2 \once \override TextScript #'extra-offset = #'(2.5 . -1.5) g2.^\tr (f4)
\once \override TextScript #'extra-offset = #'(2.5 . -2) e2^\tr e1
a2 \once \override TextScript #'extra-offset = #'(2.5 . -1.5) b2.^\tr (a4)
\once \override TextScript #'extra-offset = #'(2.5 . -2) gis2^\tr gis1
a2_\piano \once \override TextScript #'extra-offset = #'(2.5 . -1.5) b2.^\tr (a4)
\once \override TextScript #'extra-offset = #'(2.5 . -2) gis2^\tr gis1
a2_\forte \once \override TextScript #'extra-offset = #'(2.5 . -2) a2.^\tr (g4)
\once \override TextScript #'extra-offset = #'(2.5 . -2) fis2^\tr fis1
g2 \once \override TextScript #'extra-offset = #'(2.5 . -1.5) g2.^\tr (fis4)
g2 g1
g2_\piano \once \override TextScript #'extra-offset = #'(2.5 . -1.5) g2.^\tr (fis4)
g2 g1
\bar ":|:"
g2_\forte \once \override TextScript #'extra-offset = #'(2.5 . -1.5) g2.^\tr g4
a2 a1
c2 \once \override TextScript #'extra-offset = #'(2.5 . -2) a2.^\tr (a4)
b2 b1
c2_\piano \once \override TextScript #'extra-offset = #'(2.5 . -2) a2.^\tr (a4)
b2 b1
b2_\forte \once \override TextScript #'extra-offset = #'(2.5 . -2) e,2.^\tr (d4)
c2 c1
f4 (e) \once \override TextScript #'extra-offset = #'(2.5 . -2.5) d2.^\tr (g4)
\once \override TextScript #'extra-offset = #'(2.5 . -2) e2^\tr e1
f4_\piano (e) \once \override TextScript #'extra-offset = #'(2.5 . -2.5) d2.^\tr (g4)
\once \override TextScript #'extra-offset = #'(2.5 . -2) e2^\tr e1
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

		

		