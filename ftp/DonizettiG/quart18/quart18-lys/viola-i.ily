\version "2.16.0"

violaFirstMov =  \relative g {
    \key e \minor
    \clef alto

    \noTupletBracket
\tag #'autograph {
    \noTupletNum
}
\tag #'edited {
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
}

    \repeat volta 2 {
	g2->\f <e a>->
	| <e g> ~ <e g>8 r r4
	| r2 b''8\p r b r
	| fis,2(->  fis4) r
	| e2->\f e->
	| e-> ~ e4 r
	| r2 b'8\p r b r
	| b4 r \times 2/3 { r8  ais[\f b]  cis[ d dis] }
	| <g, e'>2-> <e a>->

% 10
	| <e g> ~ <e g>8 r r4
	| r2 b''8\p r b r
\tag #'autograph {
	| \times 2/3 {  c,!8[-.\f d-. e-.]  f[-. g-. a-.] } g2
}
\tag #'edited {
	| \times 2/3 {  c,!8[-.\f d-. e-.]  f[-. g-. a-.] } g2 \noTupletNum
}
	| \times 2/3 {  c,!8[-. d-. e-.]  f[-. g-. a-.] } g2
	| f8 r \times 2/3 {  a,[\p a a]  a[ a a]  a[ a a] }
	| f' r \times 2/3 {  a,[ a a]  a[ a a]  a[ a a] }
	| g' r \times 2/3 {  g,[\p g g]  g[ g g]  g[ g g] }
	| fis'! r \times 2/3 {  fis,[\p fis fis]  fis[ fis fis]  fis[ fis fis] }
	| e2->\f <e a>
\tag #'autograph {
	| \times 2/3 { g1.:8 }
}
\tag #'edited {
	| \times 2/3 {  g8[ g g]  g[ g g]  g[ g g]  g[ g g] }
}

% 20
\tag #'autograph {
	| \times 2/3 { e2.: g: }
	| \repeat unfold 3 { \times 2/3 { a1.: } }
	| \times 2/3 { a2.: fis: }
	| \times 2/3 { g1.: }
	| \times 2/3 { <g: b:>2. <g: b:> }
	| \repeat unfold 2 { \times 2/3 { a1.: } }
	| \times 2/3 { <fis!: a:>1. }
}
\tag #'edited {
	| \times 2/3 {  e8[ e e]  e[ e e]  g[ g g]  g[ g g] }
	| \times 2/3 { \repeat unfold 12 {  a[ a a] } }
	| \times 2/3 {  a[ a a]  a[ a a]  fis[ fis fis]  fis[ fis fis] }
	| \times 2/3 { \repeat unfold 4 {  g[ g g] } }
	| \times 2/3 { \repeat unfold 4 { <g b>[ <g b> <g b>] } }
	| \times 2/3 { \repeat unfold 8 {  a[ a a] } }
	| \times 2/3 { <fis! a>[ <fis a> <fis a>]
	               \repeat unfold 3 { <fis a>[ <fis a> <fis a>] } }
}

% 30
\tag #'autograph {
	| \times 2/3 { <d: a':>2. fis: }
}
\tag #'edited {
	| \times 2/3 { <d a'>8[ <d a'> <d a'>] <d a'>[ <d a'> <d a'>]
                        fis[ fis fis]  fis[ fis fis] } \tupletNum
}
	| g8 r g2-> \times 2/3 {  e'8[-. d-. c-.] }
	| b8 r d2-> d4(
	|  e8) r a,2 \times 2/3 {  fis'8[-. e-. d-.] }
	| c8 r e2-> e4(
	|  f8) r b,2 \times 2/3 {  g'8[-. f!-. e-.] }
	| d8 r <d f>2 d4(
	| <c e>8)\p r r4 r d(
	|  c) d( e  d)
\tag #'autograph {
	| \times 2/3 { e1.: }
	| \times 2/3 { g2.: g: }
	| \times 2/3 { fis!1.: }
	| \times 2/3 { g: }
	| \times 2/3 { fis: }
	| \times 2/3 { g: }
}
\tag #'edited {
	| \times 2/3 {  e8[ e e]  e[ e e]  e[ e e]  e[ e e] } \noTupletNum
	| \times 2/3 {  g[ g g]  g[ g g]  g[ g g]  g[ g g] }
	| \times 2/3 {  fis![ fis fis] \repeat unfold 3 {  fis[ fis fis] } }
	| \times 2/3 {  g[ g g]  g[ g g]  g[ g g]  g[ g g] }
	| \times 2/3 { \repeat unfold 4 {  fis[ fis fis] } }
	| \times 2/3 { \repeat unfold 4 {  g[ g g] } }
}
	| fis!2->\f d->
\tag #'autograph {
	| \times 2/3 { r8  fis,![ g]  a[ g fis] } \times 2/3 { g2.: }
}
\tag #'edited {
	| \times 2/3 { r8  fis![ g]  a[ g fis] } \times 2/3 {  g[ g g]  g[ g g] }
}
	| d'8 r d r d r <d bes'> r
\tag #'autograph {
	| \repeat "percent" 2 { d r <d, d'> r <d d'> r <d d'> r }
}
\tag #'edited {
	| \repeat unfold 2 { d' r <d, d'> r <d d'> r <d d'> r }
	  \tupletNum
}

% 50
\tag #'autograph {
	| d' r \times 2/3 {  d,[ d d] d2.: }
	| d8 r \times 2/3 {  d[ d d]  d[ d d]  d[ d d] }
	| \repeat "percent" 8 { d8 r \times 2/3 {  d[ d d] d2.: } }
}
\tag #'edited {
	| d'8 r \times 2/3 {  d,8[ d d]  d[ d d]  d[ d d] }
	| d8 r \times 2/3 {  d[ d d]  d[ d d]  d[ d d] } \noTupletNum
	| \repeat unfold 8 { d8 r \times 2/3 {  d[ d d]  d[ d d]  d[ d d] } }
          \tupletNum
}

% 60
	| d4( fis!  d)  a'8.[(  fis16)]
	| g4( b d  g)
	| a2 c,
	| b8 r b4( ais  a)
	| g8 r e4(  c'8) r e,4(
	|  fis8) r r4 r2
\tag #'autograph {
	| \repeat "percent" 2 { r4 \times 2/3 {  d8[\p d d] d2.: } }
}
\tag #'edited {
	| \repeat unfold 2 { r4 \times 2/3 {  d8[\p d d]  d[ d d]  d[ d d] } }
          \noTupletNum
}
	| \repeat unfold 2 { a'8 r \times 2/3 {  d,[ d d] } }
\tag #'autograph {
	| g8 r \times 2/3 {  d[ d d] d2.: }
}
\tag #'edited {
	| g8 r \times 2/3 {  d[ d d]  d[ d d]  d[ d d] }
}

% 70
	| fis8 r \times 2/3 {  d[ d d]  d[ d d]  d[ d d] }
\tag #'autograph {
	| fis! r \times 2/3 { d2.: } s4 % [R] s4 -> d4.:
	| \times 2/3 { d1.: }
}
\tag #'edited {
	| fis!8 r \times 2/3 {  d8[ d d]  d[ d d]  d[ d d] } % [E]
	| \times 2/3 {  d[ d d]  d[ d d]  d[ d d]  d[ d d] } \tupletNum % [E]
}
	| b'2->\f c->
	| b c
	| <g b>4 r r2
	| \times 2/3 { r8  e''[ d]  c[ b a]  gis[ f e]  d[ c b] }
\tag #'autograph {
	| c2-> s4 % [R] Probably, c2.->
}
\tag #'edited {
	| c2.-> % [E]
}
          c8.[(\trill b32  c)]
	| e1\f
	| \times 2/3 {  e,8[(  g) g]  g[(  bes) bes]  bes[(  cis) cis]  cis[(  e) e] }
\tag #'edited {
          \noTupletNum
}

% 80
\tag #'autograph {
	| \repeat unfold 2 { \times 2/3 { g1.: } }
}
\tag #'edited {
	| \times 2/3 { \repeat unfold 8 {  g8[ g g] } } \tupletNum
}
	| R1
	| c1\p \< ~
	|  c2\! r
	| c1( \<
	|  cis2\!) r
	| r dis
	| d! cis
\tag #'autograph {
	| d c ~ % [R] A cautionary natural should be placed here
}
\tag #'edited {
	| d c! ~ % [E]
}

% 90
\tag #'autograph {
	| c c
	| \times 2/3 { c1.: }
	| \times 2/3 { <c,: c':> }
}
\tag #'edited {
	| c'2-\cresc c
	| \times 2/3 { \repeat unfold 4 {  c8[ c c] } } \noTupletNum
	| \times 2/3 { <c, c'>[ <c c'> <c c'>]
                       \repeat unfold 3 { <c c'>[ <c c'> <c c'>] } }
          \tupletNum
}
	| <b b'>2-> g->
	| g-> r
	| e'8\p r e r fis r e r
	| dis4-- dis-- d2(
	|  cis4) cis-- c( a
	|  g) d'( c  e)
	| b2 <d, c'>

% 100
\tag #'autograph {
	| <d b'>8 r  ais'8.[(  ais16)] b2(
}
\tag #'edited {
	| <d, b'>8_\markup{\italic "rall. poco"} r  ais'8.[(  ais16)] b2( % [E]
}
	|  a!4)  gis8.[(  gis16)] \times 2/3 {  a8[ c( b]  a[ g  fis)] }
	| g8 r  ais8.[(  ais16)] b2(
	|  a4)  gis8.[(  gis16)] \times 2/3 {  a8[ c( b]  a[ g  fis)] }
    }

    \alternative {
        {
	    | g2 \stemUp c4.(  b16[  a)] \stemNeutral
	    | g2 fis!
	}

	{
	    | <b d>2( <c e>)
	}
    }

    | <b d>4 r r2
    | R1
    | <bes d>2 <c es>

% 110
    | <bes d>4 r r2
    | R1
    | bes1\p ~
    | bes
\tag #'autograph {
    | \times 2/3 { es1.:\f }
    | \times 2/3 { es1.: }
}
\tag #'edited {
    | \times 2/3 {  es8[\f es es] \repeat unfold 3 {  es[ es es] } }
      \noTupletNum
    | \times 2/3 { \repeat unfold 4 {  es[ es es] } }
}
    | es8 r <c as'>4 <es g>  d8.[(  f16)]
    | <bes, es>8 r \times 2/3 {  g[\fp g g]  g[ g g]  g[ g g] }
    | r4 \times 2/3 {  g8[ g g]  g[ g g]  g[ g g] }
    | r4 \times 2/3 {  g8[\p g g]  g[ g g]  g[ g g] }

% 120
    | r4 \times 2/3 {  g8[\p g g]  g[ g g]  g[ g g] }
\tag #'autograph {
    | \times 2/3 { f\f  f'[ f] f4.: f2.: }
    | \times 2/3 { f1.: }
}
\tag #'edited {
    | \times 2/3 { f,8\f  f'[ f] \repeat unfold 7 {  f[ f f] } }
}
    | f8 r g4 as  e!8.[(  g16)]
\tag #'autograph {
    | f8\f r \times 2/3 { as,4.:\p as: as: }
    | \repeat unfold 2 { r4 \times 2/3 { as4.: as: as: } }
    | r4 \times 2/3 { a!2.: } s4 % [R] As usual, s4 -> a4.:
    | \times 2/3 { g1.: }
    | \times 2/3 { g: }
}
\tag #'edited {
    | f'8\f r \times 2/3 {  as,8[\p as as] \repeat unfold 2 {  as[ as as] } }
    | \repeat unfold 2 
      { r4 \times 2/3 {  as8[ as as]  as[ as as]  as[ as as] } } % [E]
    | r4 \times 2/3 {  a!8[ a a]  a[ a a]  a[ a a] } % [E]
    | \times 2/3 { \repeat unfold 8 {  g[ g g] } }
}

% 130
\tag #'autograph {
    | \times 2/3 { g4.: \< a:  b!2.\!: }
}
\tag #'edited {
    | \times 2/3 {  g8[ g g \<]  a[ a a] b!\![ b b]  b[ b b] }
}
    | \times 2/3 {  c8[ d e!]  f[ e d]  c[ d e]  f[ e d] }
\tag #'autograph {
    | \times 2/3 {  c[ a a] a2.: } s4 % [R] Ditto
    | \times 2/3 { a4.: b: cis2.: }
    | \times 2/3 {  dis8[( e  fis)] fis4.:  g8[( fis  g)] g4.: }
    | \times 2/3 {  e8[( dis  e)] e4.:  fis8[( eis  fis)] fis4.: }
    | \times 2/3 {  d!8[( cis  d)] d4.:  e8[( dis  e)] e4.: }
    | \times 2/3 {  c!8[( b  c)] c4.:  cis8[( bis  cis)] cis4.: }
}
\tag #'edited {
    | \times 2/3 {  c8[ a a]  a[ a a]  a[ a a]  a[ a a] } % [E] Ditto
    | \times 2/3 {  a[ a a]  b[ b b]  cis[ cis cis]  cis[ cis cis] }
    | \times 2/3 {  dis[( e  fis)]  fis[ fis fis]  g[( fis  g)]  g[ g g] }
    | \times 2/3 {  e8[( dis  e)]  e[ e e]  fis[( eis  fis)]  fis[ fis fis] }
    | \times 2/3 {  d!8[( cis  d)]  d[ d d]  e[( dis  e)]  e[ e e] }
    | \times 2/3 {  c!8[( b  c)]  c[ c c]  cis[( bis  cis)]  cis[ cis cis] }
}
    | dis8 r r4 g,2(\p
    |  e) f(

% 140
\tag #'autograph {
    |  d!) e(
}
\tag #'edited {
    |  d!) e(_\markup{\italic "calando"}
}
    |  c) cis(
    |  dis8) r b'4-> ~ \times 2/3 {  b8[ cis dis]  e[ fis g] }
    | a8\p r g r fis r e r
\tag #'autograph {
    | dis r <e b'> r <fis b'> r <e b'> r
}
\tag #'edited {
    | dis r <e b'> r <fis b> r <e b'> r
}
    | \times 2/3 { r  g[-. f-.]  e[-. d-. c-.]  b[-. a-. g-.]  f[-. e-. d-.] }
    | c! r \repeat unfold 3 { <c c'>4 }
    | \times 2/3 { r8  a''[-. g-.]  fis![-. e-. d-.] 
                    cis[-. b-. a-.]  g[-. fis-. e-.] }
    | d r \repeat unfold 3 { <d d'>4 }
    | \times 2/3 { r8  b''[-. c-.]  b[-. a-. g-.] 
                    fis[-. e-. dis-.]  c![-. b-. a-.] }

% 150
    | \times 2/3 {  g[ e-. fis-.]  g[-. fis-. g-.]
                    e[-. e-. fis-.]  gis[-. fis-. gis-.] }
    | \times 2/3 {  e[-. fis-. gis-.]  a[-. gis-. a-.] 
                    e[-. gis-. a-.]  ais[-. gis-. ais-.] }
    | \times 2/3 {  b[ e dis]  d[ cis c]  b[ fis' eis]  e[ dis cis] }
    | \times 2/3 {  b[ g' fis]  e[ d! c!]  b[ a' g]  fis[ dis cis] }
\tag #'autograph {
    | \times 2/3 {  b[ b'\f a]  g[ fis e]  d[ c b]  a[ g fis] }
}
\tag #'edited {
    | \times 2/3 {  b[ b'\f a]  g[ fis e]  d![ c! % [E]
                              b]  a[ g fis] } \tupletNum
}
    | e2-> <e a>->
    | <e g> ~ <e g>8 r r4
    | r2 b''8\p r b r
    | fis,1->\f ~
    | fis4 r r2

% 160
    | e2-> e->
    | e ~ e8 r r4
    | r2 b'8\p r b r
    | b4 r \times 2/3 { r8  ais[ b]  cis[ d dis] }
    | <g, e'>2-> <e a>->
    | <e g> ~ <e g>8 r r4
    | r2 b''8\p r b r
\tag #'autograph {
    | \repeat "percent" 2 { \times 2/3 {  c,![ d! e]  f[ g a] } g2 }
}
\tag #'edited {
    | \repeat unfold 2 { \times 2/3 {  c,!8[ d! e]  f[ g a] } g2 } \noTupletNum
}
    | f8 r \times 2/3 {  a,[\p a a]  a[ a a]  a[ a a] }

% 170
    | f' r \times 2/3 {  a,[\p a a]  a[ a a]  a[ a a] }
    | g'\f r \times 2/3 {  g,[\p g g]  g[ g g]  g[ g g] }
    | fis'! r \times 2/3 {  fis,[\fp fis fis]  fis[ fis fis]  fis[ fis fis] }
    | e2->\f <e a>
\tag #'autograph {
    | \times 2/3 { g1.: }
    | \times 2/3 { e2.: g: }
    | \repeat unfold 3 { \times 2/3 { a1.: } }
    | \times 2/3 { a2.: fis: }
}
\tag #'edited {
    | \times 2/3 { \repeat unfold 4 {  g8[ g g] } }
    | \times 2/3 {  e[ e e]  e[ e e]  g[ g g]  g[ g g] }
    | \times 2/3 { \repeat unfold 12 {  a[ a a] } }
    | \times 2/3 {  a[ a a]  a[ a a]  fis[ fis fis]  fis[ fis fis] }
}

% 180
\tag #'autograph {
    | \times 2/3 { b1.: }
    | \times 2/3 { <b: d:> }
    | \times 2/3 { c4.: d: e2.: }
}
\tag #'edited {
    | \times 2/3 { \repeat unfold 4 {  b8[ b b] } }
    | \times 2/3 { \repeat unfold 4 { <b d>[ <b d> <b d>] } }
    | \times 2/3 {  c[ c c]  d[ d d]  e[ e e]  e[ e e] }
}
    | fis4 r r  a,8.[(  a'16)]
    | a4  g8.[(  g16)] b8 r r4
    | \times 2/3 {  d,,8[\f cis d]  e[ fis g]  a[ b c]  d[ e fis] }
    | \times 2/3 {  g[ a g]  fis[ e d]  c[ b a]  g[ fis e] }
\tag #'autograph {
    | \times 2/3 { d4.: cis: d: dis: }
    | \times 2/3 { e: dis: e: e': }
    | <d b'>4 \times 2/3 {  gis,8[\p % [R] Probably g.
                            gis gis] gis2.: }
}
\tag #'edited {
    | \times 2/3 {  d8[ d d]  cis[ cis cis]  d[ d d]  dis[ dis dis] }
    | \times 2/3 {  e[ e e]  dis[ dis dis]  e[ e e]  e'[ e e] }
    | <d b'>4 \times 2/3 {  g,8[\p % [E]
                            g g]  g[ g g]  g[ g g] }
}

% 190
\tag #'autograph {
    | \repeat unfold 2 { g8 r \times 2/3 { g2.: } s4 } % [R] s4 -> g4.:
    | \repeat "percent" 2 { g8 r \times 2/3 { g2.: } s4 }
    | e8 r \times 2/3 { d'\f e fis!]  e[ d cis]  d[ e fis] }
}
\tag #'edited {
    | \repeat unfold 4 { g,8 r \times 2/3 {  g[ g g]  g[ g g]  g[ g g] } } % [E]
    | e8 r \times 2/3 {  d'[\f e fis!]  e[ d cis]  d[ e fis] }
}
    | \times 2/3 {  e[ d cis]  d[ e fis!]  e[ d cis]  d[ e fis] }
\tag #'autograph {
    | a,8 r \times 2/3 { a4.: } a8 r \times 2/3 { a4.: }
}
\tag #'edited {
    | a8 r \times 2/3 {  a[ a a] } a8 r \times 2/3 {  a[ a a] }
}
    | \repeat unfold 4 { a8 r \times 2/3 {  a[ a a] } }
    | d, r \times 2/3 {  e'[ fis! g]  fis[ e dis]  e[ fis g] }

% 200
    | \times 2/3 {  fis[ e dis]  e[ fis g]  fis[ e dis]  e[ fis g] }

    \bar "||"
    \key e \major

\tag #'autograph {
    | \repeat unfold 8 { b,8 r \times 2/3 {  b[ b b] } }
}
\tag #'edited {
    | \repeat unfold 8 { b8 r \times 2/3 {  b[ b b] } } \tupletNum
}
    | b4 dis, b'  fis8.[(  dis16)]
    | e4 gis( b  e)
    | fis2 a,
    | gis8 r gis4( fisis  fis)
    | e8 r cis'4(  a8) r e4(

% 210
    |  gis8) r r4 r2
\tag #'autograph {
    | \repeat unfold 2 { r4 \times 2/3 {  b8[ b b]  b[ b b]  b[ b b] } }
}
\tag #'edited {
    | r4 \times 2/3 {  b8[ b b]  b[ b b]  b[ b b] } \noTupletNum
    | r4 \times 2/3 {  b8[ b b]  b[ b b]  b[ b b] }
}
    | \repeat unfold 2 { fis8 r \times 2/3 {  b[ b b] } }
\tag #'autograph {
    | e,4 \times 2/3 {  b'8[ b b] b2.: }
}
\tag #'edited {
    | e,4 \times 2/3 {  b'8[ b b]  b[ b b]  b[ b b] }
}
    | dis,8 r \times 2/3 {  b'[ b b] } cisis, r \times 2/3 {  b'[ b b] }
\tag #'autograph {
    | dis,8 r \times 2/3 { b'2.: } s4 % [R] s4 -> b4.:
}
\tag #'edited {
    | dis,8 r \times 2/3 {  b'8[ b b]  b[ b b]  b[ b b] } % [E]
}
    | \repeat unfold 4 { \times 2/3 {  b8[(  fis) fis-.] } }
\tag #'autograph {
    | \repeat "percent" 2 { gis2 a }
}
\tag #'edited {
    | \repeat unfold 2 { gis2 a }
}

% 220
    | <gis b>4 r r \times 2/3 {  fis8[ gis a] }
    | \times 2/3 {  gis[ cis' b]  a[ gis fis]  eis[ d cis]  b[ a gis] }
    | a2.  a8.[(\trill gis32  a)]
    | cis1\sf
    | \times 2/3 {  cis,8[(  e) e]  e[(  g) g]  g[(  ais) ais]  ais[(  cis!) cis] }
\tag #'autograph {
    | \repeat unfold 2 { \times 2/3 { e1.: } }
}
\tag #'edited {
    | \times 2/3 { \repeat unfold 8 {  e8[ e e] } } \tupletNum
}
    | R1
    | a\p ~
    | a2 r

% 230
    | a1 \<
    |  ais2\! r
    | r bis
\tag #'autograph {
    | b! a-> ~ % [R] ais?
    | a a ~
}
\tag #'edited {
    | b! a-> ~ % [R] With Ais the harmony would be richer.
    | a-\cresc a ~ % [E]
}
    | a a
\tag #'autograph {
    | \times 2/3 { <fis: a:>1. }
    | \times 2/3 { <b,: a':> }
}
\tag #'edited {
    | \times 2/3 { \repeat unfold 4 { <fis' a>8[ <fis a> <fis a>] } }
      \noTupletNum
    | \times 2/3 { \repeat unfold 4 { <b, a'>[ <b a'> <b a'>] } }
      \tupletNum
}
    | <b gis' >2-> a->
    | gis r

% 240
    | cis8\p r cis r dis r cis r
    | bis4 bis b2->
    | ais4( ais a  fis)
    | gis( b a  cis)
    | <e, gis>2 <dis a'>

    \bar "||"
    \key e \minor

\tag #'autograph {
    | \times 2/3 { g4.: c!:-\cresc e: g: }
    | \times 2/3 { c: e: g,: e: }
    | \times 2/3 { f:\ff g: f: g: }
    | \times 2/3 { f: g: f: g: }
    | \times 2/3 { fis!2.: fis: }
}
\tag #'edited {
    | \times 2/3 {  g,8[ g g]  c![-\cresc c c]  e[ e e]  g[ g g] } \noTupletNum
    | \times 2/3 {  c[ c c]  e[ e e]  g,[ g g]  e[ e e] }
    | \times 2/3 {  f[\ff f f]  g[ g g]  f[ f f]  g[ g g] }
    | \times 2/3 {  f[ f f]  g[ g g]  f[ f f]  g[ g g] }
    | \times 2/3 {  fis![ fis fis] \repeat unfold 3 {  fis[ fis fis] } }
}

% 250
\tag #'autograph {
    | \times 2/3 { e2.: } d!4  e8.[(  f16)]
    | e8 r e4 ~ e8 r e4 % [R] Missing tie?
}
\tag #'edited {
    | \times 2/3 {  e8[ e e]  e[ e e] } d!4  e8.[(  f16)]
    | e8 r e4 ~ e8 r e4 ~ % [E]
}
    | e8 r e4 ~ e8 r e4 ~
\tag #'autograph {
    | \times 2/3 { <c: e:>1. }
}
\tag #'edited {
    | \times 2/3 { \repeat unfold 4 { <c e>8[ <c e> <c e>] } }
}
    | g2 e4  fis8.[(  g16)]
\tag #'autograph {
    | \times 2/3 {  e8[ e' e] e2.: } s4 % [R] s4 -> e4.:
    | \times 2/3 { e1.: }
}
\tag #'edited {
    | \times 2/3 {  e,8[ e' e]  e[ e e]  e[ e e]  e[ e e] }
    | \times 2/3 { \repeat unfold 4 {  e[ e e] } }
}
    | \times 2/3 { r8  g[(  a)]  b[-. g(  a)]  b[-. g(  a)]  b[-. e,(  fis)] }
    | \times 2/3 {  g[-. e(  fis)]  g[-. e(  fis)]  g[-. c,(  d)]  e[-. d(  c)] }
    | b1

% 260
    | \times 2/3 {  e,8[(  g) g]  g[(  c) c]  c[(  e) e]  e[(  g) g] }
    | f8\p r \times 2/3 {  f[(  c) c-.]  c[(  a) a-.]  a[(  f) f-.] }
    | dis1\f
    | r4 \times 2/3 {  g8[\f g g]  g[ g g]  g[ g g] }
    | r4 \times 2/3 {  g8[ g g]  g[ g g]  g[ g g] }
    | r4 \times 2/3 {  g8[ g g]  g[ g g]  g[ g g] }
\tag #'autograph {
    | r4 \times 2/3 { a2.: } s4 % [R] s4 -> a4.:
    | g8 r \times 2/3 { a2.: } s4 % [R] Ditto
}
\tag #'edited {
    | r4 \times 2/3 {  a8[ a a]  a[ a a]  a[ a a] } % [E]
    | g8 r \times 2/3 {  a8[ a a]  a[ a a]  a[ a a] } % [E] Ditto
}
    | g8 r e' r g, r e' r
    | \repeat unfold 4 { \times 2/3 {  b[(  c) c] } }

% 270
    | b4 r a2(->
    |  b4) r r2\fermata

    \bar "|."
}
