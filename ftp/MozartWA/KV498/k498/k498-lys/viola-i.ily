\version "2.16.0"

violaFirstMov =  \relative g {
    \key es \major
    \clef alto
    \time 6/8

    <g es'>4\f ~  es'16[ f64(\p es d es]  g8[ es  bes)]
    | g8 r r r4 r8
    | R2.*2
    | f'4\f ~  f16[ g64(\p f e f]  as8[ f  d)]
    | bes8 r r r4 r8
    | R2.*6

% 13
    | r16  es,16[( g bes es  bes)] r  g[( bes es g  es)]
    | r  es,[( as c es  c)] r  f,[( a c es  c)]
    | r  bes[( es bes g'  es)] r  d,[( f d as'!  f)]
    | g4 r8 r4 g8
    | g r f as4(  f8)
    | es4 r8 r4 g8
    | g r f as4(  f8)

% 20
    | es4 r8 r4 d'8(
    |  c4) r8 r4 d8(
    |  c4) r8 r4 d8(
    |  c4) r8 r4 r8
    | R2.*3
    | r4 r8 r  es16[( c es  c)]
    | f2. ~
    | f ~

% 30
    | f4. ~  f8[ es16( c es  c)]
    | bes4.(  b)
    |  c8[( e  g)] a4(  bes8)
    |  g8.[( es!16 g  es)] d4(  f16[  es)]
    |  d8[ bes( d]  f[ d  f)]
    |  bes16[ bes,( d f d  bes)] r  a[( c f c  a)]
    | r  bes[( d f d  bes)] r  c[( es f es  c)]
    | r  bes[( d f d  bes)] r  a[( c f c  a)]
    | r  bes[( d f d  bes)] r  c[( f a f  c)]
    | r  d[( f bes f  d)] r  es[( f c' f,  es)]

% 40
    | r  d[( f bes f  d)] r  c[( f a f  c)]
    | r  d[( f bes f  d)] r  c[( es f es  c)]
    | r  c[( e g e  c)] r  c[( es c bes  d)]
    | r  g,[( c es c  g)] r  g[( c es c  g)]
    | r  g[( c es c  g)] r  bes[( des g des  bes)]
    | f'2.
    | \afterGrace es2.\startTrillSpan {d!16[( es)]\stopTrillSpan}
    | d4 r8 r4 d8
    | d r c es4(  c8)
    | bes4 r8 r4 d8

% 50
    | d r c es4(  c8)
    | bes4 r8 r4 bes8
    | bes4 r8 r4 bes8
    | bes4 r8 r4 f8\f
    | c'4. ~ c8 r r^\fermata
    | R2.*2
    | r4 r8 r  des16[(\p bes des  bes)]
    | es2. ~
    | es ~

% 60
    | es8 r r  e[ e e]
    |  g16[(  f)] r8 r  fis[ fis fis]
    |  a16[(  g)] r8 r  as[ as as]
    | g4(  bes,8) c4(  es16[  c)]
    | g'4 ~  g16[ a64( g fis g]  d'8[ b  g)]
    |  fis[( es  c)] a4(  a'8)
    | g4 ~  g16[ a64( g fis g]  d'8[ b  g)]
    |  fis[( es  c)] a4(  a'8)
    | d,8 r c'(  b) r c(
    |  b4) r8 r4 r8

% 70
    | b r c(  b) r c(
    |  b4) r8 r4 r8
    | bes! r ces(  bes) r ces(
    |  bes4) r8 r4 r8
    | r4 r8 es,4\f ~  es16[ f64( es d es]
    |  g8[ es  bes)] g r r
    | R2.
    | r16  as'[(  c) bes-. as-. g-.]  f[-. f(  as) g-. f-. es-.]
    | d8 r r f4 ~  f16[ g64( f e f]
    |  as8[ f  d)] bes r r

% 80
    | R2.
    | r16  es'16[(  d) c-. bes-. as-.]  g[-. c(  bes) as-. g-. f-.]
    | es4\p r8 r4 r8
    | R2.*2
    | << es2. \\ { g,4.(  bes) } >>
    | r16  as[( c es as  es)] r  c[( es as c  as)]
    | r  as,[( des f as  f)] r  bes,[( d f as  f)]
    | r  es,[( as c es  c)] r  es,[( g bes es  des)]
    | c4 r8 r4 c8

% 90
    | c r bes des4(  bes8)
    | as4 r8 r4 c8
    | c r bes des4(  bes8)
    | as4 r8 r4 g'8(
    |  f4) r8 r4 g8(
    |  f4) r8 r4 g8(
    |  f4) r8 r4 r8
    | R2.
    | g4.(\p  bes8[ as  f)]
    |  es[ es es]  e16[(  f)]  f8[ f]

% 100
    |  fis16[(  g)]  g8[ g]  bes16[(  as)] r8 r
    |  bes8.[( c16 d  es)]  es[( d c bes as  f)]
    |  d[(  es)]  es8[ es]  e16[(  f)]  f8[ f]
    |  fis16[(  g)]  g8[ g]  bes16[(  as)] r8 r
    | bes4 ~  bes16[ c64( bes a bes]  des8[ c  g)]
    |  bes[( a  f)] as4( g8 ~
    |  g16[ f as c as  f)] es4(  g16[  f)]
    |  es[-. es,( g bes es  bes)] r  bes[( e g bes  g)]
    | r  c,[( es! f a  es)]  d[( as' f d es  g)]
    | r  b,[( c b c d]  es[ d es b' c  b)]

% 110
    |  c[( g as g as bes!]  c[ bes as c bes  as)]
    | g4. ~  g8[( es  g)]
    | \afterGrace as2.\startTrillSpan {g32[(  as)]\stopTrillSpan}
    | g4 r8 r4 g,8
    | g r f as4(  f8)
    | es4 r8 r4 g8
    | g r f as4(  f8)
    | es4 r8 r4 r8
    | es4 ~  es16[ f64( es d es]  bes'8[ g  es)]
    |  des16[( c des c des c]   des8)[ des'(  bes)]

% 120
    |  c16[( des c des c  des)]  c8[( es  c)]
    |  as'16[( g as g as  g)]  f8[( as  f)]
    |  es16[( f es f es f]  es8) r r
    | R2.
    | bes'4 ~  bes16[ c64( bes a bes]  es8[ bes  g)]
    |  c[( as!  f)] <f, as d> r r
    |  g'[( bes g]  f[ as  f)]
    |  g[( bes  g)]  f[ f f]
    | es r bes'(  g) r bes,(
    |  g) r r r4 r8 \bar "|."
}
