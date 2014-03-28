\version "2.18.2"
fluteIIThirdMov =  \relative f''' {
    \key f \major
    \clef violin

    \override Staff.TupletBracket.bracket-visibility = ##f

    \repeat volta 2 {
	r4
	| R2.*4
	| c4-. c( b)
	| a-. a( g)
	| a e4 d e2 
    }

    \repeat volta 2 {
	c4 
	| bes'-. bes( a)

% 10
	| g r c,
	| bes'!2 a4 d2 c4
	| f,2 e8( f)
	| d4 bes' a g f e 
	| f2 
    }

    % Trio

    \key c \major

    \repeat volta 2 {
	r4
	| R2.*6
	| c'2.\f f,4 bes2 
	| a2. 
	| c2( b4) 
	| a g( fis) 
	| g2 
    }

    \repeat volta 2 {
	b,4\f 
	| c4. d8 e4 
	| b b' b, 
	| c4. d8 e4 
	| b r r
	| R2.*4
	| e2\f f8( d) 
	| e2 
    }
}
