\version "2.6.0"
tr = \markup {\musicglyph #"scripts.rcomma"}
po = \markup {\teeny \musicglyph #"scripts.ufermata"}
forte = \markup {\italic {f.}}
piano = \markup {\italic {p.}}

basseII =	
        	\context Staff << 
		\new Voice {\voiceOne 
		\time 2/2
		\key c \major
                \clef alto
		\relative c' {
\slurNeutral
\stemNeutral
e4. c8 b4. g8
\once \override TextScript #'extra-offset = #'(2.5 . -5.5) e8.^\tr [d16] c8 \stemDown c' \stemNeutral \once \override TextScript #'extra-offset = #'(2.5 . -4) c8.^\tr [b16] c8 g
\once \override TextScript #'extra-offset = #'(2.5 . -5.5) e8.^\tr [d16] c8 \stemDown c' \stemNeutral \once \override TextScript #'extra-offset = #'(2.5 . -4) c8.^\tr [b16] c4
e2 \once \override TextScript #'extra-offset = #'(2.5 . -1.5) fis4.^\tr g8
a8. [fis16] d8 g \once \override TextScript #'extra-offset = #'(2.5 . -1.5) g8.^\tr fis16 g4
a8. [(fis16)] d8 g \once \override TextScript #'extra-offset = #'(2.5 . -1.5) g8.^\tr fis16 g4  
e4 f b,4. e8
c8. [c16] d8. a16 \once \override TextScript #'extra-offset = #'(2.5 . -3.5) a8.^\tr gis16 a4
c8. [(c16)] d8. a16 \once \override TextScript #'extra-offset = #'(2.5 . -3.5) a8.^\tr gis16 a4
e'4 \once \override TextScript #'extra-offset = #'(2.3 . -2.5) d^\tr c4. (e,8)
a8. [b16 a8. c16] \once \override TextScript #'extra-offset = #'(2.5 . -4) c8.^\tr b16 c4
a8. [b16 a8. c16] \once \override TextScript #'extra-offset = #'(2.5 . -4) c8.^\tr b16 c4
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

		

		