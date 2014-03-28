\version "2.18.2"
fluteIThirdMov =  \relative f''' {
    \key f \major
    \clef violin

    \override Staff.TupletBracket.bracket-visibility = ##f

    \repeat volta 2 {
	r4
	| R2.*4
	| c4-. c( b)
	| a-. a( g)
	| a c b c2
    }

    \repeat volta 2 {
	c,4 bes'-. bes( a)

% 10
	| g r c,
	| bes'!2 a4 d2 c4
	| f,2 e8( f)
	| d4 d'( c) bes a g
	| f2
    }

    % Trio

    \key c \major

    \repeat volta 2 {
	r4
	| R2.*6
	| c'2.\f d
	| c2. e2( d4) c b( a)
	| g2
    }

    \repeat volta 2 {
	d4\f e4. f8 g4 d d' d, e4. f8 g4 d r r
	| R2.*4
	| c'2\f d8( b) c2
    }
}
