% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

melody = \relative c'' {
  \key f \major
  \time 4/4

  R1*2
  | c2. c4
  | a2 r4 f
  | bes4. f8 bes4. d8
  | c2.( bes4)
  | a r r2
  | g2. a4 bes2 d
  | e,2. g8.[( f16)]

% 10
  | f4 r r2
  | R1
  | r4 a8 g f4 bes8[( a)]
  | g4 d'8[( c)] bes4 c8[( g)]
  | a4 a r a8 g
  | f4. e8 f4. g8
  | e4 r r2
  | R1
  | r4 g8 f e4 c'8[( b)]
  | a4 d8[( c]) \appoggiatura c b4 a8[( g)]

% 20
  | g4 c r c8 b
  | a4. b8 c4. d8
  | g,4 r r2
  | R1*2
  | e'4 d c b
  | c r r2
  | r4 g g g
  | es'4.( c8) c4.( g8)
  | g2. g4

% 30
  | f'2. es4
  | es( d) c( b)
  | c2 r
  | c2. bes!8[( as)]
  | g4 r r r8 g
  | g4 r8 g as4 r8 as
  | g4 g r g8 g
  | g4 r8 g as4 r8 as
  | g4 r g g8[( d')]
  | d2. c8[( bes!)]

% 40
  | a!8[( g)] g4 g g
  | g4.( es'8) es2
  | a,2. c4
  | bes( g) bes( d)
  | d2. fis,4
  | g2 r
  | R1
  | r2 g8[( as)] a[( bes)]
  | bes2. c8[( d)]
  | es4 bes c g

% 50
  | bes( a!) as2
  | as4( f'2) es4
  | es4.( f16[ es] d4) c
  | c4.( d16[ c] bes4) as
  | g r r g8 g
  | c4. d8 es8. d16 c8. bes!16
  | bes4 a! d bes
  | \appoggiatura a g2. es'8.[( c16)]
  | a2. c8.[( bes16])
  | bes4 r r2

% 60
  | R1
  | r2 d4 d
  | d r8 c bes4 r8 a
  | g4 r8 g c4 d
  | es2. d8[( c)]
  | bes[( a]) a4 bes g
  | fis r d' c
  | bes( es2) d4
  | b( c2) c4
  | c( f2) es4

% 70
  | cis d d8[( es)] e8[( f)]
  | \appoggiatura f bes,4. bes8 bes[( c16 bes a8)] bes
  | \appoggiatura d c4 r a8[( bes)] b[( c])
  | \appoggiatura c f,4 r f8[( a)] a[( d)]
  | c4( b) a( g)
  | g2 ~ g8[( gis)] a[( f)]
  | e4 r r2
  | R1*2
  | c'4 c c c

% 80
  | c4.( a8) c4 r8 f,
  | bes4 r bes8 bes c d
  | \appoggiatura d c4. bes16[( a)] g8[( a)] bes([ c)]
  | \appoggiatura bes a4 r f f8[( c')]
  | c[( b)] b[( f']) f2 ~
  | f4 e8[( d]) d[( c]) c[( b])
  | c[( d]) d4 r c8 bes!
  | a4( c) bes( d)
  | f,2. g4
  | g( a) f8[( a]) a([ c)]

% 90
  | c[( b)] b([ f')] f2 ~
  | f4 e8[( d]) d[( c]) c[( b])
  | c4.( d8) d4 r
  | r2 c4. bes!8
  | a4 c r c
  | bes d r d
  | c8[( f d b] c[ d)] bes[( g])
  | f2. a8[( g])
  | f4 f'8[( a,]) a2 ~
  | a4 bes c d

% 100
  | g,2. bes8.[( a16)]
  | a4 f'16[( e f a,)] a2 ~
  | a4( bes c) d
  | e,2. g8.[( f16])
  | f4 r r2
  | R1*5

  \bar "|."
}
