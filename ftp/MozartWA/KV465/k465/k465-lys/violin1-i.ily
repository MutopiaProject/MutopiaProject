\version "2.16.0"

violinIFirstMov =  \relative a'' {
    \key c \major
    \clef violin

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    R2.
    | r4 a2\p ~
    | a4(-\cresc g  fis)
    | g4.(\f  a8[ bes  c)]
    | des4 r r
    | r g,2\p ~
    | g4(-\cresc f  e)
    | f4.(\f  g8[ as  bes)]
    | c4 r r

% 10
    | R2.
    | r8  c,[(\p d es f  fis)]
    | g4.  c,8[(-\cresc d  es)]
    | f!2.\f
    | e!4( es  d)
    | c4.  d16[( c]  b[ c d  c)]
    | b4 r8  d[(\p es  c)]
    | b4 r8  d[( c  a)]
    | g4 r8  d[( es  c)]
    | b4.   b8[(-. b-.  b)-.]

% 20
    |   b[(\sf  cis)]  d4.\p d8
    |   d8[(\sf  e)]  f4.\p d'8
    | \slurDown c4(\f\fermata \grace { b32[ c d c] } b2)\p\fermata
      \slurNeutral

    \time 4/4

    \repeat volta 2 {
        | c2\p ~  c8[ c( d  e)]
	| g2(  f4) r
	| d2 ~  d8[ d( e  f)]
	| a2(  g4) r
	| g2 ~  g8[ g( a  b)]
	|  c[(  e,)] f4.  e8[-. f-. g-.]
	|  a[(  cis,) d e]  f[(  a,) d c]

% 30
	|  c[(  b) a g]  fis[( g f  d)]
	| c2\f ~  c8[ c( d  e)]
	| g2(  f4) r
	| d2 ~  d8[ d( e  f)]
	| a2(  g4) r
	| e'2(   g8)[ e(\sf f  g)]
	|  a[(\p c bes a]  g[\sf e f  g)]
	|  a[(\p c bes a]  g[\sf e f  g)]
	| a4(\p cis,2  d4)
	| r b'!2(  c4)

% 40
	| r8  a[( f  d)] r  f[( d  b)]
	| r  c[-. c(  e)] r  g[-. g(  c)]
	| r  a[( f  d)] r  f[( d  b)]
	|  c[(\f  g)] g4.(  gis8[ a  f)]
	| f2(  e4) r
	| R1*2
	| e'2\p ~  e8[-\cresc e( fis  g)]
	| b4(  a) ~  a8[ a(\f b  c)]
	|  d[(  b)] g4.  a8[-. b-. c-.]

% 50
	|  d16[( b d  b)] g4.  a8[-. b-. c-.]
	|  d16[(\p b d b]  g8) r  b16[( g b g]  e8) r
	|  g16[( e g  e)] b2\f  cis8.[(\trill b32  cis)]
	|  d16[(\p e fis g]  a8) r  cis,16[( d e fis]  g8[  e)]
	|  d16[( e fis g]  a8) r  cis,16[( d e fis]  g[ e g  e)]
	|  d8[ \grace fis16 e8 d \grace fis16 e8] d4 r
	| \once \override Dots #'dot-count = #0
	  <\tweak Dots #'dot-count #1 g b, d, g,>4.\f
	  b16[ a]  g[ fis e d]  c[ b a g]
	|  fis[(-.\p a g b]  a[ c b d]  c4) r
	|  a'16[(\f  gis) c-. b-.]  a[(  gis) c-. b-.]  a[ g fis e]  d[ c b a]
	|  g[(\p b a c]  b[ d c e]  d4) r

% 60
	|  b16[( d c e]  d[ f! e g]  f4) f
	|  f8[(  e)] e4.   e8[(-. e-.  e)-.]
	| e4(  a4.)  a8[( b  c)]
	|  c[(  d,)] d4.   d8[(-. d-.  d)-.]
	|  d[(  g)] g4.  g8[( a  b)]
	|  b[(  c,)] r c  c[(  a')] r a
	|  a[(  b,)] r b  b[(  g')] r g
	|  e16[(\p dis fis e]  g8) r  c,16[( b d c]  e8) r
	|  a,16[(\f gis b a]  c[ b d c]  e[ d fis e]  g![ fis a  g)]
	|  b[( a g fis]  a[ g fis  e)]  dis[( e d c]  b[ a b  c)]

% 70
	|  d[( c b c]  d[ e fis  g)] \afterGrace a,2\trill { g16[ a] }
	| g4 r d'\p d
	| cis ~ \times 2/3 {  cis8[(  d) b-.]  cis[(  d) b-.]  cis[(  d) b-.] }
	|  d8.[(  b16)] d4 r8 g4(-\cresc  fis8) ~
	| fis( e4 d8  cis[\f c b  e)]
	| g,4(  fis) r2
	| g'4\p g g4.(  b8)
	| \times 2/3 {  fis[(  a) g-.]  f[ e d] \noTupletNum  c[ b a]  g[(
           a) f!-.] }
	| \times 2/3 {  e[ g' fis]  e[ d c]  b[(  e) d-.]  c[ b a] }
	| g4 r r d' ~

% 80
	| \times 2/3 {  d8[ d' c]  b[ a g]  fis[ e d]  c[(\trill b  c)] }
	| b4 r r d ~
	| \times 2/3 {  d8[ d' c]  b[ a g]  fis[ e d]  c[(\trill b  c)] }
	| b4 r r fis'\f \tupletNum
	|  g16[(  fis) b a]  g[ fis e d]  c[ b a g]  fis[(  g) a g]
	|  e'[(  dis) g fis]  e[ d c b]  a[ g fis e]  dis[(  e) fis e]
	|  c'[(  b) e d!]  c[ b a g]  fis[ e d c]  b[(  c) d c]
	|  b[ c d e]  fis[ g a b]  c[ d e fis]  g[ a b c]
	| d2 b,,
	| c e''

% 90
        | d fis,4.(\trill  e16[  fis)]
	| g4 r r2
	| d2\p ~  d8[ d( e  fis)]
	| a4(  g) r2
	| r8  cis,[( d cis]  d[ dis e fis]
	|  g4) r r2
	| d'2 ~  d8[ c( b  a)]
	| fis4(  g) r2
	| d'2 ~  d8[ c( b  a)]
	|  fis[(  g) g-. g-.] g4 r

% 100
	| r8  g,[(  g')-\cresc g-.] g4 r
	| r8  g,[(  g') g-.] g4 r
	| r8  g,[(  g') g-.] g4 r
	| e2\f ~  e8[( f g  a)]
	| c,2 ~  c8[( b\p f'  d)]
	|  c[( b d b]  a[ g a  f)]
	|  e[( d e  f-\cresc]  fis[ g a  b)]
    }

    \repeat volta 2 {
        | c2\p ~  c8[( d e  f)]
	| a2(  g4) r
        | c,2 ~  c8[( d e  f)]

% 110
	| a2(  g4) r
	| cis,2 ~  cis8[( d e  f)]
	| a2(  g4) r
	| e2 ~  e8[( f g  a)]
	| c2(  bes4) r
	| f2-\cresc ~  f8[ bes( d  bes)]
	| f'2(  es4) r8 a,-.\f
	| c4-. r8 dis,-. a'4-. r8 c,-.
	|  dis[-. a-. c-. f,-.]  c'[-. e,-. c'-. dis,-.]
	|  e[-. gis-. b-. e,-.]  c'[-. a-. a'-. dis,-.]

% 120
	|  e[-. b-. gis'-. e-.]  a[-. e-. c'-. a-.]
	| e'4 r r2
	| r8  a,,[\p a a]  a[(  b) b(  c)]
	|  c[(  b) b-. b-.] b4 r
	| r8  a[ a a]  a[(  b) b(  c)]
	|  c[(  b) b-. b-.] b4 r
	| r8  d,[-.\f gis-. b-.] e4(  d)
	| r8  d,[-. gis-. b-.] e4(  d)
	|  cis8[-. e-.] g!4-. r8 cis,-. e4-.
	| r8  g,![-. bes-. e,-.]  g[-. cis,-. e-. a,-.]

% 130
	| r8  a'[(\p cis  e)] bes'4(  a)
	| r8  a,[( cis  e)] bes'4(  a)
	| r2 r8  c,[-.\f fis-. a-.]
	| d4(  c) r8  c,[-. fis-. a-.]
	| d4(  c) r8  fis,[-. a-. c-.]
	|  b[-. d-.] f,!4-. r8 as-. d,4-.
	| r8  f[-. b,-. d-.]  f,[-. as-. d,-. f-.]
	| r8  g[(\p b  d)] as'4(  g)
	| r8  g,[( b  d)] as'4(  g)
	| r8  c,[( es  g)] bes4(  as)

% 140
	| r8  bes,[( d  f)] as4(  g)
	| r8  as,[( c  es)] g4(  f)
	| r8  g,[( b  d)] f4(  es)
	| r8 c'-.\f es4-. r8 a,!-. c4-.
	| r8  fis,[-. a-. c,-.]  es[-. a,-. c-. fis,-.]
	|  g[-. g,-. g'-. d-.]  es[-. c-. c'-. fis,-.]
	|  g[-. d-. b'-. g-.]  c[-. g-. es'-. c-.]
	| g'4 r r2
	| r8  c,[\p c c]  c[(  d) d(  es)]
	|  es[(  d) d-. d-.] d4 r

% 150
	| r8  c[ c c]  c[(  d) d(  es)]
	|  es[(  d) d-. d-.] d4 r
	| r2 g\f ~
	|  g8[( b d f]  g[\p f d  b)]
	|  g'[( f d  b)] r2
	| c,2\p ~  c8[ c( d  e)]
	| g2(  f4) r
	| d2 ~  d8[ d( e  f)]
	| a2(  g4) r
	| g2 ~  g8[ g-. a-. b-.]

% 160
	|  c[(  e,)] f4.  e8[-. f-. g-.]
	|  a[(  cis,) d-. e-.]  f[(  a,) d-. c-.]
	|  c[(  b) a g]  fis[( g f  d)]
	| c2\f ~  c8[ c( d  e)]
	| g2(  f4) r
	| d2 ~  d8[ d( e  f)]
	| a2(  g4) r
	| e2 ~  e8[ e( f  g)]
	|  a[(\p c bes a]  g[\sf e f  g)]
	|  a[\p c'( bes a]  g[\sf e f  g)]

% 170
	| a4\p cis,2(  d4)
	| r b'!2(  c4)
	|  dis16[(\f  e) c-. a-.] e2  fis8.[(\trill e32  fis)]
	|  g16[(\p a b c]  d8) r  fis,16[( g a b]  c8[  a)]
	|  g16[(\p a b c]  d8) r  fis,16[( g a b]  c[ a c  a)]
	|  g8[ \grace b16 a8 g \grace b16 a8] g4 r
	| <e, c' g'>\f ~  g'16[ f! e d]  c[ b a g]  f[ e d c]
	|   b[(\p d c e]  d[ f e g]  f4) r
	|  f'16[\f g a g]  f[ e d c]  b[ c d c]  b[ a g f]
	| \stemUp  e[(\p g f a]  g[ bes a c]  bes4) r \stemNeutral

% 180
	|  e16[( g f a]  g[ bes a c]  bes4) bes
	|  bes8[(  a)] a2 a4
	|  a8.[(  f16)] a4.(  d8[ cis  d)]
	|  d[(  e,)] e2 e4
	|  e8.[(  f16)] e4.  a8[( b  c)]
	|  c[(  d,)] r d  d[(  c')] r c
	|  c[(  e,)] r e  e[(  c')] r c
	| c r  a16[( gis b a]  c8) r  f,16[( e g f]
	% The B&H score has a wrong  gis16[( e g f]
	|  a8) r  d,16[(\f cis e  d)]  f[(  g) f e]  d[ c b a]
	|  g8[ a16 b]  c[ d e f]  g[ f e f]  g[ a b c]

% 190
	|  gis[ a b a] \grace g16 f8[ e16 d] \afterGrace d2\trill { c16[ d] }
	| c4 r g'\p g
	| fis ~ \times 2/3 {  fis8[(  g) e-.]  fis[(  g) e-.]  fis[(  g) e-.] }
	|  g8.[(  e16)] g4 r8 c4(-\cresc  b8) ~
	| b( a4 g8  fis[\f f e  a)]
	| c,4(  b) r2
	| c'4\p c c4.(  e8)
	| \times 2/3 {  b[(  d) c-.]  bes[ a g] \noTupletNum  f[ e d]  c[(
           d) bes-.] }
	| \times 2/3 {  a[ c' b!]  a[ g f]  e[(  a) g-.]  f[ e d] }
	| c4 r r g\f ~

% 200
	| \times 2/3 {  g8[ g' f]  e[ d c]  b[ a g]  f[(\trill e  f)] }
	| e4 r r g'\p ~
	| \times 2/3 {  g8[ g' f]  e[ d c]  b[ a g]  f[(\trill e  f)] }
	| e4 r r b'\f \tupletNum
	|  c16[(  b) a g]  f[ e d c]  b[(  c) d-. c-.]  b[(  c) e-. c-.]
	|  a'[(  g) f e]  d[ c b a]  gis[(  a) b-. a-.]  gis[(  a) c-. a-.]
	|  f'[(  e) d c]  b[ a g! f]  e[(  f) g-. f-.]  e[(  f) a-. f-.]
	|  e[(  g) f e]  f[ g a b]  c[(  b) c d]  e[ f g a]
	| bes2 cis,,
	| d a''

% 210
	| g b,4.\trill  a16[(  b)]
	| c4 r r2
	| g2\p ~  g8[ g( a  b)]
	| d4(  c) r2
	| r8  fis[( g fis]  g[ gis a b]
	|  c4) r r2
	| g!2 ~  g8[( f e  d)]
	| b4(  c) r2
	| \grace g'16 g'2 ~  g8[( f e  d)]
	|  b[(  c) c-. c-.] c4 r

% 220
        | r8  c,[(  c')-\cresc c-.] c4 r
        | r8  c,[(  c') c-.] c4 r
        | r8  c,[(  c') c-.] c4 r
	| a2\f ~  a8[( bes c  d)]
	| f,2\p ~  f8[( e bes'  g)]
	|  f[( e g e]  d[ c d  bes)]
	|  a[( g fis  g-\cresc]  as[ a bes  b)]
    }

    | c2\p ~  c8[ cis( d  e)]
    | g4(  f) r2
    | c!2 ~  c8[ cis( d  e)]

% 230
    |  g8[(  f)] c!4.(-\cresc  cis8[ d  e)]
    |  g[(  f)] c!4.(  cis8[ d  e)]
    |  g[(\f  f)] r c!  a'[(  g)] r c,
    |  bes'[(  a)] r a b[(  c)] r c
    |  c[(  g)] r e  g[(  f)] r d
    | c4 r r8  g'[-. b-. d-.]
    | f4.(  d8) e4.(  c8)
    | a4.(  d8) c4  b8[(\trill a16  b)]
    | c4 r r8  g[-. b-. d-.]
    | f f4(  d8) e e4(  c8)

% 240
    | a a4(  d8) c4  b8[(\trill a16  b)]
    | c4 r r2
    | g,2\p ~  g8[ gis( a  b)]
    |  d[(  c)] r4 r2
    | g'2 ~  g8[ gis( a  b)]
    |  d[(  c)] c4\pp c c
    | c r r2 \bar "|."
}
