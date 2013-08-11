\version "2.16.0"

celloSecondMov =  \relative as, {
    \key as \major
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	  as8[(\p c  es)]  g,[(\sf bes  es)]
	|  as,[(\p  c  f)]  des[( es  bes)]
	|  b[( c des]  bes[ c  g)]
	|  as[( a bes]  g[  as_\cresc   ges)]
	|  f[( es  d)]  es[\f es'] r
	|  as[(\p c es]  g,[ bes  es)]
	|  f,[(  as) des]  es,[( bes'  es)]
	|  f[( bes,  des)]  es[( as,  ces)]
	| d,4.(_\cresc  es8[ e  f)]

% 10
	| g4(\f  as8) es4 r8
	| r  g[(\p  es)] bes' r4
	| r8  d,[(  bes)] es4 r8
	| r8  f[( g] as4_\cresc  g8)
	|  f[ f,(  as)] bes4\f r8
	| r  f'[(\p es]  d4.)
	| r8  f[( es]  d4.)
	| r8   f[(_\cresc  es] d4  es8)
	|  as[(\f  bes) bes,]  es[ es,] r
	| r4 fes'8(\p  es4.) ~

% 20
	| es4 fes8(  es4.) ~
	| es4(_\cresc f8  fis[ g  as)]
	| bes\p r r bes, r r
	|  a[(\sf c  f)]  as,[( d  f)]
	|  g,[(\p b  c)]  as[(  bes) bes']
	| a4.(\sf as
	|  g8) r r r4 r8
	| as4\p r8 r4 r8
	| r4 bes8 r bes r
	| bes r r r4 r8

% 30
	|  bes,[(-. bes-. bes-.]  bes[-. bes-.  bes)-.]
	|  es[( g bes]  es,[_\cresc g bes]
	|  es,[ as c]  es,[ f  as)]
	|  es[(\p g bes]  es,[_\cresc g bes]
	|  es,[ as c]  es,[ f  as)]
	|  es[\p es, es] es r r
    }

    \repeat volta 2 {
        | es'4.(\p  bes') ~
	| bes8(  as4) g8(  f4)
	|  e8[( f  b,)] c4 r8
	| R2.*2

% 41
	|  es,!4.(\mf   bes')
	| R2.
	| bes4.(\f  f')
	| ges,(  des')
	| c  f8[( as  c)]
	| f2.(\p
	|  bes,)
	| es(
	|  as,)

% 50
	| << des,4.( { s8  s4_\cresc } >>
          es4.
	| f  g)
	| as(\f  d,)
	| es4 r8 r4 r8
	|  es,8[(\p g bes]  as[ f  d)]
	| es4.\f  g8[( bes  es)]
	|   as,8[(\p c  es)]  g,[(\sf bes  es)]
	|  as,[(\p  c  f)]  des[( es  bes)]
	|  b[( c des]  bes[ c  g)]
	|  as[( a bes]  g[  as_\cresc   ges)]

% 60
	|  f[( es  d)]  es[\f es'] r
	|  as[(\p c es]  g,[ bes  es)]
	|  f,[(  as) des]  es,[( bes'  es)]
	|  f[( bes,  des)]  es[( as,  ces)]
	| d,4.(_\cresc  es8[ e  f)]
	| g4(\f  as8) es4 r8
	| r8  c[(\p  as)] es'4 r8
	| r  g,[(  es)] as4 r8
	| r   c[(-.  c)-.]   c[(  des)] r
	| r   d[(-.  d)-.]   d[(  es)] e(\sf

% 70
	|   f4)\p g8(\sf  as4)\p c,8(\sf
          
	| \stemDown des4.\p  es8) \stemNeutral r r
	| bes'4.(  es8) r r
	| bes,4.(\f  es,4) r8
	| r  bes'[(\p as]  g4.) ~
	|  g8[ bes( as]  g4.) ~
	|  g8[ bes(  as)] g4(_\cresc  as8)
	|  d[(\f es  e)] f4.\fp ~
	| f8 r r r4 r8
	| r4 bes,8(  as4.) ~

% 80
	| as4 beses8(  as4.) ~
	|  as8[ as'(_\cresc bes]  b[ c  des)]
	| es8\p r r es, r r
	|  d[(\sf f  bes)]  des,[( g  bes)]
	|  c,[(\p e  f)]  des[( es!  es')]
	| d4.(\sf  des)
	| c8 r r r4 r8
	| des4\p r8 r4 r8
	| r4 es8 r es r
	| r es r r es, r

% 90
	| R2.
	|  es,8[(-. es-. es-.]  es[-. es-.  es)-.]
	|  as[( c es]   as,[_\cresc c es]
	|  as,[ des f]  as,[ bes  des)]
	|   as[(\p  c es]  as,[_\cresc
           c es]
	|  as,[ des f]  as,[ bes  des)]
	|  as[\p as-. as-.] as-. r r
    }
}
