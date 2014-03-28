\version "2.18.2"
hornIFirstMov =  \relative c'' {
    \key c \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	R1*5
	| c4\f r r2
	| c4 r r2
	| c4 r r2
	| r2 c4 c

% 10
	| c r r2
	| R1*10

% 21
	| c4 r r2
	| c4 r r2
	| c2 c4 c
	| d r d2
	| c4 r c2 ~
	| c1 ~
	| c ~
	| c4 r d2
	| d4 r r2

% 30
	| R1*12
	| c2\f c
	| c4 r r2
	| g4 r r2
	| g4 r r2
	| c4 r r2
	| e2 d
	| c4 r r2
	| R1*6

% 55
	| g2\f r
	| R1
	| e'2 d
	| c8( g) g-. g-. g4 r
	| R1

% 60
	| c8( g) g^. g^. g4 r
	| R1
	| c4 c c r
    }

    | R1*8

% 71
    | c4\f r r2
    | d4 r r2
    | d4 r r2
    | g,4 r r2
    | R1*3
    | d'4 r r2
    | R1*3

% 82
    | d1\f
    | c4 c c r
    | R1*4
    | c4\f r r2
    | c4 r r2

% 90
    | c4 r r2
    | r2 c4 c
    | c r r2
    | R1*3
    | d1
    | c4 r r2
    | R1*14

% 112
    | c4\f r r2
    | c4 r r2
    | c2 c
    | c4 r r2
    | R1*6

% 122
    | c4\f r r2
    | d4 r r2
    | c4 r c c
    | c c8-. c-. c4 r
    | R1
    | c4 c8-. c-. c4 r
    | R1
    | c4 r c r

% 130
    | c c c c 
    | c c c c
    | c2 r

    \bar "|."
}
