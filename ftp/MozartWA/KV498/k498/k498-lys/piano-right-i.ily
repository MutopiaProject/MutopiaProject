\version "2.16.0"

rightHandFirstMov =  \relative c' {
    \key es \major
    \time 6/8

    \noTupletBracket

    \override Staff.TextScript   #'baseline-skip = #0.5

    es4 ~  es16[ f64( es d es] g8 es  bes)
    | g r r r4 bes'8
    | bes(  es,) es-. \appoggiatura f32 es8-. d-. es-.
    | \appoggiatura { d16[ es] } f8 r r r4 r8
    | f4 ~  f16[ g64( f e f] as8 f  d)
    | bes r r r4 bes'8
    | bes(  f) f-. \appoggiatura g32 f8-. es-. f-.
    | \appoggiatura { es16[ f] } g8 r r r4 r8 \clef bass
    | r16 es,( g bes es  bes) r g( bes es g  es)

% 10
    | r f,( as c es  c) r as( c es f  es)
    | r es,( g bes es  bes) r f( as bes d  bes)
    | <g es'>8 r r r4 r8 \clef violin
    | es''4 ~  es16[ f64( es d es] g8 es  b)
    | c4 ~  c16[ d64( c b c] es8 c  ges)
    | g!4 ~  g16[ as64( g f g] bes!8 as  f)
    | es4 r8 r4 <d f>8
    | <c es> r <c es> << { es4(  d8) } \\ bes4.  >>
    | <bes es>4 r8 r4 <d f>8
    | <c es> r <c es> <bes es>4( <as d>8)

% 20
    | <g es'>4 r8 r4 g'8
    | g4 ~  g16[ as64( g fis g] c8  g) g-.
    | g4 ~  g16[ as64( g fis g] es'8  c) g-.
    | g4 ~  g16[ as64( g fis g] g'8 es  c)
    | <c, es bes'!>4.( ~ <c es a>8) r r
    | r16 bes( <d f> bes <d f>  bes) r a( <c f> a <c f>  a)
    | r bes( <d f> bes <d f>  bes) r c( <es f> c <es f>  c)
    | r16 bes( <d f> bes <d f>  bes) r a( <c f> a <c f>  a)
    | r16 bes( <d f> bes <d f>  bes) r a( <c f> a <c f>  a)
    | r bes( <d f> bes <d f>  bes) r c( <es f> c <es f>  c)

% 30
    | r bes( <d f> bes <d f>  bes) r a( <c f> a <c f>  a)
    | r bes( <d f> bes <d f>  bes) r b( <d f> b <d f>  b)
    | r bes!( <c g'> bes <c e> bes <c es> a <c es> a <bes d>  g)
    | <es' g>8 r r r4 r8
    | R2.
    | d'4 ~  d16[ es64( d c d] f8 es  c)
    |  a16[(  bes)]  bes8[ bes]  b16[(  c)]  c8[ c]
    |  cis16[(  d)]  d8[ d] f16(  es) r8 r
    | \grace d16 f8.[( d'16 c  bes)] bes( a g f es  c)
    |  a16[(  bes)]  bes8[ bes]  b16[(  c)]  c8[ c]

% 40
    |  cis16[(  d)]  d8[ d] f16-. e-. es8-. r
    | f4 ~  f16[ g64( f e f] as8 g  d)
    | f( e  c) es4(  d8)
    |
    <<
	{ c4 ~  c16.[ d32] es4 ~  es16.[ f32] }
	
	{ s4 s16 s16^\markup{\center-column {\musicglyph
	#"scripts.turn" {\small \natural}}}
	s4 s16 s16^\turn }
    >>
    |
    <<
	{ g4 ~  g16.[ a32]  bes8.[( c16  des) des-.] }

	{ s4 s16 s16^\markup{\center-column { {\small \natural}
	\musicglyph #"scripts.turn" {\small \sharp}}}
	 s8 s8\turn s8 }
    >>
    |  d!16[( c bes a g f]  e[ f g f es  d)]
    | 
    <<
	{ \afterGrace c2.\startTrillSpan {bes16[( c)]\stopTrillSpan } | bes4 } \\ 
	{ bes4. a | bes4 }
    >> r8 r4 <a c>8
    | <g bes> r <g bes> << { bes4(  a8) } \\ f4.  >>
    | <f bes>4 r8 r4 <a c>8

% 50
    | <g bes> r <g bes> <f bes>4( <es a>8)
    | <d bes'>4 r8 r4 <f bes>8
    | <g bes>4 r8 r4 <f bes>8
    | <g bes>4 r8 r4 <f bes>8
    | <g bes>4. ~ <g bes>8 r r^\fermata
    | r16  as,[( <c es> as <c es>  as)] r  g[( <bes es> g <bes es>  g)]
    | r  as[( <c es> as <c es>  as)] r  bes[( <des es> bes <des es>  bes)]
    | r  as[( <c es> as <c es>  as)] r  g[( <bes es> g <bes es>  g)]
    | r  as[( <c es> as <c es>  as)] r  g[( <bes es> g <bes es>  g)]
    | r  as[( <c es> as <c es>  as)] r  bes[( <des es> bes <des es>  bes)]

% 60
    | r  as[( <c es> as <c es>  as)] r  bes[( <des e> bes <des e>  bes)]
    | r  as[( <c f> as <c f>  as)] r  c[( <es! fis> c <es fis>  c)]
    | r  bes[( <d! g> bes <d g>  bes)] r  d[( <f! as!> d <f as>  d)]
    | r  c[( <es g> c <e g>  des)] r  c[( <f c'> c <fis c'>  c)]
    | <d! g b>4 r8 r4 r8
    | fis'4 ~  fis16[ g64( fis e fis]  es'8[ c  fis,)]
    | g4 r8 r4 r8
    | fis4 ~  fis16[ g64( fis e fis]  es'8[ c  fis,)]
    | g8 r fis(  g) r fis(
    |  g4) r8 r4 r8

% 70
    | as r g(  as) r g(
    |  as4) r8 r4 r8
    | <f d'>8 r \tieDown <f es'>( ~ <f d'>) r <f es'>( ~
    | <f d'>4) \tieNeutral r8 r4 r8
    | <g,, bes es>4 r8 r4 r8
    | r4 r8 bes''4 ~  bes16[ c64( bes a bes]
    |  es8[ bes  g)] \appoggiatura f32 es8[-. d-. es-.]
    | \appoggiatura { d16[ es] } f8 r r r16  as16[(  c) bes-. as-. g-.]
    | f8 r r r4 r8
    | r4 r8 d'4 ~  d16[ es64( d c d]

% 80
    |  f8[ d  as)] \appoggiatura g16 f8[-. es-. f-.]
    | \appoggiatura { es16[ f] } g8 r r r16  es'16[(  d) c-. bes-. as-.]
    |  g[( es bes g es  bes)] \clef bass r  es,[( g bes es  bes)]
    | r  f[( as c es  c)] r  as[( c es f  es)]
    | r  es,[( g bes es  bes)] r  f[( as bes d  bes)] \clef violin
    |  es[( f g as bes c]  des[ d es e f  g)]
    | as4 ~  as16[ bes64( as g as]  c8[ as  e)]
    | f4 ~  f16[ g64( f e f]  as8[ f  ces)]
    | c!4 ~  c16[ des64( c bes c]  es8[ des  bes)]
    | c4 r8 r4 <g bes>8

% 90
    | <f as> r <f as> << { as4(  g8) } \\ es4.  >>
    | <es as>4 r8 r4 <g bes>8
    | <f as> r <f as> <es as>4( <des g>8)
    | <c as'>4 r8 r4 c'8
    | c4 ~  c16[ des64( c b c]  f8[  c) c-.]
    | c4 ~  c16[ des64( c b c]  as'8[  c,) c-.]
    | c4 ~  c16[ des64( c b c]  c'8[ as  f)]
    | <f, as es'!>4.( ~ <f as d>8) r r
    | r16  bes,[( <es g> bes <es g>  bes)] r  bes[( <d f> bes <d f>  bes)]
    | r  g[( <bes es> g <bes es>  g)] r  as[( <bes f'> as <bes f'>  as)]

% 100
    | r  g[( <bes es> g <bes es>  g) ] r  f[( <bes d> f <bes d>  f)]
    | r  g[( <bes es> g <bes es>  g)] r  bes[( <d f> bes <d f>  bes)]
    | r  bes[( <es g> bes <es g>  bes)] r  bes[( <f' as> bes, <f' as>  bes,)]
    | r  bes[( <es g> bes <es g>  bes)] r  bes[( <d f> bes <d f>  bes)]
    | r  bes[( <es g> bes <es g>  bes)] r  bes[( <e g> bes <e g>  bes)]
    | r  c[( <es! f> c <es f>  c)] r  as![( <d f> as <c f>  g)]
    | r  as[( <c f> as <c f>  as)] r  g[( <bes es> g <bes d>  f)]
    | bes''4 ~  bes16[ c64( bes a bes]  des8[ c  g)]
    |  bes[( a  f)] as4(  g8)
    | r8 <c,, es f>8[ <c es f>] r <c es f>[ <c es f>]

% 110
    | r <c es f>[ <c es f>] r <c es f>[ <c es f>]
    | <bes es g> r r es'4.( ~
    |  es16[ d es e f g]  as[ a bes b c d]
    |  es4) r8 r4 <d,, f>8
    | <c es> r <c es> << { es4(  d8) } \\ bes4.  >>
    | <bes es>4 r8 r4 <d f>8
    | <c es> r <c es> <bes es>4( <as d>8)
    | <g es'>4 r8 r4 r8
    | R2.*2

% 120
    | c'4 ~  c16[ des64( c bes c]  es8[ c  as)]
    |  d!16[( es d es d es]  d8) r r
    | bes'4 ~  bes16[ c64( bes a bes]  es8[ bes  g)]
    |  c[( as! f]  as[ f  d)]
    |  es[( bes  g)] <g, bes es> r r
    | <f c' es> r r bes'4 ~  bes16[ c64( bes a  bes)]
    |  bes'8[( g  es)] bes4 ~  bes16[ c64( bes a  bes)]

    \set Staff.subdivideBeams = ##t
    |  bes'8[( g  es)] bes \times 2/3 { r16  bes'[( b } \times 2/3 { c
      cis d] }
    \set Staff.subdivideBeams = ##f

    |   es8)[ es] r <g, es'>[ <g es'>] r
    | <g es'>[ <g es'>] r r4 r8
    | 
}
