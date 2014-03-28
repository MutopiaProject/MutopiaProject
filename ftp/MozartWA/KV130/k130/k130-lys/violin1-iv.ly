\version "2.18.2"
violinIFourthMov =  \relative a' {
    \key f \major
    \clef violin

    \noTupletBracket
    \tupletSpan 4

    \repeat volta 2 {
	<a f'>2\f c
	| r8 c bes a g f e d
	| c4 bes'' bes bes
	| bes8( a) g-. f-. a( g) f-. e-.
	| <a, f'>2 c
	| r8 c bes a g f e d
	| c4 bes'' bes bes
	| bes8( a) g-. f-. a( g) f-. e-.

% 9
	| \repeat unfold 5 { f2:16 f: }
	| f: fis:
	| g4. a16( fis) g4. a16( fis)
	| g8[ r16 \lbcOne g32( a] 
	  bes8)[ r16 \lbcOne bes32( c] d4) <d, f!>
	| e16 c' c c c4: c8 e, f g
	| a16 c c c c4: c8 f, e f
	| g16 c, c c c4: c8 e, f g

% 20
	| a16 c c c c4: c8 f, e f
	| g16 c, c c c4: c r
	| e8\p r f r g r r4
	| e'8 r f r g r r4
	| <g,, f'>2:\f <g f'>4 r
	| d'8\p r e r f r r4
	| d'8 r e r f r r4
	| <g,, e'>2:\f <g e'>4 r
	| <a f'>2: <a f'>4 r
	| <as fis'>2: <as fis'>4 r


% 30
	| <g g'>2. c''4
	| c8( b) b-. b-. b( a) a-. a-.
	| a( g) g4. fis8( g a)
	| a( g) g-. g-. g( f!) f-. f-.
	| f( e) e4. d8 e f
	| f( e) e-. e-. e( d) d-. d-.
	| d( c) c4. d16 e f g a b
	| c4 c,4. d16 e f g a b
	| c4 c, a' a,
	| g c8. d16 << { d2\trill } { s4.. \grace {
\override Flag.stroke-style = #"grace"
   c16[ d] 
  \revert Flag.stroke-style }
 } >>

% 40
	| \tuplet 3/2 { c'8 g g g g g a f f f f f }
	| \tuplet 3/2 { e c c c c c g' b, b b b b } 
	| c4 e\p dis8( e) f( e)
	| e4 e e \grace {
\override Flag.stroke-style = #"grace"
   g16 
  \revert Flag.stroke-style }
 f4
	| e( d!) cis8( d) e( d)
	| d4 d d \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 e4
	| d4( c!) b8( c) d( c)
	| c4 c c c
	| a'(\f c,)\p c-. c-.
	| a'(\f c,)\p c-. c-.

% 50
	| a'4(\f c,) r2
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
	| b c d e f4 r8 f,
	| f( e) f( d) c4( b)
	| c8 d e f g a b c
	| b\f c d e f4 r

% 60
	| b,8\pp c d e f4 r
	| e8\f c'4 c c c8 ~
	| c c4 c c c8
	| cis2:16 cis:
	| d4: c!: b: a:
	| g: f: e: d:
	| c g'8 g g32[( a bes!8.)] g4
	| r4 a8 a a32[( b c8.)] a4
	| e32[( f g8.)] e4-. d32[( e f8.)] d4-.
	| c4 g'8 g g32[( a bes8.)] g4

% 70
	| r4 a8 a a32[( b c8.)] a4-. 
	| e32[( f g8.)] e4-. d32[( e f8.)] d4-.
	| r g,(\p c e)
	| e2 \grace {
\override Flag.stroke-style = #"grace"
   g16 
  \revert Flag.stroke-style }
 f4 e
	| a r b, r
	| r g( c e)
	| e2 \grace {
\override Flag.stroke-style = #"grace"
   g16 
  \revert Flag.stroke-style }
 f4 e
	| a r b, r
	| a' f8( d) c4( b)
	| \grace {
\override Flag.stroke-style = #"grace"
   gis'16 
  \revert Flag.stroke-style }
 a4 g16( f e d) c4(b)

% 80
	| c8\f g e' b c g e g
	| c g e' b c g e g
	| <g, e' c'>4 r <g' c g'> <e c' g'>
	| <g e' c'> c,4: c r
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
 e4 d8 c f4 f
    | e( d c) r
    | c2:\f c4 r
    | c2: c4 r

% 90
    | bes8 r c r d r r4
    | bes'8 r c r d r r4
    | <a, g'>2:\f <a g'>4 r
    | <a f'>2: <a f'>4 r
    | <a e'>2: <a e'>4 r
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
    | d''2:\f d:

% 100
    | c: c:
    | bes: bes:
    | a: a:
    | g: g:
    | f: f:
    | e8 c d e f g a b
    | c4 r r2
    | <a, f'>2 c
    | r8 c bes a g f e d
    | c4 bes'' bes bes

% 110
    | bes8( a) g-. f-. a( g) f-. e-.
    | <a, f'>2 c
    | r8 c bes a g f e d
    | c4 bes'' bes bes
    | bes8( a) g-. f-. a( g) f-. e-.
    | f2: f:
    | f: f:
    | f: f:
    | f: fis:
    | g: g:

% 120
    | g: g:
    | g: g:
    | g: gis:
    | a: a:
    | a: a:
    | a4: bes2: a4:
    | a: g!2: f!4:
    | f: e2: d4:
    | d: c2: bes4:
    | bes: a: f': a:

% 130
    | g16 c c c c4: c8 e, f g
    | a16 c c c c4: c8 f, e f
    | g16 c, c c c4: c8 e, f g
    | a16 c c c c4: c8 f, e f
    | g16 c, c c c4: c r
    | a'8\p r bes r c r r4
    | a'8 r bes r c r r4
    | bes,,2:\f bes4 r
    | e8\p r f r g r r4
    | g'8 r a r bes r r4

% 140
    | a,2:\f a4 r
    | bes2: bes4 r
    | b2: b4 r
    | <c, e c'>2. f'4
    | f8( e) e-. e-. e( d) d-. d-.
    | d( c) c4. b8( c d)
    | d( c) c-. c-. c( bes!) bes-. bes-.
    | bes( a) a4. g8 a bes
    | bes( a) a-. a-. a( g) g-. g-.
    | g( f) f4. g16 a bes c d e

% 150
    | f4 f,4. g16 a bes c d e
    | f4 c d d'
    | c, f8. g16 << { g2\trill } { s4.. \grace {
\override Flag.stroke-style = #"grace"
   f16[ g] 
  \revert Flag.stroke-style }
 } >>
    | \tuplet 3/2 { f8 c c c c c d bes bes bes bes bes}
    | \tuplet 3/2 { a f f f f f c' e, e e e e }
    | f4 a\p gis8( a) bes( a)
    | a4 a a \grace {
\override Flag.stroke-style = #"grace"
   c16 
  \revert Flag.stroke-style }
 bes4
    | a( g!) fis8( g) a( g)
    | g4 g g \grace {
\override Flag.stroke-style = #"grace"
   bes16 
  \revert Flag.stroke-style }
 a4
    | g( f!) e!8( f) g( f)

% 160
    | f4 f f f
    | d'(\f f,) f-.\p f-.
    | d'(\f f,) f-.\p f-.
    | d'4(\f f,) r2
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
    | f8\f f'4 f f f8 ~
    | f f4 f f f8
    | fis2: fis:
    | g4: f!: e: d':
    | c: bes: a: g:
    | f4 f8 f f32[( g a8.)] c,4

% 180
    | r d8 d g32[( a bes8.)] g4
    | a32[( bes c8.)] a4-. g32[( a bes8.)] g4-.
    | f4 f8 f f32[( g a8.)] c,4
    | r d8 d g32[( a bes8.)] g4
    | a32[( bes c8.)] a4-. g32[( a bes8.)] g4-.
    | r4 c,(\p f a)
    | a2 \grace {
\override Flag.stroke-style = #"grace"
   c16 
  \revert Flag.stroke-style }
 bes4 a
    | d r e, r
    | r c( f a)
    | a2 \grace {
\override Flag.stroke-style = #"grace"
   c16 
  \revert Flag.stroke-style }
 bes4 a

% 190
    | d r e, r
    | d' bes8( g) f4( e)
    | \grace {
\override Flag.stroke-style = #"grace"
   cis16 
  \revert Flag.stroke-style }
 d4 c16( bes a g) f4( e)
    | f8\f c a' e f c a c
    | f c a' e f c a c
    | <a f'>4 r <c f a> <a f' c'>
    | <a' f'> <a, f'>: <a f'> r

    \bar "|."
}
