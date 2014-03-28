\version "2.18.2"
violaFourthMov =  \relative f' {
    \key f \major
    \clef alto

    \noTupletBracket
    \tupletSpan 4

    \repeat volta 2 {
	f2\f c
	| r4 r8 c e f g a
	| <g bes>4 c, c c
	| c8 c c c d d c c
	| f2 c
	| r4 r8 c e f g a
	| <g bes>4 c, c c
	| c8 c c c d d c c
	| c4 r f g

% 10
	| a bes a2:16
	| bes4 r d c
	| bes a d,2:
	| c4 r f g
	| a bes a2:
	| bes4: bes8 a bes4: bes8 a
	| bes2: g:
	| g: g8 g a e
	| f2: f8 c' bes a
	| g2: g8 g, a e

% 20
	| f2: f16 c' c c c4:
	| e16 g, g g g e e e e4 r
	| R1*2
	| g2:\f g4 r
	| R1*2
	| g2: g4 r
	| a2: a4 r
	| es'2: es4 r

% 30
	| <g, d'>2 g8 g g g
	| \repeat unfold 3 { g' g g g g g g g }
	| g g g g g f g a
	| a( g) g-. g-. g( f) f-. f-.
	| e4: g: c,: f:
	| \repeat unfold 3 { g2: f: }

% 40
	| e4: g: f: a:
	| g: e: <g, d'>2:
	| c4 r r2
	| a'2\p bes! ~
	| bes4( a) r2
	| a2( g) ~
	| g f4( bes,!)
	| a( g f) es'
	| d2\f d4-.\p es-.
	| d2\f d4-.\p es-.

% 50
	| d2\f r
	| \grace {
\override Flag.stroke-style = #"grace"
   e16 
  \revert Flag.stroke-style }
 d4\p c8 b g'4 e
	| a, d2 b4
	| g2 c,4 f
	| d b'2 b4
	| g r r2
	| g'8 g g g g4 d
	| g,4 a8( f') e4( d)
	| g, r r2
	| g'8\f g g g g4 r

% 60
	| g8\pp g g g g4 r
	| c,8\f c c c c' c c c
	| a a a a a a a a
	| e e e e e e e e
	| f4 e d c'
	| b a g f
	| e8 e e e e e e e
	| f f f f f f f f
	| g g g g g, g g g
	| e' e e e e e e e

% 70
	| f f f f f f f f
	| g g g g g, g g g
	| R1
	| r4 c2\p c4
	| c r <g d'> r
	| R1
	| r4 c2 c4
	| c r <g d'> r
	| r d'8( f) e4( d)
	| r4 d8( e16 f) e4( d)

% 80
	| c'8\f g e' b c g e g
	| c g e' b c g e g
	| c e, g e c e g e
	| c e g e c4 r 
    }

    | \grace {
\override Flag.stroke-style = #"grace"
   s16 
  \revert Flag.stroke-style }
 r2 r4 e\p
    | a,2 d4 c8 d
    | g,4 c2 a4
    | g2. r4
    | fis2:\f fis4 r
    | fis2: fis4 r
    | R1*2
    | a2:\f a4 r
    | a2: a4 r
    | a2: g4 r
    | f\p a d f
    | e2. f8 e
    | d4 e8 fis g4 g
    | f!( e) d r
    | r2 g4\f es8 c

% 100
    | f4 f d4. bes8
    | e!4 e \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c4 bes8 a
    | d4 d bes4. g8
    | c4 c c8 a' a g
    | a g f e d d d d
    | g, c d e f g a b
    | c4 r r2
    | f,2 c
    | r4 r8 c e f g a
    | <g bes>4 c, c c

% 110
    | c8 c c c d d c c
    | f2 c
    | r4 r8 c e f g a
    | <g bes>4 c, c c
    | c8 c c c d d c c
    | c4 r f g
    | a bes a2:
    | bes4 r f a
    | bes a bes d,
    | d r g a

% 120
    | b c b2:
    | c4 r g b
    | c b c e,
    | e r a b
    | cis d cis2:
    | d4: f,: g: a:
    | d,: e: c: a:
    | d: cis: c: b:
    | g: a2: f4:
    | g: f: f': c:

% 130
    | g'2: g8 g a e
    | f2: f8 c' bes a
    | g2: g8 g, a e
    | f2: f16 c' c c c4:
    | e16 g, g g g e e e e4 r
    | R1*2
    | c2:\f c4 r
    | R1*2

% 140
    | c'2:\f c4 r
    | d2: d4 r
    | f2: f4 r
    | g2: g8 c, c c
    | \repeat unfold 3 { c c c c c c c c }
    | c c c c c bes c d
    | d( c) c-. c-. c( bes) bes-. bes-.
    | a4: c: f,: bes:

% 150
    | c2: bes:
    | c: bes:
    | f': f4: e:
    | f: c: bes: d:
    | c: a: bes: g:
    | f4 r r2
    | d'2\p es ~
    | es4( d) r2
    | d2( c) ~
    | c bes4( es)

% 160
    | d( c bes as)
    | g2\f g4-.\p as-.
    | g2\f g4-.\p as-.
    | g2\f r
    | r \grace {
\override Flag.stroke-style = #"grace"
   bes16 
  \revert Flag.stroke-style }
 a4\p g8 f
    | d'4.( b8) g4 e
    | c'2 f4 f
    | r g,4. c8 e c
    | c4 r r2
    | e,8 f g a bes4 g

% 170
    | \stemUp c( bes a g) \stemNeutral
    | c,4-. r r2
    | e8\f f g a bes4 r
    | e,8\pp f g a bes4 r
    | f'8\f f f f f f es es
    | d d d d d d d d
    | a' a a a a a a a
    | bes4 a g f
    | e d c bes
    | a8 a a a a' a a a

% 180
    | bes bes bes bes bes bes bes bes
    | c c c c c, c c c
    | a a a a a' a a a
    | bes bes bes bes bes bes bes bes
    | c c c c c, c c c
    | R1
    | r4 f2\p f4
    | f r bes, r
    | R1
    | r4 f'2 f4

% 190
    | f r bes, r
    | r g'8( bes) a4( g)
    | r g,8( a16 bes) a4( g)
    | f'8\f c a' e f c a c
    | f c a' e f c a c
    | f c' a c f, c' a c
    | f, f, a c f4 r


    \bar "|."
}
