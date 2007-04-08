flutesThirdMov = \notes \relative f''' {
    \key f \major
    \clef violin

    \property Staff.TupletBracket \set #'bracket-visibility = ##f

    \repeat volta 2 {
	r4
	| R2.*4
	| c4-.^\aDue c-( b-)
	| a-. a-( g-)
	| a < { c b c2 } { e,4 d e2 } >
    }

    \repeat volta 2 {
	c,4^\aDue bes'-. bes-( a-)

% 10
	| g r c,
	| bes'!2 a4 d2 c4
	| f,2 e8-( f-)
	| d4 < { d'-( c-) bes a g } { bes a g f e } >
	| < { f2 } \\ { f2 } >
    }

    % Trio

    \key c \major

    \repeat volta 2 {
	r4
	| R2.*6
	| < { c'2. d } \\ { c2.-\f f,4 bes2 } >
	| < { c2. e2-( d4-) c b-( a-) } { a2. c2-( b4-) a g-( fis-) } >
	| < { g2 } \\ { g2 } >
    }

    \repeat volta 2 {
	< { d4-\f e4. f8 g4 d d' d, e4. f8 g4 d }
	  { b4-\f c4. d8 e4 b b' b, c4. d8 e4 b } > r r
	| R2.*4
	| < { c'2 d8-( b-) c2 } { e,2-\f f8-( d-) e2 } >
    }
}