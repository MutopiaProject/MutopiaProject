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
e4 \once \override TextScript #'extra-offset = #'(2.5 . -2.5) d8.^\tr (c16) b4 b
b8. [(c16) d8. (e16)] \once \override TextScript #'extra-offset = #'(2.5 . -3) c2^\tr
b8. [(c16) d8. (e16)] \once \override TextScript #'extra-offset = #'(2.5 . -3) c2^\tr
\once \override TextScript #'extra-offset = #'(2.5 . -2) e8.^\tr d16 e4 fis8. e16 fis4
g g \once \override TextScript #'extra-offset = #'(2.7 . -1) g4.^\tr fis8
g2 g4 g
\once \override TextScript #'extra-offset = #'(2.7 . -1) g4.^\tr (fis8) g2
f8. (g16) f4 e8. (f16) e4
f8. (g16) f4 e8. (f16) e4
f8. (g16) f4 e8. (f16) e4
d8. (e16) d4 \once \override TextScript #'extra-offset = #'(2.5 . -2.5) cis2^\tr
d8. e16 d4 \once \override TextScript #'extra-offset = #'(2.5 . -2.5) cis2^\tr
d8. e16 d4 e8. (f16) e4
f2 e8. (f16) e4 
f2 e4 \once \override TextScript #'extra-offset = #'(2.5 . -2.5) d8 (c) 
c4 d8 (c) \once \override TextScript #'extra-offset = #'(2.5 . -2.5) c4.^\tr b8
c2 c4 d8 (c) 
\once \override TextScript #'extra-offset = #'(2.5 . -2.5) c4.^\tr b8 c2
e4 fis8 (g) \once \override TextScript #'extra-offset = #'(2.5 . -1.8) fis4.^\tr (g8)
g2 e4 fis8 (g) 
\once \override TextScript #'extra-offset = #'(2.5 . -1.8) fis4.^\tr (g8) g [b, a g]
\once \override TextScript #'extra-offset = #'(2.5 . -4.5) g4.^\tr (fis8) g2
\bar ":|:"
g8 [b b b] fis [a a a]
\once \override TextScript #'extra-offset = #'(2.5 . -4.5) g2^\tr g8 [b b b] 
fis [a a a] \once \override TextScript #'extra-offset = #'(2.5 . -4.5) g2^\tr
e'4 \once \override TextScript #'extra-offset = #'(2.5 . -2) e8.^\tr d16 cis4 e
\once \override TextScript #'extra-offset = #'(2.5 . -2.5) d2^\tr e4 \once \override TextScript #'extra-offset = #'(2.5 . -2) e8.^\tr d16
cis4 e \once \override TextScript #'extra-offset = #'(2.5 . -2.5) d2^\tr
e8 [b b b] gis [b b b]
\once \override TextScript #'extra-offset = #'(2.5 . -4) a2^\tr e'8 [b b b] 
gis [b b b] \once \override TextScript #'extra-offset = #'(2.5 . -4) a2^\tr 
fis4 \once \override TextScript #'extra-offset = #'(2.5 . -5) fis8.^\tr e16 dis4 fis!
\once \override TextScript #'extra-offset = #'(2.5 . -5.5) e2^\tr fis4 \once \override TextScript #'extra-offset = #'(2.5 . -5) fis8.^\tr e16
dis4 fis \once \override TextScript #'extra-offset = #'(2.5 . -5.5) e2^\tr 
e8 [a a a] fis [a a a]
\once \override TextScript #'extra-offset = #'(2.5 . -4) a4.^\tr (gis8) a2
fis8 [a a a] \once \override TextScript #'extra-offset = #'(2.5 . -4) a4.^\tr (gis8)
a2 a4 fis'8 (e)
d4 e8 (d) \once \override TextScript #'extra-offset = #'(2.5 . -2.5) d4.^\tr (cis8)
d2 d4 e8 (d)
\once \override TextScript #'extra-offset = #'(2.5 . -2.5) d4.^\tr (cis8) d2
b8 [a b g] c [b a g]
fis [fis e fis] g2
fis8 [fis e fis] g2
g4 e'8 (d) c4 d8 (c)
\once \override TextScript #'extra-offset = #'(2.5 . -2.5) c4.^\tr (b8) c2
c4 d8 (c) \once \override TextScript #'extra-offset = #'(2.5 . -2.5) c4.^\tr (b8)
c2 c8 [e e e]
g, [b b b] a [c c c]
e, [g g g] f [a a a]
\once \override TextScript #'extra-offset = #'(2.5 . -4) b4.^\tr (b8) c2
f,8 [a a a] \once \override TextScript #'extra-offset = #'(2.5 . -4) b4.^\tr (b8)
c8 [g g g] a [a c c]
\once \override TextScript #'extra-offset = #'(2.5 . -2.5) c4.^\tr (b8) c2
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

		

		