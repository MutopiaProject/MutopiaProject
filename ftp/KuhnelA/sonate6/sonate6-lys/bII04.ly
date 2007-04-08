\version "2.6.0"
tr = \markup {\musicglyph #"scripts.rcomma"}
po = \markup {\teeny \musicglyph #"scripts.ufermata"}
forte = \markup {\italic {f.}}
piano = \markup {\italic {p.}}

basseII =	
        	\context Staff << 
		\new Voice {\voiceOne 
		\time 3/4
		\key c \major
                \clef alto
		\relative c' {
\slurNeutral
\stemNeutral
e,2 e4
g2 d4
e2 fis4 
g4. a8 b4
\once \override TextScript #'extra-offset = #'(2.7 . -4.5) a2^\tr a4
g2 b4
\once \override TextScript #'extra-offset = #'(2.7 . -4.5) b2^\tr b4
a2 cis4
\once \override TextScript #'extra-offset = #'(2.7 . -2.8) cis2^\tr cis4
b2 b4
\once \override TextScript #'extra-offset = #'(2.7 . -4.5) a2^\tr a4
g2 b4
\once \override TextScript #'extra-offset = #'(2.7 . -4.5) a2^\tr a4
\once \override TextScript #'extra-offset = #'(2.7 . -4.8) g4.^\tr fis8 g4
\once \override TextScript #'extra-offset = #'(2.7 . -5.5) e2.^\tr
a2 a4
d2 d4
\once \override TextScript #'extra-offset = #'(2.7 . -2.8) c2^\tr c4
b2 d4
\once \override TextScript #'extra-offset = #'(2.7 . -2.8) c2^\tr c4
\slurDown b2.~
b \slurNeutral
\bar ":|:"
b4. a8 b4
c2.
\once \override TextScript #'extra-offset = #'(2.7 . -2.8) cis4.^\tr b8 cis!4
d2.
\once \override TextScript #'extra-offset = #'(2.7 . -2.5) d4.^\tr c8 b4
\once \override TextScript #'extra-offset = #'(2.7 . -2.8) c4.^\tr b8 a4
\once \override TextScript #'extra-offset = #'(2.7 . -4.5) gis4.^\tr a8 b4
cis2.
\once \override TextScript #'extra-offset = #'(2.7 . -2.5) c4.^\tr b8 a4
\once \override TextScript #'extra-offset = #'(2.7 . -4.5) gis4.^\tr a8 b4
cis2.
a2 (a4)
g2.
d'2 (d4)
c2 d4
\once \override TextScript #'extra-offset = #'(2.7 . -2.5) c4.^\tr d8 e4
\once \override TextScript #'extra-offset = #'(2.7 . -2.5) d4.^\tr e8 f4
\once \override TextScript #'extra-offset = #'(2.7 . -2) e2^\tr d4
\once \override TextScript #'extra-offset = #'(2.7 . -2.5) c4.^\tr d8 e4
\once \override TextScript #'extra-offset = #'(2.7 . -2.5) d4.^\tr e8 f4
\once \override TextScript #'extra-offset = #'(2.7 . -2) e2.^\tr~
e
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

		

		
