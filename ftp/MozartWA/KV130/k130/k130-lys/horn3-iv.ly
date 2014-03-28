\version "2.18.2"
hornIIIFourthMov =  \relative c'' {
    \key c \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	c2\f g
	| R1
	| d'1
	| e2 f4 d
	| c2 g
	| R1
	| d'1
	| e2 f4 d
	| c1 ~

% 10
	| c ~
	| c ~
	| c ~
	| c ~
	| c2 e
	| d4 r d r
	| d1
	| d4 r r8 d e f
	| e4 r r8 g f e
	| d4 r r8 d e f

% 20
	| e4 r r8 g f e
	| d8 d d d d4 r
	| R1*2
	| d2. r4
	| R1*2
	| d2. r4
	| e2. r4
	| g,2. r4

% 30
	| d'1 ~
	| d ~
	| d ~
	| d ~
	| d2 r
	| R1
	| r4 d e c
	| d2 e4 c
	| d2 e
	| d1

% 40
	| d2 e
	| d1
	| d4 r r2
	| R1*18

% 61
	| d1\f
	| e
	| f
	| e4 r r2
	| r r4 d
	| d1
	| e
	| d
	| d

% 70
	| e
	| d
	| R1*8

% 80
	| d4\f r d8 d d d
	| d4 r d8 d d d
	| d4 r d d
	| d d d r
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
    | d1\f

% 100
    | c
    | f
    | e
    | d2 e
    | e1
    | d4 r r2
    | d4 r r2
    | c2 g
    | R1
    | d'1

% 110
    | e2 f4 d
    | c2 g
    | R1
    | d'1
    | e2 f4 d
    | c1 ~
    | c ~
    | c ~
    | c2 r
    | d1 ~

% 120
    | d ~
    | d ~
    | d2 r
    | e1 ~
    | e
    | R1*4
    | d4 e g e

% 130
    | d r r8 d8 e f
    | e4 r r8 g f e
    | d4 r r8 d e f
    | e4 r r8 g f e
    | d d d d d4 r
    | R1*2
    | f2. r4
    | R1*2

% 140
    | e2(\f c4) r
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
    | e2 d
    | c1
    | e2 d
    | c4 r r2
    | R1*18
    | c1\f ~
    | c
    | g'
    | d4 r r2
    | r r4 d
    | c1 ~

% 180
    | c
    | e2 d
    | c1 ~
    | c
    | e2 d
    | R1*8
    | c4\f r c8 g e g
    | c4 r c8 g e g
    | c4 r c c
    | c c c r

    \bar "|."
}
