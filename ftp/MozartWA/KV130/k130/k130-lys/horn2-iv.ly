\version "2.18.2"
hornIIFourthMov =  \relative c' {
    \key c \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	| c2\f c
	| R1
	| c2 r
	| R1
	| c2 c
	| R1
	| c2 r
	| R1*7
	| g'4 r g r
	| g1
	| c,8 c c c c4 r
	| c8 c c c c4 r
	| c8 c c c c4 r
	| c8 c c c c4 r
	| c8 c c c c4 r
	| R1*2
	| g'2. r4
	| R1*2
	| e2. r4
	| c2. r4
	| c2. r4

% 30
	| g2 r
	| R1
	| g2 r
	| R1
	| g2 r
	| R1
	| c2 r
	| c2 r
	| c1
	| c'2 g

% 40
	| c,1
	| c'2 g
	| e4 r r2
	| R1*18

% 61
	| c1\f ~
	| c
	| g'
	| d'4 r r2
	| r r4 g,
	| c,2 r
	| c r
	| c'2 g
	| c, r

% 70
	| c r
	| c' g
	| R1*8

% 80
	| c,4\f r c'8 g e g
	| e4 r c'8 g e g
	| e4 r e e 
	| e c8 c16 c c4 r
    }

    \grace {
\override Flag.stroke-style = #"grace"
   s16 
  \revert Flag.stroke-style }
 R1*4
    | d'2.\f r4
    | d2. r4

% 90
    | R1*16
    | e,4 r r2
    | c2 c
    | R1
    | c2 r

% 110
    | R1
    | c2 c
    | R1
    | c2 r
    | R1*16

% 130
    | c8 c c c c4 r
    | c8 c c c c4 r
    | c8 c c c c4 r
    | c8 c c c c4 r
    | c8 c c c c4 r
    | R1*2
    | c2. r4
    | R1*5
    | c2 r
    | R1
    | c2 r
    | R1
    | c2 r
    | R1*4
    | c2 c
    | c4 r r2
    | c2 c
    | c4 r r2
    | R1*22
    | r2 r4 c
    | c r r2

% 180
    | R1
    | c2 c
    | c4 r r2
    | R1
    | c2 c
    | R1*8
    | c4\f r r2
    | c4 r r2
    | c4 r c c
    | c c c r

    \bar "|."
}
