\version "2.16.0"
violaFourthMov = \relative g' {
    \clef alto

    \repeat volta 2 {
        R1*12
        | d1(\p
        | e
        | a
        |  fis)
        | g2 r
        | r <<d4 \\ c>> r
        | <<d \\ b>> r r2
        | r <<d4 \\ c>> r
        | <<d \\ b>> r b r
        | a r c r
        | b r r2
% 20
        | r <<d4 \\ c>> r
        | <<d \\ b>> r r2
        | r <<d4 \\ c>> r
        | <<d \\ b>> r b r
        | a r c r
        | b r  g'8[(  fis) e-. d-.]
% 30
        |  e[(  d) c-. b-.] a4 d
        | g, r r2
        | b4\f  a8[ b] c4  d8[ c]
        | b4 d g2
        | d4  cis8[ d] e4  fis8[ e]
        | d4 fis b2
        | fis4  e8[ fis] g4  a8[ g]
        | fis4 a d2 ~
        | d(  b)
        |  a8[\p a a a]  a[ a a a]
% 40
        |  a[ a a a]  a[ a a a]
        |  a[ a a a]  a[ a a a]
        |  a[ a a\f a]  a[ a a a]
        |  a[\p a a a]  a[ a a a]
        |  a[ a a a]  a[ a a a]
        |  a[ a a a]  a[ a a a]
        |  a[ a a\f a]  a[ a a a]
        |  a[ a bes\p bes]  a[ a bes bes]
        |  a[ a gis\f gis]  a[ a gis gis]
        |  a[ a bes\p bes]  a[ a bes bes]
% 50
        |  a[ a gis\f gis]  a[ a gis gis]
        | a2 r
        | R1*3
        | r2 d,2\f ~
        | d4 a d2 ~
        | d4 e fis2 ~
        | fis4 b, e d
        | cis d b cis
% 60
        | d b cis d
        | e d g fis
        | e d cis e
        | d e fis e
        | d e d cis
        | b a gis fis
        | e1 ~
        | e4  e'8[ d] e4 d
        | cis1
        | d2 fis
% 70
        | a2. g4
        | fis e d cis
        | b2 b'
        | e, a ~
        | a4 d, g2 ~
        | g4 a b2 ~
        | b4 e, a g
        | fis2 d
        | fis1
        | b
% 80
        | gis
        | a2 e
        | d4 fis e d
        | cis2. d4
        | e g fis e ~
        | e2 d4(  dis)
        | e1 ~
        | e2(  a,)
        | bes1\p
        | a
% 90
        | b!2( a4  g)
        | fis fis fis fis
        | fis fis fis fis
        | fis fis fis fis
        | e e e g
        | g(  fis) a a
        | fis fis fis fis
        | fis fis fis fis
        | e e e(  g)
        | fis r r2
% 100
        | d4( fis a  fis)    
        | d( fis a  fis)
        | cis( e a  cis,)
        | d( fis a  fis)
        | d( fis a  fis)
        | d( fis a  fis)
        | cis( e a  g)
        |  fis8[ d'\f e fis]  g[ a b cis]
        | d4 d a a
        | fis2. a4
% 110
        | a a a a
        |  a8[ d, e fis]  g[ a b cis]
        | d4 d a a
        | fis2. a4
        | a a g g
        | fis2(  a)\p
        | b( a4  g)
        | fis r a, r
        | b r g r
        | fis r r2
% 120
        | R1
        | <fis' a>1 ~
        | <fis a> ~
        | <fis a>4 r r2
        | R1
    }

    \repeat volta 2 {
        | r2 r4 b4(\p
	| c cis d  dis)
	| e1 ~
	| e ~
	| e
% 130
	| d!2 r
	| r r4 gis,,4(\p
	| a ais b bis
	|  cis2) r
	| R1
	| r2 r4 bes(
	| ces c des d
	|  es2) r
	| R1
	| r2 r4 c(
% 140
	| des d es e
	|  f) e-. f-. e-.
	| f-. r r2
	| R1*2
	| r4 bes bes bes
	| bes bes bes bes
	| bes(  as) as2
	| R1
	| r4 as as as
% 150
	| as as as as
	| as(  g) g2
	| R1
	| r4 c, c c
	| c c c c
	| c(  bes) bes2
	| R1
	| r4 g' g g
	| g g g g
	| g(  fis!) fis2 ~
% 160
	| fis1
	| r4 f f f
	| f f f f
	| f(  e) e2 ~
	| e1
	| r4 c(\f  c') c-.
	| c c c c
	| c(  b) b-. b-.
	| b(  ais) ais-. ais-.
	| ais(  a) a-. a-.
% 170
	| a(  as) as-. as-.
	| as1\p
	| g2(  c,)
	| d4 r r2
	| R1
	| g4\f r r2
	| r <g b>4 r
	| <g c> r r2
	| r <g b>4 r
	| <g c> r a r
% 180
	| a r g r
	| g r r2
	| r <b, d>4 r
	| c r r2
	| r <b d>4 r
	| c r c r
	| c r b r
	| c r  c8[(  b) a-. g-.]
	|  a[(  g) f-. e-.] d4 g
	| c, r r2
% 190
        | e4\f  d8[ e] f4  g8[ f]
	| e4 g c2
	| g4  fis!8[ g] a4  b8[ a]
	| g4 b e2
	| b4  a8[ b] c4  d8[ c]
	| b4 d g2 ~
	| g(  e)
	|  d8[\p d d d]  d[ d d d]
	|  d[ d d d]  d[ d d d]
	|  d[ d d d]  d[ d d d]
% 200
	|  d[ d d\f d]  d[ d d d]
	|  d[ d'\p d d]  d[ d d d]
	|  d[ d d d]  d[ d d d]
	|  d[ d d d]  d[ d d d]
	|  d[ d d\f d]  d[ d d d]
	| d4  es,8[\p es]  d[ d es es]
	|  d[ d cis\f cis]  d[ d cis cis]
	| d4 r r2
	| r4  cis'8[\f cis]  d[ d cis cis]
	| d2 r
% 210
	| R1*3
	| g,,1\f
	| b
	| e
	| cis
	| d2 d' ~
	| d4 g, c2 ~
	| c4 d e2 ~
% 220
	| e4 a, d c
	| bes4  g8[ g] g4 g
	| bes4  g8[ g] g4 g
	| bes4  g8[ g] g4 g
	| bes4  g8[ g] g4 g
	| d4 r r2
	| a'4 r r2
	| g4 r r2
	| a4 r r2
	| r4  e8[ e] e4 e
% 230
	| r  cis8[\p cis] cis4 cis
	| r  d8[ d] d4 d
	| r  a8[ a] a4 a
	| g4 r r2
	| R1
	| g4 g g g
	| g g g g
	| fis fis fis fis
	| fis(  g) b b
	| g g g g
% 240
	| g g g g
	| fis fis fis fis
	| g r r2
	| g4( b d  b)
	| g( b d  b)
	| fis( a d  fis,)
	| g( b d  b)
	| g( b d  b)
	| g( b d  b)
	| fis( a d  c)
% 250
	|  b8[ g\f a b]  c[ d e fis]
	| g4 g d d
	| b2. d4
	| d d d d
	|  d8[ g, a b]  c[ d e fis]
	| g4 g d d
	| b2.  g8[( a]
	|  b4) b b b
	| g2.  e8[( fis]
	|  g4) g g g
% 260
	| e- \markup{\italic "decresc."} r g r
	| a r a r
	| a2\p r2
	| R1
	| <fis' a>1 ~
	| <fis a> ~
	| <fis a>4 r r2
	| R1
    }

    | r2 r4 b(
    | c cis d  dis)
% 270
    | e1 ~
    | e ~
    | e
    | d! ~
    | d2. b,4(
    | c cis d  dis)
    | << \new Voice {\voiceOne r2 e' | d1 | s2. }
	{\voiceTwo e,1 ~ | e ~ | <e c'>2. } >>
	\oneVoice a4(
    | g  bes) a2 ~
% 280
    | a(  g)
    | e( d4  c)
    | b r r2
    | d1\f
    | e
    | a
    | \afterGrace fis1\trill {e32[ fis]}
    | g1 ~
    | g4 r a r
    | a r g r
% 290
    | e r d r
    | d r r2
    | R1*2
    | g,1\p ~
    | g ~
    | g
    | \afterGrace a1(\trill {g32[ a]}
    | g4) r r2
}
