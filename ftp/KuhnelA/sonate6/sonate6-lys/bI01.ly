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
g'4 \once \override TextScript #'extra-offset = #'(2.5 . -2) f8.^\tr (e16) d4 g
d8. [(e16) f8. (g16)] \once \override TextScript #'extra-offset = #'(2.5 . -2) e2^\tr
\once \override TextScript #'extra-offset = #'(-1 . 0) d8._\markup {\italic {piano}} [(e16) f8. (g16)] \once \override TextScript #'extra-offset = #'(2.5 . -2) e2^\tr
\once \override TextScript #'extra-offset = #'(-1 . 0) g8._\markup {\italic {forte}} (fis16 ) g4 \once \override TextScript #'extra-offset = #'(2.5 . -2) a8.^\tr (g16) a4
b4 b8 (a) \once \override TextScript #'extra-offset = #'(2.5 . -2) a4.^\tr (g8)
g2 b4_\piano b8 (a)
\once \override TextScript #'extra-offset = #'(2.5 . -2) a4.^\tr (g8) g2
a8._\forte (b16) a4 g8. (a16) g4
a8._\piano (b16) a4 g8. (a16) g4
a8._\forte (b16) a4 g8. (a16) g4
f8. (g16) f4 \once \override TextScript #'extra-offset = #'(2.5 . -2) e2^\tr
f8._\piano (g16) f4 \once \override TextScript #'extra-offset = #'(2.5 . -2) e2^\tr
f8._\forte (g16) f4 g8. (a16) g4
a2 g8._\piano (a16) g4
a2 g4_\forte f8 (e)
a4_\piano f8 (e) \once \override TextScript #'extra-offset = #'(2.7 . -2.8) d4.^\tr c8
c2 a'4 f8 (e)
\once \override TextScript #'extra-offset = #'(2.7 . -2.8) d4.^\tr c8 c2
g'4_\forte a8 (b) \once \override TextScript #'extra-offset = #'(2.5 . -2) a4.^\tr (g8)
g2 g4_\piano a8 (b) 
\override TextScript #'extra-offset = #'(2.5 . -2) a4.^\tr g8_\forte g [d c b] 
\once \override TextScript #'extra-offset = #'(2.7 . -4.5) a4.^\tr a8 b2
\bar ":|:"
\once \override TextScript #'extra-offset = #'(-0.8 . 0) b8_\forte [d d d] a [d d d]
\once \override TextScript #'extra-offset = #'(2.5 . -4.5) b2^\tr \once \override TextScript #'extra-offset = #'(-0.8 . 0) b8_\piano [d d d] 
a [d d d] \once \override TextScript #'extra-offset = #'(2.5 . -4.5) b2^\tr
\once \override TextScript #'extra-offset = #'(-0.8 . 0) a'4_\forte g8. fis16 e4 g
\once \override TextScript #'extra-offset = #'(2.5 . -2) fis2^\tr \once \override TextScript #'extra-offset = #'(-0.8 . 0) a4_\piano g8. fis16
e4 g \once \override TextScript #'extra-offset = #'(2.5 . -2) fis2^\tr 
\once \override TextScript #'extra-offset = #'(-0.8 . 0) b,8_\forte [e e e] b [d d d]
\once \override TextScript #'extra-offset = #'(2.5 . -3.5) cis2^\tr \once \override TextScript #'extra-offset = #'(-0.8 . 0) b8_\piano [e e e] 
b [d d d] \once \override TextScript #'extra-offset = #'(2.5 . -3.5) cis2^\tr 
\once \override TextScript #'extra-offset = #'(-0.8 . 0) b4_\forte \once \override TextScript #'extra-offset = #'(2.5 . -3.5) a8.^\tr g16 fis4 a
\once \override TextScript #'extra-offset = #'(2.5 . -4.5) gis2^\tr \once \override TextScript #'extra-offset = #'(-0.8 . 0) b4_\piano \once \override TextScript #'extra-offset = #'(2.5 . -3.5) a8.^\tr g16 
fis4 a \once \override TextScript #'extra-offset = #'(2.5 . -4.5) gis2^\tr
\once \override TextScript #'extra-offset = #'(-0.8 . 0) a8_\forte [e' e e] a, [fis' fis fis]
\once \override TextScript #'extra-offset = #'(2.5 . -4) b,4.^\tr a8 \stemUp a2 \stemNeutral
\once \override TextScript #'extra-offset = #'(-0.8 . 0) a8_\piano [fis' fis fis] \once \override TextScript #'extra-offset = #'(2.5 . -4) b,4.^\tr a8 
\stemUp a2 \stemNeutral \once \override TextScript #'extra-offset = #'(-0.8 . 0) d4_\forte a'
b g8 (fis) \once \override TextScript #'extra-offset = #'(2.5 . -2) e4.^\tr d8
\stemUp d2 \stemNeutral \once \override TextScript #'extra-offset = #'(-0.8 . 0) b'4_\piano g8 (fis)
\once \override TextScript #'extra-offset = #'(2.5 . -2) e4.^\tr d8 \stemUp d2 \stemNeutral
\once \override TextScript #'extra-offset = #'(-0.8 . 0) g8_\forte [fis g d] e [d c b]
a [d c d] \once \override TextScript #'extra-offset = #'(2.5 . -4) b2^\tr
\once \override TextScript #'extra-offset = #'(-0.8 . 0) a8_\piano [d c d] \once \override TextScript #'extra-offset = #'(2.5 . -4) b2^\tr
\once \override TextScript #'extra-offset = #'(-0.8 . 0) c4_\forte g' a f8 (e)
\once \override TextScript #'extra-offset = #'(2.5 . -2) d4.^\tr d8 e2
\once \override TextScript #'extra-offset = #'(-0.8 . 0) a4_\piano f8 (e)\once \override TextScript #'extra-offset = #'(2.5 . -2) d4.^\tr d8 
e2 \once \override TextScript #'extra-offset = #'(-0.8 . 0) e8_\forte [g g g]
b, [d d d] c [e e e] 
g, [b b b] a [c f e]
\once \override TextScript #'extra-offset = #'(2.5 . -2) d4.^\tr c8 c2
\once \override TextScript #'extra-offset = #'(-0.8 . 0) a8_\piano [c f e] \once \override TextScript #'extra-offset = #'(2.5 . -2) d4.^\tr c8
\once \override TextScript #'extra-offset = #'(-0.8 . 0) c8_\forte [e e e] f [f a a]
\once \override TextScript #'extra-offset = #'(2.5 . -2) d,4.^\tr d8 \once \override TextScript #'extra-offset = #'(5.6 . 1) e2^\po
\bar ":|"
\pageBreak
\pageBreak
\pageBreak
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

		

		