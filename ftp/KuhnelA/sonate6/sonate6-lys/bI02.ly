\version "2.6.0"
tr = \markup {\musicglyph #"scripts.rcomma"}
po = \markup {\teeny \musicglyph #"scripts.ufermata"}
forte = \markup {\italic {f.}}
piano = \markup {\italic {p.}}

basseI =	
        	\context Staff << 
		\new Voice {\voiceOne 
		\time 2/2
		\key c \major
                \clef alto
		\relative c' {


\slurNeutral
\stemNeutral
g'4_\forte c,8. (e16) \once \override TextScript #'extra-offset = #'(2.5 . -2.5) d4^\tr g,8. (b16)
c8. [d16 e8. f16] \once \override TextScript #'extra-offset = #'(2.5 . -2.5) d4^\tr c8. (b16)
c8._\piano [d16 e8. f16] \once \override TextScript #'extra-offset = #'(2.5 . -2.5) d4^\tr c
g'4_\forte c8. (b16) \once \override TextScript #'extra-offset = #'(2.5 . -2) a4.^\tr g8
\once \override TextScript #'extra-offset = #'(2.5 . -2) fis8.^\tr d16 g8. a16 \once \override TextScript #'extra-offset = #'(2.3 . -2) a4^\tr g
\once \override TextScript #'extra-offset = #'(2.4 . -2) fis8.^\tr  \once \override TextScript #'extra-offset = #'(-4 . -0.5) d16_\piano g8. a16 \once \override TextScript #'extra-offset = #'(2.5 . -2) a4^\tr g
\bar ":|:"
c_\forte \once \override TextScript #'extra-offset = #'(2.4 . -2) b8.^\tr (a16) \once \override TextScript #'extra-offset = #'(2.5 . -1) gis4.^\tr e8
a8. a16 b8. c16 \once \override TextScript #'extra-offset = #'(2.5 . -2) b4^\tr a
a8._\piano a16 b8. c16 \once \override TextScript #'extra-offset = #'(2.5 . -2) b4^\tr a
c \once \override TextScript #'extra-offset = #'(2.5 . -1.5) g8.^\tr (f16) \once \override TextScript #'extra-offset = #'(2.5 . -2) e4.^\tr c8
f8. [g16 f8. e16] \once \override TextScript #'extra-offset = #'(2.5 . -2.5) d4^\tr c
f8. [g16 \once \override TextScript #'extra-offset = #'(2.5 . -2) f8. e16] \once \override TextScript #'extra-offset = #'(2.5 . -2.5) d4^\tr c
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

		

		