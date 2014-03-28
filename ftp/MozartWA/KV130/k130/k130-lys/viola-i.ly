\version "2.18.2"
violaFirstMov =  \relative g {
    \key f \major
    \clef alto

    \noTupletBracket
    \tupletSpan 4

    \repeat volta 2 {
	R1*3
	| r4 g\p c c,
	| f-. f( a g)
	| f2:16\f c'4: f:
	| bes,2: c4: g:
	| f2: f':
	| f4: bes,: a: g:

% 10
	| f r r2
	| a8 a4 a a a8
	| f8 f4 f f bes8
	| bes bes4 bes bes bes8 ~
	| bes bes4 bes8 a c4 c8
	| a\p a4 a a a8
	| f f4 f f bes8 ~
	| bes bes4 bes bes bes8
	| a4 r r2
	| r8 a\f bes c d e f g

% 20
	| a16 c, c c c4: c2:
	| c4 r r2
	| r8 e, f g a b c d
	| e16 g, g g g4: g2:
	| b8 b b b b b b b
	| c c c c e e e e
	| a a g g f f g g
	| a a g g f f g g
	| a16 fis d d d4: d2:
	| d4 r8 e\p \grace {
\override Flag.stroke-style = #"grace"
   e32 
  \revert Flag.stroke-style }
 d8( c) d( b)

% 30
	| c4 r r2
	| R1*3
	| c8 g c g b g b g
	| c g c g c g c g
	| g' g, g' g, g' g, g' g,
	| b g b g d' g, b g
	| c4. c16( d \tuplet 3/2 { e8)-. d-. c-. bes!-. a-. g-. }

% 40
	| f4 f'2 d8( e)
	| e4. c16( d \tuplet 3/2 { e8)-. d-. c-. bes!-. a-. g-. }
	| f4 f'2 d8( f)
	| e c c c es es es es
	| d d d d d d d d
	| d d d d d d d d
	| c g g g g g g g
	| g4: e': f: a:
	| g2: g:
	| g4 e(\p d c)
	| g8 g g g g g g g
	| \repeat unfold 3 { g g g g g g g g }

% 53
	| \grace {
\override Flag.stroke-style = #"grace"
   c16 
  \revert Flag.stroke-style }
 b16[( a8.) a8-. a'-.] a( g) g( f)
	| \grace {
\override Flag.stroke-style = #"grace"
   g16 
  \revert Flag.stroke-style }
 f8[( e) e-. e-.] e e e e
	| e2:\f e:
	| a,4: f'2: a4:
	| g: g g,: g
	| c8( g) g-. g-. g4 r
	| R1

% 60
	| c'8( g) g-. g-. g4 r
	| R1
	| c,4 c' c, r
    }

    | r c\p e c
    | r d b g
    | r c\p c, c'
    | r g b g
    | g1
    | e'8( f) a,2( c4)
    | fis8( g) e-. f-. g g g g

% 70
    | e( f) a-. g-. f f d d
    | c4:\f es: g: c:
    | c: a2: a4:
    | g: bes: g: bes,:
    | g: a: d: e!:
    | g2: a:
    | d,4: a: bes: bes':
    | a2: g:
    | f4: d: g,: bes:
    | a:\f d: f: a:

% 80
    | f2: f:
    | f: f4: fis:
    | g2: g:
    | g4 <g, e'> <c, g' e'> r
    | R1*3
    | r4 g'\p c c,
    | f2:\f c'4: f:
    | bes,2: c4: g:

% 90
    | f2: f':
    | f4: bes,: a: g:
    | f8 f f f f' f f f
    | a a a a a, a a a
    | d d c c bes bes c c
    | d d c c bes bes c c
    | d2: g,:
    | c4 r8 a'8-.\p \grace {
\override Flag.stroke-style = #"grace"
   a32 
  \revert Flag.stroke-style }
 g8( f) g( e)
    | f4 r r2
    | R1*3

% 102
    | f8 c f c e c e c
    | f c f c f c f c
    | c c, c' c, c' c, c' c,
    | e' c e c e c g' c,
    | f4. f16( g \tuplet 3/2 { a8-.) g-. f-. es-. d-. c-. }
    | bes4 bes2 g8( bes)
    | a4. f'16( g \tuplet 3/2 { a8-.) g-. f-. es-. d-. c-. }
    | bes4 bes2 g8( bes)

% 110
    | a8\f f' f f as as as as
    | d, d d d d d d d
    | g, g g g g g e' e
    | c c a a bes bes d d
    | c2: c:
    | c4 a'\p( g f)
    | \repeat unfold 3 { c8 c c c c c c c }
    | c, c c c c c c c

% 120
    | d4 r8 d'' \grace {
\override Flag.stroke-style = #"grace"
   e16 
  \revert Flag.stroke-style }
 d16[( c8.) \grace {
\override Flag.stroke-style = #"grace"
   d32 
  \revert Flag.stroke-style }
 c16( bes8.)]
    | \grace {
\override Flag.stroke-style = #"grace"
   c32 
  \revert Flag.stroke-style }
 bes16[( a8.) a8-. a-.] a a a a
    | c2:\f c:
    | bes: bes4 g:
    | f: f c: c
    | f8( c) c-. c-. c4 r
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
