\version "2.18.2"
hornIVFirstMov =  \relative c' {
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
	| c'4 c8 c c4 c
	| g2 r
	| g4 r r2
	| g4 g8 g g4 g
	| d'1
	| g,1
	| g ~
	| g
	| g
	| d'4 r r2

% 30
	| R1
	| d1\p ~
	| d ~
	| d ~
	| d \laissezVibrer
	| R1*3
	| g,,1\p ~
	| g ~

% 40
	| g ~
	| g
	| g'4\f g g g
	| g r r2
	| d'4 c2 c4
	| g4 d'2 d4
	| g,2 c
	| d1
	| g,4 r r2
	| R1*6

% 55
	| d'1\f
	| c2 r
	| d2 d
	| g,8( d') d-. d-. d4 r
	| R1

% 60
	| g,8( d') d-. d-. d4 r
	| R1
	| g,4 g g r
    }

    | R1*8

% 71
    | g4\f r r2
    | g4 r r2
    | d'4 r r2
    | e,4 r r2
    | r2 e4 r
    | e r r2
    | e1
    | R1
    | e1\f

% 80
    | c
    | c4 r r2
    | d'1
    | g,4 g g r
    | R1*4
    | e1\f
    | g

% 90
    | c,
    | r4 d' c g
    | c,2 e4 g
    | c,1
    | c' ~
    | c
    | d
    | g,4 r r2
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
    | g'
    | e4 g8 e c4 c
    | c8 e g c g4 g
    | e4 r r2
    | R1*6
    | g1\f
    | d'2 d
    | c g
    | c,8( g) g-. g-. g4 r
    | R1
    | c8( g) g-. g-. g4 r
    | R1
    | c8( g) g-. g-. e'( c) c-. c-.
    | g' e g e g e c g
    | c4 e g e
    | c2 r


    \bar "|."
}
