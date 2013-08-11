\version "2.16.0"

violinIIFourthMov =  \relative g' {
    \key c \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	r4
	|   g8[(\p e]  g) r
	|  f[( d]  f) r
	| r  g[( c,  a')]
	|  e[(  d)] r4
	|  g8[ g g g]
	|  g[ g g g]
	| g(  c4) c8
	|  c[(  b)] r4
	|  e,16[( c e c]  e8) r

% 10
        |  f16[( d f d]  f8) r
	| r  g[( c,  a')]
	|  e[(  d)]  c[-. c-.]
	|  c[-. c-. c-. c-.]
	|  c'[-. c-. c-. c-.]
	| c4 \grace e16 d8[ c16 b]
	| c8 r  c,[-.\f c-.]
	| b-. r r4
	| r  f'8[\p f]
	|  f8[( g16 a]  g[ f e  d)]

% 20
        |  c8[(  b)]  c[-.\f c-.]
        | b r r4
        | r  f'8[\p f]
        |  f8[( g16 a]  g[ f e  d)]
        |  c8[(  b)] r4
        |  g'8[( e]  g) r
        |  f[( d]  f) r
        | r   g[(-\cresc c,  a')]
        |  d,[( b' e,  c')]
        |  g[(\f  f')] r4

% 30
        | R2
        |  c8[\p c] c r
        |  c[ c] c r
        |  e,16[( g e g]  e[ g f  g)]
        | e8 r  c[\f c]
        | g r  e'[ e]
        |  c[ g' e c']
        |  g[ e' c g']
        |  e[ c g e']
        |  b,16[ b b b] b4:16

% 40
        | b4:16 b4:16
        | c8 a''4 e8 ~
        | e c4 a8
        | a,4:16 a4:16
        | a4:16 a4:16
        | bes8 g''4 d8 ~
        | d bes4 g8
        | bes4:16 bes4:16
        | a4:16 g4:16
        | fis4:16 bes4:16

% 50
        | a4:16 g4:16
        | fis4:16 bes4:16
        | a4:16 g4:16
        | fis8 r  a[\p a]
        | a r r4
        | r8  g,[(  g') g]
        |  g[ g g g]
        |  fis[-. fis-. f-. f-.]
        |  e[-. e-. es-. es-.]
        | d4( e!

% 60
        | c  cis)
        |  d8[(  a) a-. a-.]
        |  a[(  ais\f  b) b]
        | b2 ~
        |  b8[ bes(  bes') bes]
        |  bes[(  a) as-. as-.]
        |  as[(  g) g-. g-.]
        | fis4(  g) ~
        | g(  fis)
        | g r

% 70
        | <b, d>8[\p <b d> <b d> <b d>]
        | <c d>4 r
        | <a fis'>8[ <a fis'> <a fis'> <a fis'>]
        | <g g'>4 r
        | <b d>8[ <b d> <b d> <b d>]
        | <c d>4 r
        | <a fis'>8[ <a fis'> <a fis'> <a fis'>]
        | <g g'>4 r8 d'(
        |   e)[ fis-. g-. a-.]
        | b4 r8 d,(

% 80
        |   e)[ fis-. g-. a-.]
        | b4 r8 d,(
        |   e)[ fis-. g-. a-.]
        | d, r a'4(\fp
        |  g8) r a4(\fp
        |  g8) r a4(\fp
        |  g8) r a4(\fp
        |  g8) r r4
        | R2
        |  es2(\p

% 90
        |  bes)
        | g4 r8 g(
        |  bes[ d f!  d)]
        |  es2(\p
        |  bes)
        | g4 r8 g(
        |  bes[ d f!  d)]
        | es2(
        |  d)
        |  d8[(  c)] c4 ~

% 100
        | c(  cis)
        | d2(
        |  c!)
        | b4\f r
        | g' r
        | b r
        | d r
        | g r
        | r8  b,[(  b') a-.]
        | gis4( g

% 110
        |  fis)  f8[-. f-.]
        |  f[(  e) e-. e-.]
        |  e[(  dis) d-. d-.]
        |  d[(  cis) c-. c-.]
        |  c[(  b) bes-. bes-.]
        | b!4.(  d8)
        | g,4.(  a16[  fis)]
        | g4 r
        | fis(\p  a)
        | b(  g8) r

% 120
        | g4(  fis8) r
        | a4(  g8) r
        | e4(  fis)
        | g4(  e8) r
        | d4(  fis8) r
        | g r g r
        | a r fis r
        | g r b r
        | c r a r
        | b r g' r

% 130
        | g r fis r
        | g r  g,[-. a-.]
        |  b[-. c-. d-.  e-.]
        | f!4  g,8[-. a-.]
        |  b[-. c-. d-. e-.]
        | f4 r
        | r
    }

    \repeat volta 2 {
        r4
	|   g,8[(\p es]  g) r
	|  f[( d]  f) r
	| r g4(  f8)

% 140
	|  es[(  d)] r4
	| g2 ~
	| g4.(  b,8)
	|  c[( e! f  c')]
	|  c[(  b)] r4
	|  es,16[( c es c]  es8) r
	|  f16[( d f d]  f8) r
	| r  g[( c,  a'!)]
	|   d,[(-\cresc g es  c')]
	|  f,[( d' g,  es')]

% 150
	|  bes[(\f  as')] r4
	| R2
	|   g,8[(\p es]  g) r
	|  as[( f]  as) r
	|  es[(  g)] r4
	| r  des'8[ des]
	|  des[(  g,)]  bes[ bes]
	|  bes[(  e,!)] r4
	|  as8[( f]  as) r
	|  bes[( g]  bes) r

% 160
	|  f[(  a!)] r4
	| r  es'8[ es]
	|  es[(  a,!)]  c'[-.\f c-.]
	|  c[(  fis,)]  a![-. a-.]
	|  a[(  dis,)]  fis[-. fis-.]
	|  fis[(  b,!)]  b[-. b-.]
	|  b[(  e,!)] <e b'>4
	| <e cis'> <cis' e>
	| <fis, d'> <b fis'>
	| <b gis'>  cis8[-. cis-.]

% 170
	|  cis[(  fis,)] <fis cis'>4
	| <fis dis'> <dis' fis>
	| <cis e> <cis gis'>
	| <cis ais'>  dis8[-. dis-.]
	|  dis[(  gis,)]  b8[-. b-.]
	|  b[(  e,)]  gis[-. gis-.]
	|  gis[(  cis,)]  e[-. e-.]
	|  e[(  a,)]  cis'[-. cis-.]
	|  cis[(  fis,)]  a[-. a-.]
	|  a[ gis fis e]

% 180
	| <b fis' b>4 r
	| R2
	|  gis'8[(\p e]  gis) r
	|  a[( fis]  a) r
	|  e[(  gis)] r4
	| R2
	|  g!8[( e]  g) r
	|  a[( fis]  a) r
	|  e[(  g)] r4
	| R2

% 190
	|  g16[( e g e]  g8) r
	| \stemUp  b16[( g b g]  b8) r \stemNeutral
	| b,4  g'8[-. a-.]
	|  b[-. c-. d-. e-.]
	|  g[(  f)]  g,[-. a-.]
	|  b[-. c-. d-. e-.]
	| f4 r
	| f8 r f r
	| f r r4
	| R2

% 200
	|   g,8[(\p e]  g) r
	|  f[( d]  f) r
	| r  g[( c,  a')]
	|  e[(  d)] r4
	|  g8[ g g g]
	|  g[ g g g]
	| g(  c4) c8
	|  c[(  b)] r4
	|  e,16[( c e c]  e8) r
        |  f16[( d f d]  f8) r

% 210
	| r  g[( c,  a')]
	|  e[(  d)]  c[-. c-.]
	|  c[-. c-. c-. c-.]
	|  c'[-. c-. c-. c-.]
	| c4 \grace e16 d8[ c16 b]
	| c8 r  c,[-.\f c-.]
	| b-. r r4
	| r  f'8[\p f]
	|  f8[( g16 a]  g[ f e  d)]
        |  c8[(  b)]  c[-.\f c-.]

% 220
        | b r r4
        | r  f'8[\p f]
        |  f8[( g16 a]  g[ f e  d)]
        |  c8[(  b)] r4
        |  g'8[( e]  g) r
        |  f[( d]  f) r
        | r   g[(-\cresc c,  a')]
        |  d,[( b' e,  c')]
        |  g[(\f  f')] r4
        | R2

% 230
        |  c8[\p c c] r
        |  c[ c c] r
        |  e,16[( g e g]  e[ g f  g)]
        | e8 r  c[\f c]
        | g r  e'[ e]
        |  c[ g' e c']
        |  g[ e' c g']
        |  e[ c g e']
	|  d,16[ d d d] d4:16
	| d4:16 g4:16

% 240
	| g4:16 e4:16
	| g4:16 c4:16
	| b,4:16 b4:16
	| b4:16 e4:16
	| e4:16 c4:16
	| e4:16 a4:16
	| g,4:16 g4:16
	| g4:16 c4:16
	| c4:16 a4:16
	| c4:16 f4:16

% 250
	| a,4:16 a4:16
	| a4:16 d4:16
	| d4:16 es4:16
	| d4:16 c4:16
	| b4:16 es4:16
	| d4:16 c4:16
	| b8 r  d[\p d]
	| d r r4
	| r8  c[(  c') c]
	|  c[ c c c]

% 260
	|  b[ b bes bes]
	|  a[ a as as]
	| g2(
	|  a!)
	|  g8[(  d) d-. d-.]
	|  d[( dis\f  e) e-.]
	| e2 ~
	|  e8[ es(  es') es-.]
	|  es[(  d) des-. des-.]
	|  des[(  c) c-. c-.]

% 270
	| b4(  c) ~
	| c(  b)
	| c r
	|  g8[\p g g g]
	| g4 r
	| <g b>8[ <g b> <g b> <g b>]
	| <g c>4 r
	|  g8[ g g g]
	| g4 r
	| <g b>8[ <g b> <g b> <g b>]

% 280
	| <g c>4 r8 g(
	|   a)[ b-. c-. d-.]
	| e4 r8 g,(
	|   a)[ b-. c-. d-.]
	| e4 r8 g,(
	|   a)[ b c d] % Without staccati!
	| g, r d'4(\fp
	|  c8) r d4(\fp
	|  c8) r d4(\fp
	|  c8) r d4(\fp

% 290
	|  c8) r r4
	| R2
	| as2(\p
	|  es)
	| c4 r8 c(
	|  es[ g bes  g)]
	| as2(
	|  es)
	| c4 r8 c(
	|  es[ g bes  g)]

% 300
	| as2(  g)
	|  g8[(  f)] f4 ~
	| f(  fis)
	| g2(
	|  f!)
	|  es8[( d es f-\cresc] \noBreak
	|  ges[ bes as  ges)]
	|  f8[\p <des f> <des f> <des f>]
	| r <c es>[ <c es> <c es>]

% 310
	| r <des f>[ <des f> <des f>]
	| r <es ges>[ <es ges> <es ges>]
	| r <des f>[ <des f> <des f>]
	| r <c es>[ <c es> <c es>]
	| r <des f>[ <des f> <des f>]
	| r <es ges>[ <es ges> <es ges>]
	| r <des f>[ <des f> <des f>]
	| r <c es>[ <c es> <c es>]
	| r <des f>[ <des f> <des f>]
	| r  es[ es es]

% 320
	| r  es[ es es]
	| r  d![ d d]
	| r  fis[ fis fis]
	| r  c[ c c]
	| c2(  d)
	| c4\f r
	| c r
	| e! r
	| g r
	| c r

% 330
	| r8  e,[(  e') d-.]
	| cis4( c
	|  b)  bes8[-. bes-.]
	|  bes[(  a) a-. a-.]
	|  a[(  gis)]  g'![-. g-.]
	|  g[(  fis) f-. f-.]
	|  f[(  e) es-. es-.]
	| e!4.(  g8)
	| c,4.(  d16[  b)]

% 340
	| c4 r
	| b4(\p  d)
	| e(  c8) r
	| c4(  b8) r
	| d4(  c8) r
	| a,4(  b)
	| c(  a8) r
	| g4(  b)
	| c8 r c r
	| d r b r

% 350
	| c r e r
	| f r d r
	| e r c' r
	| c r b r
	| c r  c,[-. d-.]
	|  e[-. f-. g-. a-.]
	| bes4  c8[-. d-.]
	|  e[-. f-. g-. a-.]
	| bes4 r
	| R2

% 360
	| g2(
	|  fis4) r
	| f!( e ~
	| e  d) ~
	| d c ~
	| c2(
	|  b4) r
	| fis r
	| g r
	| c, r

% 370
	| b r
	| r
    }

    r4   g'16[(\p e g e]  g8) r
    |  f16[( d f d]  f8) r
    | r g[(-\cresc c, a']
    |  d,[ b' e,  c')]
    |  g[(\f  f')] r4
    | R2
    | r8  c[(\p b  bes)]
    | a4.  d,16[(  f)]

% 380
    |  e[( g e g]  e[ g f  g)]
    |  e8[( g f e]
    |  d[ b c  d)]
    |  e[( g-\cresc f e]
    |  d[ b c  d)]
    |  e[( g f e]
    |  d[ b c  d)]
    | e8\f r d' r
    |  e8.[(\p  f16) e8.(  f16)]
    |  e16[( f e f]  e[-\cresc f e  f)]

% 390
    |  e[ f e f]  e[ f e f]
    |  e[\f e e e] b4:16
    | c4:16 c4:16
    | c4:16 f,4:16
    | e8 r g4\p ~
    |  g8[ a16(  g)] g4 ~
    |  g8[ fis16(  g)] g4 ~
    |  g8[ a16(  g)] g4 ~
    |  g8[ fis16(  g)] g4 ~
    |  g8[ a16(  g)] g4

% 400
    | g8\f r f' r
    |  e8.[(\p  f16) e8.(  f16)]
    |  e16[( f e f]  e[-\cresc f e  f)]
    |  e[ f e f]  e[ f e f]
    |  e[(\f  g) g-. g-.]  g[(  f) f-. f-.]
    |  f[(  e) e-. e-.]  e[(  d) d-. d-.]
    |  d[(  c) c-.c-.]  g[(  f) f-. f-.]
    | e8 r g4(\p
    |  f) bes(
    |  a) r

% 410
    | r  g'8[-. g-.]
    |  g[(  c,)] g4(
    | f bes
    |  a) r
    | r  g'8[-. g-.]
    |  g[(  c,)]  a8[-.\f a-.]
    |  a[(  d,) g-. g-.]
    |  g[(  c,) g'-. g-.]
    |  g[(  c,) g''-. g-.]
    |  g[(  c,)] r4 \bar "|."
}
