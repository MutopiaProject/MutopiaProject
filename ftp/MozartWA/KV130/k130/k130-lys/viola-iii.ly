\version "2.18.2"
\include "defs.ly"

violaThirdMov =  \relative c' {
    \key f \major
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	c8(\p b)
	| \repeat unfold 4 { c( b c b c b) }
	| c(\f b c b c b) 
	| c( b c b c b) 
	| c( a') g4 g
	| g2
    }

    \repeat volta 2 {
	c,4 
	| bes'!-. bes( a)
	| g r c,
	| e2 f4
	| f8 g f e f e
	| f( e f d e f)
	| d4 g( c,)
	| d8 bes c( b c b)
	| << {\voiceOne c( b c b } \new Voice { \voiceTwo c2 }>>
    }

    \key c \major

    \repeat volta 2 {
	c8\p b)
	| c4 c c
	| r c c
	| r c g'

% 20
	| g fis g
	| f! g2
	| r4 g g
	| r e\f e
	| r f f
	| r f f
	| r g g
	| e d d
	| <b d>2
    }

    \repeat volta 2 {
	<< { g'4    g4. g8 g4 g g g g4. g8 g4 g } \\
	  { g,4\f g4. g8 g4 g g g g4. g8 g4 g } >> \oneVoice r4 r
	| r b\p b
	| r a' a
	| r as as
	| a! a\crescTextCresc a
	| g\f g f
	| <c, g' e'>2
    }

	
}
