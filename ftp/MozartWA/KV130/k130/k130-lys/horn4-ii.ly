\version "2.18.2"
hornIVSecondMov =  \relative c'' {
    \key c \major
    \clef violin

    \noTupletBracket
    
    \repeat volta 2 {
	R4.*10

% 11
	| c8\f g e
	| c4 r8
	| g'8 e r
	| R4.*2
	| g8 g g
	| g4. ~
	| g4 r8
	| r r d'

% 20
	| g,4 r8
	| R4.*3
	| g8 g g
	| g4.
	| g, ~
	| g4 r8
	| R4.
	| r8 r g'

% 30
	| c e, g
	| c e, g
	| c e, r
	| R4.
	| g4. 
	| d'
	| g,
	| d'
	| g,8 g g 
	| g4 r8
    }

    \repeat volta 2 {
	| g,4.\p ~
	| g ~
	| g ~
	| g8 g g
	| g4. ~
	| g ~
	| g ~
	| g8 g g
	| e'4.\f ~
	| e8 r r
	| d'4.(
	| g,8) r r
	| g4.
	| e8 g c
	| c,4 r8
	| g'4 r8
	| R4.*10

% 66
	| c8\f g e
	| c4 r8
	| g'8 e r
	| R4.

% 70
	| c4. ~
	| c8 r r
	| R4.*2
	| r8 c' g
	| e4 r8
	| R4.*3
	| r8 c c

% 80
	| c4 c8 ~
	| c4.
	| c8 c r
	| e4 g8
	| e r c ~
	| c4.
	| c8 c r
	| e4 g8
	| e r g
	| e g c
	| d16 e d c g8
	| g c d
	| e16 f e d c8
	| r e c
	| r d g,
	| c d c
	| c g r
	| g4 c8
	| g4 c8
	| d c g
	| c16 d e f e8
	| g,4 c8
	| g4 c8
	| d8 c g
	| e4 r8
	| R4.*6
	| r8 r g\p
	| g4 c8
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
    | g' c r
    | g e r

    \bar "|."
}
