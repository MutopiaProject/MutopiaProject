\version "2.16.0"

celloFourthMov =  \relative a {
    \key bes \major
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	R2*10

% 11
	|  a8[\f a bes bes]
	|  d[(  c)] a r
	| R2*2
	|  es8[ es f f]
	| bes,4 r8 bes'(\p
	|   c)[-. c-. f,-. f-.]
	| d4 r8 bes'(
	|   c)[-. c-. f,-. f-.]

% 20
	| d4 r8 bes'(
	|   c)[-. c-. f,-. f-.]
	| d4. d8-.
	|  es[-. f-. g-. e-.]
	| f4 r
	| R2
	|  f8[( d  bes)] r
	| R2
	|  f'8[( d  bes')] r
	| R2

% 30
	| fis4.( g8
	|  fis[ g fis  a)]
	| g4 r8 f!(
	|  e[ f e  g)]
	| f4 r
	| R2*9

% 44
	| r4 r8 g-.\f
	|  c[-. g-. c-. g-.]
	| c4 r
	| R2
	| f,4.(\p  a8)
	|  e[-. e-. e-. fis-.]

% 50
	|  a[(  g)] g-. r
	| R2
	| g4.(  bes8)
	|  f![-. f-. f-. g-.]
	|  bes[(  a)] a-. r
	| R2*2
	| r4 d,
	| g, r
	| r c

% 60
	| f, r
	| R2
	| r4 bes'
	| c c,
	| f f,(\f
	| g  a)
	| bes( g
	| a  bes)
	| c( a
	| bes  c)

% 70
	|  d8[ d d d]
	|  d[ d d d]
	|  e[ e e e]
	|  f[ f f f]
	|  bes,[ bes bes bes]
	|  c[ c cis cis]
	| d4 r
	| r8  g[ g g]
	| c,4 r8 c
	| d4 r8 a

% 80
	|  bes[ bes-. c-. c-.]
	| f,4 r
	|  f'(\p c
	| g'  c,) 
	|   a'8[(_\cresc  f bes  g)]
	| c4(  bes)
	| a2(\p
	|  e)
	| f4( bes,

% 90
	|  c) r
	| f( c g'  c,)
	|   a'8[(_\cresc  f bes  g)]
	| c4(  bes)
	| a2\p
	| bes4(  d)
	| c c,
	| f r8 f(
	|   g)[ g-. c,-. c-.]
	| a4 r8 f'(

% 100
	|   g)[ g-. c,-. c-.]
	| a4 r8 f'(_\parentCresc \noBreak
	|   g)[ g-. c,-. c-.]
	| a4(-\parentF  bes)
	| c2
	| f4 ~ f8 r
	| r4 r8 c\p
	|  f[( e d  c)]
	| c4. c8
	|   f[(-\parentCresc  e d  c)]

% 110
	| c4. bes8
	| a4\f bes
	|  c8[ c' bes, bes']
	|  a,[ a' a a]
	|  bes,[ bes' bes bes]
	|  c,[ c' c c]
	|  cis,[ cis' cis cis]
	|  d,[ d' d d]
	|  b,[ b' b b]
	|  c,[ c' c c]

% 120
	|  c,,[ c' c c]
	| f,4 r
	| R2
	| c'4(\p  d)
	|  bes8[ bes c c]
	| d4 r
	| r bes(
	|  a) r8 d
	|  bes[ bes c c]
	| f4 r

% 130
	| R2
	| r4 r8 c-.\f
	|  f[-. c-. f-. c-.]
	| f4 r
    }

    \repeat volta 2 {
        | f4(\f  g)
	| \grace f16 e8[ d16 c] f8 r
	| R2
	| r4 r8 as\p
	|  g[-. as-. g-. as-.]
	| g4 r

% 140
	| R2*4
	| f4(\f  e8) r
	| R2
	| as4(  g8) r
	| R2
	| c4(  bes8) r
	| R2*4

% 153
	| g4(  a!)
	| \grace g16 fis8[ e16 d]  g8[ g]
	| e4(  f!)
	| \grace es!16 d8[ c16 bes]  es8[ es]
	|c4(  d)
	| \grace c16 b8[ a16 g]  c8[ c]
	| \grace bes!16 a8[ g16 f]  bes8[ bes]
	| \grace a16 g8[ f16 e]  a8[ a]
	| d, r fis' r
	| g r es! r
	|  d[ d d d]
	|  d[ d d d]
	|  d[ d(\p  d') d]
	|  d[ d d d]
	| d2 ~
	| d ~
	|  d8[ d d d]

% 170
	|  c[ c c c]
	|  c[ c bes bes]
	|  bes[ bes as as]
	|  as[ as g g]
	|  g[ g f f]
	|  f[ f es] r
	| R2
	|  es8[ es] d r
	| r  bes'[( d  bes)]
	| \grace bes16 a8[ g16 f] bes8 r

% 180
	| \grace bes16 a8[ g16 f] bes8 r
	| \grace bes16 a8[ g16 f]  bes8[ bes]
	|  a[ bes a g]
	|  f[ f f f]
	|  f[ f f f]
	|  f[ f f f]
	|  f[ f f f]
	|  f[ f f f]
	|  f,[ f f f]
	|  f[ f f f]

% 190
	|  f[ f f f]
	|  f[ e'(]  f4)
	| R2
	| r8 ges(  f4)
	| R2
	| r8  bes[(\f a bes]
	|   a)[ ges( f ges]
	|  f4) r
	| R2*11
	|  a8[\f a bes bes] 

% 210
	|  d[(  c)] a r
	| R2*2
	|  es8[ es f f]
	| bes,4 r8 bes'(\p
	|   c)[-. c-. f,-. f-.]
	| d4 r8 bes'(
	|   c)[-. c-. f,-. f-.]
	| d4 r8 bes'(
	|   c)[-. c-. f,-. f-.]

% 220
	| d4. d8
	|  es[-. f-. g-. e-.]
	| f4 r
	| R2
	|  f8[( d  bes)] r
	| R2
	|  f'8[( d  bes')] r
	| R2
	| b4.( c8
	|  b[ c b  g)]

% 230
	| bes2(
	|  a8[ bes a  f)]
	| as2
	| ges4(  f)
	| es2(
	|  e)
	| f4 r
	| R2
	| r4 r8 c'-.\f
	|  f,[-. c'-. f,-. c'-.]

% 240
	| f,4 r
	| R2
	| bes4.(\p  d8)
	|  a[-. a-. a-. b-.]
	|  d[(  c)] c-. r
	| R2
	| c4.(  es8)
	|  bes![-. bes-. bes-. c-.]
	|  es[(  d)] d-. r
	| R2*2

% 251
	| r4 g,
	| c, r
	| r f
	| bes, r
	| R2
	| r4 es
	| f f,
	| bes bes(\f
	| c  d)

% 260
	| es( c
	| d  es)
	| f( d
	| es  f)
	|  g8[ g g g]
	|  g[ g g g]
	|  a[ a a a]
	|  bes[ bes bes bes]
	|  es,[ es es es]
	|  f[ f fis fis]

% 270
	| g4 r
	| r8  c,[ c c]
	| f!4 r8 f
	| g4 r8 d
	|  es[ es-. f-. f-.]
	| bes,4 r
	| bes'(\p f
	| c'  f,)
	|  d'8[(_\cresc bes es  c)]
	| f4(  es)

% 280
	| d2(\p
	|  a)
	| bes4(  es,)
	| f r
	| bes,(  f)
	| c'(  f,)
	|   d'8[(_\cresc bes es  c)]
	| f4(  es)
	| d2\p
	| es4(  g)

% 290
	| f f,
	| bes r8 bes(
	|   c)[ c-. f,-. f-.]
	| d4 r8 bes'(
	|   c)[ c-. f,-. f-.]
	| d4 r8 bes'(_\parentCresc \noBreak
	|   c)[ c-. f,-. f-.]
	| d4(-\parentF  es)
	| f2
	| bes4 ~ bes8 r

% 300
	| r4 r8 a(\p
	|   bes)[ f-. bes-. d-.]
	| es4 r8 a,(
	|   bes)[ f-. bes-. d-.]
	| es4 r8 a,(
	|  bes4.)_\cresc  b8(
	|  c4.) c8(
	|   d)[\f d d d]
	|  as[ as as as]
	|  g[ g g g]

% 310
	|  e[ e e e]
	|  f[ f f f]
	|  fis[ fis fis fis]
	|  g[ g' g g]
	|  f[\p f f f]
	|  es[ es es es]
	|  e[ e e e]
	|  f[ f f f]
	|  f[ f f f]
	| bes,4 r

% 320
	| R2
	| f'4(  g)
	|  es8[-. es-. f-. f-.]
	| g4 r
	| r es'(
	|  d) r8 g,
	|  es[-. es-. f-. f-.]
	| bes4 r
	| R2
	| r8 a(\p  bes4) ~

% 330
	| bes2 ~
	|  bes8[ a,(]  bes4) ~
	| bes2 ~
	| bes4 r8 f-.\f
	|  bes[-. f-. bes-. f-.]
	| bes4 r
    }
}
