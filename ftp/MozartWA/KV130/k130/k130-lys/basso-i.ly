\version "2.18.2"
bassoFirstMov =  \relative f {
    \key f \major
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	R1*5
	| r4 f\f a f
	| r g e c
	| r f d c
	| bes bes' c c,

% 10
	| \repeat unfold 5 { f8 f f f f f f f }
	| f\p f f f f f f f
	| \repeat unfold 2 { f8 f f f f f f f }
	| f4 r r2
	| r8 f,\f g a bes c d e

% 20
	| f f f f f f f f
	| c4 r r2
	| r8 c d e f g a b
	| c c c c c c c c
	| b b b b b, b b b
	| c c c c e e e e
	| f f g g a a g g
	| f f g g a a g g
	| fis fis fis fis fis fis fis fis
	| g4 r r2

% 30
	| R1*5
	| c,4^\markup { pizz. } e g c
	| g r r2
	| g4 d b g
	| c r c' r
	| c, r c' r

% 40
	| c, r c' r
	| c, r r2
	| c'8\f^\markup { arco } c c c es es es es
	| fis, fis fis fis fis fis fis fis
	| g g f! f f f f f
	| e e b b b b b b
	| c c e e f f a a
	| g g g g g, g g g
	| c4 r r2
	| g'4\p r r2

% 50
	| g,4 r r2
	| g'4 r r2
	| g,4 r r2
	| R1*2
	| g'8\f g g g g g g g
	| f f f f f f fis fis
	| g g g g g, g g g
	| c( g') g-. g-. g4 r
	| R1

% 60
	| c8( g) g-. g-. g4 r
	| R1
	| c,4 c' c, r
    }

    | R1*4
    | \grace {
\override Flag.stroke-style = #"grace"
   d'32 
  \revert Flag.stroke-style }
 c16[\p( bes!8.) bes8-. bes-.] bes-. bes-. bes-. bes-.
    | \grace {
\override Flag.stroke-style = #"grace"
   c32 
  \revert Flag.stroke-style }
 bes16[( a8.) a8-. a-.] a-. a-. a-. a-.
    | \grace {
\override Flag.stroke-style = #"grace"
   d32 
  \revert Flag.stroke-style }
 c16[( bes8.) g8-. f-.] e-. e-. e-. e-.

% 70
    | \grace {
\override Flag.stroke-style = #"grace"
   a32 
  \revert Flag.stroke-style }
 g16[( f8.) f8-. e-.] d-. d-. d-. d-.
    | c4\f r8 c' es c g es
    | d4 r8 es' d d, c c'
    | bes4 r8 g bes g e! d
    | cis4 r8 cis' d d, c c'
    | b4 r cis r
    | d d, g8 g bes bes
    | a a a a a, a a a
    | d d f f g g bes bes
    | a\f a a a a a a a

% 80
    | a, a a a a a a a
    | bes bes c c d d c c
    | bes bes bes bes b b b b
    | c4 c' c, r
    | R1*4
    | r4 f\f a f
    | r g e c

% 90
    | r f d c
    | bes bes' c c,
    | f8 f f f f f f f
    | a a a a a, a a a
    | bes bes c c d d c c
    | bes bes c c d d c c
    | b b b b b b b b
    | c4 r r2
    | R1*5

% 103
    | f,4\p^\markup { pizz. } a c f
    | c r r2
    | c'4 g e c
    | f r f, r
    | f' r f, r
    | f' r f, r
    | f' r r2

% 110
    | f8\f^\markup { arco } f f f as! as as as
    | b, b b b b b b b
    | c c c c c c c c
    | f f a! a bes bes d d
    | c c c c c, c c c
    | f4 r r2
    | c'4\p r r2
    | c,4 r r2
    | c'4 r r2
    | c,4 r r2

% 120
    | R1*2
    | a'8\f a a a a a a a
    | bes bes bes bes g g e e
    | f f a a c c c, c
    | f( c) c-. c-. c4 r
    | R1
    | f8( c) c-. c-. c4 r
    | R1
    | f8( c) c-. c-. a'( f) f-. f-.

% 130
    | c' a c a c a f c
    | f a c a f a c a
    | f2 r

    \bar "|."
}
