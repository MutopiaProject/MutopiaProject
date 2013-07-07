\version "2.16.0"

violinIThirdMov =  \relative d'' {
    \key d \minor
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	 d8.[\f d16]
	| d4( a  f')
	|  f8[( e d cis d  f)]
	| a4 a a
	| a(  e)  g8.[ g16]
	| g4 g g
	| g(  d)  f8.[ f16]
	| f4 f f
	|  f8[(  e) e(  cis)] d4
	| e a, cis
% 10
	| d2
    }

    \repeat volta 2 {
	 d8.[\f d16]
	| f4(  d)  b8.[ b16]
	| c!4(  e)  c8.[\p c16]
	| e4( c  a)
	| gis(  b)  e8.[ e16]
	| dis2.(
	|  d!4) r  d8.[ d16]
	| cis2.(
	|  c!4) r  c8.[ c16]
	| b4(-\cresc gis  a)

% 20
	| d2(  c4)
	|  c8[(\f  b)] a4 gis
	| g2  g'8.[\p g16]
	| fis2.(
	|  f!4) r  f8.[ f16]
	| e2.(
	|  es4) r  es8.[ es16]
	| d4( bes  a)
	| gis(-.\pp gis-.  gis)-.
	| a r  d8.[\f d16]

% 30
	| d4( a  f')
	|  f8[( e d cis d  f)]
	| a4 a a
	| a(  e)  g8.[ g16]
	| g4 g g
	| g(  d)  f8.[ f16]
	| f4 f f
	|  f8[(  e) e(  cis)] d4
	| e4 a, cis
	| d2
    }

    \key d \major

    \repeat volta 2 {
	 d,16[(_ \markup{\italic "sempre piano"}  fis8.)]
	|  fis16[(  a8.)]  a16[(  d8.)]  d16[(  fis8.)]
	|  fis16[(  a8.)]  a16[(  d8.)]  d16[(  cis8.)]
	|  cis16[(  e8.)]  e16[(  g8.)]  g16[(  g,8.)]
	| g2  b16[(  g8.)]
	|  g16[(  fis8.)]  fis16[(  a8.)]  a16[(  fis8.)]
	|  fis16[(  e8.)]  e16[(  g8.)]  g16[(  e8.)]
	|  e16[(  d8.)]  d16[(  fis8.)]  fis16[(  d,8.)]
	| d2
    }

    \repeat volta 2 {
	 d16[(  fis'8.)]
	|  fis16[(  g8.)]  g16[(  a,8.)]  a16[ g''8.]
	| g2  a,,16[(  e'8.)]

% 50
	|  e16[(  fis8.)]  fis16[(  d8.)]  d16[(  fis'8.)]
	| fis2  b,,16[(  d'8.)]
	| d2  d,,16[(  gis'8.)]
	| gis2  b16[(  a8.)]
	| a4-. cis-. e-.
	| a2  d,,,16[(  fis8.)]
	|  fis16[(  a8.)]  a16[(  d8.)]  d16[(  fis8.)]
	|  fis16[(  a8.)]  a16[(  d8.)]  d16[(  cis8.)]
	|  cis16[(  e8.)]  e16[(  g8.)]  g16[(  g,8.)]
	| g2  b16[(  g8.)]
	|  g16[(  fis8.)]  fis16[(  a8.)]  a16[(  fis8.)]
	|  fis16[(  e8.)]  e16[(  g8.)]  g16[(  e8.)]
	|  e16[(  d8.)]  d16[(  fis8.)]  fis16[(  d,8.)]
	| d2
    }
}
