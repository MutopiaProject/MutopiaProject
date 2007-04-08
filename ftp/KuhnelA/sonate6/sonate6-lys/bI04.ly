\version "2.6.0"
tr = \markup {\musicglyph #"scripts.rcomma"}
po = \markup {\teeny \musicglyph #"scripts.ufermata"}
forte = \markup {\italic {f.}}
piano = \markup {\italic {p.}}

basseI =	
        	\context Staff << 
		\new Voice {\voiceOne 
		\time 3/4
		\key c \major
                \clef alto
		\relative c' {
\slurNeutral
\stemNeutral
c2 g'4
d4. e8 f4
\once \override TextScript #'extra-offset = #'(2.5 . -2) e4.^\tr (d8) c4
b4. a8 g4
\once \override TextScript #'extra-offset = #'(2.5 . -2.5) d'4.^\tr e8 [d c]
b2 e4
\once \override TextScript #'extra-offset = #'(2.5 . -2) e4.^\tr d8 e4
cis2 fis4
\once \override TextScript #'extra-offset = #'(2.5 . -2) fis4.^\tr g8 [fis! e]
\once \override TextScript #'extra-offset = #'(2.5 . -2.5) dis2^\tr e4
\once \override TextScript #'extra-offset = #'(2.5 . -2) e4.^\tr e8 dis?4
e2 e4
\once \override TextScript #'extra-offset = #'(2.5 . -2) e4.^\tr \once \override TextScript #'extra-offset = #'(-4.5 . 0) e8_\piano dis4
e2 e4
a4._\forte g8 a4
\once \override TextScript #'extra-offset = #'(2.5 . -2) fis2.^\tr
g2 g4
\once \override TextScript #'extra-offset = #'(2.5 . -1.5) g4.^\tr g8 fis4
g2 g4
\once \override TextScript #'extra-offset = #'(2.5 . -1.5) g4.^\tr \once \override TextScript #'extra-offset = #'(-4.5 . 0) g8_\piano fis4
g2.~
g
\bar ":|:"
g4._\forte f8 g4
\once \override TextScript #'extra-offset = #'(2.5 . -2) e2.^\tr
a4. g8 a4
fis2.
\once \override TextScript #'extra-offset = #'(2.5 . -1.5) gis4.^\tr a8 b4
\once \override TextScript #'extra-offset = #'(2.5 . -2) e,4.^\tr d8 c4
\once \override TextScript #'extra-offset = #'(2.5 . -4.5) b4.^\tr a8 gis4
\stemUp a2. \stemNeutral
\once \override TextScript #'extra-offset = #'(2.5 . -2) e'4.^\tr \once \override TextScript #'extra-offset = #'(-4.5 . 0) d8_\piano c4
\once \override TextScript #'extra-offset = #'(2.5 . -4.5) b4.^\tr a8 gis4
\stemUp a2. \stemNeutral
\once \override TextScript #'extra-offset = #'(2.5 . -2) d4.^\tr \once \override TextScript #'extra-offset = #'(-4.5 . 0) c8_\forte d4
\once \override TextScript #'extra-offset = #'(2.5 . -4.5) b2.^\tr
g'4. f8 g4
e2 g4
\once \override TextScript #'extra-offset = #'(2.5 . -2) e4.^\tr d8 c4
\once \override TextScript #'extra-offset = #'(2.5 . -2.8) c4.^\tr c8 b4
c2 g'4_\piano
\once \override TextScript #'extra-offset = #'(2.5 . -2) e4.^\tr d8 c4
\once \override TextScript #'extra-offset = #'(2.5 . -2.8) c4.^\tr c8 b4
c2.~
c
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

		

		
