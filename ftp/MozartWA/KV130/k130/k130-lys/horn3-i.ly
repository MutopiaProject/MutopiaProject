\version "2.18.2"
hornIIIFirstMov =  \relative c'' {
    \key c \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	R1*5
	| c1\f
	| d
	| c
	| r4 f e d

% 10
	| c2 e4 g
	| c,1 ~
	| c ~
	| c ~
	| c ~
	| c\p ~
	| c ~
	| c ~
	| c4 r r2
	| c4\f r r2

% 20
	| e4 e8 e e4 e
	| d2 r
	| d4 r r2
	| d4 d8 d d4 d
	| d1
	| d1
	| e4 d c d
	| e d c d
	| e1
	| d4 r r2

% 30
	| R1
	| d1\p ~
	| d ~
	| d ~
	| d \laissezVibrer
	| R1*3
	| g,1\p ~
	| g ~

% 40
	| g ~
	| g
	| g4\f g g g
	| g r r2
	| d'4 e2 e4
	| d4 d2 d4
	| d2 e
	| d1
	| d4 r r2
	| R1*6

% 55
	| d1\f
	| e2 r
	| d2 d
	| g8( d) d-. d-. d4 r
	| R1

% 60
	| g8( d) d-. d-. d4 r
	| R1
	| d4 d d r
    }

    | R1*8

% 71
    | d4\f r r2
    | e4 r r2
    | d4 r r2
    | e4 r r2
    | r2 e4 r
    | e r r2
    | e1
    | R1
    | e1\f

% 80
    | c
    | c4 r r2
    | d1
    | d4 d d r
    | R1*4
    | c1\f
    | d

% 90
    | c
    | r4 f e d
    | c2 e4 g
    | c,1
    | d ~
    | d
    | d
    | d4 r r2
    | R1
    | g,1 ~

% 100
    | g ~
    | g ~
    | g
    | R1*3
    | c1\p ~
    | c ~
    | c ~
    | c

% 110
    | c4\f c c c
    | c1
    | d
    | c4 c c c
    | e2 d
    | c4 r r2
    | R1*6
    | g1\f
    | d'2 f
    | e d
    | c8( g) g-. g-. g4 r
    | R1
    | c8( g) g-. g-. g4 r
    | R1
    | c8( g) g-. g-. e'( c) c-. c-.
    | g' e g e g e c g
    | c4 c c c
    | c2 r


    \bar "|."
}
