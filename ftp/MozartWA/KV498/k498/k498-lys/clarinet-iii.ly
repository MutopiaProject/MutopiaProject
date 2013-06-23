\version "2.16.0"

clarinetThirdMov =  \relative c'' {
    \key f \major
    \override Staff.TextScript   #'baseline-skip = #0.5
    \noTupletBracket

    c2(\p ~  c8[ d e  f)]
    |  f[( e d  c)] c4 c
    | d4. e8 f4(  a8[  g)]
    | f4.(  g16[ f]  e4) r
    | c2( ~ c8[ d e  f)]
    |  f[( e d  c)] c'4.(  bes16[  g)]
    | f4 f  a8.[(  bes16)]  g8.[(  a16)]
    | g2(  f4) r
    | R1*3

% 12
    | c2(\f ~  c8[ d c  bes)]
    |  a[( c f  a)] c2 ~
    | c2. c,4( ~
    | c2.  e4)
    | e2(  f4) r
    | g2(\p ~  g8[ c b a]
    |  g[  fis)] f4.(  e16[ f]  g8[  f)]
    |  e[(  g) g g]  g[( c b a]

% 20
    |  g[  fis)] f4(  g16[ f e f]  e[ f g  f)]
    | e4(  bes'!2.)\fp
    | g4(  a4.)  a8[( b  c)]
    |  c[( g! e  g)]  g[( f e  d)]
    | c4 r r2
    | R1
    | g'1 ~
    | g
    | g4 r r2
    | R1*2

% 31
    | c,1(
    |  b4) r r2
    | R1*2
    | r4 g4(  g') g
    | g2( ~  g8[ a b  c)]
    |  c[( b a  g)] g4 g
    | g2( ~  g8[ a b  c)]
    |  c[( b a  g)] g4 g

% 40
    | g2( ~  g8[ bes! a  g)]
    |  f[( a g f]  e[ g f  e)]
    |  cis[( d e  f)] c4 b
    | c r r2
    | R1*7

% 51
    |  c'8[ c] c r r2
    |  b8[ b] b r r2
    |  bes!8[ bes] bes r  a[ a] a r
    |  e[ e] e r  f[ f] f r
    | g r r4 r2
    | g8 r r4 r2
    | g8 r r4 r2
    | R1*9

    \repeat volta 2 {
	R1*6

% 73
	| \times 2/3 {  f,,8[\f a c] } \times 2/3 {  f,[ a c] }
          \noTupletNum \times 2/3 {  e,[ g c]  e,[ g c] }
	| \times 2/3 {  f,[ a c]  f,[ a c]  g[ bes c]  g[ bes c] }
	| \times 2/3 {  f,[ a c]  f,[ a c]  f,[ bes d]  f,[ bes d] }
	| \times 2/3 {  e,[ g c]  e,[ g c] } f4 r \tupletNum
    }

    \repeat volta 2 {
	R1*8

% 85
	| a'2\f  g16[(  f8.)]  e16[(  d8.)]
	|  cis8[( e]  g2)  f16[( e d  cis)]
	| a'4(  g16[ f e  d)] g4(  e8) r
	| a4(  g16[ f e  d)] cis4(  e8) r
	| a4(  g16[ f e  d)] bes'4(  a16[ g f  e)]

% 90
	| g4(  f16[ e d  cis)] d4 r
    }

    | R1
    | r2 a'4(  g16[ f e  d)]
    | bes'4(  d8) r g,4(  f16[ e d  c)]
    | a'4(  c8) r c,4(  bes16[ a g  f)]
    | f'1( ~
    | f2  d)
    | c4 r r2
    | R1
    | g'1 ~

% 100
    | g
    | c,4 r r2
    | R1
    | bes' ~
    | bes ~
    | bes ~
    | bes4 r r2
    | R1*9

% 116
    | f2(\mf es4  d)
    | fis2(  g4) r
    | c,( d es  e)
    | f!4.( \times 2/3 {  g16[ f es] }  d4) r
    | \times 2/3 {  f,,8[ a c] } \times 2/3 {  f[ a c] } \times 2/3 {  f[
      a c] }  bes16[( a g  f)]
    |  bes8[(  f)] f4.(  g16[ f]  es8[  d)]
    |  b[( c d es]  e[ f fis  g)]
    | bes,!4.(  c16[ bes]  a4) r
    | R1
    | r4 bes(  bes') bes
    | bes1 ~
    | bes2 ~ bes4 r
    | \noTupletNum \times 2/3 {  e,,,8[ g c]  e[ g c]  e[ g bes] }  a16[(
      g f  e)] \tupletNum
    |  c'8[ bes(  a) g(]   f)[ es( d  cis)]

% 130
    |  cis[(  d) bes'(  g)]  g[(  f) f(  e!)]
    | e2(  f4) r

    \repeat volta 2 {
	f2 \acciaccatura a32 g8[(  f) \acciaccatura a32 g8(  f)]
	| bes4.( \times 2/3 {  a16[ g f] }  e!4) r
	| c'4.( bes8  a[ g f  es)]
	|  cis[(  d)] d4-. r2
	| R1*3
	| r2 r8  f[( g  a)]

% 140
	| bes4.( a8  g[ a bes  c)]
	| a4(  f) r8  f8[( g  a)]
	| bes4.( a8  g[ a bes  c)]
	|  bes[( a g f]  g[ a bes c]
	|  bes[ a g f]  g[ a bes  c)]
	|  bes[( a g f]  e![ f g  f)]
	| f2( es4  d)
	| fis2(  g4) r
	| c,( d es  e)
	| f!4.( \times 2/3 {  g16[ f es] }  d4) r

% 150
	| \times 2/3 {  f,,8[ a c] } \times 2/3 {  f[ a c] } \times 2/3
          {  f[ a c] }  bes16[( a g  f)]
	|  bes8[ a(  g) f(]   es)[ d( c  b)]
	|  c[( g' es  c)] bes!4(  a)
    }

    \alternative {
	{
	    a2(  bes4) r
	}
	{
	    bes4 r r2
	}
    }

    | r2 r4 d
    | d(  g) r2
    | r4 des(  c) c
    | c r r2
    | R1*3

% 162
    | r2 r8  c[( d  e)]
    | f4.( e8  d[ e f  g)]
    | e4(  c) r8  c[( d  e)]
    | f4.( e8  d[ e f  g)]
    |  f[( e d c]  d[ e f g]
    |  f[ e d c]  d[ e f  g)]
    |  f[( e d c]  b[ c d  c)]
    | c2( ~  c8[ d e  f)]

% 170
    |  f[( e d  c)] c4 c
    |
    <<
	{ d4.(  e8) f4(  a8[  g)] }
	{
	    s4 s8^ \markup{\center-column {\musicglyph #"scripts.turn" {\small \musicglyph
	    #"accidentals.sharp"}}} s2
	}
    >>
    | f4.(  g16[ f]  e4) r
    | c2( ~  c8[ e16 d]  f[ e g  f)]
    |  f8[( e d  c)] c'4.(  bes16[  g)]
    | f4 f  a8.[(  bes16)]  g8.[(  a16)]
    | g2(  f4) r
    | r2 c'2\sf
    | r c\sf
    | r8 bes4(\f  a8) r g4(  f8)

% 180
    | r e4(  d8) r c4(  b8)
    | c r  e[-.\p f-.] g-. r r4
    | r  f8[-. g-.] a-. r r4
    |  g8[-. a-.] bes-. r  a[-. bes-.] c-. r
    | R1
    | r8 a4(\f \> g f  e8\!)
    | f4\p r r2
    | R1*3

% 190
    | c2(\f ~  c8[ d e  f)]
    |  f[( e d  c)] c2 ~
    | c4 c( f  e)
    | f r r8  f[(\p e d]
    |  cis) r d r a r bes r
    | c!4 r r8  f[(\p e d]
    |  cis) r d r a r bes r
    | c!4 r r8  f[(\p e d]
    |   cis)[-. cis-. d-. d-.]  a[-. a-. bes-. bes-.]
    | c!4 r r2

% 200
    | R1
    | c'4( bes a  g)
    | f r r2
    | r2 r16  f,[( g a]  bes[ c d  e)]
    |  f[( g a bes]  c[ a bes g]  f4) r
    | R1*2
    | r2 r16  f,[( g a]  bes[ c d e]
    |  f[ g a  bes)]  c8[( bes]  a[ g f  es)]
    |  d8[( e!16 fis]  g[ a bes  c)]  d[( cis d cis]  d[ cis d  cis)]
    | d4 r r8  f,!8[(\f e  d)]
    | b( c4 f a  c8)
    |  c8.[(  bes16)] a2(  g4)
    | f r r8  f[(\p g  a)]
    | bes4.( a8  g[ a bes  c)]
    | a4(  f) r8  f[( g  a)]
    | bes4.( a8  g[ a bes  c)]
    | a4(  f) r8  f[( g  a)]
    | bes4.( a8  g[ a bes  c)]
    |  bes[( a g f]  g[ a bes  c)]

% 220
    |  bes[( a g f]  g[ a bes  c)]
    |  bes[(- \markup{\italic "cresc."} a g f]  e[ f g  a)]
    | f4\f r f f
    | f2 r \bar "|."
}
