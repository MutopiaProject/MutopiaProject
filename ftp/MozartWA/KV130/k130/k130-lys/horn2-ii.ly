\version "2.18.2"
hornIISecondMov =  \relative c' {
    \key c \major
    \clef violin

    \noTupletBracket
    
    \repeat volta 2 {
	R4.*10

% 11
	| c4.\f
	| R4.
	| c8 c c
	| c4 r8
	| g'4. ~
	| g8 c r
	| c4 d8
	| e c g
	| c, e g

% 20
	| e4 r8
	| g,4. ~
	| g ~
	| g
	| c8 c c
	| c4 r8
	| R4.*2
	| g4.
	| c4. ~

% 30
	| c ~
	| c ~
	| c8 c r
	| R4.
	| c4.
	| g
	| c
	| g c8 c c
	| c4 r8
    }

    \repeat volta 2 {
% 40
	| R4.*10

% 50
	| g'4.(
	| c8) r r
	| c,4. ~
	| c4 r8
	| R4.
	| c8 c c
	| c\p r r
	| R4.*9

% 66
	| c4.\f
	| R4.
	| e8 c c
	| c4 r8

% 70
	| R4.*4
	| r8 c c
	| c4. ~
	| c ~
	| c ~
	| c8 r r
	| R4.*4
	| c4. ~
	| c8 r r
	| R4.*2
	| c4. ~
	| c8 r r
	| c4. ~

% 90
	| c ~
	| c ~
	| c ~
	| c ~
	| c ~
	| c ~
	| c8 c c
	| c4 r8
	| R4.*13
	| r8 r c\p
	| c4.
    }

    | c4\f r8
    | R4.*2
    | r8 c c
    | c4 r8
    | R4.
    | c8 c r

% 120
    | c c r

    \bar "|."
}
