\version "2.18.2"
hornIIIThirdMov =  \relative g' {
    \key c \major
    \clef violin

    \noTupletBracket
    
    \repeat volta 2 {
	r4
	| R2.*4
	| g2.\f ~
	| g
	| e'4 d d
	| d2
    }

    \repeat volta 2 {
	r4
	| g,4 g g

% 10
	| g r r
	| g g8 g g g
	| c4 c c
	| c c8 c c c
	| c4 d e
	| f e d
	| c2
    }

    % Trio

    \repeat volta 2 {
	r4
	| R2.*11
	| r4 r
    }

    \repeat volta 2 {
	r4
	| R2.*9
	| r4 r
    }

    \bar "|."
}
