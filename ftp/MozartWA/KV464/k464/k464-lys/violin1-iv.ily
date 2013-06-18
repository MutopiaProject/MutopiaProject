\version "2.16.0"

violinIFourthMov =  \relative e'' {
    \key a \major
    \clef violin

    \noTupletBracket

    e2(\p dis4  d)

    \repeat volta 2 {
	cis r r eis(
	|  fis) fis4.(  g8[ e!  fis)]
	| d4 r r2
	| d2( cis4  c)
	| b r r dis(
	|  e) e4.(  fis8[ d!  e)]
	| cis4 r r2
	| r4 cis4.(  d8[ b  cis)]

% 10
	| a4 r r2
	| r4 e'4.(  fis8[ d  e)]
	| cis4 r r2
	| r4 a'4.(  b8[ gis  a)]
	| fis4 fis4.(  g8[ e  fis)]
	| d4 d4.(  e8[ cis  d)]
	| b4 r r2
	| e2(\f dis4  d)
	| cis4 r r eis(
	|  fis) fis4.(  g8[ e!  fis)]

% 20
	| d4 r r2
	| d2( cis4  c)
	| b r r dis(
	|  e) e4.(  fis8[ d!  e)]
	| cis4 r r2
	| r4 d4.(  e8[ cis  d)]
	| b4( e4.  fis8[ d  e)]
	| cis4( fis4.  g8) e4 ~
	| e8 fis( d4.  e8[ cis  d)]
	| b4 r r2

% 30
	| R1*2
	| r4 b'4.(  cis8[ a  b)]
	| gis4( cis4. dis8  b4) ~
	|  b8[ cis(]  a4.) b8(  gis4) ~
	|  gis8[ a(] fis4.  gis8[ e  fis)]
	| dis4 a'4.(\sf  g8[\p fis  e)]
	| dis4 a'4.(\sf  g8[\p fis  e)]
	| dis4 a'4.(  gis!8[ a ais]
	|  b4) r r2

% 40
	| b,2(\p ais4 a
	|  gis) r r2
	| R1
	| a'2( gis4  g)
	| fis4( b4.  cis8[ a  b)]
	| gis!4 r r2
	| R1*2
	| a2( gis4  g)
	| fis4( b4.  cis8[ a b]

% 50
	|  gis!4) a4.(  b8[ gis a]
	|  fis4) gis4.(  a8[ fis gis]
	|  e4) cis'4.(  d8[ b cis]
	|  a4) b4.(  cis8[ a b]
	|  gis4) b(_\cresc a  gis)
	| fis4\f fis2(  gis4)
	| a fis,2(  gis4)
	| a fis'2(  gis4)
	| b( a2  gis4) ~
	|  gis8[( fis cis'_\decresc a]  gis[ fis a  fis)]

% 60
	|  d[( cis fis cis]  b[ a cis  a)]
	|  gis[( fis eis fis]  gis[ fis a  fis)]
	| b2(\p  e,!)
	| cis'(  dis,)
	| r8  b'[(\f  b') b-.] r  e,[(  gis) gis-.]
	| r  e[(  cis') cis-.] r  fis,,[(  dis') dis-.]
	| e4 r r  gis,8[(\p b]
	|  e[ b gis b]  e4) b'
	| a2(  gis4)  gis,8[( b]
	|  e[ b gis b]  e4) b'

% 70
	| dis,2(  e4) r
	| r b' b b
	| b4.(  cis16[ b]  e4) r
	| r b b b
	| b4.(  a16[ fis]  e4) b
	|  b4.(  a16[ fis]  e4) gis
	|  b4.(  a16[ fis]  e4) b'-.
	| d!-. r r b'-.
	| d-. r r2
	| fis,2( e4  dis)

% 80
	| d! r r2
	| e2( dis4  d)
    }

    \repeat volta 2 {
        cis4(\f  c) b4.(  cis16[  b)]
	| ais4-. d-. cis-. d'-.
	| cis-. r r2^\fermata
	| R1*3
	| c,2(\p b4  bes)
	| a( d4.  e8[ c  d)]

% 90
	| b!4 r r2
	| R1*2
	| c'2( b4  bes)
	| a( d4.  e8[ c  d)]
	| b!4 r r2
	| r8  e,[\f e e]  fis[ e gis! e]
	| a4 r r2
	| r8  fis[ fis fis]  gis[ fis ais fis]
	| b4 r r2

% 100
	| R1
	| cis2( bis4  b)
	| ais4 r r2
	| b2( ais4  a)
	| gis4 r r2
	| a2( gis4  g)
	| fis( eis e  dis)
	|  d!8[ d cis cis]  b[ b a a]
	|  gis![ gis'! gis gis]  gis[ gis gis gis]
	| cis2( b4  a)

% 110
	|  gis8[ gis, gis' gis]  gis[ gis gis gis]
	| cis2( b4  a)
	| gis-. a-. gis-. a-.
	| gis r r2
	|  fis,1(\p
	|  g)
	| fis2(  e)
	| a1( ~
	| a2 gis!
	| g  fis)

% 120
	| b(  e,)
	| e1
	| fis'(
	|  g)
	| fis2(  e)
	| a1
	| g(
	|  a)
	| g2(  fis)
	| b1(

% 130
	| ais
	| a!
	| gis!
	|  g)
	| fis2(_\cresc e
	| d  cis)
	| b4\f r b r
	| c r c r
	| d r b' r
	| c r c, r

% 140
	| b r  gis8[(\p e a fis]
	|  b4) r  b8[( gis cis! a]
	|  d4) r   d8[(_\parentF  b) gis'-. gis-.]
	|  gis[(  e) b'-. b-.]  b[(  gis) d'-. d-.]
	| d4 r r2
	| e,2(\p dis4  d)
	| cis4 r r eis(
	|  fis) fis4.(  g8[ e  fis)]
	| d4 r r2
	| d2( cis4  c)

% 150
	| b r r dis(
	|  e) e4.(  fis8[ d!  e)]
	| cis4 r r2
	| r8  a[ a a]  b[ a cis a]
	| d4 r r2
	| r8  b[ b b]  cis[ b dis b]
	| e4 r r2
	| r4 a4.(  b8[ g a]
	|  fis4) fis4.(  g8[ e fis]
	|  d4) d4.(  e8[ cis  d)]

% 160
	| b4 r r2    % NOT  b4)!
	| e2(\f dis4  d)
	| cis r r eis(
	|  fis) fis4.(  g8[ e  fis)]
	| d4 r r2
	| d2( cis4  c)
	| b r r dis(
	|  e) e4.(  fis8[ d!  e)]
	| cis4 r r2
	| r4 d4.(  e8[ cis  d)]

% 170
	| b4( e4.  fis8[ d  e)]
	| cis4 fis4.( g8  e4) ~
	|  e8[ fis(] d4.  e8[ cis  d)]
	| b4 r r2
	| R1*2
	| r4 b'4.(  cis8[ a  b)]
	| gis4.(  a8) fis4.(  gis8)
	| e4.(  fis8) d4.(  e8)
	| cis4.(  e8) a4.(  dis,8)

% 180
	|  e8[-. b-.] d4.(\sf  c8[\p b a]
	|  gis4) d'4.(\sf  c8[\p b a]
	|  gis4) d'4.(\sf  cis!8[\p d dis]
	|  e4) r r2
	|  e,2(\p dis4 d
	|  cis) r r2
	| R1
	| d'2( cis4  c)
	| b( e4.  fis8[ d  e)]
	| cis!4 r r2

% 190
	| R1*2
	| d'2( cis4  c)
	| b( e4.  dis8[ e  d)]
	|  cis[ a a a]  a[ a a a]
	| a1:8
	|  a8[(  a,) a' a] a2:8
	| a1:8
	| a4_\cresc e'( d  cis)
	| b\f b2(  cis4)

% 200
	| d b,2(  cis4)
	| d b'2(  cis4)
	| e4( d2  cis4) ~
	|  cis8[( b fis' d]  cis[_\decresc b d  b)]
	|  g[( fis b fis]  e[ d fis  d)]
	|  cis[( b ais b]  cis[ b d  b)]
	| e2(\p  a,!)
	| fis'(  gis,)
	| ais1\sfp ~
	|  ais8[( b fis' d]  cis[ b d  b)]

% 210
	|  g[( fis b fis]  e[ d fis  d)]
	|  cis[( b ais b]  cis[ b d  b)]
	| e2(  a,!)
	| fis'(  gis,)
	| r8  e'[(\f  e') e-.] r  cis[(  a') a-.]
	| r  fis[(  d') d-.] r  b,[(  gis') gis-.]
	| a4 r r  cis,8[(\p e]
	|  a[ e cis e]  a4) e'
	| d2(  cis4)  cis,8[( e]
	|  a[ e cis e]  a4) e'

% 220
	| gis,2(  a4) r
	| r e e e
	|  gis4.(^\trill  fis16[ gis]  a4) r
	| r e(  e') e
	| e4.(  d16[ b]  a4) e
	| e4.(  d16[ b]  a4) cis,
	| e4.(  d16[ b]  a4) cis'-.
	| e-. r r cis'-.
	| e-. r r2
        | \tag #'part {e,2(\p dis4  d)
	  \override VoltaBracket #'stencil = ##f}
    }
    \alternative {
        { \tag #'score {e2( dis4  d)} }
	{ \tag #'score {e2(\p dis4  d)} }
    }

% 230
    | cis4 r r cis
    |  d8[( e fis e] d4  cis)
    | b r r2
    | cis2( bis4 b
    | a d cis c
    | b e dis d
    |   cis8)[ e e e]  fis[ e gis e]
    | a4 r r2
    | R1*2

% 240
    | r8  gis[ gis gis]  a[ gis b gis]
    | cis2( bis4 b
    | a d cis c
    | b e dis d
    | \stemDown   cis8)[\f a, a a] \stemNeutral  b[ a cis a]
    |  d[ fis d b]  cis[ b dis b]
    |  e[ b' gis e]  fis[ e gis e]
    |  a[ e a e]  b'[ e, cis' e,]
    | d'4-. r r2
    | e,2(\p dis4  d)

% 250
    | cis r r2
    | r8  e'[ e e]  e[ d cis b]
    | a4 r r2
    | e,2( dis4  d)
    | cis4 r r2
    | r8  e'[ e e]  e[ d cis b]
    | a4 r r2
    | e'2( dis4  d)
    | cis4 r r2
    | cis2( c4  b)

% 260
    | a4 r r2
    | r8  e'[\pp e e]  fis[ e gis e]
    | a4 r r2 \bar "|."
}
