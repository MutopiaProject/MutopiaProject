\version "2.18.2"
bassoFourthMov =  \relative f {
    \key f \major
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	f2\f c
	| r4 r8 c' bes a g f
	| e e e e e e e e
	| f f a a bes bes c c
	| f,2 c
	| r4 r8 c' bes a g f
	| e e e e e e e e
	| f f a a bes bes c c
	| f,4 r f g 

% 10
	| a bes c2
	| bes4 r d c 
	| bes a gis2
	| a4 r f g!
	| a bes c2
	| bes8 bes bes c bes bes bes c
	| bes bes bes bes bes, bes b b
	| c4 r4 r8 bes'! a g
	| f4 r r8 a g f
	| c'4 r r8 bes, a g

% 20
	| f4 r r8 a g f
	| c' c c c c4 r
	| R1*2
	| b8 b b b b4 r
	| R1*2
	| bes!8 bes bes bes bes4 r
	| a8 a a a a4 r
	| as8 as as as as4 r

% 30
	| g8 g' g g g g g g
	| \repeat unfold 3 { g g g g g g g g }
	| g g g g g f g a
	| a( g) g-. g-. g( f) f-. f-.
	| e e e e f f d d
	| c c e e f f d d
	| c c e e f f f f
	| g g g g g, g g g

% 40
	| c c e e f f f f 
	| g g g g g, g g g
	| c4 r r2
	| a'2\p g
	| f r
	| fis f
	| e f4( g)
	| a( bes a g)
	| fis2\f a4-.\p g-.
	| fis2\f a4-.\p g-.

% 50
	| fis2\f r
	| g4\p f! e c
	| d c' b g
	| c e, f d
	| g g, g' f
	| e r r2
	| d'8 c b a g4 b,
	| c f g( f)
	| e r r2
	| d'8\f c b a g4 r

% 60
	| d'8\pp c b a g4 r
	| c,8\f c c c c' c c c
	| a a a a a a a a
	| g g g g g g g g 
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
	| r4 c'(\p a g)
	| f r g r
	| R1
	| r4 c( a g)
	| f r g r
	| r f g2
	| r4 f g2

% 80
	| c8\f g e' b c g e g
	| c g e' b c g e g
	| c e, g e c e g e
	| c e g e c4 r
    }

    | \grace {
\override Flag.stroke-style = #"grace"
   s16 
  \revert Flag.stroke-style }
 r4 c\p c'2 ~
    | c4 d8 c b4 a8 b
    | c4. b8 a4 d,
    | g( f e es)
    | d8\f d d d d4 r
    | d8 d d d d4 r

% 90
    | R1*2
    | cis8\f cis cis cis cis4 r
    | d8 d d d d4 r
    | a'8 a a a a,4 r
    | r d\p d'2 ~
    | d4 c8 b c2 ~
    | c4 bes!8 a g f e4
    | r8 bes' a g f e d4
    | \grace {
\override Flag.stroke-style = #"grace"
   c'16 
  \revert Flag.stroke-style }
 b4\f a8 g c4 c

% 100
    | a4. f8 bes!4 bes
    | \grace {
\override Flag.stroke-style = #"grace"
   a16 
  \revert Flag.stroke-style }
 g4 f8 e a4 a
    | fis4. d8 g4 g
    | \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 e4 d8 c f f f e
    | f e d c b b b b
    | c4 r r2
    | c'8 c, e g c bes a g
    | f2 c
    | r4 r8 c' bes a g f
    | e e e e e e e e

% 110
    | f f f f bes, bes c c
    | f2 c
    | r4 r8 c' bes a g f
    | e e e e e e e e
    | f f f f bes, bes c c
    | f4 r f g
    | a bes c2
    | bes4 r d c
    | bes c bes a
    | g r g a

% 120
    | b c d2
    | c4 r e d
    | c d c b
    | a r a b 
    | cis d e2
    | d8 d d d cis cis c c
    | b b bes bes a a a a
    | gis gis g g fis fis f f
    | e e es es d d des des
    | c c f f a a f f

% 130
    | c4 r r8 bes' a g
    | f4 r r8 a g f
    | c'4 r r8 bes, a g
    | f4 r r8 a g f
    | c' c c c c4 r
    | R1*2
    | e8 e e e e4 r
    | R1*2

% 140
    | es8\f es es es es4 r
    | d8 d d d d4 r
    | des8 des des des des4 r
    | \repeat unfold 4 { c8 c c c c c c c }
    | c c c c c bes c d 
    | d( c) c-. c-. c( bes) bes-. bes-.
    | a a a' a bes bes g g

% 150
    | f f a a bes bes g g
    | f f a a bes bes bes bes
    | c c c c c, c c c
    | f f a a bes bes bes bes
    | c c c c c, c c c
    | f4 r r2
    | d'2\p c
    | bes r
    | b bes
    | a bes4( c)

% 160
    | d( es d c)
    | b2\f d4-.\p c-.
    | b2\f d4-.\p c-.
    | b2\f r
    | c4\p bes! a d,
    | g f e c
    | f a bes b
    | c c, c' bes!
    | a r r2
    | g8 f e d c4 e

% 170
    | f bes, c( bes)
    | a-. r r2
    | g'8\f f e d c4 r
    | c8\pp d e f g4 r
    | f8\f f f f f f es es
    | d d d d d d d d
    | c c c c c' c c c
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
    | r4 f(\p d c)
    | bes r c r
    | R1
    | r4 f( d c)

% 190
    | bes r c r
    | r bes' c2
    | r4 bes, c2
    | f8\f c a' e f c a c
    | f c a' e f c a c
    | f c' a c f, c' a c
    | f, f, a c f4 r

    \bar "|."
}
