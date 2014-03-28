\version "2.18.2"
hornIIISecondMov =  \relative c'' {
    \key c \major
    \clef violin

    \noTupletBracket
    
    \repeat volta 2 {
	R4.*10

% 11
	| c8\f g e
	| c4 r8
	| d'8 c r
	| R4.*2
	| g8 g g
	| g4. ~
	| g4 r8
	| r r d'

% 20
	| d4 r8
	| R4.*3
	| g,8 g g
	| g4. ~
	| g ~
	| g4 r8
	| R4.
	| r8 r d'

% 30
	| e c d
	| e c d
	| e g, r
	| R4.
	| g4. 
	| d'
	| g,
	| d'
	| g,8 g g 
	| g4 r8
    }

    \repeat volta 2 {
	| g4.\p ~
	| g ~
	| g ~
	| g8 g g
	| g4. ~
	| g ~
	| g ~
	| g8 g g
	| e4.\f ~
	| e8 r r
	| d'4. ~
	| d8 r r
	| d4.
	| c8 d e
	| c4 r8
	| g4 r8
	| R4.*10

% 66
	| c8\f g e
	| c4 r8
	| d'8 c r
	| R4.

% 70
	| c4. ~
	| c8 r r
	| R4.*2
	| r8 e d
	| c4 r8
	| R4.*3
	| r8 c c

% 80
	| c4 c8 ~
	| c4.
	| c8 c r
	| c4 d8
	| c r c ~
	| c4.
	| c8 c r
	| c4 d8
	| c r g
	| c d e
	| f16 g f e d8
	| d e f
	| g16 a g f e8
	| r g e
	| r f d
	| e f e
	| e d r
	| d4 e8
	| d4 e8
	| f e d
	| e16 f g a g8
	| d4 e8
	| d4 e8
	| f8 e d
	| c4 r8
	| R4.*6
	| r8 r d\p
	| d4 e8
    }

    | c8\f g c
    | e4 \grace {
\override Flag.stroke-style = #"grace"
   g16 
  \revert Flag.stroke-style }
 f8
    | \grace {
\override Flag.stroke-style = #"grace"
   e16 
  \revert Flag.stroke-style }
 d8 c r
    | c g g
    | g4 e8
    | e-. c-. r
    | d' e r
    | d c r

    \bar "|."
}
