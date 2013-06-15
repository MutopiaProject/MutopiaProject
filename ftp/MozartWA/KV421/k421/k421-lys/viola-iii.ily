\version "2.16.0"

violaThirdMov =  \relative f' {
    \key d \minor
    \time 3/4
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	r4
	| r r  f8.[\f f16]
	| g4( e  f)
	| d r  d8.[ d16]
	| e4(  a) r
	| c,! r  c8.[ c16]
	| d4(  g) r
	| gis r d ~
	|  d8[(  cis) cis(  e)] d4
	| bes a g

% 10
	| f2
    }

    \repeat volta 2 {
	r4
	| d'4(\f  f) r
	| e(  c!) r
	| r e(  a,)
	| b(  gis) e'(
	| fis gis  a)
	| gis( fis  e) ~
	| e( fis  g!)
	| fis( e  dis)
	| d!(_\cresc b  c)

% 20
	| gis( b  a) ~
	|  a8[(\f  d)] c4 b
	| a r  a8.[\p a16]
	| d,4 d' r
	| r r  g,8.[ g16]
	| c,4 c' r
	| r r  f,8.[ f16]
	| f2(  e4)
	|  d(\pp cis  d) 
	| e r r

% 30
	| r r  f'8.[\f f16]
	| g4( e  f)
	| d r  d8.[ d16]
	| e4(  a) r
	| c,! r  c8.[ c16]
	| d4(  g) r
	| gis4 r d ~
	|  d8[(  cis) cis(  e)] d4
	| bes a g
	| f2
    }

    \repeat volta 2 {
        \key d \major
	
	r4

% 40
	| <<
	    { a4_ \markup{\italic "sempre piano"} r r }
	      s4^ \markup{\upright "pizz."}
          >>
	| a'4 r r
	| <cis, e> <cis e> <cis e>
	| <cis e> r e
	| d r a'
	| g r cis,
	| d d a
	| fis2
    }

    \repeat volta 2 {
        r4
	| <cis' e> <cis e> <cis e>
	| <cis e> r r

% 50
	| d <a fis'> <a fis'>
	| <a fis'> r r
	| <b gis'> r r
	| <e b'> r r
	| <cis a'> <cis a'> <cis a'>
	| <cis a'> r  d,16[(^ \markup{\upright "arco"}  fis8.)]
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
