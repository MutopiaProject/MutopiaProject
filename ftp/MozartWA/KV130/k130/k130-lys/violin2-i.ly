\version "2.18.2"
violinIIFirstMov =  \relative f' {
    \key f \major
    \clef violin

    \noTupletBracket
    \tupletSpan 4

    \repeat volta 2 {
	r4 f\p a f
	| r g8. f16 e4 c
	| r f8. e16 d4 c
	| bes bes8-. bes-.  \grace { c32 } bes16[( a8.) \grace { bes32 } a16( g8.)]
	| g16[( a8.) a8 a] c4( bes)
	| a2:16\f f'4: a:
	| e2: g4: e:
	| c2: f4: e:
	| d2: c4: bes:

% 10
	| a4 r r2
	| c8 c4 c c c8
	| bes bes4 bes bes d8
	| <g, e'>8 <g e'>4 <g e'> <g e'> <g e'>8 ~
	| <g e'> <g e'>4 <g e'>8 <a f'> <a f'>4 <a f'>8
	| c8\p c4 c c c8
	| bes bes4 bes bes d8
	| <g, e'>8 <g e'>4 <g e'> <g e'> <g e'>8
	| f'4:\deprecatedcresc g8: a: bes:\f c: d: e:
	| f2: f:

% 20
	| f4 a2 \grace { g16 } f8 e16 d
	| e8: e,: f: g: a: b: c: d:
	| e2: e:
	| e4 e2 \grace { f16 } e8 d16 c
	| d( b) g-. g-. g4: d16( b) g-. g-. g4:
	| g'16( e) c-. c-. c4: g''16( e) c-. c-. c4:
	| c2: c:
	| c: c:
	| c16 a' a a a4: a2:
	| g8 g,\p g, g' \grace { g16 } f8( e) f( d)

% 30
	| c g c g d' g, d' g,
	| e' g, e' g, e' g, c g
	| b g b g c g c g
	| d' g, d' g, b g b g
	| c4 c'8.[\trill( b32 c)] r4 d8.[\trill( c32 d)]
	| r4 c8.[\trill( b32 c)] g8.[\trill( f32 g)]
	  e8.[\trill( d32 e)]
	| r4 b8.[\trill( a32 b)] r4 c8.[\trill( b32 c)]
	| r4 g'8.[\trill( f32 g)] b8.[\trill( a32 b)]
	  d8.[\trill( c32 d)]
	| c4. e,16( f \tuplet 3/2 { g8)-. f-. e-. d-. c-. bes!-. }
	| a8( c) a( c) b( d) b( d)

% 40
	| c4. e16( f \tuplet 3/2 { g8)-. f-. e-. d-. c-. bes!-. }
	| a8 c a c b d4( b8)
	| c16 c' c c c4: es2:
	| fis,4 a'-. a-. a-.
	| g <d, b'>2 b'4
	| c <g, d'>2 d''4
	| c2.: f4:
	| c2: b:
	| c4 \lowerDynamics g(\p f e)
	| R1

% 50
	| g16[( f8.) f8-. f-.] f16[( e8.) e8-. e-.]
	| \grace { e8 } d4 c8 b c( e) g( c)
	| g16( f8.) f8-. f-. f16( e8.) e8-. e-.
	| \grace { e16 } d16( c8.) c8 c' c( b) b( a)
	| \grace { b16 } a8( g) g8-. g-. g g g g
	| bes!2:\f cis,:
	| d: d'4: e:
	| g,: c b: d
	| e8( g) g-. g-. g4 e,8\p r
	| d r e r f r d r

% 60
	| c'(\f g) g-. g-. g4 e8\p r
	| d r e r f r d r
	| e4\f <c' e> c, r
    }

    | c'16[(\p g8.) g8-. g-.] g g g g
    | \grace { a32 } g16[( f8.) f8-. f-.] f-. f-. f-. f-.
    | \grace { g32\p } f16[( e8.) e8-. e-.] e-. e-. e-. e-. 
    | \grace { f32 } e16[( d8.) d8-. d-.] d-. d-. d-. d-.
    | c c c c c c c c
    | c c c c c c c c
    | c c c c c c c c

% 70
    | c c c c f f f f
    | es4:\f g: c: es:
    | a,: c,: d: es:
    | d: d': bes: g:
    | e!: e': f: e:
    | d: d,: e: e':
    | a,: d,2: g4:
    | f2: cis:
    | d: d':
    | d4:\f f2: d4:

% 80
    | c!2: <f, c'>:
    | bes4: a: f: es:
    | d2: d':
    | g,4 <c e> <g c e> r
    | r4 f\p a f
    | r g8. f16 e4 c
    | r f8. e16 d4 c
    | bes bes8-. bes-.  \grace { c32 } bes16[( a8.) \grace { bes32 } a16( g8.)]
    | a2:\f f'4: a:
    | e2: g4: e:

% 90
    | c2: f4: e:
    | d2: c4: bes:
    | a16( c) f-. f-.f4: c16( f) a a a4:
    | f16( a c) c-. c4: a16( c f) f-. f4:
    | f8 f4 f f f8 ~
    | f f4 f f f8
    | f2: <d f>:
    | <c e>8 c,\p c c' \grace { c32 } bes8( a) bes( g)
    | f c f c g' c, g' c,
    | a' c, a' c, a' c, f c

% 100
    | e c e c f c f c
    | g' c, g' c, e c g' e
    | f4 f8.\trill( e32 f) r4 g8.\trill( f32 g)
    | r4 a8.\trill( g32 a) f8.\trill( e32 f) a,8.\trill( g32 a)
    | r4 e'8.\trill( d32 e) r4 f8.\trill( e32 f)
    | r4 g8.\trill( f32 g) c8.\trill( bes32 c) e,8.\trill( d32 e)
    | f4. a16( bes \tuplet 3/2 { c8-.) bes-. a-. g-. f-. es-. }
    | d8( f) d( f) e!8-. g4( e8)
    | f4. a16( bes \tuplet 3/2 { c8-.) bes-. a-. g-. f-. es-. }
    | d8( f) d( f) e!8-. g4( e8)

% 110
    | f2:\f as':
    | b,,4 f''8.( d32 e) f4 d
    | <g,, e' c'> e''8.( c32 d) e4 g,
    | <a, f'> f''2.:
    | f2: <bes, e>:
    | <f a f'>4 c'(\p bes a)
    | R1
    | c16[( bes8.) bes8-. bes-.] \grace { c32 } bes16[( a8.) a8-. a-.]
    | \grace { a8 } g4 f8( e) f( a) c,4
    | c16[( bes8.) bes8-. bes-.] \grace { c32 } bes16[( a8.) a8-. a-.]

% 120
    | f'4 r8 f' \grace { g32 } f16[( e8.) \grace { f32 } e16( d8.)]
    | \grace { e32 } d16[( c8.) c8-. c-.] c c c c
    | es2:\f es:
    | d: g4: bes:
    | c: a bes: g
    | f!8( c) c-. c-. c4 f,8\p r
    | e r f r g r e r
    | f'(\f c) c-. c-. c4-. f,8\p r
    | e r f r g r e r
    | \lowerDynamics f(\f c) c-. c-. a'( f) f-. f-.

% 130
    | c' a c a c a f c
    | f4 <f c' a'> <f a f'> <f c' a'>
    | <f a f'>2 r

    \bar "|."
}
