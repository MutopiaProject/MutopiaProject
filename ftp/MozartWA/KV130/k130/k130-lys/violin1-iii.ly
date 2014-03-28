\version "2.18.2"
violinIThirdMov =  \relative c'' {
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
	| f e d
	| c2
    }

    \repeat volta 2 {
	c4
	| bes'!-. bes( a)

% 10
	| g r c,
	| bes'8 a bes g a f
	| d' c d bes c4
	| f,8( e f d e f)
	| d4 bes'( a)
	| g f e
	| f2
    }

    % Trio

    \key c \major

    \repeat volta 2 {
	r4
	| e2.\p
	| f
	| e

% 20
	| d2( e4)
	| f e( d)
	| e2.
	| c\f
	| d
	| c
	| e2( d4)
	| c b( a)
	| g2
    }

    \repeat volta 2 {
	d4\f
	| e4. f8 g4
	| d d d
	| e4. f8 g4
	| d r r
	| gis'2.\p
	| a
	| b
	| c8( b) c(\deprecatedcresc b) c( b)
	| c4\f e, d\trill
	| c2
    }
}
