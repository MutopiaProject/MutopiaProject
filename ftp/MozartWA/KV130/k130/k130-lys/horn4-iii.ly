\version "2.18.2"
hornIVThirdMov =  \relative g' {
    \key c \major
    \clef violin

    \noTupletBracket
    
    \repeat volta 2 {
	r4
	| R2.*4
	| g2.\f ~
	| g
	| c4 d d
	| g,2
    }

    \repeat volta 2 {
	r4
	| g4 g g

% 10
	| g r r
	| g g8 g g g
	| c,4 c c
	| c c8 c c c
	| c4 r c'
	| d c g
	| e2
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
