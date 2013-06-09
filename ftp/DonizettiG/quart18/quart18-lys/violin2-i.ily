\version "2.16.0"

violinIIFirstMov =  \relative b {
    \key e \minor
    \clef violin

    \noTupletBracket
\tag #'autograph {
    \noTupletNum
}
\tag #'edited {
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
}

    \repeat volta 2 {
	b2->\f c->
	| b ~ b8 r r4
	| r2 fis''8\p r e r
	| ais,2(->  b4) r
	| e,2->\f e-
	| e-> ~ e4 r
	| r2 dis8\p r e r
\tag #'autograph {
	| dis4 r \times 2/3 { r8  ais[\f b]  cis[ dis % [R] Probably: d
                                             dis!] }
}
\tag #'edited {
	| dis4 r \times 2/3 { r8  ais[\f b]  cis[ d % [E]
                                             dis] }
}
	| b2-> c->

% 10
	| b ~ b8 r r4
	| r2 fis''8\p r e r
\tag #'autograph {
	| r2 \times 2/3 {  g,8[-. \< a-. bes-.]  c[-. d-.  e\!-.] }
}
\tag #'edited {
	| r2 \times 2/3 {  g,8[-. \< a-. bes-.]  c[-. d-.  e\!-.] } 
          \noTupletNum
}
	| f8 r r4 \times 2/3 {  g,8[-. a-. bes-.]  c[-. d-. e-.] }
	| f8 r \times 2/3 {  c,[\p c c]  c[ c c]  c[ c c] }
	| f'8 r \times 2/3 {  c,[ c c]  c[ c c]  c[ c c] }
	| e'8 r \times 2/3 {  b,[\p b b]  b[ b b]  b[ b b] }
	| dis'8 r \times 2/3 {  a,[\p a a]  a[ a a]  a[ a a] }
	| g2->\f c->
\tag #'autograph {
	| \times 2/3 { b1.:8 }
}
\tag #'edited {
	| \times 2/3 { \repeat unfold 4 {  b8[ b b] } }
}

% 20
\tag #'autograph {
	| \times 2/3 { b1.: }
	| \times 2/3 { c: }
	| \times 2/3 { c: }
	| \times 2/3 {  b8[ fis' fis] fis2.:8 } s4 % [R] It should be fis4.:
	| \times 2/3 { fis2.: dis: }
	| \repeat unfold 2 { \times 2/3 { e1.: } }
	| \repeat unfold 2 { \times 2/3 { <c: e:> } }
	| \times 2/3 { c1.: }
}
\tag #'edited {
	| \times 2/3 { \repeat unfold 4 {  b8[ b b] } }
	| \times 2/3 { \repeat unfold 4 {  c[ c c] } }
	| \times 2/3 { \repeat unfold 4 {  c[ c c] } }
	| \times 2/3 {  b8[ fis' fis] 
          \repeat unfold 3 {  fis[ fis fis] } } % [E]
	| \times 2/3 {  fis[ fis fis]  fis[ fis fis] 
                        dis[ dis dis]  dis[ dis dis] }
	| \times 2/3 { \repeat unfold 8 {  e[ e e] } }
	| \times 2/3 { \repeat unfold 8 { <c e>[ <c e> <c e>] } }
	| \times 2/3 { \repeat unfold 4 {  c[ c c] } }
}

% 30
\tag #'autograph {
	| \times 2/3 { c2.: a: }
}
\tag #'edited {
	| \times 2/3 {  c8[ c c]  c[ c c]  a[ a a]  a[ a a] }
}
	| \times 2/3 { r8  b[-. \< c-.]  d[-. e-. fis-.] 
                        g[-. a-. b-.]  c[-. d-.  e\!-.] }
\tag #'autograph {
        | fis8 % [R] Probably d8
}
\tag #'edited {
        | d8 % [E] In accordance with the following bars
}
          r g,2-> g4
	| \times 2/3 { r8  c,[-. d-.]  e[-. fis-. g-.] 
                        a[-. b-. c-.]  d[-. e-. fis-.] }
	| e8 r a,2-> a4
	| \times 2/3 { r8  d,[-. e-.]  f[-. g-. a-.] 
                        b[-. c-. d-.]  e[-. f-. g-.] }
        | f8 r g,2  g8[ f]
\tag #'autograph {
	| \times 2/3 {  e[ f e] e4.:8\p  e8[ f e] e4.:8 }
	| \times 2/3 {  e8[ f e] e4.:8  e8[ f e] e4.:8 }
	| \times 2/3 { e2.: g: }
}
\tag #'edited {
	| \times 2/3 {  e8[ f e]  e[\p e e]  e[ f e]  e[ e e] }
	| \times 2/3 {  e[ f e]  e[ e e]  e[ f e]  e[ e e] }
	| \times 2/3 {  e[ e e]  e[ e e]  g[ g g]  g[ g g] }
}

% 40
\tag #'autograph {
	| \times 2/3 {  d'8[( cis  d)] d4.:8  c8[( % [R] cis8(
                        b % [R] bis ?
			 c)] c4.: }
        | \times 2/3 {  d8[ ais ais] ais2.:8 } s4 % [R] ais -> c ? and ais4.:
	| \times 2/3 { bes1.: }
	| \times 2/3 { a: }
	| \times 2/3 { bes: }
}
\tag #'edited {
	| \times 2/3 {  d8[( cis  d)]  d[ d d] 
                        cis[( bis  cis)]  cis[ cis cis] } % [E]
        | \times 2/3 {  d8[ ais ais] 
                       \repeat unfold 3 {  ais[ ais ais] } } % [E]
	| \times 2/3 { \repeat unfold 4 {  bes[ bes bes] } }
	| \times 2/3 { \repeat unfold 4 {  a[ a a] } }
	| \times 2/3 { \repeat unfold 4 {  bes[ bes bes] } }
}
	| a2->\f g->
\tag #'autograph {
	| \times 2/3 { r8  a,[ bes]  c[ bes a] bes2.: }
}
\tag #'edited {
	| \times 2/3 { r8  a[ bes]  c[ bes a]  bes[ bes bes]  bes[ bes bes] }
}
	| <a fis'!>8 r <bes g'> r <a fis'> r <d bes'> r
\tag #'autograph {
	| \repeat "percent" 2 { <d a'> r <bes' g'> r <a fis'!> r <bes g'> r }

}
\tag #'edited {
	| <d, a'> r <bes' g'> r <a fis'!> r <bes g'> r
	| <d, a'> r <bes' g'> r <a fis'> r <bes g'> r
          \tupletNum
}
% 50
        | <a fis'>8 r d, r r2
	| R1*3
	| fis2\p fis
	| g ~ \times 2/3 {  g8[ b( a]  g[ fis  e)] }
	| d4(-- d-- d--  d)--
	| d4.( e8  d4) r
	| fis2 fis
	| g ~ \times 2/3 {  g8[ b( a]  g[ fis  e)] }

% 60
	| d2 \times 2/3 { r8  c'[( a]  fis[ d  c)] }
	| b4( d g  b)
	| c2 \times 2/3 { r8  d,[( e]  fis[ g  a)] }
	| b8 r dis,4( e  fis)
	| g8 r e2 \times 2/3 {  e8[( fis  e)] }
	| dis r r4 r2
	| R1*2
	| fis2\p fis
	| g ~ \times 2/3 {  g8[ b( a]  g[ fis  e)] }

% 70
	| d4(-- d-- d--  d)--
	| d4.( e8  d4) r
	| r fis(-- fis--  fis)--
\tag #'autograph {
	| \repeat unfold 2
          { \times 2/3 {  d8[\f e fis]  g[ a b]  b[ a g]  fis[ e d] } }
}
\tag #'edited {
	| \times 2/3 {  d8[\f e fis]  g[ a b]  b[ a g]  fis[ e d] } \noTupletNum
	| \times 2/3 {  d8[\f e fis]  g[ a b]  b[ a g]  fis[ e d] }
}
	| g8 r \times 2/3 {  g,[ a b] } a8 r \times 2/3 {  a[ b c] }
	| b4 r r2
	| \times 2/3 { r8  e''[ d]  c[ b a]  g[ fis e]  d[ c b] }
	| ais1\f
	| \times 2/3 {  g'8[(  e) e]  e[(  cis) cis] 
                        cis[(  bes) bes]  bes[ bes bes] }

% 80
\tag #'autograph {
        | \times 2/3 { <d, b'!>1.:8 }
	| \times 2/3 { <d b'>1.:8 }
}
\tag #'edited {
        | \times 2/3 { <d b'!>8[ <d b'> <d b'>] 
	               \repeat unfold 3 { <d b'>[ <d b'> <d b'>] } }
	| \times 2/3 { \repeat unfold 4 { <d b'>[ <d b'> <d b'>] } }
          \tupletNum
}
	| R1
	| d'2(\p dis
	|  e) r
	| f( fis
\tag #'autograph {
	|  fis!) r
}
\tag #'edited {
	|  fis) r
}
	| fis1 ~
	| fis2 e
\tag #'autograph {
	| d dis % [R] Perhaps there is a crescendo here (see Violin I)

}
\tag #'edited {
	| d dis
}
% 90
\tag #'autograph {
	| e f % [R] Ditto
	| \times 2/3 { fis1.:8 }
	| \times 2/3 { <a,: fis':> }
}
\tag #'edited {
	| e'2-\cresc f % [E]
	| \times 2/3 { \repeat unfold 4 {  fis8[ fis fis] } } \noTupletNum
	| \times 2/3 { \repeat unfold 4 { <a, fis'>[ <a fis'> <a fis'>] } }
          \tupletNum
}
	| <b g' >2->\f c,->
	| <b d>-> r
	|  g'8\p r g r a r g r
	| <fis a>2 gis(
	|  g!) fis4(--  fis)--
	| g2 a(
	| d,  fis!)

% 100
\tag #'autograph {
	| g8 r  cis,8.[( % [R] "rall. poco" should be placed here too
	         cis16)] d2( 
}
\tag #'edited {
	| g8_ \markup{\italic "rall. poco"} r  cis,8.[( % [E]
	                                            cis16)] d2( 
}
	|  c!4)  b8.[(  b16)] \times 2/3 {  c8[ e( d]  c[ b  a)] }
	| b8 r  e8.[(  e16)] d2(
	|  c4)  b8.[(  b16)] \times 2/3 {  c8[ e( d]  c[ b  a)] }

	\bar "||"
    }

    \alternative
    {
        {
	    | b2(  c)
	    | b dis
	}
	{
	    | g2 e4..( fis16
	}
    }

    |  g4) r r2
    | R1
    | g2 es4..( f16

% 110
    |  g4) r r2
    | R1
    | d1\p ~
    | d
\tag #'autograph {
    | \times 2/3 { <bes: g':>1.\f }
    | \times 2/3 { <c: as':> }
}
\tag #'edited {
    | \times 2/3 { <bes g'>8[\f <bes g'> <bes g'>]
                   \repeat unfold 3 { <bes g'>[ <bes g'> <bes g'>] } }
      \noTupletNum
    | \times 2/3 { \repeat unfold 4 { <c as'>[ <c as'> <c as'>] } }
}
    | <bes g'>8 r <f' c' f>4 <bes, g'> <bes as'>
    | <bes g'>8 r \times 2/3 {  bes[\fp bes bes]  bes[ bes bes]  bes[ bes bes] }
    | r4 \times 2/3 {  bes8[ bes bes]  bes[ bes bes]  bes[ bes bes] }
    | r4 \times 2/3 {  bes8[\p bes bes]  bes[ bes bes]  bes[ bes bes] }

% 120
\tag #'autograph {
    | r4 \times 2/3 { bes2.:8 } s4 % [R] Change s4 with s4.:8 into "times"
    | \times 2/3 { as8\f <c as'>[ <c as'>] <c: as':>4. <c: as':>2. }
    | \times 2/3 { <des: bes':>1. }
}
\tag #'edited {
    | r4 \times 2/3 { \repeat unfold 3 {  bes8[ bes bes] } } % [E]
    | \times 2/3 { as8\f <c as'>[ <c as'>] 
                   \repeat unfold 3 { <c as'>[ <c as'> <c as'>] } }
    | \times 2/3 { \repeat unfold 4 { <des bes'>[ <des bes'> <des bes'>] } }
}
    | c'8 r <des, des'>4 <c as'> <c bes'>
\tag #'autograph {
    | <c as'>8\f r \times 2/3 { c4.:\p c: c: }
    | \repeat unfold 3 { r4 \times 2/3 { c4.: c: c: } }
}
\tag #'edited {
    | <c as'>8\f r \times 2/3 {  c[\p c c]  c[ c c]  c[ c c] }
    | \repeat unfold 3 { r4 \times 2/3 {  c8[ c c]  c[ c c]  c[ c c] } }
}
    | \times 2/3 {  bes8[ c d]  es[ d c]  bes[ c d]  es[ d c] }
\tag #'autograph {
    | \times 2/3 { bes1.: }
}
\tag #'edited {
    | \times 2/3 { \repeat unfold 4 {  bes8[ bes bes] } }
}

% 130
\tag #'autograph {
    | \times 2/3 { bes'4.: a: gis2.: }
}
\tag #'edited {
    | \times 2/3 {  bes8[ bes bes]  a[ a a]  gis[ gis gis]  gis[ gis gis] }
}
    | \times 2/3 {  a8[ a a]  a[ a a]  a[ a a]  a[ a a] }
\tag #'autograph {
    | \times 2/3 { c,1.: }
    | \times 2/3 { c'4.: b: % [R] A cautionary natural would be useful here
                   ais2.: }
    | \times 2/3 {  b8[( cis  dis)] dis4.:  e8[( dis  e)] e4.: }
    | \times 2/3 {  c8[( b  c)] c4.:  d!8[( cis  d)] d4.: }
    | \times 2/3 {  b8[( ais  b)] b4.:  c!8[( b  c)] c4.: }
    | \times 2/3 {  a8[( gis  a)] a4.:  ais8[( gisis  ais)] ais4.: }
}
\tag #'edited {
    | \times 2/3 {  c,8[ c c]  c[ c c]  c[ c c]  c[ c c] }
    | \times 2/3 {  c'[ c c]  b![ b b] % [E]
                    ais[ ais ais]  ais[ ais ais] }
    | \times 2/3 {  b[( cis  dis)]  dis[ dis dis]  e[( dis  e)]  e[ e e] }
    | \times 2/3 {  c[( b  c)]  c[ c c]  d!8[( cis  d)]  d[ d d] }
    | \times 2/3 {  b[( ais  b)]  b[ b b]  c![( b  c)]  c[ c c] }
    | \times 2/3 {  a[( gis  a)]  a[ a a]  ais[( gisis  ais)]  ais[ ais ais] }
      \tupletNum
}
    | b8 r r4 e,2(\p
    |  c!) d!(

% 140
\tag #'autograph {
    |  b) c(
    |  a) ais(
}
\tag #'edited {
    |  b) c(_\markup{\italic "calando"} |  a2)
      ais2(
}
    |  b4) r r2
    | \times 2/3 {  b8[ cis dis]  e[ fis g] } a8 r g r
    | <b, fis'> r <g' e'> r <fis! dis'> r <g e'> r
    | \times 2/3 { r8  b'[-. a-.]  g[-. f-. e-.]
                    d[-. c-. b-.]  a[-. g-. f-.] }
\tag #'edited {
    \noTupletNum
}
    | e8 r <a f'>4 <g e'> <a f'>
    | \times 2/3 { r8  cis'[-. b-.]  a[-. g-. fis-.]
                    e[-. d-. cis-.]  b[-. a-. g-.] }
\tag #'autograph {
    | fis8 r <a g'>4 <a fis'!> <a g'>
}
\tag #'edited {
    | fis8 r <a g'>4 <a fis'> <a g'>
}
    | \times 2/3 { r8  b'[-. a-.]  g[-. fis!-. e-.] 
                    dis[-. c!-. b-.]  a[-. g-. f-.] }

% 150
    | \times 2/3 {  e[ e-. fis-.]  g[-. fis-. g-.]
                    e[-. e-. fis-.]  gis[-. fis-. gis-.] }
    | \times 2/3 {  e[-. fis-. gis-.]  a[-. gis-. a-.]
                    e[-. gis-. a-.]  ais[-. gis-. % [R] gisis-. ?
                                    ais] }
    | \times 2/3 {  b[ e dis]  d[ cis c]  b[ fis' eis]  e[ dis cis] }
    | \times 2/3 {  b[ g' fis]  e[ d! c!]  b[ a' g]  fis[ dis cis] }
\tag #'autograph {
    | \times 2/3 {  b[ b'\f a]  g[ fis e]  d[ c b]  a[ g fis] }
}
\tag #'edited {
    | \times 2/3 {  b[ b'\f a]  g[ fis e]  d![ c! % [E]
                              b]  a[ g fis] } \tupletNum
}
    | e2-> c->
    | b ~ b8 r r4
    | r2 fis''8\p r e r
    | ais,,1(->\f
    |  b4) r r2

% 160
    | e2-> e->
    | e2 ~ e8 r r4
    | r2 dis8\p r e r
    | dis4 r \times 2/3 { r8  ais[ b]  cis[ d dis] }
    | b2-> c->
    | b ~ b8 r r4
    | r2 fis''8\p r e r
    | r2 \times 2/3 {  g,8[ a bes]  c[ d e] }
\tag #'autograph {
    | f8 r r4 \times 2/3 {  g,8[ a bes]  c[ d e] }
}
\tag #'edited {
    | f8 r r4 \times 2/3 {  g,8[ a bes]  c[ d e] } \noTupletNum
}
    | f8 r \times 2/3 {  c,8[\p c c]  c[ c c]  c[ c c] }

% 170
    | f'8 r \times 2/3 {  c,[\p c c]  c[ c c]  c[ c c] }
    | e'\p r \times 2/3 {  b,[\p b b]  b[ b b]  b[ b b] }
    | dis' r \times 2/3 {  a,[\fp a a]  a[ a a]  a[ a a] }
    | g2-\f c->
\tag #'autograph {
    | \times 2/3 { b2.:8 b: }
    | \times 2/3 { b: b: }
    | \repeat unfold 2 { \times 2/3 { c1.: } }
    |  b8[(  fis')] \times 2/3 { fis2.: } s4 % [R] Change s4 with fis4.:
    | \times 2/3 { fis2.: dis: }
}
\tag #'edited {
    | \times 2/3 { \repeat unfold 8 {  b8[ b b] } }
    | \times 2/3 { \repeat unfold 8 {  c[ c c] } }
    |  b8[(  fis')] \times 2/3 { \repeat unfold 3 {  fis8[ fis fis] } } % [E]
    | \times 2/3 {  fis[ fis fis]  fis[ fis fis]  dis[ dis dis]  dis[ dis dis] }
}

% 180
\tag #'autograph {
    | \times 2/3 { d1.: } % [R] A cautionary natural would be useful
}
\tag #'edited {
    | \times 2/3 {  d!8[ d d]  d[ d d]  d[ d d]  d[ d d] } % [E]
}
    | f2(  gis,8) r  b'[ r16 b']
\tag #'autograph {
    | c4( % [R] Probably b4(
}
\tag #'edited {
    | b4( % [E]
}
        a8)[ r16 c] b4(   a8)[ r16 g!]
\tag #'autograph {
    | \times 2/3 { fis4.: g: gis: a: }
}
\tag #'edited {
    | \times 2/3 {  fis8[ fis fis]  g[ g g]  gis[ gis gis]  a[ a a] }
      \tupletNum
}
    | d,4 r r  g,8.[(\f  g16)]
    | g'2.  g,8.[(  g16)]
    | g'2.  g,8.[(  g16)]
    | \repeat unfold 4 { g'4->  g,8.[(  g16)] }
    | g'4 r r2

% 190
    | R1*3
    | <b,, d>1
    | <c e>4 a8.[(\f  a16)] a'4 
      \repeat unfold 2 {  a,8.[(  a16)] a'4 } r4
    | R1*2
    | <cis, e>1
    | <a fis'!>8 r \repeat unfold 3 {  b8.[(  b16)] b'4 } r

    \key e \major
    \bar "||"

% 201
    | R1*2
    | dis,2 dis
    | e ~ \times 2/3 {  e8[ gis( fis]  e[ dis  cis)] }
    | b2 \times 2/3 { r8  a'[( fis]  dis[ b  a)] }
    | gis4 b( e  gis)
    | a2 \times 2/3 { r8  b,8[-. cis-.]  dis[-. e-. fis-.] }
    | gis8 r bis,4( cis  dis)
    | e8 r gis4(  cis,8) r \times 2/3 {  cis8[ dis cis] }

% 210
    | bis8 r r4 r2
    | R1*2
    | dis2 dis
    | e ~ \times 2/3 {  e8[ gis( fis]  e[ dis  cis)] }
    | b4(-- b-- b--  b)--
    | \times 2/3 {  b8[ b'( a]  fis[ dis  cis)] } b8 r r4
    | r dis4(-- dis--  dis)--
\tag #'autograph {
    | \repeat "percent" 2
      { \times 2/3 {  b8[ cis dis]  e[ fis gis]  gis[ fis e]  dis[ cis b] } }
}
\tag #'edited {
    | \times 2/3 {  b8[ cis dis]  e[ fis gis]  gis[ fis e]  dis[ cis b] }
      \noTupletNum
    | \times 2/3 {  b8[ cis dis]  e[ fis gis]  gis[ fis e]  dis[ cis b] }
      \tupletNum
}

% 220
    | e8 r \times 2/3 {  e[ fis gis] } fis8 r r4
    | r2 gis2(\f
    | \times 2/3 {  cis,8)  cis''[ b]  a[ gis fis]  e[ dis cis]  b[ a gis] }
    | fisis1\sf
\tag #'edited {
    \noTupletNum
}
    | \times 2/3 {  e'8[(  cis) cis]  cis[(  ais) ais] 
                    ais[(  fisis) fisis]  fisis[(  fisis) fisis] }
\tag #'autograph {
    | \repeat unfold 2 { \times 2/3 { <b, gis':>1.:8 } }
}
\tag #'edited {
    | \times 2/3 { \repeat unfold 8 { <b gis'>8[ <b gis'> <b gis'>] } }
      \tupletNum
}
    | R1
    | b'2(\p bis
    |  cis) r

% 230
    | d dis ~
    | dis r
    | dis!1 ~
    | dis2 cis
\tag #'autograph {
    | b-\cresc \< bis
}
\tag #'edited {
    | b \< bis
}
    | cis d
\tag #'autograph {
    | \times 2/3 {  dis!1.\!: }
    | \times 2/3 { <fis,: dis':>\ff }
}
\tag #'edited {
    | \times 2/3 { dis'!8[\! dis dis] \repeat unfold 3 {  dis[ dis dis] } }
      \noTupletNum
    | \times 2/3 { <fis, dis'>[\ff <fis dis'> <fis dis'>] 
          \repeat unfold 3 { <fis dis'>[ <fis dis'> <fis dis'>] } }
      \tupletNum
}
    | <gis e'>2-> cis,->
    | b r

% 240
    | e8\p r e r fis r fis r
    | fis2 eis(->
    |  e!) dis4(--  dis)--
    | e2(  fis)
    | b,1

    \key e \minor
    \bar "||"

\tag #'autograph {
    | \times 2/3 { c4.:-\cresc e: g: c: }
    | \times 2/3 { e: g: <c,: c':>2. }
    | \times 2/3 { <c: c':>1.\ff }
    | \times 2/3 { <c: c':> }
    | \times 2/3 { a2.: } a4  b8.[(  c16)]
}
\tag #'edited {
    | \times 2/3 { c,8[-\cresc c c]  e[ e e]  g[ g g]  c[ c c] }
      \noTupletNum
    | \times 2/3 {  e[ e e]  g[ g g] 
                   <c, c'>[ <c c'> <c c'>] <c c'>[ <c c'> <c c'>] }
    | \times 2/3 { <c c'>[\ff <c c'> <c c'>] 
                   \repeat unfold 3 { <c c'>[ <c c'> <c c'>] } }
    | \times 2/3 { \repeat unfold 4 { <c c'>[ <c c'> <c c'>] } }
    | \times 2/3 {  a[ a a]  a[ a a] } a4  b8.[(  c16)]
}

% 250
\tag #'autograph {
    | \times 2/3 { b2.: b: }
    | \repeat "percent" 2 { \times 2/3 {  e,8[ f e] e4.:  e8[ f e] e4.: } }
}
\tag #'edited {
    | \times 2/3 {  b'8[ b b]  b[ b b]  b[ b b]  b[ b b] }
    | \repeat unfold 2 { \times 2/3 {  e,8[ f e]  e[ e e]  e[ f e]  e[ e e] } }
}
    | e2 a4..\trill  gis32[(  a)]
\tag #'autograph {
    | ais2 s4 % [R] It is probably ais2.
}
\tag #'edited {
    | ais2. % [E]
}
       ais8.[(\trill gisis32  ais)]
\tag #'autograph {
    | \times 2/3 { <b, b'>8[ <b g'> <b g'>] <b: g':>2. } s4 % [R] See above
    | \times 2/3 { <b: g':>1. }
}
\tag #'edited {
    | \times 2/3 { <b b'>8[ <b g'> <b g'>] 
                   \repeat unfold 7 { <b g'>[ <b g'> <b g'>] } }
}
    | \times 2/3 { r8  g'[(  a)]  b[-. g(  a)]  b[-. g(  a)]  b[-. e,(  fis)] }
    | \times 2/3 {  g[-. e(  fis)]  g[-. e(  fis)]  g[-. c,(  d)]  e[-. d(  c)] }
    | b4 r r2

% 260
    | g'1\fp
    | \times 2/3 { f8[(\p  a) a-.]  a[(  c) c-.] 
                    c[(  f) f-.]  f[(  a) a-.] }
    | <b,, a'>1\f
    | <b g'>8 r \times 2/3 {  b[\f b b]  b[ b b]  b[ b b] }
    | <b e> r \times 2/3 {  b[ b b]  b[ b b]  b[ b b] }
    | <b e> r \times 2/3 {  b[\f b b]  b[ b b]  b[ b b] }
\tag #'autograph {
    | \repeat unfold 2 { b r \times 2/3 { <c: e:>4. <c: e:> <c: e:> } }
}
\tag #'edited {
    | \repeat unfold 2 { b8 r \times 2/3 { 
          \repeat unfold 3 { <c e>[ <c e> <c e>] } } }
}
    | <b g'>8 r <c a'> r <b g'> r <c a'> r
    | \times 2/3 {  g'[(  a) a]  g[(  a) a]  g[(  a) a]  g[(  a) a] }

% 270
    | g4 r a,2(->
    |  g4) r r2\fermata

    \bar "||"
}
