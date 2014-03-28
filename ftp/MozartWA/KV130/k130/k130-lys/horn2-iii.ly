\version "2.18.2"
hornIIThirdMov =  \relative c' {
    \key c \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	r4
	| R2.*4
	| c2.\f
	| c
	| c4 e g
	| e2
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
	g'4\f
	| c4. d8 e4

% 30
	| g, g g
	| c4. d8 e4
	| g, r r
	| R2.*4
	| e2\f g4
	| e2
    }

    \bar "|."
}
