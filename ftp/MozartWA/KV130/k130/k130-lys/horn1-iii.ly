\version "2.18.2"
hornIThirdMov =  \relative c'' {
    \key c \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	r4
	| R2.*4
	| c2.\f
	| c
	| c2 d4
	| c2
    }

    \repeat volta 2 {
	c8 c
	| c4 r c8 c

% 10
	| c4 r c8 c
	| c4 r r
	| R2.*3
	| r4 c c
	| c2
    }

    % Trio

    \repeat volta 2 {
	r4
	| R2.*11
	| r4 r
    }

    \repeat volta 2 {
	d4\f
	| e4. f8 g4

% 30
	| d d d
	| e4. f8 g4
	| d r r
	| R2.*4
	| c2\f d4
	| c2
    }

    \bar "|."
}
