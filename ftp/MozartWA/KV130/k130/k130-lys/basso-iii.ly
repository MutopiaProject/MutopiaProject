\version "2.18.2"
bassoThirdMov =  \relative f {
    \key f \major
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	r4
	| r r f\p
	| g4. a8 bes4
	| a r f
	| g8( f g a) bes4-.
	| a-.\f a( g)
	| f-. f( e)
	| f g g,
	| c c'
    }

    \repeat volta 2 {
	r
	| r r c,

% 10
	| bes'!-. bes( a)
	| g r c,
	| bes'8 a bes g a f
	| d' c d bes c4
	| bes e,( f)
	| bes, c c
	| f f,
    }

    % Trio

    \key c \major

    \repeat volta 2 {
	r4
	| c'2.\p
	| f
	| c'

% 20
	| g4 d g
	| a g2
	| c4 g e
	| c2.\f
	| bes!
	| f'
	| c2 g'4
	| e' d2
	| g,
    }

    \repeat volta 2 {
	r4
	| R2.*4
	| e4\p r r
	| f r r
	| f r r
	| fis fis\crescTextCresc fis
	| g\f g g,
	| c c'
    }
}
