\version "2.16.0"

rightHandThirdMov =  \relative g {
    \key es \major

    \override Staff.TextScript   #'baseline-skip = #0.5
    \noTupletBracket

     g8[( es' bes es]  bes[ g' es g]
    |  bes,[ as' d, as']  f[ as g es]
    |  c[ as' es as]  c,[ c' f, c']
    |  g[ bes as g]   f)[ <f as>( <es g> <d f>)]
    |  g[( bes es, g]  bes,[ es g es]
    |  bes[ d as' d,]  f[ as d, f]
    |  bes,[ es g  bes)] <bes es> r <as d> r
    | \set doubleSlurs = ##t
      <d as,>2( <es g,>8) d16[( es]  f[ es d c]
      \set doubleSlurs = ##f
    | bes2 ~  bes8[ c d  es)]

% 10
    |  es[( d c  bes)] bes4 bes
    |
    <<
	{ c4.( d8 es4  g8[ f] }
	{
	    s4 s8^\markup{\center-column {\musicglyph #"scripts.turn"
	    {\small \natural}}}
	}
    >>
    | es4.  f16[ es]  d4) r
    | bes2( ~  bes8[ d16 c]  es[ d f  es)]
    |  es8[( d c  bes)] bes'4.(  as16[ f]
    |  es4) es  g8.[( as16]  f8.[ g16]
    | f2  es4) r
    | r8 <bes, d f>[ <bes d f> <bes d f>] <bes d f>[ <bes d f> <bes d
      f> <bes d f>]
    | r <a c f>[ <a c f> <a c f>] r <c es f>[ <c es f> <c es f>]
    | r <bes d f>[ <bes d f> <bes d f>] <bes d f>[ <bes d f> <bes d
      f> <bes d f>]

% 20
    | r <a c f>[ <a c f> <a c f>] r <c es f>[ <c es f> <c es f>]
    |
    <<
	{ r4 as'! as as } \\
	{ r8 <bes, d>[ f' bes,]  f'[ bes, f' bes,] }
    >>
    | r8  bes[( <es g>  bes)] r  bes[( <des g>  bes)]
    | r  bes[( <d! f>  bes)] r  c[( <es! f>  c)]
    |  bes'16[^ \markup{\italic "legato"} c bes a]  bes[ d f es]  d[ f bes a]
       bes[ f d' bes]
    |  a[ c es c]  es[ c a f]  es[ c a c]  a[ c es c]
    |  bes[ c bes a]  bes[ d f es]  d[ f bes a]  bes[ f d' bes]
    |  a[ c es c]  es[ c a f]  es[ c a c]  a[ c es c]
    |  bes8[ c16 d]  es[ f g a]  bes[ c d es]  f8[ f]
    | f g,4 es' f, d'8 ~

% 30
    | d es,4 c'  d,8[(  bes') bes]
    |  c[(  bes) a-. g-.]  g[(^\prall^\smallNatural  f) f(\prall  e)]
    | f4 r8 f(  g[ a bes  e,)]
    | f4 r8 f(  fis16[ g as! a]  bes8[  e,)]
    \override Script #'script-priority = #-100
    | f!8 r g8.[(\trill^\smallNatural  a16)] f8 r  g8.[(\trill  a16)]
    \revert Script #'script-priority
    | f4 r r2
    | r8  f[( bes, d]  f,[ bes d,  f)]
    | r  f,[( c' a]  es'[ c a'  f)]
    | r  bes[( d, f]  bes,[ d f,  bes)]
    | r  f[( c' a]  es'[ c a'  f)]

% 40
    | r  d[( f bes]  d[ f es  d)]
    |  c[( es c  a)] f'4 r
    | R1
    |  bes,16[^ \markup{\italic "legato"} c bes a]  bes[ c d es]  f[ g as! g]
       bes[ as g f]
    |  es[ f g f]  a[ g f es]  d[ es f es]  g[ f es d]
    |  c[ d c b]  c[ d es f]  g[ es f d]  es[ c d b]
    |  c[ d c b]  c[ d es f]  g[ es f d]  es[ c d b]
    |  c[ d c b]  c[ es d f]  es[ f es d]  es[ g f as!]
    |  g[ a g fis]  g[ bes! a c]  bes[ fis g d]  es[ b c es]
    |  f,!8[ g16 a]  bes![ c d es]  f[ es d es]  f[ g a bes]

% 50
    | \afterGrace c,1\startTrillSpan {bes16([ c)]\stopTrillSpan}
    | bes4 r8  a16[( bes]  c[ bes a bes]  c[ bes es d]
    |  c[ d b d]  c8)  b16[( c]  d[ c b c]  d[ c f es]
    |  d[ es c es]  d[ es f d]  es[ f d f]  es[ f g  es)]
    |  f[( g e g]  f[ g as! f]  g[ as f as]  g[ as bes  g)]
    |  as[( bes g as]  f[ g es! f]  d[ f es g]  f[ as g  bes)]
    |  as[( bes g as]  f[ g es! f]  d[ f es g]  f[ as g  bes)]
    |  as[( bes g as]  f[ g e g]  f[ g es f]  d[ es c es]
    |  d[ es c d]  bes[ c a c]  bes[ c a c]  bes[ c a  c)]
    | bes2( ~  bes8[ c d  es)]

% 60
    |  es[( d c  bes)] bes4 bes
    |
    <<
	{ c4.( d8 es4  g8[ f] }
	{
	    s4 s8^\markup{\center-column {\musicglyph #"scripts.turn"
	    {\small \natural}}}
	}
    >>
    | es4.  f16[ es]  d4) r
    | bes2( ~  bes8[ d16 c]  es[ d f  es)]
    |  es8[( d c  bes)] bes'4.(  as16[ f]
    |  es4) es
    <<
	{ g8.[(  as16)]  f8.[(  g16)] | f2(  es4) } \\
	{ bes4 <as d> | <as d>2( <g es'>4) }
    >> r4

    \repeat volta 2 {
	<g, c es>4 r r2
	| f'4.(  es8) d2
	  \set doubleSlurs = ##t
	| g,4 r <c fis>2( <b d g>4) r4 r2
	  \set doubleSlurs = ##f

% 71
	| <g c es>4 r r2
	| <bes! d f>1
	| es8 r g r d4(  as'8) r
	| es r g' r f4(  d8) r
	| es4 r <f, c' es> r
	| <f as bes d> r <g bes es> r
    }

    \repeat volta 2 {
	g'4.( \times 2/3 {  f16[ es d] }   es8)[ f-. g-. as-.]
	| bes4.(  as16[ g]  f4) r
	| es4.( \times 2/3 {  d16[ c b] }   c8)[ d-. es-. f-.]

% 80
	| g4.(  f16[ es]  d4) r
	| <g,, c es>4 r r2
	| f'4.(  es8) d2
	  \set doubleSlurs = ##t
	| g,4 r <c fis>2( <b d g>4) r4 r2
	  \set doubleSlurs = ##f
	| <g c es>4 r r2
	| <g b d>1
	| c8 r es r b4(  f'8) r
	| c r es' r f4(  b,8) r
	| <es, g c>4 r <d as' c> r

% 90
	| <d f g b> r <es g c> r
    }

    | g'4(  f16[ es d  c)] as'4(  g16[ f es  d)]
    | f4(  es16[ d c  b)] c4 r
    | c'4(  bes!16[ as g  f)] d'4(  f8) r
    | bes,4(  as16[ g f  es)] es'8 r des r
    | c r bes r as r g r
    |  g8[(  f)] f4.(  fis8[ g es]
    |  d4) r
    <<
	{ f,2 | f2.(  es4) | d4 r f2 | f2.(  es4) | d } \\
	{
	    bes4( ~ \times 2/3 {  bes8[ c  d)] } | c4 es a, c
	    | bes s bes4( ~ \times 2/3 {  bes8[ c  d)] } | c4 es a, c
	    | bes
	}
    >> r r2

% 102
    | R1
    | <bes' bes'>2.( <ces ces'>4)
    | <bes bes'>2.( <ces ces'>4)
    | <bes bes'>( <ces ces'> <bes bes'> <ces ces'>
    | <bes bes'> r) r2
    | R1
    | \times 2/3 { r8  g,[ bes] } \times 2/3 {  es[ g bes] }
      \times 2/3 {  es[ d c] } \times 2/3 {  bes[ as g] } \noTupletNum
    | \times 2/3 {  as[ as' f]  d[ f as,]  g[ bes' g]  es[ bes g] }

% 110
    | \times 2/3 {  es[ as g]  f[ c' bes]  as[ es' d]  c[ c' f,] }
    | \times 2/3 {  g[ bes a]  bes[ as g]  f[ es d]  c[ bes as] }
    | \times 2/3 {  g[ bes es]  g[ bes d]  es[ d c]  bes[ as g] }
    | \times 2/3 {  as[ g f]  es[ d c]  bes[ as g]  f[ es d] }
    | \times 2/3 {  es[ g bes]  es[ g es]  bes[ g es]  as[ f d] }
    | \times 2/3 {  as[ bes d]  as[ bes d] } <g, bes es>4 r \noTupletNum
    | <c es>2( <bes des>4 <as c>)
    | <c e>2( <des f>4 r)
    | <g, bes>( <as c> <bes des> <b d>)
    | <c es>4.( \times 2/3 { <des f>16[ <c es> <bes des>] } <as c>4 r)

% 120
    | <g bes es>1
    | r8  as8[( c es] as4.  g8)
    | f4  a,8[( bes]  b[  c) c(  des)]
    | c4.(  des16[ c]  bes!4) r
    | <c' es>2( <bes des>4 <as c>)
    | <c e>2( <des f>4 r)
    | <g, bes>( <as c> <bes des> <b d>)
    | <c es>4.( \times 2/3 { <des f>16[ <c es> <bes des>] } <as c>4 r)
    | << {  <f as>2. <d! f>4 } \\ bes1 >>
    | <bes es bes'>4 r r es

% 130
    | es'4.(  c8)  c[(  bes) bes(  as)]
    | as2(  g4) r

    \repeat volta 2 {
	<<
	    {
		r4 g4 g g
		| r <f as> <d f as> <d f as>
		| r <es g> <es g> <es g>
	    }
	    \\
	    {
		r8  bes[( es bes]  es[ bes es  bes)]
		| r  bes[( d! bes]  d[ bes d  bes)]
		| r  bes[( des bes]  des[ bes des  bes)]
	    }
	>>
	| <c es as>4 r r2
	| ces'2( ~  ces8[ des16 ces]   bes8)[ as-.]
	|  es'[(  d)] d4. \appoggiatura bes'32 as16[( g]   as8)[ ces-.]
	|  bes8[(  as) ges-. fes-.]  fes[(  es) es(  d!)]
	|  es8[( g! es bes]  g[ es bes g]
	
% 140
	|  f[ bes d bes]  as[ bes d  bes)]
	|  es[( bes' g es]  bes[ es bes g]
	|  f[ bes d bes]  as[ bes d bes]
	|  es[ bes g bes]  as[ bes d bes]
	|  es[ bes g bes]  as[ bes d bes]
	| <g es'>4) <bes des>( <as c> <g bes>)
	| <c es>2( <bes des>4 <as c>)
	| <c e>2( <des f>4 r)
	| <g, bes>( <as c> <bes des> <b d>)
	| <c es>4.( \times 2/3 { <des f>16[ <c es> <bes des>] } <as c>4 r)
	
% 150
	| <g bes es>1
	| <as c es>4 r r ges'
	| f2(  es4) <des es> 
    }

    \alternative {
	{
	    <des es>2( ~ <c es>4) r
	}
	{
	    <c es>4 r r2
	}
    }

    | r4 <bes' des>( <as c> <e bes'>)
    | <e g>8[( <f as>)] <f as>4 r2
    | R1
    | r4 es'4.( \times 2/3 {  f16[ es d] }   es8)[ f-.]
    |  as[(  ges)] ges4.(  as16[ ges]   f8)[ es-.]

% 160
    |  bes'[(  a)] a4. \appoggiatura f'16 es16[( d]   es8)[
      es-.]
    |  f[(  es) des-. ces-.]  ces[(  bes) bes(  a)]
    |  bes[( d! bes f]  d[ bes f d]
    |  c[ f a f]  es[ f a  f)]
    |  bes[( f' d bes]  f[ bes f d]
    |  c[ f a f]  es[ f a f]
    |  bes[ f d f]  es[ f a f]
    |  bes[ f d f]  es[ f a f]
    | <d bes'>4) <f as!>( <es g> <d f>)
    |  es8[( bes' g es]  bes[ g' es g]

% 170
    |  bes,[ as' d, as']  f[ as g es]
    |  c[ as' es as]  c,[ c' f, c']
    |  g[ bes as g]   f)[ <f as>( <es g> <d f>)]
    |  g[( bes es, g]  bes,[ es g es]
    |  bes[ d as' d,]  f[ as d, f]
    |  bes,[ es g  bes)] <bes es> r <as d> r
      \set doubleSlurs = ##t
    |  <as d>2( <g es'>16)
      \set doubleSlurs = ##f
       es'16[( d es]  f[ es d  es)]
    |  as,16[^ \markup{\italic "legato"} es' as es]
       bes[ es g es]  bes[ d f d]  bes[ es bes' es,]
    |  as,[ es' as es]  bes[ es g es]  bes[ d f d]  bes[ es bes' es,]
    |  as,[ es' as es]  bes[ d g d]  f,[ c' f c]  g[ bes es bes]

% 180
    |  d,[ as' d as]  es[ g c g]  bes,[ f' bes f]  c[ es a es]
    |  bes'[ d, f bes]  d[ bes es c]  f[ es d c]  bes[ c d bes]
    |  es[ f, a c]  es[ c f d]  g[ f es d]  c[ d es c]
    |  as'![ g f es]  d[ es f d]  bes'[ as g f]  es[ f g es]
    | \stemDown  as[ f' f, as]  g[ es' es, g]  f[ d' d, f]  es[ c' c, es]
    |  d[ bes' bes, d]  c[ as' as, c]  bes[ g' g, bes]  as[ f' f, as]
      \stemNeutral
    | \acciaccatura g32 bes2( ~  bes8[ d16 c]  es[ d f  es)]
    |  es8[( d c  bes)] bes4 bes
    |
    <<
	{ c4.( d8 es4  g8[ f] }
	{
	    s4 s8^\markup{\center-column {\musicglyph #"scripts.turn"
	    {\small \natural}}}
	}
    >>
    | es4.  f16[ es]  d4) r

% 190
    |  es,8[( f16 g]  as[ bes c d]  es[ f g as]  bes[ c d  es)]
    |  es8[( d c  bes)] \appoggiatura { a32[ b c] } bes4.(  as!16[  f)]
    | es4-. es-.  g8.[(  as16) f8.(  g16)]
    | es4 r r2
    | r2 r16  es,16[( f g]  as[ bes c d]
    |  es[ f g as]  bes[ g as f]  es4) r
    | r2 r16  es,16[( f g]  as[ bes c d]
    |  es[ f g as]  bes[ g as f]  es4) r
    | r2 r16  es,16[^ \markup{\italic "legato"} f g]  as[ bes c d]
    |  es[ f g as]  bes[ c des c]  bes[ as g f]  es[ des c b]

% 200
    |  c8[ d16 e]  f[ g as bes!]  c[ d es! d]  f[ es d c]
    |  bes[ es g, bes]  as[ c f, as]  g[ bes es, g]  f[ as d, f]
    | es4 r r8 <c es>8[( <bes d> <as c>]
    | <g b> r) <as c> r <es g> r <f as> r
    | <g bes!>4 r r8 <c es>8[( <bes d> <as c>]
    | <g b> r) <as c> r <es g> r <f as> r
    | <g bes!>4 r r8 <c es>8[( <bes d> <as c>]
    | <g b>[) <g b>-. <as c>-. <as c>-.] <es g>[-. <es g>-. <f as>-.
      <f as>-.]
    | <g bes!>4 r r2
    | R1

% 210
    | r16  as[( bes c]  des[ es f g]  as[ bes c d!]   es8)[ es]
    | r16  es[ bes g]  es[ bes' g es]  bes[ g' es bes]  g[ es' bes g]
    |  es[ bes' g es]  bes[ g' es bes]  g[ es' bes g]  as[ d bes as]
    |  g[ bes es bes]  g[ bes es bes]  g[ bes es bes]  g[ bes es bes]
    |  as[ bes f' bes,]  as[ bes f' bes,]  as[ bes f' bes,]  as[ bes f' bes,]
    |  g[ bes es bes]  g[ bes es bes]  g[ bes es bes]  g[ bes es bes]
    |  as[ bes f' bes,]  as[ bes f' bes,]  as[ bes f' bes,]  as[ bes f' bes,]
    |  g[ bes es bes]  g[ bes es bes]  g[ bes es bes]  g[ bes es bes]
    |  as[ bes f' bes,]  as[ bes f' bes,]  as[ bes f' bes,]  as[ bes f' bes,]
    |  g[ bes es bes]  g[ bes es bes]  as[ bes f' bes,]  as[ bes f' bes,]

% 220
    |  g[ bes es bes]  g[ bes es bes]  as[ bes f' bes,]  as[ bes f' bes,]
    |  g[ bes es bes]  g[ bes es bes]  as[ bes f' bes,]  as[ bes d bes]
    | <g bes es>4 <bes' es g> <g, bes es> <g bes es>
    | <g bes es>2 r
}
