\version "2.16.0"

violinIIFirstMov =  \relative es' {
    \key c \major
    \clef violin

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    R2.
    |  es2(\p d4
    |  cis-\cresc  d4.) a'8(
    |  b[\f c]  d) r r4
    | R2.
    |  des,2(\p c4
    |  b-\cresc  c4.) g'8(
    |  a[\f bes]  c) r r4
    | r4 f,2\p ~

% 10
    |  f8[(  d)] es2 ~
    |  es8[( f16  es)] d2 ~
    |  d8[( b]   c4)-\cresc c' ~
    |  c8[\f b( c  cis)] d4 ~
    |  d8[( c! bes a as  g)]
    | g2  f8[(  c)]
    | d4 r8  b'[(\p c  es,)]
    | d4 r8  f[( es  c)]
    | b4 r8  b[( c  a)]
    | g4.   g8[(-. g-.  g)-.]

% 20
    |  g[(  ais)] b4.\p b8
    |  b[(\sf  cis)] d4.\p f8
    | f2.\fp\fermata

    \time 4/4

    \repeat volta 2 {
        |  e8[\p e e e]  e[ e( f  g)]
	|  a[ a a a]  a[ a a a]
	|  g[ g c c]  b[ b b b]
	|  b8[-. b( c  b)]  c[ g d' g,]
	|  e'[ e e e]  e[ e d d]
	|  c8[( b c  b)]  c[ c bes bes]
	|  a[ a g g]  f[ f a a]

% 30
	| d,4(  b) r2
	| c2\f ~  c8[ c( b  c)]
	| e2(  d4) r
	| b2 ~  b8[ b( c  d)]
	| f2(  e4) r
	| g'2(   e8)[\sf c( d  e)]
	|  f[(\p a g f]  e[\sf c d  e)]
	|  f[(\p a g f]  e[\sf c d  e)]
	|  e[(\p  g,) g-. g-.]  g[(  fis) fis-. fis-.]
	|  f![(  f') f-. f-.]  f[(  e) e-. e-.]

% 40
	| d4 r f, r
	| g r c r
	| d r f, r
	| e\f e2(  f8[  d)]
	| d2(  c4) r
	| R1
	| g'2\p ~  g8[ g( a  b)]
	|  d4(-\cresc  c2) c4
	| c\f ~  c16[( b a g]   fis8)[ fis( g  a)]
	| b4  d8[(  b)]  g[ fis-. g-. a-.]

% 50
	|  b[(  g)]  d'16[( b d  b)]  g8[ fis-. g-. a-.]
	| b r  d16[(\p c d c]  b8) r  b16[( a b a]
	|  g8) r   g16[(\f fis g fis]  g2)
	|   fis8[(\p   d) fis-. fis-.] r  g[ e(  g)]
	|  fis[(  d) fis-. fis-.] r g  e16[( g e  g)]
	|  fis[( a g a]  fis[ a g  a)] fis4 r
	|   d8[(\f  b) d-. d-.] d4 r
	| r2  fis16[(\p a g b]  a[ c b  d)]
	|  c8[(\f  a) c(  a)] c4 r8 fis,
	| g4 r r2

% 60
	| r2  d'16[(\p e f! e]  d[ c b  a)]
	| gis2. d'4(
	|  c2.) e,4(
	|  fis2.) c'4(
	|  b2.) a4(
	|  g8) r  g[(  b)] r4  c8[(  a)]
	| r4  fis8[(  a)] r4  b8[(  g)]
	| r4  a16[(\p gis b a]  c8) r  c,16[( b d  c)]
	| e2\f ~  e8[ a( g!  fis)]
	| g2. g4 ~

% 70
	|  g8[ g g g]  fis[ fis fis fis]
	| g4 r b,\p b
	| ais ~ \times 2/3 {  ais8[(  b) g-.]  ais8[(  b) g-.]  ais8[(  b) g-.] }
	|  b8.[(  g16)] b4  dis8[(  e-\cresc cis  d)]
	|  b[( c! ais b]  cis[\f a'!  g) g-.]
	| b,4(  a) d'\p d
	| cis ~ \times 2/3 {  cis8[(  d) b-.] \noTupletNum  cis[(  d) b-.]
           cis[(  d) b-.] }
	|  d8.[(  b16)] d4 r d,(
	| \times 2/3 {   c8)[ e' d]  c[ b a]  g[(  c) b-.]  a[ g fis] }
	| \tupletNum g4 r r fis(

% 80
	| g  d) r fis'(\p
	| g  d) r fis,(
	| g  d) r fis'(\f
	| g  d) r2
	|  d8[ d,] d4 r2
	|  c'8[ c,] c4 r2
	|  a'8[ a,] a4 r2
	| g4 r r2 \stemUp \slurDown
	|  g16[( g' fis g]  a[ g fis  g)]  g,[( g' fis g]  a[ g fis  g)]
	|  g,[( g' fis g]  a[ g fis  g)]  g,[( g' fis g]  a[ g fis  g)]

% 90
	|  b,[-. b'( a b]  c[ b a  b)]  d,[( a' g a]  b[ a g  a)] \slurNeutral
          \stemNeutral
	| g2\p ~  g8[ g( a  b)]
	| d4(  c) r2
	| r8  fis,[( g fis]  g[ gis a  b)]
	| c1
	|  b8[( d b g]  fis[ d c  a)]
	| \stemDown  b[(  d) d'( g]  fis[ e d  c)]  \stemNeutral
	|  ais[( b d  g,)]  fis[( d c  a!)]
	| \stemDown  b[(  d) d'( g]  fis[ e d  c)] \stemNeutral
	|  ais[(  b) b-. b-.] b4 r

% 100
	| r8  a,![(   a'!)-\cresc a-.] a4 r
	| r8  b,[(  b') b-.] b4 r
	| r8  c,[(  c') c-.] c4 r
	| cis2\f ~  cis8[( d e  f)]
	| d,2 ~ d4 r
	| R1*2
    }

    \repeat volta 2 {
        |   e8[(\p f e f]  e4) r
	|  e'8[( f e f]  e4) r
	|  e,8[( f e f]  e4) r

% 110
	|  e'8[( f e f]  e4) r
	|  e,8[( f e f]  e4) r
	|  e'8[( f e f]  e4) r
	|  cis,8[( d cis d]  cis4) r
	|  cis'8[( d cis d]  cis4) r
	|  bes8[( c! bes c]  bes4) r
	|  a8[( bes a bes]  a4) r
	| r8 es'8-.\f a,4-. r8 c-. dis,4-.
	| r8  a'[-. c-. f,-.]  c'[-. e,-. c'-. dis,-.]
	| e4 <d! e> <c e> a'

% 120
	|  gis8[-. e-. d'-. gis,-.]  e'[-. c-. a-. fis-.]
	| gis4 r r2
	| r8  f![-.\p f(  e)]  e[(  dis) dis-. dis-.]
	|  dis[(  e) e-. e-.] e4 r
	| r8  f[-. f(  e)]  e[(  dis) dis-. dis-.]
	|  dis[(  e) e-. e-.] e4 r
	| b8\f b4 b b b8 ~
	| b b4 b  e8[(  gis) b-.]
	| a4 r8 cis-. e4-. r8 g,!-.
	| cis4-. r r2

% 130
	|  d8[-.\p d-. e-. e-.]  d[-. d-.]  cis[(\trill b16  cis)]
	|  d8[-.\p d-. e-. e-.]  d[-. d-.]  cis[(\trill b16  cis)]
	| d8 a4\f a a a8 ~
	| a a4 a a a8 ~
	| a a4 a c a8
	| g4 r8 b'-. d,4-. r8 f-.
	| b,4-. r r2
	|  c8[-.\p c-. d-. d-.]  c[-. c-.]  b[(\trill a16  b)]
	|  c8[-.\p c-. d-. d-.]  c[-. c-.]  b[(\trill a16  b)]
	|  c8[ g g g]  g[ g as as]

% 140
	|  as[ as as as]  f[ f g g]
	|  g[ g g g]  e![ e f f]
	|  f[ f f f]  d[ d es es]
	| es4\f r8 es'8-. a,!4-. r8 c-.
	| es,4-. r8 c'-.  es[-. a,-. c-. fis,-.]
	| g4 <g, f'!> <g es'> c
	|  b8[-. g-. f'-. b,-.]  g'[-. es-. c-. a-.]
	| b4 r r2
	| r8  as'8[-.\p as(  g)]  g[(  fis) fis-. fis-.]
	|  fis[(  g) g-. g-.] g4 r

% 150
	| r8  as8[-.\p as(  g)]  g[(  fis) fis-. fis-.]
	|  fis[(  g) b-. b-.] b4 r
	| g2\f ~  g8[( b d f]
	|  g[ f d  b)] g4\p r
	| <d b'> r r2
	| e2\p ~  e8[ e( f  g)]
	| bes2(  a4) r
	| b!2 ~  b8[ b( c  d)]
	| f2(  e4) r
	|  e8[( dis e dis]  e4) r

% 160
	|  c8[( b c b]  c4) r
	|  a8[( g a g]  f[ e f  a)]
	| g4 b,( c  d)
	| c r r2
	| a2\f ~  a8[ a( b  c)]
	| c2(  b4) r
	| b2 ~  b8[ b( c  d)]
	| d2(   c8)[ c( d  e)]
	|   f[(\p a g f]   e[\sf c d  e)]
	|  f[\p a'( g f]  e[\sf c d  e)]

% 170
	|  e[(\p  g,) g-. g-.]  g[(  fis) fis-. fis-.]
	|  f![(  f') f-. f-.]  f[(  e) e-. e-.]
	| c, r  c'16[(\f b c b]  c2)
	|  b8[(\p  g) b-. b-.] r  c[ a(  c)]
	|  b[(  g) b-. b-.] r c  a16[( c a  c)]
	|  b[( d c d]  b[ d c  d)] b4 r
	|   g8[(\f  e) g-. g-.] g4 r
	| r2   b,16[(\p d c e]  d[ f e  g)]
	|   f8[(\f  d) f-. f-.]  f[(  d) d-. d-.]
	| c4 r  e16[(\p g f a]  g[ bes a c]

% 180
	|  bes4) r  g'16[( a bes a]  g[ f e  d)]
	| cis2. g'4(
	|  f2.) f,4(
	|  e2.) d'4(
	|  c2.) c,4
	| c8 r  f[(  a)] r4  f'8[(  c)]
	| r4  e,8[(  g)] r4  g'8[(  e)]
	|  f16[( e g f]  a8) r  f,16[( e g f]  a8) r
	|  d16[( cis e d]  f8) r r  b,,[-.\f c-. d-.]
	| e1:8

% 190
	|  d8[ d d d]  f[ f b b]
	| c4 r e,\p e
	| dis ~ \times 2/3 {  dis8[(  e) c-.]  dis8[(  e) c-.]  dis8[(  e) c-.] }
	|  e8.[(  c16)] e4   gis8[(-\cresc a fis g]
	|  e[ f! dis  e)]  fis[(\f d'  c) c-.]
	| e,4(  d) g'\p g
	| fis ~ \times 2/3 {  fis8[(  g) e-.] \noTupletNum  fis[(  g) e-.]
           fis[(  g) e-.] }
	|  g8.[(  e16)] g4 r g,(
	| \times 2/3 {   f8)[ a' g]  f[ e d]  c[(  f) e-.]  d[ c b] }
	| c4 r r b,(\f

% 200
	| c  g) r g'\p ~
	| \times 2/3 {  g8[ g' f]  e[ d c]  b[ a g]  f[(\trill e  f)] }
	| e4 r r b''(\f
	| c  g) r2
	|  g,8[ g,] g4 r2
	|  a'8[ c,] c4 r2
	|  b'8[ d,] d4 r2
	| c4 r r2
	| \stemDown  g16[( g' fis g]  a[ g fis  g)]  g[( bes a bes]  c[ bes
          a  bes)] \stemNeutral
	|  d,[( a' g a]  bes[ a g  a)]  a[( c b c]  d[ c b  c)]

% 210
	|  g[ c( b c]  d[ c b  c)]  g,[( d' c d]  e[ d c  d)]
	|  c2\p ~  c8[ c( d  e)]
	| g4(  f) r2
	| r8  b[( c b]  c[ cis d  e)]
	| f1
	|  e8[( g e c!]  b[ g f  d)]
	|  e( g4  c8)  b[( a g  f)]
	|  dis[(  e) g( c]  b[ g f  d)]
	|  e[(  g) g'( c]  b[ a g  f)]
	|  dis[(  e) e-. e-.] e4 r

% 220
	| r8  d,![(   d')-\cresc d-.] d4 r
	| r8  e,[(  e') e-.] e4 r
	| r8  f,[(  f') f-.] f4 r
	| fis2\f ~  fis8[( g a  bes)]
	| g,2\p ~ g4 r
	| R1*2
    }

      e8[(\p f e f]  e4) r
    | r8  c'[( a  f)] e4(  g)
    | r8  c[( a  f)] e4(  g)

% 230
    | r8   f[(-\cresc a g]  e[ f a  g)]
    |  e[( f a g]  e[ f a  g)]
    |  e[(\f  g)] r c,  c'[(  bes)] r bes
    |  g'[(  f)] r c  dis[(  e)] r e
    |  e[(  e,)] r c'  e[(  d!)] r b!
    |  c[ g-. c-. e-.] g4(  f)
    |  g,,16[ g' g g] g4:16  c,16[ c' c c] c4:16
    | c4:16 f4:16 e4:16 d4:16
    |  c8[ g-. c-. e-.] g4(  f)
    |  g,,16[ g' g g] g4:16  c,16[ c' c c] c4:16

% 240
    | c4:16 f4:16 e4:16 d4:16
    | c2(\p a'
    | g  f)
    | e( f
    | e  d)
    | c4 e,\pp e e
    | e r r2 \bar "|."
}
