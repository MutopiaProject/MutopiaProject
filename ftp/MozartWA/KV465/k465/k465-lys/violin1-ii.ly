\version "2.16.0"

violinISecondMov =  \relative c'' {
    \key f \major
    \clef violin

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    c4(\p f,4.  g8)
    | bes4(  a) r8 f\f
    | f bes4( d  f8)
    |  e8[(\p  d16\trill c32  d)] c4 r
    | g2(  a4)
    | c( bes4.  a8) ~
    |  a16[( g bes  d,)] f4(  g)
    | << { a8.[(  bes16)] } { s8  s8^\markup {\musicglyph #"scripts.turn"} } >>
      c4 r
    | f4(-\cresc   e8)[  f(-. g-.  a)-.]

% 10
    |  bes8[\f ~ bes32( g e c]  bes8) r r  a16[(  f')]
    |  f8.[(  d16)] c4 ~  c16[(\p cis d  bes)]
    |  bes[( a g  f)] f4 r
    | r8  c'16[( b]  d8[  c)] r c
    | r  c16[( b]  d8[  c)] r c
    | r  f16[( e]  g8[  f)] r f
    | r  e16[( d]  f8[  e)] r e
    | r  g16[( fis]  a8[  g)] r gis
    | r  a16[( gis]  bes!8[  a)] r a
    | r  d,16[( cis]  e8[  d)] r d

% 20
    |  d[(  g,)] \grace { fis32[( g a] } g2)
    | \appoggiatura { fis32[ g a] } g2-\cresc \grace { fis'32[( g a] } g4) ~
    | g4 \grace { fis32[( g a] } g2)\f ~
    |  g8[ g16(\p fis]  a[ g f e]  g[ f e  d)]
    |  cis[(  d) cis(  d)]  cis[(  d)] r8 r32  d[( f e]  d[ c b  a)]
    |  a16[(  g) a(  g)]  a[(  g)] r8 r4
    | R2.
    |  c,4(\pp  b) r
    | g'2 r4
    | f'4   f8[(-. f-. f-.  f)-.]

% 30
    | f4(-\cresc   e8)[  bes'(-. bes-.  bes)-.]
    | <c, bes'>4\f <c a'> r
    | d\p   d8[(-. d-. d-.  d)-.]
    |  d16[( es32 f es16  d)]   d8[(-. d-. d-.  d)-.]
    |  a8.[(  d16)] c4(  b)
    | c2\f  bes!8.[(\trill a32  bes)]
    | a8(\p  a'4) \grace { b32[ a gis] } a16[( b]  d[ c b  a)]
    | g4.(-\cresc  a8[ b  c)]
    |  g16[(\p fis f  e)] \afterGrace d2\trill { c32[(  d)] }
    | c4 r8  c16[( b]  d8[  c)]

% 40
    |  e[(  d)] r  d16[(-\cresc cis]  e8[  d)]
    |  f[(  e)] r  f16[( e]  g8[  f)]
    | r  g16[( fis]  a8[  g)] r  a16[( g]
    |  bes!8[\f  a)] r8  bes16[( a]  c8[  bes)]
    | r  bes,16[(\p a] c8 bes4  b8)
    |  c16.[(  a32) c16.(  a32)] f4.(  g8)
    | bes!4(  a) r8 f\f ~
    |  f16[( d  bes'8)] ~  bes16[( f  d'8)] ~  d16[( bes  f'8)] ~
    |  f16[(\p e es d]  c4) r
    | g4.(  a32[ g fis g]  bes8[  a)]

% 50
    |  c[(  b)] bes4.(  a8) ~
    |  a16[( g bes  d,)]  f8[( fis g  gis)]
    | << { a8.[(  bes16)] } { s8  s8^\markup {\musicglyph #"scripts.turn"} } >>
      c4 r
    |  f8.[( g32  f)]   e8[(-. f-.-\cresc g-.  a)-.]
    |  bes8[\f ~ bes32( g e  c)] bes8 r r  a16[(  f')]
    |  f8.[(  d16)]  c[  a'(-.\p g-. f-.]  e[-. d-. c-.  bes)-.]
    |  bes[( a g  f)] f4 r
    | c'\f ~  c16[  g'(-. f-. es-.]  d[-. c-. bes-.  a)-.]
    |  c8[(  bes)] r  bes16[(\p a]  c8[  b)]
    |  d[(  c)] r  c16[( b]  d8[  c)]

% 60
    |  es[(\f  d)] r  d16[( cis]  es8[  d)]
    | d4.\p  bes'16[( a]  c8[  bes)]
    |  bes,[(  a)] r  a16[( gis]  bes8[  a)]
    | a4.  f'16[( e]  g8[  f)]
    |  a,[(  g)] r   g16[(-\cresc fis]  a8[  g)]
    |  g'[(  f)] r  g,16[( fis]  a8[  g)]
    |  g'[(  f)] r  g,16[( fis]  a8[  g)]
    |  g'[(  f)] r  g16[(\f f]  as8[  f)]
    |  f16[( e d  c)] \grace { b32[ c d] } c2 ~
    |  c8[ c16(\p b]  d8[  c)] c4 ~

% 70
    |  c8[ c'16(-\cresc b]  d8[  c)] c4 ~
    | c2.\f ~
    |  c8[ c16(\p b]  d[ c bes a]  c[ bes a  g)]
    |  fis[(  g) fis(  g)]  fis[(  g)] r8 r32  g[( bes a]  g[ f e  d)]
    |  d16[(  c) d(  c)]  d[(  c)] r8 r4
    | R2.
    |  f,4(\pp  e) r
    | c'2 r4
    | bes'4   bes8[(-. bes-. bes-.  bes)-.]
    | bes4(   a8)[  es'(-. es-.  es)-.]

% 80
    | <f, es'>4 <f d'> r
    | g,4\p   g8[(-. g-. g-.  g)-.]
    |  g16[( as32 bes as16  g)]   g8[(-. g-. g-.  g)-.]
    |  d8.[(  g16)] f4 \grace a!16 g8.[(\fp  f16)]
    | f4 r r
    | R2.*2
    | f4\pp   f8[(-. f-. f-.  f)-.]
    | f4(  e) r
    | c2 r4

% 90
    | des'4\f   des8[(-. des-. des-.  des)-.]
    | des4(   c8)[  c(-. c-.  c)-.]
    |  c[( b  bes)  bes(-. bes-.  bes)-.]
    |  bes[( a  as)  as(-. as-.  as)-.]
    | g4 r r
    |  g'16[( as32\sf bes as16  g)]   g8[(-.\p  g)-.]
       f16[(\sf g32 as  g16) f-.]
    |   f8[(-.\p  f)-.] f4 \grace a!16 g8.[(\fp  f16)]
    | f4(\f e  es)
    |  cis8[(\p  d)] ~  d32[( e! d cis]  d[ e d  e)]  g16[( f e  d)]
    | c4.(-\cresc  d8[ e  f)]

% 100
    |  c16[(\p b bes  a)] \afterGrace g2\trill { f32[(  g)] }
    | f4 r r bes2(  g8.[  e16)] c'2(  d4)
    | f,2(  g4)
    | bes(  a) r
    | bes'2(  g8.[  e16)]
    | c'4.(  cis8[ d  f)]
    | f,2  g8.[(\trill f32  g)]
    | f4 r es8 r

% 110
    | d r des r c4 ~
    |  c8[(  b)] bes4(  a)
    |  g2( \grace { a32[ g fis g] } c4)
    | f,8\pp r f r f r
    | \appoggiatura { e32[ f g] } f2 r4 \bar "|."
}
