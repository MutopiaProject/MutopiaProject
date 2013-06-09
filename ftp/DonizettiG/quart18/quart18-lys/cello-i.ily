\version "2.16.0"
celloFirstMov =  \relative e, {
    \key e \minor
    \clef bass

    \noTupletBracket
\tag #'autograph {
    \noTupletNum
}
\tag #'edited {
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
}

    \repeat volta 2 {
	e2->\f a->
	| e2 ~ e8 r r4
	| r2 dis''8\p r e r
\tag #'autograph {
	| \times 2/3 { c,4.:8  c8[( d  c)] } b4 r
}
\tag #'edited {
	| \times 2/3 { c8[ c c]  c8[( d  c)] } b4 r
}
	| a2->\f c->
	| a-> ~ a4 r
	| r2 fis'8\p r e r
	| b4 r \times 2/3 { r8  ais[\f b]  cis[ d dis] }
\tag #'autograph {
	| e2-> a,--
}
\tag #'edited {
	| e'2-> a,->
}

% 10
        | e ~ e8 r r4
        | r2 dis''8\p r e r
        | a,2\f bes
        | a bes
        | a8 r \times 2/3 {  a,8[\p a a]  a[ a a]  a[ a a] }
\tag #'edited {
        \noTupletNum
}
        | a r \times 2/3 {  a[ a a]  a[ a a]  a[ a a] }
        | b r \times 2/3 {  b[\p b b]  b[ b b]  b[ b b] }
        | b r \times 2/3 {  b[\p b b]  b[ b b]  b[ b b] }
\tag #'edited {
        \tupletNum
}
        | e,2->\f a->
        | e4 r r2

% 20
        | R1
        | \acciaccatura gis8 a2( \acciaccatura dis8 e2)
        | a,4 % [R] c4 ?
          r r2
        | \acciaccatura ais8 b2( \acciaccatura eis8 fis2)
        | b,4 r r2
        | \acciaccatura dis,8 e2( \acciaccatura dis'8 e2)
        | e,4 r r2
        | \acciaccatura gis8 a2( \acciaccatura dis8 e2)
        | c4 % [R] a4 ?
          r r2
        | \acciaccatura eis,8 fis2( \acciaccatura cis'8 d2)

% 30
        | d,4 r r2
        | \times 2/3 { r8 \<  g[-. a-.]  b[-. c-. d-.] 
                        e[-. fis-. g-.]  a[-. b-.  c\!-.] }
\tag #'edited {
        \noTupletNum
}
        | b8 r b,2-> b4(
        | \times 2/3 {  c8)  a[-. b-.]  c[-. d-. e-.]
                        fis[-. g-. a-.]  b[-. c-. d-.] }
        | c8 r c,2-> c4(
        | \times 2/3 {  d8)  b[-. c-.]  d[-. e-. f-.]
                        g[-. a-. b-.]  c[-. d-. e] }
\tag #'edited {
        \tupletNum
}
        | d8 r b,2 b4(
        |  c8) r d'4(\p c b
        |  c) b( c  b)
\tag #'autograph {
        | \times 2/3 { c2.: cis: }
        | \times 2/3 { d: es: }
}
\tag #'edited {
        | \times 2/3 {  c8[ c c]  c[ c c]  cis[ cis cis]  cis[ cis cis] }
          \noTupletNum
        | \times 2/3 {  d[ d d]  d[ d d]  es[ es es]  es[ es es] } \tupletNum
}

% 41
        | d4 r r2
        | R1
        | r4 r8. cis,16 es4(   d8.)[ a16]
        | c4(   bes8.)[ fis16] a4(   g8.)[ cis,16]
        | d2->\f g->
        | d4 d' g,2
\tag #'autograph {
        | \repeat "percent" 3 { d8 r g r d r g r }
}
\tag #'edited {
        | \repeat unfold 3 { d8 r g r d r g r }
}

% 50
        | d8 r d' r r2
        | R1
        | c8_ \markup{\italic "pizz."} r d, r b' r d, r
        | c' r d, r c' r d, r
        | c'\p r d, r c' r d, r
        | b' r d, r b' r d, r
        | c' r d, r b' r d, r
        | c' r d, r c' r d, r
        | c' r d, r c' r d, r
        | b' r d, r b' r d, r

% 60
        | a' r d, r fis r d r
        | g r d r b' r d, r
\tag #'autograph {
        | c' % [R] Maybe d' ?
}
\tag #'edited {
        | d % [E] To avoid unison with Violin II
}
          r d, r a' r d, r
        | g r r4 r b(_ \markup{\italic "arco"}
        |  e8) r r4 r c4(
        |  b8) r r4 r2
        | c8_ \markup{\italic "pizz."} r d, r b' r d, r
\tag #'autograph {
        | \repeat "percent" 2 { c' r d, r c' r d, r }
}
\tag #'edited {
        | \repeat unfold 2 { c' r d, r c' r d, r }
}
        | b'8 r d, r b' r d, r

% 70
        | c' r d, r b' r d, r
        | c' r d, r c' r d, r
        | c' r a r fis! r d r
	| R1*2
	| \times 2/3 { r8  d''[ c]  b[ a g]  fis[ e d]  c[ b a] }
\tag #'autograph {
	| gis2 s4 % [R] Correct: gis2.
}
\tag #'edited {
	| gis2. % [E]
}
           gis8.[(\trill fis32  gis)]
	| a1->
	| cis->\f
	| \times 2/3 {  cis8[(  e) e]  e[(  g) g] 
                        g[(  bes) bes]  bes[(  cis) cis] }
\tag #'edited {
	\noTupletNum
}
   
% 80
\tag #'autograph {
        | \times 2/3 { d2.: b: }
	| \times 2/3 { g: d: }
}
\tag #'edited {
        | \times 2/3 {  d'8[ d d]  d[ d d]  b[ b b]  b[ b b] }
	| \times 2/3 {  g[ g g]  g[ g g]  d[ d d]  d[ d d] } \tupletNum
}
	| R1
	| fis'2(\p f
	|  e) r
	| es( d
	|  cis) r
	| c!( b
	| a g
	| fis f

% 90
\tag #'autograph {
	| e  es)
	| \times 2/3 { d1.: }
}
\tag #'edited {
	| e2-\cresc  es)
	| \times 2/3 {  d8[ d d]  d[ d d]  d[ d d]  d[ d d] } \noTupletNum
}
	| \times 2/3 { r8  d'[-. c-.]  b[-. a-. g-.] 
                        fis[-. e-. d-.]  c[-. b-. a-.] }
\tag #'edited {
        \tupletNum
}
        | g2->\f c->
	| g-> r
	| R1*2
	| r2 d'4( c
	|  b2) c(
	| d  d,)

% 100
\tag #'autograph {
	| <g d'>1 ~
}
\tag #'edited {
	| <g d'>1_\markup{\italic "rall. poco"} ~ % [E]
}
	| <g d'> ~
	| <g d'> ~
	| <g d'>

	\bar "||"
    }

    \alternative {
        {
	    | g2(  a)
	    | b1
	}

	{
	    | g2(  c)
	}
    }

    g4 r r2
    | R1
    | g2(  c)

% 110
    | g4 r r2
    | R1*2
    | g'1\p
\tag #'autograph {
    | \times 2/3 { es,2.:\f es': }
    | \times 2/3 { as,: c: }
}
\tag #'edited {
    | \times 2/3 {  es,8[\f es es]  es[ es es]  es'[ es es]  es[ es es] }
    | \noTupletNum \times 2/3 {  as,[ as as]  as[ as as]  c[ c c]  c[ c c] }
      \tupletNum
}
    | es8 r as,4 bes bes
    | es1(\fp 
    |  d)
    | des(

% 120
\tag #'autograph {
    |  c8) r \times 2/3 { <c,: c':>4.\p <c: c':> <c: c':> }
    | \times 2/3 { f2.:\f f': }
    | \times 2/3 { bes,: des: }
}
\tag #'edited {
    |  c8) r \times 2/3 { <c, c'>8[\p <c c'> <c c'>] \noTupletNum
            \repeat unfold 2 { <c c'>[ <c c'> <c c'>] } }
    | \times 2/3 {  f8[\f f f]  f[ f f]  f'[ f f]  f[ f f] }
    | \times 2/3 {  bes,[ bes bes]  bes[ bes bes]  des[ des des]  des[ des des] }
      \tupletNum
}
    | f8 r bes,4c c,
    | f'1(\p
    |  e!)
    | es
\tag #'autograph {
    | d8 r \times 2/3 { <d,: d':>4. <d: d':> <d: d':> }
}
\tag #'edited {
    | d'8 r \times 2/3 { <d, d'>[ <d d'> <d d'>] \noTupletNum
           \repeat unfold 2 { <d d'>[ <d d'> <d d'>] } }
}
    | \times 2/3 {  g8[ a bes]  c[ bes a]  g[ a bes]  c[ bes a] }
\tag #'autograph {
    | \times 2/3 { g1.: }
}
\tag #'edited {
    | \times 2/3 {  g8[ g g]  g[ g g]  g[ g g]  g[ g g] }
}

% 130
\tag #'autograph {
    | \times 2/3 { g4.: f: e!2.: }
    | \times 2/3 {  a8[ b c]  d[ c b]  a[ b c]  d[ c b] }
    | \times 2/3 { a1.: }
    | \times 2/3 { a4.: g: fis!2.: }
    | \repeat unfold 4 { \times 2/3 { b2.: b: } }
    | \repeat "percent" 4 
      { \times 2/3 {  b8[( ais  b)] b4.:  b8[( ais  b)] b4.: } }

% 142
    | \times 2/3 {  b8[\f cis dis]  e[ fis g] } a8 r g\p r
}
\tag #'edited {
    | \times 2/3 {  g,[ g g]  f[ f f]  e![ e e]  e[ e e] }
    | \times 2/3 {  a[ b c]  d[ c b]  a[ b c]  d[ c b] }
    | \times 2/3 {  a[ a a]  a[ a a]  a[ a a]  a[ a a] }
    | \times 2/3 {  a[ a a]  g[ g g]  fis![ fis fis]  fis[ fis fis] }
    | \repeat unfold 16 { \times 2/3 {  b[ b b] } }
    | \times 2/3 {  b8[( ais  b)]  b[ b b]  b8[(\p % [E] "Piano" added
                                         ais  b)]  b[ b b] }
    | \times 2/3 {  b8[( ais  b)]  b[ b b]  b8[( ais  b)]  b[ b b] }

% 140
    | \times 2/3 {  b8[( ais  b)]  b[_ \markup{\italic "calando"} b b] 
                    b8[( ais  b)]  b[ b b] }
    | \times 2/3 {  b8[( ais  b)]  b[ b b]  b8[( ais  b)]  b[ b b] }
    | \times 2/3 {  b8[\f cis dis]  e[ fis g] } \tupletNum
      a8 r g\p r
}
    | fis r e r b' r b r
    | b, r e r b r e r
    | g,1->
    | c8 r f4 c f
    | a,1->
    | d8 r g4 d g
    | b,1

% 150
    | <c, c'>2 c'4..(\trill  b32[  c)]
\tag #'autograph {
    | c,2 c'4..( % [R] Trill?
}
\tag #'edited {
    | c,2 c'4..(\trill % [E] To match the previous bar
}
       b32[  c)]
\tag #'autograph {
    | \times 2/3 { b8  e[ dis]  d[ cis c]  b[ fis' eis]  e[ dis cis] }
    | \times 2/3 { b  g'[ fis]  e[ d! c!]  b[ a' g]  fis[ dis cis] }
    | \times 2/3 { b  b'[\f a] % [R] Better join them with an unique beam
                    g[ fis e]  d[ c b]  a[ g fis] }
}
\tag #'edited {
    | \times 2/3 {  b8[ e dis] % [E]
                    d[ cis c]  b[ fis' eis]  e[ dis cis] } \noTupletNum
    | \times 2/3 {  b[ g' fis] % [E]
                    e[ d! c!]  b[ a' g]  fis[ dis cis] }
    | \times 2/3 {  b[ b'\f a] % [E]
                    g[ fis e]  d![ c! % [E]
                              b]  a[ g fis] } \tupletNum
}
    | e2-> a->
    | e ~ e8 r r4
    | r2 dis''8\p r e r
\tag #'autograph {
    | \times 2/3 { c,2.:8 s4. % [R] To be replaced by c4.:
                    c8[( d  c)] }
}
\tag #'edited {
      % [E] Donizetti could have meant  d8[ d d d]  d[ d] (without tuplets),
      %     but this solution matches bar 4
    | \times 2/3 {  c8[ c c]  c[ c c]  c[ c c]  c8[( d  c)] }
}
    | b4 r r2

% 160
    | a2-> c->
    | a ~ a8 r r4
    | r2 fis'8\p r e r
    | b4 r \times 2/3 { r8  ais[ b]  cis[ d dis] }
    | e2-> a,->
    | e ~ e8 r r4
    | r2 dis''8\p r e r
\tag #'autograph {
    | \repeat "percent" 2 { a,2 bes }
    | a8 r \times 2/3 {  a,[\p a a]  a[ a a]  a[ a a] }
}
\tag #'edited {
    | \repeat unfold 2 { a'2 bes }
    | a8 r \times 2/3 {  a,[\p a a]  a[ a a]  a[ a a] } \noTupletNum
}

% 170
\tag #'autograph {
    | r4 \times 2/3 { a2.:\p s4. } % [R] Ditto
}
\tag #'edited {
    | r4 \times 2/3 {  a8[\p a a]  a[ a a]  a[ a a] } % [E]
}
    | b8\f r \times 2/3 {  b[\p b b]  b[ b b]  b[ b b] }
    | b8 r \times 2/3 {  b[\p b b]  b[ b b]  b[ b b] }
\tag #'edited {
    \tupletNum
}
    | e,2->\f a->
    | e4 r r2
    | R1
    | \acciaccatura gis8 a2( \acciaccatura dis8 e2)
    | a,4 r r2
    | \acciaccatura ais8 b2( \acciaccatura eis8 fis2)
    | b,4 r r2
    \tag #'edited \pageBreak 

% 180
    | \acciaccatura e,8 f2( \acciaccatura ais8 b2)
    | e,4 r r  gis'8.[(  gis16)]
\tag #'autograph {
    | \times 2/3 { a4.: b: c: cis: }
    | \times 2/3 { d: e: eis: fis: }
}
\tag #'edited {
    | \times 2/3 {  a,8[ a a]  b[ b b]  c[ c c]  cis[ cis cis] } \noTupletNum
    | \times 2/3 {  d[ d d]  e[ e e]  eis[ eis eis]  fis[ fis fis] }
}
    | \times 2/3 {  g8[\f fis e]  d[ c b]  a[ g fis]  e[ d c] }
    | \times 2/3 {  b[ ais b]  c[ d e]  fis[ g a]  b[ c d] }
    | \times 2/3 {  e[ fis e]  d[ c b]  a[ g fis]  e[ d c] }
\tag #'autograph {
    | \times 2/3 { b4.: ais: b2.: }
    | \times 2/3 { c4.: b: c: cis: }
}
\tag #'edited {
    | \times 2/3 {  b8[ b b]  ais[ ais ais]  b[ b b]  b[ b b] }
    | \times 2/3 {  c[ c c]  b[ b b]  c[ c c]  cis[ cis cis] } \tupletNum
}
    | d4 r r2

% 190
    | R1
    | f8_ \markup{\italic "pizz."} r g, r e' r g, r
\tag #'autograph {
    | \repeat "percent" 2 { f' r g, r f' r g, r }
}
\tag #'edited {
    | \repeat unfold 2 { f' r g, r f' r g, r }
}
    | r4_ \markup{\italic "arco"}
\tag #'autograph {
      \times 2/3 {  fis'!8[\f e d]  cis[ b a]  fis'[ e d] }
    | \times 2/3 {  cis[ b a]  fis'![ e d]  cis[ b a]  fis'[ e d] }
}
\tag #'edited {
      \times 2/3 {  fis!8[\f e d]  cis[ b a]  fis'[ e d] } \noTupletNum
    | \times 2/3 {  cis[ b a]  fis'![ e d]  cis[ b a]  fis'[ e d] } \tupletNum
}
    | r4 % [R] g'8 r ?
      a8_ \markup{\italic "pizz."} r fis' r a, r
    | g' r a, r g' r a, r
    | g' r a, r g' r a, r
    | r4_ \markup{\italic "arco"} \times 2/3 {  g'8[ fis e]  dis[ cis b]  g'[ fis e] }
\tag #'edited {
      \noTupletNum
}

% 200
    | \times 2/3 {  dis[ cis b]  g'[ fis e]  dis[ cis bis]  g'[ fis e] } 
\tag #'edited {
      \tupletNum
}

    \bar "||"
    \key e \major

    | a8_ \markup{\italic "pizz."} r b, r a' r b, r
    | a' r b, r a' r b, r
    | a' r b, r a' r b, r
    | gis' r b, r gis' r b, r
    | fis' r b, r dis r b r
    | e r b r gis' r b, r
    | a' r b, r fis' r b, r
    | e r r4r gis4(_ \markup{\italic "arco"}
    |  cis8) r r4 r a,4(

% 210
    |  gis8) r r4 r2
    | a'8_ \markup{\italic "pizz."} r b, r gis' r b, r
    | a' r b, r a' r b, r
    | a' r b, r a' r b, r
    | gis' r b, r gis' r b, r
    | a' r b, r gis' r b, r
    | a' r b, r a' r b, r
    | a' r fis r dis! r b r
    | R1*2

% 220
    | \times 2/3 { r8_ \markup{\italic "arco."}  b'[ a]  gis[ fis e] 
                    dis[ cis b]  a[ gis fis] }
    | eis2.  eis8.[(\trill dis32  eis)]
    | fis1->
    | ais\sf
    | \times 2/3 {  ais8[(  cis) cis]  cis[(  e) e]  e[(  g) g]  g[(  ais) ais] }
\tag #'autograph {
    | \times 2/3 { b2.: gis: }
    | \times 2/3 { e: b: }
}
\tag #'edited {
      \noTupletNum
    | \times 2/3 {  b'8[ b b]  b[ b b]  gis[ gis gis]  gis[ gis gis] }
    | \times 2/3 {  e[ e e]  e[ e e]  b[ b b]  b[ b b] } \tupletNum
}
    | R1
    | dis'2(\p d
    |  cis) r

% 230
    | c(  b)
    | ais r
\tag #'autograph {
    | a( % [R] Cautionary natural!
}
\tag #'edited {
    | a!( % [E]
}
      gis
    | fis  e)
\tag #'autograph {
    | dis( d
}
\tag #'edited {
    | dis(-\cresc d % [E]
}
    | cis  c)
\tag #'autograph {
    | \times 2/3 { b1.: }
}
\tag #'edited {
    | \times 2/3 {  b8[ b b]  b[ b b]  b[ b b]  b[ b b] } \noTupletNum
}
    | \times 2/3 { r8\ff  b'[ a]  gis[ fis e]  dis[ cis b]  a[ gis fis] }
\tag #'edited {
      \tupletNum
}
    | e2-> a->
    | e r

% 240
    | R1*2
    | r2 b'4(  a)
    | gis2(  a)
    | b1(
\tag #'autograph {
    | \times 2/3 {  c1.): }
    | \times 2/3 { bes: }
    | \times 2/3 { a4.:\ff bes: a: bes: }
    | \times 2/3 { a: bes: a: bes: }
    | \times 2/3 { b!4.:  b8[ ais b] dis4.:  dis8[ cis dis] }
}
\tag #'edited {

    \key e \minor

    | \times 2/3 {   c8)[ c c]  c[ c c]  c[ c c]  c[ c c] } \noTupletNum
    | \times 2/3 { \repeat unfold 4 {  bes[ bes bes] } }
    | \times 2/3 {  a[\ff a a]  bes[ bes bes]  a[ a a]  bes[ bes bes] }
    | \times 2/3 {  a[ a a]  bes[ bes bes]  a[ a a]  bes[ bes bes] }
    | \times 2/3 {  b![ b b]  b8[ ais b]  dis[ dis dis]  dis8[ cis dis] }
}

% 250
\tag #'autograph {
    | \times 2/3 { e4.:  e8[ dis e] gis4.:  gis8[ fis gis] }
    | a8 r  b8.[(\trill a32  b)] \repeat unfold 3 { c8 r  b8.[(\trill a32  b)] }
    | \times 2/3 { c1.: }
    | c,1: % [R] c1.:
    | b: % [R] Ditto
    | b: % [R] Ditto
}
\tag #'edited {
    | \times 2/3 {  e8[ e e]  e8[ dis e]  gis[ gis gis]  gis8[ fis gis] }
    | a8 r b8.[(\trill a32  b)]
      \repeat unfold 3 { c8 r b8.[(\trill a32  b)] }
    | \times 2/3 {  c8[ c c]  c[ c c]  c[ c c]  c[ c c] }
    | \times 2/3 { \repeat unfold 4 {  c,[ c c] } } % [E]
    | \times 2/3 { \repeat unfold 4 {  b[ b b] } }  % [E]
    | \times 2/3 { \repeat unfold 4 {  b[ b b] } }  % [E]
}
    | \times 2/3 { r8  g'[(  a)]  b[-. g(  a)]  b[-. g(  a)]  b[-. e,(  fis)] }
    | \times 2/3 {  g[-. e(  fis)]  g[-. e(  fis)]  g[-. c,(  d)]  e[-. d(  c)] }
    | \times 2/3 {  b[(  e) e]  e[(  g) g]  g[(  b) b]  b[(  e) e] }
\tag #'edited {
      \tupletNum
}

% 260
    | bes,1->
    | a\p
    | b\f
    | r4 \times 2/3 {  e,8[\f e e]  e[ e e]  e[ e e] }
\tag #'edited {
    \noTupletNum
}
    | b''8 r \times 2/3 {  e,,[ e e]  e[ e e]  e[ e e] }
    | g'8 r \times 2/3 {  e,[\f e e]  e[ e e]  e[ e e] }
\tag #'autograph {
    | e'8 r \times 2/3 { a,2.: } s4 % [R] s4 -> a4.:
    | e8 r \times 2/3 { a2.: } s4 % [R] s4 -> a4.:
}
\tag #'edited {
    | e'8 r \times 2/3 {  a,[ a a]  a[ a a]  a[ a a] } % [E]
    | e8 r \times 2/3 {  a[ a a]  a[ a a]  a[ a a] }   % [E]
}
    | e8 r a r e r a r
    | \repeat unfold 4 { \times 2/3 {  e[(  a) a] } }

% 270
    | e4 r a2(->
    |  e4) r r2\fermata

    \bar "||"
}
