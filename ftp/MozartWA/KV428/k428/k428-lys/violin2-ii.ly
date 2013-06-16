\version "2.16.0"

violinIISecondMov =  \relative c' {
    \key as \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	 c4.(\p  des)\sf
	|  c8[(\p es f] ~ f  es4) ~
	| es8( des4 ~ des8  c4) ~
	| c8( bes4 ~ bes8   as4)_\cresc  ~
	|  as8[( bes  ces)]  c[(\f  bes)] r 
	| r4 r8 es'4.(\p
	|  as4.) ~ as8(  g4)
	|  c,8[( des ces]  bes[ ces  bes)]
	|  as[(-\cresc bes  ces)]  bes16.[( c32 des8  c)]

% 10
	| bes4(\f  as8) \grace bes16 as8[ g] r
	| r  es[(\p  g)]  g[(  as)] r
	| r  bes,[(  f')]  fis[(  g)] r
	| r  as[(  bes)] ~  bes[( as  e)]
	|  f[ c'( bes16  as)]   g8[(\f  f)] r
	| r  d[(\p es]  e[  f)] r
	| r  d[(\p es!]  e[  f)] r 
	| r   d[(_\cresc es!]  e[ f  g)]
	|  c[(\f bes  as)] g4 r8
	| r8   g[(\p as]  a[  bes)] r

% 20
	| r  g[( as!]  a[  bes)] r
	| r  g[(-\cresc  as!]  a[ bes  as)]
	|  fis[(\p g  es)]  g[(  f16.) es32-. d8]
	| es4.(\sf  d)
	|  es8[(\p f  es)]   as16.[( f32 es8  d)]
	| << { \voiceOne es'4.(  d)( |   es8)[ \oneVoice g,(\p as]
           a[ bes  b)] } \new Voice { \voiceTwo f2.(\sf | es8) } >>
	| c'8[( e,  f)]  as!8..[( f32 as16.  f32)]
	| es!8 r g r g r
	| g r r r4 r8
% 30
	| bes,4.( <as d>)
	| \grace { g32[( es'] } es'4.)( des_\cresc
	| c  d)
	| es(\p des!_\cresc
	| c  d)
	|  es8[ <g,, es'>\p <g es'>] <g es'> r r
    }

    \repeat volta 2 {
        | r4 r8 bes'4.(\p
	|  es) ~ es8(  des!4)
	| c8(  f4) ~ f8(  e4)
	|  f,8[( as c]  es,![ g  c)]

% 40
	|   des,![(_\cresc g  bes)]   c,[( es  as)]
	|  bes,[( es  bes')]  bes,[( d  f)]
	|  c[( f  c')]  c,[( e  g)]
	|  f[(\f bes  des!)]  f,[( as  c)]
	|  des,![( ges bes]  as[ bes  b)]
	| c4. ~ c8 r r
	| r4 r8 as4.\p ~
	| as f
	| ges2. ~
	| ges4. es

% 50
	| << des { s8  s4_\cresc } >> bes4. ~
	| bes bes'
	| as2.\f
	| g!8 r r as\p r r
	| es r r r4 r8
	|  g'8[(\f es  bes)] ~  bes[( es,  des!)]
	|  c4.(\p  des)\sf
	|  c8[(\p es f] ~ f  es4) ~
	| es8( des4 ~ des8  c4) ~
	| c8( bes4 ~ bes8   as4)_\cresc  ~

% 60
	|  as8[( bes  ces)]  c[(\f  bes)] r 
	| r4 r8 es'4.(\p
	|  as4.) ~ as8(  g4)
	|  c,8[( des ces]  bes[ ces  bes)]
	|  as[(-\cresc bes  ces)]  bes16.[( c32 des8  c)]
	| bes4(\f  as8) \grace bes16 as8[ g] r
	| r   as,[(\p  c)]   c[(  des)] r
	| r  bes[(  des)]  b[(  c)] r
	| r  as[(-. as-.]  as4)-. r8
	| r  bes[(-. bes-.]  bes4)-.  bes'8\sf

% 70
	| g(\p  f)] des'\sf  bes[(\p  as)] as\sf
	| as4(\p  bes8)  as[(  g)] g
	|  f8.[^\trill g16 as8]  as[(  g)] <g bes>\f
	| << { bes4. bes4 } \\ { as4.  as8[(  g)] } >> es8(\p
	|  fes4.) ~ fes4 es8(
	|  fes4.) ~ fes4 es8(
	|   fes4.)(_\cresc   es)
	|  d8[(\f c  bes)] as4.\fp ~
	| as8 r r r4 r8
	| r  c[( des]  d[  es)] r

% 80
	| r  c[( des]  d[  es)] r
	| r  c'[(_\cresc des]  d[ es  des)]
	|  b[(\p  c) as]  c[(  bes!16.) as32-. g8]
	| as4.(\sf  g)
	|  as8[(\p bes  as)]  des16.[(  bes32)]  as8[(  g)]
	| << { \voiceOne f'4.(  g)( | \oneVoice as8)[ c,( des!]  d[
          es  e)] } \new Voice { \voiceTwo bes2.\sf } >>
	| f'8[( a,  bes)]  des!8..[( bes32 des16.  bes32)]
	| as!8 r c r c r
	| r c r r c, r

% 90
	| R2.
	| c4.(  g)
	| as(   ges')_\cresc 
	| f(  g)
	| as(\p  ges)_\cresc
	| f( <bes, g'!>)
	| <c as'>8[\p <c es>-. <c es>-.] <c es>-. r r
    }
}
