\version "2.18.2"
hornIVFourthMov =  \relative c'' {
    \key c \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	c2\f g
	| R1
	| g1
	| c2 d4 g,
	| c2 g
	| R1
	| g1
	| c2 d4 g,
	| c,1 ~

% 10
	| c ~
	| c ~
	| c ~
	| c ~
	| c2 g'
	| d'4 r d r
	| d2 c
	| g4 r r8 g c d
	| c4 r r8 c g g
	| g4 r r8 g c d

% 20
	| c4 r r8 c g g
	| g8 g, g g g4 r
	| R1*2
	| d''2. r4
	| R1*2
	| g,2. r4
	| c2. r4
	| g2. r4

% 30
	| d'1 ~
	| d ~
	| d ~
	| d ~
	| d2 r
	| R1
	| r4 g, c c,
	| g'2 c4 c,
	| g'2 c
	| d1

% 40
	| g,2 c
	| d1
	| g,4 r r2
	| R1*18

% 61
	| g1\f
	| c
	| d
	| e4 r r2
	| r r4 d
	| g,1
	| c
	| d
	| g,

% 70
	| c
	| d
	| R1*8

% 80
	| g,4\f r g8 g g g
	| g4 r g8 g g g
	| g4 r g g
	| g g g r
    }

    | \grace {
\override Flag.stroke-style = #"grace"
   s16 
  \revert Flag.stroke-style }
 R1*4
    | e2.\f r4
    | e2. r4

% 90
    | R1*2
    | e2.\f r4
    | e2. r4
    | e2. r4
    | R1*4
    | d'2\f g,

% 100
    | c,1
    | d'
    | e
    | g,
    | c1
    | g4 r r2
    | g4 r r2
    | c2 g
    | R1
    | g1

% 110
    | c2 d4 g,
    | c2 g
    | R1
    | g1
    | c2 d4 g,
    | c,1 ~
    | c ~
    | c ~
    | c2 r
    | d'1 ~

% 120
    | d ~
    | d ~
    | d2 r
    | e,1 ~
    | e
    | R1*4
    | g4 c2 c4

% 130
    | g r r8 g8 c d
    | c4 r r8 c g g
    | g4 r r8 g c d
    | c4 r r8 c g g
    | g g, g g g4 r
    | R1*2
    | d''2. r4
    | R1*2

% 140
    | c,2.\f r4
    | c2. r4
    | c2. r4
    | g1 ~
    | g ~
    | g ~
    | g ~
    | g2 r
    | R1
    | c1 ~

% 150
    | c ~
    | c
    | c'2. g4
    | c1
    | c2 g
    | e4 r r2
    | R1*18
    | c1\f ~
    | c
    | g'
    | d'4 r r2
    | r r4 g,
    | c,1 ~

% 180
    | c
    | c'2 g
    | c,1 ~
    | c
    | c'2 g
    | R1*8
    | e4\f r c'8 g e g
    | c4 r c8 g e g
    | e4 r e e
    | e e e r

    \bar "|."
}
