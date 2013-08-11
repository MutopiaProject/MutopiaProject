\version "2.16.0"

violaFirstMov =  \relative a' {
    \key a \major
    \clef alto

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	a4\p
	| a2 r4
	| R2.
	| e4-. gis-. a-.
	| b r gis
	| gis2 r4
	| R2.
	| e4 dis d
	| cis r a\f
	| a4.(  cis8[ d  cis)]

% 10
	| b4 r b
	| b4.(  dis8[ e  d)]
	| cis4 r e\p
	| e2.(
	|  d4) r r
	| r r gis,(
	|  a) r c\f
	| c2 r4
	| r r f
	| f4.( e8  g[ f]

% 20
	|  e[ d f e d  c)]
	| b2(  c4)
	| d8 r d4(  e)
	|  f8[( e d b d  b)]
	| d4 r r
	| r8  c[(\p e c e,  c')]
	|  d[( b d b d  b)]
	|  c[( e, g c e  c)]
	|  d[( b d b d  b)]
	| c4(  e2)

% 30
	| c4(  e2)_\cresc
	| c4(  e2)
	| c4(  e2)
	|  dis8[-.\f dis(  fis) fis-. fis(  e)]
	|  e[( dis  fis) fis-. fis(  e)]
	|  e[( dis  fis) fis-. fis(  e)]
	| dis4 r r
	| e2.\p ~
	| e4 r r
	| r r b ~

% 40
	| b r r
	| e,2. ~
	| e4 r r
	| r r a(
	|  gis) r r
	| gis'2.(
	|  a)
	| ais4( b  dis,)
	| e r r
	| gis,2.

% 50
	| \times 2/3 {  a8[( cis b]  a[ gis fis]  e[ fis  e)] }
	| dis4 r dis'\f ~
	| \times 2/3 {  dis8[( e dis]  cis[ b a]  gis[ a  gis)] }
	| fis4 r fis'(
	|  e) e'2\p
	| dis2(  cis4) ~
	| cis(  b2)
	| a(  gis4)
	| r fis2 ~
	| fis4 a( gis

% 60
	| fis e  dis)
	| e r r
	| r fis(\f  e)
	| dis2(  e4)
	| dis2(  e4)
	| dis2.
	| e ~
	| e4 dis(  e)
	| a-. gis-. fis-.
	| cis2.\p

% 70
	| b2(  gis4)
	| a r r
	| b b b
	| e2. ~
	| e
	| a4.( gis8  b[ a]
	|  gis[ fisis ais gis fis  eis)]
	| fis2.
	| fis\f ~
	| fis2(  e4)

% 80
	|  e8[( fis] gis4  fis)
	| r8 e\p r b' r b
	| r a r gis r fis
	| e4 r r
	| gis,2(  e4)
	| cis' r fis,
	| fis4.(  ais8[ b  a)]
	| gis4 r
    }

    \repeat volta 2 {
        e''4\f
	| e2 r4
	| r r e,

% 90
	| e4.( dis8  fis[ e]
	|  d![ cis! e d cis  b)]
	| ais4 ais ais
	| ais2 r4
	| cis'\p cis cis
	| cis r r
	| fis,2.(
	|  g4) r cis,-.
	| cis4.(  e8[ fis  e)]
	| d4 r d\f

% 100
	|  d8[-. b-.] b'4. b,8-.
	|  a[-. fis'-.] a4. c,8-.
	|  b[-. g'-.] b4. b,8-.
	|  a[-. fis'-.] a4. c,8-.
	| b4 r r
	| r r d\p
	| d4.( cis!8  e[ d]
	|  c[ b d c b  a)]
	| a4(  g) g
	| g2(  d'4)

% 110
	| d4.( cis8_\cresc  e[ d]
	|  cis[ b cis b a  gis!)]
	| fis!4(  eis) eis
	| eis2(  gis4)\f
	| gis4.( fisis8  ais[  gis)]
	|  cis[( b cis b a!  gis)]
	| fis!4 cis'2
	| b4 fis'2
	| gis!4 r r
	| R2.

% 120
	| cis4.(  bis8[ cis  gis)]
	|  a[( eis fis cis d  bis)]
	| cis4 r r
	| eis,4\p r r
	| r eis eis
	| e! r r
	| r e e
	| e2. ~
	| e4( g  fis)
	| fis2(  d4) ~

% 130
	| d b'(  e,)
	| e4.(  gis!8[ a  g)]
	| fis4 r r
	| r r fis
	| g4.(   b8[_\cresc cis  b)]
	| a4 r a
	| ais4.(  cis8[ d  cis)]
	| b4 r b
	| bis4.(  dis8[ e  dis)]
	| cis4 r gis\f

% 140
	| fis4.(  dis'8[ e  d)]
	| cis4 r e,
	| d4.(  b'8[ cis  b)]
	| a4.  cis8[( d cis]
	|  b4.)\p  b8[( cis b]
	|  a4.)  a8[( b a]
	|  g4.)  g8[( a g]
	|  fis2) fis'4
	| e2._\cresc ~
	| e4 e\f e

% 150
	| e r gis(\p
	| ais b a
	| gis a  gis)
	| fis( gis  a)
	| e r gis,
	| ais( b a
	| gis a g
	| fis gis!  a)
	| b2(  gis4)
	| b2(  gis4)

% 160
	|  b8[( a gis fis  e) fis-._\cresc] \noBreak
	|  gis[-. a-. b-. cis-. d-. b-.]
	| cis2\f r4
	| R2.
	| e4-.\p gis-. a-.
	| b r a,\f
	| b2 r4
	| R2.
	| e4-.\p dis-. d-.
	| cis r a\f

% 170
	| a4.(  cis8[ d  cis)]
	| b4 r b
	| b4.(  dis8[ e  d)]
	| cis4 r e\p
	| e2.(
	|  d4) r r
	| r r gis,(
	|  a) r r
	| R2.
	| r4 r bes\f

% 180
	| bes4.( a8  c[ bes]
	|  a[ g bes a g  f)]
	| e2(  f4)
	| g8 r g4(  a)
	|  bes8[( a g e g  e)]
	| g4 r r
	| r8  f'[(\p a f a,  f')]
	|  g[( e g e g  e)]
	|  f[( a, c f a  f)]
	|  g[( e g e g  e)]

% 190
	| f4(  a2)
	| f4(_\cresc  a2)
	| f4(  a2)
	| f4(  a2)
	|  gis!8[-.\f gis(  b!) b-. b(  a)]
	|  a[( gis  b) b-. b(  a)]
	|  a[( gis  b) b-. b(  a)]
	| gis4 r r
	| a,2.\p ~
	| a4 r r

% 200
	| r r e
	| e r r
	| a'2. ~
	| a4 r r
	| r r d,(
	|  cis) r r
	| cis'2.(
	|  d)
	| dis4( e  gis,)
	| a r r

% 210
	| cis,2.
	| \times 2/3 {  d8[( fis e]  d[ cis b]  a[ b  a)] }
	| gis4 r gis'\f ~
	| \times 2/3 {  gis8[( a gis]  fis[ e d]  cis[ d  cis)] }
	| b4 r b'(\p
	|  a4) a2(
	|  gis)(  fis4) ~
	| fis(  e2)
	| d(  cis4)
	| r4 b2 ~

% 220
	| b4 d( cis
	| b a  gis)
	| a r r
	| r b'(\f  a)
	| gis2(  a4)
	| gis2(  a4)
	| gis2.
	| a ~
	| a4( gis  a)
	| d-. cis-. b-.

% 230
	| fis2.\p
	| e2(  cis4)
	| d r r
	| e e e
	| a2. ~
	| a
	| d,4.( cis8  e[ d]
	|  cis[ bis dis cis b  ais)]
	| b4 b'2\f ~
	| b2.

% 240
	| e,4 e'2 ~
	| e4(  dis) r
	| R2.
	| e,4 e'2
	| R2.
	| e,,4 e'2
	|  cis'8[( b e d cis  b)]
	|  a[( gis cis b a  gis)]
	|  fis[( eis a gis fis  e)]
	|  d[( cis fis e d  cis)]

% 250
	|  b2.(\p
	| g'
	| fis2 f4
	|  e2) a4-.\f
	| a-. r r
	| r r \slurUp b,(\p
	| c_\cresc d  dis) \slurNeutral
	| e2(  gis4)
	| a\f e2
	| d4( cis  e)

% 260
	| r8 e\p r gis r a
	| r d r cis r b
	| a4 r r
	| cis,2(  a4) ~
	| a b2 ~
	| b2.(
	|  a4) r r
	|  e8[\f e' e e e e]
	|  fis,[ fis' fis fis fis fis]
	|  b,[ e e e e d]

% 270
	| cis4 r
    }
}
