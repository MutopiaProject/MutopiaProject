\version "2.16.0"

violinIThirdMov = \relative c'' {
    \override TupletBracket   #'bracket-visibility = ##f

    \afterGrace g8.[(\p {a32[ g fis g]} c16)]
    | c4 r
      \afterGrace c8.[(-\markup {\italic cresc.} {d32[ c b c]} e16)]
    | e4 r \afterGrace e8.[( {f32[ e d e]} g16)]
    | g2\f  f16[( e d  c)]
    |  e8[(\trill d]   c)[ b(\p a  g)]
    |  g8.[( b32 a]   g8)[  e(-. e-.  e)-.] 
    |  e8.[( g32  f)] e4 r
    | R2.
    | r4 r8   a8[(-. a-.  a)-.] 
    |  a[(  d,) d  g(-. g-.  g)-.] 
% 10
    |  g[(  c,)] c4 r
    | r r8   g''8[(-. g-.  g)-.] 
    |  a16[( g f  e)]  d8[(  c)] ~  c32[\f d e f g a b c]
    |  b[(\p a gis a gis a g f]  e[ g fis g fis g a  g)]  g16[( f e  d)]
    % The first rest is not shown in the Breitkopf & Haertel edition.
    % It is a mistake without doubt, but we'll leave it.
    | c8 s8 r4 r
    | g'4(\f   e8)[  g(-.\p g-.  g)-.] 
    | g4(\f   d8)[  g(-.\p g-.  g)-.] 
    | g4  fis16.[(  g32) a16.(  b32)]  c8[(  c,)]
    | \grace {b32[( c d])} c4(  b) r
    |  c,16[ d32 e f g a b]  c[( g e' c g' e c' g]   e')[ d c b a g fis e]
% 20
    |  d16[\trill e32 fis g a b c]  d[ ais(  b) fis(  g) cis,(  d) ais(]
        b)[ fis(  g) d( g b e  d)]
    | d[( c! b c) c( e a  g)]
       g[( fis c'  b) b(  a) a(  g)]  g[(  fis) fis(  e) e(  d) d(  c)]
    |  c16[(  b)(] b2 ~ b8
    |  bes2.)
    |  a16.[( \times 2/3 { bes64 a g] }   a16.)[ bes32] c8 r fis,\p r
    | g4 r r
    | R2.
    | r4 r8   d''[(-. d-.  d)-.] 
    | \times 4/6 {  d16[( cis a d cis a] } \times 4/6 {  d[ c a d c a] }
      \times 4/6 {  bes[ d c bes a  g)] }
    | \times 4/6 {  d16[(\f cis a d cis a] } \times 4/6 {  d[ c a d c a] }
      \times 4/6 {  bes[ d c bes a  g)] }
% 30
    |  cis8.[(\trill  d16)] d,4  d8.[\p d16]
    |  d8[(  g)] r  g[( b!  g)]
    | fis4(  e8) r  e8.[ e16]
    | e4 ~  e16[( fis32 gis a gis b  a)]  c[( b d c dis e c  a)]
    |  g!8.[( a32 g]  fis8) r  d'8.[ d16]
    |  d16[(  g)] r d-.  d[(  a')] r d,-.  d[(  b')] r d,-.
    | r  d[\sf d'( c]  a[- \markup{\italic "decresc."} fis d  c)]  a[( fis d  d')]
    |  d16[(\p g8 d a' d, b' d,16] ~

    |   d16)[ c'32(  b) d(  c) b(  a)] g[(  fis) a(  g) b(  a) g(  fis)] e[(  d) fis( e d c b  a)]

    | g2. ~
% 40
    | g4( fis  g)
    |  a8.[ b32 c]  e16[( d8 c32  b)]  b16[( a8 g32  fis)]
    |  g8[-. \slurDown a16.( b64 c]  b8) \slurNeutral r r4
    | g'2. ~
    |  g8.[( a32  b)] c4(  b)
    | a16-.  e'[( c  a)] g-.  d'[( b  g)] fis-.  c'[( a  fis)]

    |  g8[ g'16.( fis64 e] d4 ~ \times 2/3 {   d16)[ c b] }
       \grace b16 \times 2/3 {  a16[ g a] }

    | g8 r r  g,16.[( fis64 e]  d4) ~
    % In the Breitkopf & Haertel edition, the following two bars end
    % with a `r16. x16' rythm, which is obviously wrong.  I chose the
    % `r16. x32' rythm over the `r16 x16' because it seems me more
    % suitable to the context.  Also, this is the solution chosen by
    % the Quartetto Italiano in the Philips 8-CD set `Mozart String
    % Quartets'.
    | d8 r g'\p r r r16. g,32
    | as8 r as' r r r16. as,32
% 50
    | g8 r g' r r4
    | r r \afterGrace g,8.[(\p {a32[ g fis g]} c16)]
    | c4 r \afterGrace c8.[(-\markup{\italic "cresc."} {d32[ c b c]} e16)]
    | e4 r \afterGrace e8.[( {f32[ e d e]} g16)]
    | g2\f  f16[( e d  c)]
    % Note that in bar #4 the trill is above the e, not the d.
    |  e8[( d\trill]   c)[ b(\p a  g)]
    |  g8.[( b32 a]   g8)[  e(-. e-.  e)-.] 
    |  e8.[( g32  f)] e4 r
    | R2.
    | r4 r8   d'8[(-. d-.  d)-.] 
% 60
    |  d8[(  g,)] g4 r
    | r r8   c8[(-. c-.  c)-.] 
    |  c[(  f,)] f4 r
    | r r8   as[(-. as-.  as)-.] 
    |  as[(  ges')]  ges[  as,(-. as-.  as)-.] 
    |  as[(  f')]  f[  as,(-. as-.  as)-.] 
    |  a![(  ges')]  ges[  a,(-. a-.  a)-.] 
    |  a[(  ges')]  ges[  a,(-. a-.  a)-.] 
    |  bes[(  ges')]  ges[  bes,(-. bes-.  bes)-.] 
    |  c[(  fis)]  fis[(- \markup{\italic "cresc."} es d  c)]
% 70
    | b4.\f   g'8[(-.\p g-.  g)-.] 
    | g4(\f   es8)[  g(-.\p g-.  g)-.] 
    | g4(\f   g,8)[  g'(-.\p g-.  g)-.] 
    | g4(\f   es8)[  g(-.\p g-.  g)-.] 
    |  g,16[\trill a32 b! c d e! fis]  g16[ a32 b c d e! fis]  g[(  fis)
      e d c b a g]
    |  b[( a gis a gis a gis  a)]  a[-. cis( d  cis) d( e f e]  f[ e d e d
      c b  a)]
    |  a[( g fis g fis g a  g)]  g[-. b( c  b) c( dis e dis]  e[ d c d c b
      a  g)]
    |  g[( f! e f e f e  f)]  f[-. b( d  c) b( d f e]  d[ c b c b a g  f)]
    |  f16[(  e)] e2 ~ e8(
    |  es2.)
% 80
    |  d16.[( \times 2/3 { es64 d c]}   d16.)[ es32] f8 r b,-.\p r
    | c4 r r
    | R2.
    | r4 r8   g'8[(-. g-.  g)-.] 
    | \times 4/6 {  g16[( fis d g fis d] } \times 4/6 {  g[ f d g f d] }
      \times 4/6 {  es[ g f es d  c)] }
    | \times 4/6 {  g16[(\f fis d g fis d] } \times 4/6 {  g[ f d g f
      d] } \times 4/6 {  es[ g f es d  c)] }
    \override TupletNumber   #'stencil = ##f
    |  fis8.[(\trill  g16)] g,4  g8.[\p g16]
    |  g8[(  c)] r  c[( e  c)]
    | b4(  a8) r  a8.[ a16]
    |  a8.[ b32( cis]  e[ d f e g f a  g)]  bes[( a g f e d f  d)]
% 90
    |  c8.[( d32 c]  b!8) r  g'8.[ g16]
    |  g16[(  c)] r g  g[(  d')] r g,  g[(  e')] r g,
    | r  g[(\sf g'  f)]   d[(- \markup{\italic "cresc."} b g f]
        d[ b  g) g'']
    |  g16[(\p c8 g d' g, e'  g,16)] ~
    |  g[ f'32(  e) g(  f) e(  d)]  c[(  b) d(  c) e(  d) c(  b)]  a[(  g) b( a g
      f e  d)]
    | c2. ~
    | c4  b8.[(\trill a32  b)] c4
    |  cis16[( d8 e32  f)]  a16[( g8 f32  e)]  e16[( d8 c32  b)]
    |  c8[-. d16.( e64 f]   e8)[ f16.( g64 a]  g8) r
    | r4 r r8  c,,16.[( d64  e)]
% 100
    |  f8.[(\p \times 2/3 { g32 a  bes)]}  c8.[(- \markup{\italic "cresc."}
      d32 e]   f8.)[ \times 2/3 { g32( a b!]}
    |  c16)\f  c[(\p a  f)] e-.  a[( g  e)] d-.  g[( f  d)]
    |  c8[-. c'16.(\f b64 a]  g4) ~ \times 2/3 {  g16[ f e] } \grace e16 
 \times 2/3 {  d16[ c d] }
    | c8 r r4 r8  g'16.[( a64  b)]
    | c4 r  b8.[(\p\trill a32  b)]
    | c8 r r4 \times 2/3 {   f,16[(-.\pp d b]
      } \times 2/3 {  g[ a  f)] }
    | \slurUp <g, f'>4( ~ <g e'>8) \slurNeutral r8 r4
}
