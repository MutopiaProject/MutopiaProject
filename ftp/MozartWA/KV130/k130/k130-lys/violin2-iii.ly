\version "2.18.2"
violinIIThirdMov =  \relative c' {
    \key f \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	c4\p
	| f4. g8 a4
	| f( e) c-.
	| f8( e f g) a4-.
	| f( e) c-.
	| c'-.\f c( b)
	| a-. a( g)
	| a8( d) c4 b
	| c2
    }

    \repeat volta 2 {
	r4
	| c,8( b) c( b) c( b)
	| c( b) c( b) c( b)
	| c( b c b) c( f)
	| f( g f e f e)
	| f( e f d e f)
	| d4 d'( c)
	| bes a g
	| f2
    }

    % Trio

    \key c \major

    \repeat volta 2 {
	r4
	| r g\p g
	| r a a
	| r g c
	| b a b
	| c c( b)
	| r c c
	| g2.\f
	| bes
	| a
	| c2( b!4)
	| a g( fis)
	| g2
    }

    \repeat volta 2 {
	b,4\f
	| c4. d8 e4
	| b b b
	| c4. d8 e4
	| b r r
	| r d'\p d
	| r c c
	| r d d
	| es8( d) es(\deprecatedcresc d) es( d)
	| e!4\f c b\trill
	| c2
    }

    \bar "|."
}
