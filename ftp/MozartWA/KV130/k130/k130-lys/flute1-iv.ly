\version "2.18.2"
fluteIFourthMov =  \relative f'' {
    \key f \major
    \clef violin

    \override Staff.TupletBracket.bracket-visibility = ##f

    \repeat volta 2 {
	f2\f c
	| r8 c bes a g f e d c2 bes''2 ~ bes8( a) g-. f-.
	  a( g) f-. e-. % A and G staccato
	| f2 c r8 c bes a g f e d c2 bes''2 ~ bes8( a) g-. f-.
	  a( g) f-. e-. % A and G staccato
	| f1 ~ f ~ f ~ f ~ f f2 fis
	| g4. fis8 g4. fis8
	| g2. f!4
	| e2. f8 g a2 ~ a8 f( e f)
	| c'1 ~ c ~ c2. r4

% 22
	| R1*2
	| d2. r4
	| R1*2
	| c2. r4 c2. r4 c2. r4 g2 r

% 31
	| R1
	| a8( g) g4 r2
	| R1
	| f8( e) e4 r2
	| R1
	| r4 
	  bes'4 a b c bes a b c1 ~ c2 b c2. a4 g c b d c 
	  r4 r2
	| R1*8

% 51
	| \grace { c16 }
 b4\p a8 g c4 c 
	| fis,4. d8 g4 g
	| \grace { f!16 }
 e4 d8 c a'4 a
	| b,4. g8 d'4 d
	| c8 d e f g a b c
	| b c d e f4 r8 f,
	| f( e) f-. d-. c4( b)
	| c8 d e f g a b c
	| b\f c d e f4 r4

% 60
	| b,8\pp c d e f4 r4
	| r2 e,2\f
	| f4 r a2 bes1 a4 c! b a g f' e d
	| c2 bes! a f
	| e4 c'4 b2 c2 bes! a f e4 c' b2
	| R1*8
	| c8\f g e' b c g e g
	| c g e' b c g e g
	| c g e g c g e g
	| c g e g c4 r
    }

    \grace { a16 } g4\p f8 e a4 a
    | fis4. d8 g4 g
    | \grace { f!16 } e4 d8 c f4 f
    | e( d c) r
    | c'2.\f r4 c2. r4

% 90
    | R1*2
    | g2.\f r4 
    | f2( f'4) r
    | d2( cis4) r4
    | \grace { bes16 } a4\p g8 f bes4 bes
    | gis4. e8 a4 a
    | \grace { g!16 } fis4 e8 d bes'4 bes
    | d,( cis) d-. r
    | d'1\f c bes a g f2 a

% 100
    | g8 c, d e f g a b 
    | c4 r r2
    | f,2\f c
    | r8 c' bes a g f e d 
    | c4 bes' bes bes 
    | bes8( a) g-. f-. a( g) f-. e-.
    | f2 c 
    | r8 c' bes a g f e d 
    | c4 bes' bes bes

% 110
    | bes8( a) g-. f-.  a( g) f-. e-.
    | f1 ~ 
    | f ~ 
    | f ~ 
    | f2 fis
    | g1 ~ 
    | g ~ 
    | g ~ 
    | g2 gis

% 120
    | a1 ~ 
    | a ~ 
    | a4 r r2
    | R1*3

% 129
    | r2 a2 g4 r r8 e f g a4 r r8 f e f c'1 ~ c ~ c2. r4
    | R1*2
    | bes2. r4
    | R1*2
    | a2.\f r4 bes2. r4 b2. r4 c2 r2
    | R1
    | d8( c) c4-. r2
    | R1
    | bes8( a) a4. g8 a bes
    | bes8( a) a-. a-. a( g) g-. g-. f4
      es' d bes a es' d bes

% 151
    | a4 c d bes a2 g^\trill f4 c' d f a,
      c4 bes g
    | f4 r r2
    | R1*8

% 164
    | \grace { f16 } e4\p d8 c f4 f
    | b,4. g8 c4 c'
    | \grace { bes!16 } a4 g8 f d'4 d
    | e,4. c8 g'4 g
    | f8 c f a c c c c
    | bes a g f e4 r8 bes'

% 170
    | a( f) d( g) f4( e)
    | f8 c f a c c c c
    | bes\f a g f e4 r
    | bes'8\pp a g f e4 r
    | r2 a2\f bes4 r bes2 a1 g4 f e d' c bes a g

% 179
    | f2 es'2 d2. bes4 a2 g
    | f2 es'2 d2. bes4 a2 g
    | R1*8
    | f8\f c a' e f c a c
    | f c a' e f c a c
    | f c a c f c a c
    | f a c a f4 r

    \bar "|."
}
