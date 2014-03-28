\version "2.18.2"
violinIIFourthMov =  \relative a' {
    \key f \major
    \clef violin

    \noTupletBracket
    \tupletSpan 4

    \repeat volta 2 {
	<a f'>2\f c
	| r8 c bes a g f e d
	| c4 g'' g g
	| g8( f) e-. f-. c( bes) a-. g-.
	| <a f'>2\f c
	| r8 c bes a g f e d
	| c4 g'' g g
	| g8( f) e-. f-. c( bes) a-. g-.
	| f4 r a bes

% 10
	| c d es2:16
	| d4 r f e!
	| d c b2:
	| c4 r a bes!
	| c d es2:
	| d4: d8 es d4: d8 es
	| d2: d:
	| c: c:
	| c: c:
	| c16 e, e e e4: e16 c c c c4:

% 20
	| c16 a a a c4: a8 c bes a
	| c4: c16 g g g g4 r
	| c8\p r d r e r r4
	| c'8 r d r e r r4
	| <g,, d'>2:\f <g d'>4 r
	| b8\p r c r d r r4
	| b'8 r c r d r r4
	| c,2:\f c4 r
	| c2: c4 r
	| <c es>2: <c es>4 r

% 30
	| <b d>2. e'4
	| e8( d) d-. d-. d( f) f-. f-.
	| f( e) e4. dis8( e f)
	| f( e) e-. e-. e( d!) d-. d-.
	| d( c) c4 c2:
	| c: c4: b:
	| g: bes!: a: f':
	| e: bes!: a: f:
	| e16 c c c c4: c2:
	| e: b:

% 40
	| c: c:
	| c: b8 d f <g, f'>
	| <g e'>4 r r2
	| cis'1\p ~
	| cis4( d) r2
	| c!2( b) ~
	| b4 bes a( e)
	| f e( f g)
	| c(\f a)\p fis-. g-.
	| c(\f a)\p fis-. g-.

% 50
	| c4(\f a) r2
	| \grace {
\override Flag.stroke-style = #"grace"
   c16 
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
	| f, e d c b4 r8 f'
	| f( e) f( d) c4( b)
	| c8 d e f g a b c
	| f,\f e d c b4 r

% 60
	| f'8\pp e d c b4 r
	| c8:\f e: g: c: e: c: g': e:
	| f: f,: a: c: f: c: a': f:
	| bes!2: bes:
	| a4: g: f: e:
	| d: c: b2:
	| g16 c c c c4: c2:
	| c16 c c c c4: c2:
	| c32[( d e8.)] c4-. b32[( c d8.)] b4-.
	| g16 c c c c4: c2:

% 70
	| c: c:
	| c32[( d e8.)] c4-. b32[( c d8.)] b4-.
	| r g,(\p c e)
	| e2 \grace {
\override Flag.stroke-style = #"grace"
   g16 
  \revert Flag.stroke-style }
 f4 e
	| a r <g, f'> r
	| r g( c e)
	| e2 \grace {
\override Flag.stroke-style = #"grace"
   g16 
  \revert Flag.stroke-style }
 f4 e
	| a r <g, f'> r
	| r a'( g f)
	| r a g f
	| e8\f g e' b c g e g
	| c g e' b c g e g
	| <g, e' c'>4 r <g' c e> <e c' g'>
	| <g e' c'> c,: c r
    }

    | \grace {
\override Flag.stroke-style = #"grace"
   a'16 
  \revert Flag.stroke-style }
 g4\p f8 e a4 a
    | fis4. d8 g4 g
    | \grace {
\override Flag.stroke-style = #"grace"
   f!16 
  \revert Flag.stroke-style }
 e4 d8 c f4 d
    | c( b c) r
    | a2:\f a4 r
    | a2: a4 r

% 90
    | g8\p r a r bes r r4
    | g'8 r a r bes r r4
    | e,2:\f e4 r
    | d2: d4 r
    | d2: cis4 r
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
    | d,:( cis) d-. r
    | f'2:\f es:

% 100
    | es: d:
    | d: c:
    | c: bes:
    | bes: a:
    | a: a:
    | g8 c d e f g a b
    | c4 r r2
    | <a, f'>2\f c
    | r8 c bes a g f e d
    | c4 g'' g g

% 110
    | g8( f) e-. f-. c( bes) a-. g-.
    | <a f'>2\f c
    | r8 c bes a g f e d
    | c4 g'' g g
    | g8( f) e-. f-. c( bes) a-. g-.
    | f4 r a bes
    | c d es2:16
    | d4 r f es
    | d es d c
    | b r b c 

% 120
    | d e! f2:
    | e4 r g f
    | e f e d
    | cis r cis d
    | e f g2:
    | f2: e:
    | d: c:
    | b4: bes: a: as:
    | g: fis2: f4:
    | e: f: c': f:

% 130
    | e16 c c c c4: c2:
    | c: c:
    | c16 e, e e e4: e16 c c c c4:
    | c16 a a a a4: a8 c bes a
    | c4: c16 g g g g4 r
    | f'8\p r g r a r r4
    | f'8 r g r a r r4
    | g,,2:\f g4 r
    | g8\p r a r bes r r4
    | e8 r f r g r r4

% 140
    | f2:\f f4 r
    | f2: f4 r
    | as2: as4 r
    | <g, e'>2. a'!4
    | a8( g) g-. g-. g( bes) bes-. bes-.
    | bes( a) a4. gis8( a bes!)
    | bes( a) a-. a-. a( g!) g-. g-.
    | g( f) f4-. f2:
    | f: f4: e:
    | c: es: d: bes':

% 150
    | a: es: d: bes':
    | a16 f f f f4: f2:
    | a: bes:
    | a16 f f f f4: f2:
    | f: e!4: bes:
    | a4 r r2
    | fis'1\p ~
    | fis4( g) r2
    | f!2 e
    | es d4( a)

% 160
    | bes a( bes c)
    | \lowerDynamics f(\f d) b-.\p c-.
    | \lowerDynamics f(\f d) b-.\p c-.
    | \lowerDynamics f(\f d) r2
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
    | c c c c c4 r8 bes

% 170
    | a( f) d( g) f4( e)
    | f8 c f a c c c c
    | c\f c c c c4 r
    | c,8\pp c c c c4 r
    | a'8:\f f: a: c: es: c: a: f:
    | bes: f: bes: d: f: d: bes: f:
    | es2: es':
    | d4: c: bes: a:
    | g: f: e!: <c' e>:
    | f16 f, f f f4: f2:

% 180
    | f: f':
    | f32[( g a8.)] f4-. e32[( f g8.)] e4-.
    | f16 f, f f f4: f2:
    | f: f':
    | f32[( g a8.)] f4-. e32[( f g8.)] e4-.
    | r4 \lowerDynamics c,(\p f a)
    | a2 \grace {
\override Flag.stroke-style = #"grace"
   c16 
  \revert Flag.stroke-style }
 bes4 a
    | d r <g,, e'> r
    | r c( f a)
    | a2 \grace {
\override Flag.stroke-style = #"grace"
   c16 
  \revert Flag.stroke-style }
 bes4 a

% 190
    | d r <g,, e'> r
    | r d''( c bes)
    | r d,( c bes)
    | a8\f c a' e f c a c
    | f c a' e f c a c
    | <a f'>4 r <c f a> <a f' c'>
    | <a' f'> <a, f'>: <a f'> r

    \bar "|."
}
