\version "2.18.2"
fluteIIFourthMov =  \relative a' {
    \key f \major
    \clef violin

    \override Staff.TupletBracket.bracket-visibility = ##f

    \repeat volta 2 {
	a2\f a 
	| r8 c bes a g f e d 
	| c2 g''2 ~ 
	| g8( f) e-. f-. c( bes) a-. g-.
	| a2 c 
	| r8 c bes a g f e d 
	| c2 g''2 ~ 
	| g8( f) e-. f-. c( bes) a-. g-.
	| a4 r a bes 

% 10
	| c d es2 
	| d4 r f e! 
	| d c b2 
	| c4 r a bes! 
	| c d es2 
	| d4. es8 d4. es8 
	| d1 
	| c2. d8 e 
	| f2 ~ f8 c( b a) 
	| c1 ~ 

% 20
	| c ~ 
	| c2. r4
	| R1*2
	| f2. r4
	| R1*2
	| e2. r4 
	| f2. r4 
	| fis2. r4 
	| g,2 r

% 31
	| R1
	| f'8( e) e4 r2
	| R1
	| d8( c) c4 r2
	| R1
	| r4 g'4 f2\trill 
	| e4 g f2\trill 
	| e4 g a2 
	| e d 
	| c4 g' a f 
	| e2 d4 f 
	| e r4 r2
	| R1*8

% 51
	| \grace {
\override Flag.stroke-style = #"grace"
   c'16 
  \revert Flag.stroke-style }
 b4\p a8 g c4 c 
	| fis,4. d8 g4 g
	| \grace {
\override Flag.stroke-style = #"grace"
   f!16 
  \revert Flag.stroke-style }
 e4 d8 c a'4 a
	| b,4. g8 d'4 d
	| c8 d e f g a b c
	| f,8 e d c b4 r8 f'
	| f( e) f-. d-. c4( b)
	| c8 d e f g a b c
	| f,8\f e d c b4 r4

% 60
	| f'8\pp e d c b4 r4
	| r2 g'2 
	| c,4 r f2 
	| e1 
	| f4 g f e 
	| d c' b b 
	| g1 
	| f2 a 
	| c4 g8 e d2 
	| g1 
	| f2 a 
	| c4 g8 e d2 
	| R1*8
	| c'8\f g e' b c g e g
	| c g e' b c g e g
	| c g e g c g e g
	| c g e g e4 r
    }

    \grace {
\override Flag.stroke-style = #"grace"
   a16 
  \revert Flag.stroke-style }
 g4\p f8 e a4 a
    | fis4. d8 g4 g
    | \grace {
\override Flag.stroke-style = #"grace"
   f!16 
  \revert Flag.stroke-style }
 e4 d8 c f4 f
    | e( d c) r
    | fis2.\f r4 fis2. r4 

% 90
    | R1*2
    | e2.\f r4 
    | d2( f4) r 
    | e2. r4
    | \grace {
\override Flag.stroke-style = #"grace"
   bes'16 
  \revert Flag.stroke-style }
 a4\p g8 f bes4 bes
    | gis4. e8 a4 a
    | \grace {
\override Flag.stroke-style = #"grace"
   g!16 
  \revert Flag.stroke-style }
 fis4 e8 d bes'4 bes
    | d,( cis) d-. r
    | f2\f es ~ 

% 100
    | es d ~ 
    | d c4 c' ~ 
    | c2 bes ~ 
    | bes a ~ 
    | a f 
    | e8 c d e f g a b 
    | c4 r r2
    | a,\f c 
    | r8 c' bes a g f e d 
    | c4 g' g g 

% 110
    | g8( f) e-. f-. c( bes) a-. g-.
    | a2 c 
    | r8 c' bes a g f e d 
    | c4 g' g g 
    | g8( f) e-. f-. c( bes) a-. g-.
    | f4 r a bes 
    | c d es2 
    | d4 r f es 
    | d es d c 

% 119
    | b4 r b c d e! f2 e4 r g f e f e d 
    | cis4 r cis d e f g2( f4) r r2
    | R1*3

% 129
    | r2 f2 
    | e4 r r8 c d e 
    | f4 r r8 c bes a 
    | c1 ~ 
    | c ~ 
    | c2. r4
    | R1*2
    | g'2. r4
    | R1*2
    | f2.\f r4 f2. r4 f2. r4 e2 r2
    | R1
    | bes'8( a) a4-. r2
    | R1
    | g8( f) f4. f8 f f 
    | f2. e4 
    | f c' bes e, 
    | f c' bes e, 

% 151
    | f1 ~ 
    | f2. e4 
    | f1 ~ 
    | f4 a g e 
    | f r r2
    | R1*8

% 164
    | \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 e4\p d8 c f4 f
    | b,4. g8 c4 c'
    | \grace {
\override Flag.stroke-style = #"grace"
   bes!16 
  \revert Flag.stroke-style }
 a4 g8 f d'4 d
    | e,4. c8 g'4 g
    | f8 c f a c c c c
    | bes a g f e4 r8 bes'

% 170
    | a( f) d( g) f4( e)
    | f8 c f a c c c c
    | bes\f a g f e4 r
    | bes'8\pp a g f e4 r
    | r2 f2\f f4 r f2 es1 d4 c bes a' g f e! e 

% 179
    | f2 c'2 bes2. g4 f2 e 
    | f2 c'2 bes2. g4 f2 e 
    | R1*8
    | f8\f c a' e f c a c
    | f c a' e f c a c
    | f c a c f c a c
    | f a c a f4 r

    \bar "|."
}
