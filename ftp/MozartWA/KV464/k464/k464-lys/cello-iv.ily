\version "2.16.0"

celloFourthMov =  \relative b {
    \key a \major
    \clef bass

    \noTupletBracket

    R1
    \repeat volta 2 {
	R1*2
	| r4 b(\p cis d
	|  e) r r2
	| R1*2
	| r4 cis,4.(  d8[ b  cis)]
	| a4 r r2

% 10
	| r4 e'4.(  fis8[ d  e)]
	| cis4 r r2
	| r4 cis'4.(  d8[ b  cis)]
	| a4 r r2
	| R1
	| r4 e( gis  a)
	| e r r2
	| R1*2
	| r4 fis,(\f gis ais

% 20
	| b cis d  dis)
	| e r r2
	| R1
	| r4 e,( fis  gis)
	| a( b  cis2)
	|  d4( b cis  d)
	| e2 b'
	| fis b,4( cis
	| d b cis  a)
	| e e'4.(  fis8[ d  e)]

% 30
	| cis4( fis4.  gis8[ e  fis)]
	| d4.( e8 cis4.  d8)
	| b2 cis4 dis
	| e ais, b2\sf
	| b\sf b\sf
	| b\sf b\sf
	| b4 r c2\sf
	| b\p c\sf
	| b4 r b'-.\f c-.
	| b b,4.(  ais8[ b  a)]

% 40
	| gis4 r r2
	|  e8[\p e e e] e2:8
	| e1:8
	| e1:8
	| e1:8
	|  e8[ e' e e] e2:8
	| e1:8
	| e1:8
	| e1:8
	| e1:8

% 50
	| e4 r r2
	| R1*4
	| r4 a4.(\f  b8[ gis a]
	|  fis4) a4.(  b8[ gis a]
	|  fis4) a4.(  b8[ gis  a)]
	| fis2(  gis)
	| a4r r2

% 60
	| R1*2
	|  b,2(\p  cis)
	| a(  b)
	| gis4\f r cis' r
	| a r b r
	|  e,8[ e e e] e2:8\p
	| e1:8
	| e1:8
	| e1:8

% 70
	| e2:8  e8[ e, e e]
	| e1:8
	| e1:8
	| e1:8
	| e1:8
	| e1:8
	| e2:8 e4 r
	| r gis'-. b-. r
	| \clef tenor e2( fis4  g)
	| gis! r r2 \clef bass

% 80
	| e,2( fis4  gis)
	| a r r2
    }

    \repeat volta 2 {
        | a2(\f gis4  g)
	|  fis8[ fis d b]  fis'[ fis d b]
	| fis'4 r r2^\fermata
	|  g,8[\p g g g] g2:8
	| g1:8
	| g1:8
	| g1:8
	| g1:8

% 90
	|  g8[ g' g g] g2:8
	| g1:8
	| g1:8
	| g1:8
	| g1:8
	|  g,2(\f fis4  f)
	| e r r2
	| a2( gis!4  g)
	| fis!4 r r2
	| b'2( ais4  a)

% 100
	| gis! e dis gis
	| cis, r r2
	| r4 dis cis fis
	| b, r r2
	| r8  e[ e e]  fis[ e gis e]
	| a4 r r2
	| b2( ais4  a)
	| gis( a b  bis)
	| cis2( bis4  b)
	|  a8[ a, a' a]  b[ b bis bis]

% 110
	| cis2( bis4  b)
	|  a8[ a, a' a]  b[ b bis bis]
	|  cis[ cis a fis]  cis'[ cis a fis]
	| cis'4 r r2
	| d,1(\p
	|   b)
	| a2(  gis!)
	| g1
	| fis2(  e)
	| ais(  b)

% 120
	| g(  gis)
	| a1
	| d(
	|  b)
	| a2(  g)
	| fis1
	| e(  c')
	| b2(  a)
	| gis1

% 130
	| fis(
	|  b)
	| e,(
	|  a)
	| d_\cresc ~
	| d2(  dis)
	| e4\f r r2
	| R1
	|  gis8[ b gis e]  d[ e d b]
	|  c[ e a e]  c[ e c a]

% 140
	|  e4 e' r2
	| r4 e\p r2
	| r4 e r2
	|  e'4-\parentF r e r
	| e r r2
	| R1*3
	| r8  b,8[\p b b]  cis[ b d b]
	| e4 r r2

% 150
	| R1*2
	| r8  a,[\p a a]  b[ a cis a]
	| d4 r r2
	| r8  b[ b b]  cis[ b d b]
	| e4 r r2
	| r8  cis[ cis cis]  d[ cis e cis]
	| fis4 r r2
	| r4 d' cis fis
	|  b,8[ e, e e]  gis[ e a e]

% 160
	| e'4 r r2
	| R1
	| cis2(\f bis4  b)
	| ais  fis,( gis ais
	| b cis d  dis)
	| e r r2
	| b'2( ais4  a)
	| gis e,( fis gis
	| a b  cis2)
	|  d4( b cis  d)

% 170
	| e2(  b')
	| fis b,4( cis
	| d b cis  a)
	| e e'4.(  fis8[ d  e)]
	| cis4( fis4.  gis8[ e  fis)]
	| d4.(  e8) cis4.(  d8)
	| b2 cis4 dis
	| e2\sf e\sf
	| e\sf e\sf
	| e,1 ~

% 180
	| e4 r f2\sf
	| e\p f\sf
	| e4 r e'-.\f f-.
	| e e,4.(  dis8[ e  d)]
	| cis4 r r2
	|  a'8[\p a a a] a2:8
	| a1:8
	| a1:8
	| a1:8
	|  a8[ a' a a] a2:8

% 190
	| a1:8
	| a1:8
	| a1:8
	| a1:8
	| a4 r r2
	| R1*4
	| r4 d4.(\f  e8[ cis d]

% 200
	|  b4) d4.(  e8[ cis d]
	|  b4) d4.(  e8[ cis  d)]
	| b2( cis
	|  d4) r r2
	| R1*2
	| e,2(\p  fis)
	| d(  e)
	|  fis,2.(\fp e4
	|  d) r r2

% 210
	| R1*2
	| e2(  fis)
	| d(  e)
	| cis'4\f r fis r
	| b, r e r
	|  a,8[ a' a a] a2:8\p
	| a1:8
	| a1:8
	| a1:8

% 220
	| a2:8  a8[ a, a a]
	| a1:8
	| a1:8
	| a1:8
	| a1:8
	| a1:8
	| a2:8 a4 r
	| r4 a cis-. r % The a is not staccato
	| a'2( b4 bis
        | \tag #'part {cis4) r r2
	  \override VoltaBracket #'stencil = ##f}
    }
    \alternative {
        { \tag #'score {| cis4) r r2} }
	{ \tag #'score {| cis4 r r2} }
    }

    | fis,2(\p eis4  e)
    | d r r dis
    |  e8[( fis gis fis] e4  d)
    | cis1(
    |  fis,4) r r dis'(
    |  e) r r e(
    |  a,) r r2
    | R1
    | fis'2( eis4  e)
    |  d8[ b b b]  cis[ b d b]

% 240
    | e4 r r2
    | r8  cis[ cis cis]  dis[ cis eis cis]
    | fis4 r r dis(
    |   e8)[ e e e]  fis[ e gis e]
    | a2(\f gis4  g)
    | fis( b ais  a)
    | gis( e' dis  d)
    | cis-. cis-. b-. a-.
    | gis-. r r2
    | r r4 eis'(\p

% 250
    |  fis) r d r
    | e!1(
    |  a,4) r r2
    | r r4 eis(
    |  fis) r dis r
    | e! r e, r
    | a  r r2
    | R1*2
    | r8  e[ e e]  fis[ e gis e]

% 260
    | a4 r r2
    | e'1(\pp
    |  a,4) r r2 \bar "|."
}
