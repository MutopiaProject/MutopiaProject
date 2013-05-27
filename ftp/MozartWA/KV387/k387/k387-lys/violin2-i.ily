\version "2.16.0"
violinIIFirstMov = \relative g' {
    \repeat volta 2 {
        r8
	| b4\f g c4.(  b8)
	| \stemUp a4(\p b ~ b  a8) r \stemNeutral
	| e2\f d4.(  cis8)
	| d2\p ~  d8[( fis  g)] r
	| R1
	| a4 \grace d16 c8[ b16 a] fis'4(  g8) r
	| r2 g,2(\p ~
	| g4^ \markup{\italic "cresc."} fis  g) r
	| r2 g2(\p
% 10
	|  d4)^ \markup{\italic "cresc."} c(  b) r8 g8\f
	| d'4(  g) g(  fis8[  e)]
	|  d8[( dis e  b)] d4(  c8[  b)]
	| a4 r r8  gis'8[(\p\trill a  e)]
	| g!4(  fis8) r r  fis[(\trill g  dis)]
	|  fis[(  e)] r b'\f a4.(  gis8)
	| a4\p r a r
	| r8  b,8[( c cis]  d[ dis e eis]
	|   fis)[ b( a g]   fis)[ c'( b a]
	|  g4) r r8  b[( a g]
% 20
	|   fis8[- \markup{\italic "cresc"} g a  b)] 
          fis4(   e8)[ g,\f]
	| g'2 r4 r8 g,8\f
	| g'2 ~ g8 e4(\fp  f8)
	| g e4(\fp  f8) g2 ~
	| g4 ~  g16[\p fis-. e-. d-.] cis4 r8 a8(\p
	|  fis'4) fis  fis16[-. eis-. fis-. eis-.]  fis8[-. fis(]
	|  a4.) fis8(  a4.) fis8(
	|  e!4) e  e16[-. dis-. e-. dis-.]  e8[-. e(]
	|  g4.) e8(  g4.) e8(
	| d4 dis e eis
% 30
	|  fis)  g16[( a b  g)] fis4(  e8) r
	| a4\f a a2
	| r8 a(  d4.) a8(  d4)
	| a4 a a2
	| r8 a,8(  a'4.) a,8(  a'4) ~
	| a4\p c!( b  d)
	| d4 \grace fis16 e8[ d16 cis] d4 r
	|  d,4(\p dis\f e\p  f)\f 
	| fis!\p \grace a16 g8[ fis16 e] d8 r r4
	|  a'8[\p a] a r  a[ a] a r
% 40
	| r b r b e,4  d'16[(  cis) b-. a-.]
	|  gis[( a gis a]  gis[ a b  g)]  eis[( fis eis fis]  eis[ fis a
           fis)]
	|  dis[( e! g  e)]  e[(  d) d(  cis)] d2
	| d'1- \markup{\italic "cresc."}
	|  d8.[\p fis16] \grace fis16 e8[ d16 cis] d2(
	| a- \markup{\italic "cresc."}  b)
	| fis'(  g)
	|  g,16[(\f a b cis]  d[ e fis g]  fis8) r g\p r
	| fis r e r d r b r
	| a r g r fis r f4\f ~
% 50
	| f\p fis4.\f  fis8[-.\p g-. g-.]
	| fis r f2\fp fis4\f ~
	|  fis8[\p fis-. g-. g-.] fis-. r  g[-. g-.]
	| fis-. r  fis'16[(\pp g fis  e)] d8-. r r4 % NOT  e'16[(\pp ...
	|  d,8.[\p d16 d8. d16]  d8.[ d16 d8. d16]
	| d8 r  cis8.[(\trill b32  cis)] d4 r8
    }

    \repeat volta 2 {
        r8
	| d4-.\f a'-. g2 ~
	| g2\p ~ g4 r
	| R1
	| r4 c,!-. c(  fis)
% 60
	| fis2 r4 r8 e8\f
	| b'4(  e) e2 ~
	| e4(  dis16[ e fis  e)]  dis8[( c' b  a)]
	|  g[( fis e dis]  c[ b c  a)]
	| r8  gis[(\p b d!]  f![ e b'  d,)]
	| r8  cis[(\p e  g,)] r  fis[(\p a  c,!)]
	| c2(\f ~  c8[\p b g'  f)]
	| f2 r
	| r <g, d'>^\f ~
	|  d'8[ c-.\p b-. a-.] g r r4
% 70
	| R1*2
	| r4 g''2\fp  f16[( e d  c)]
	|  bes[( c d c]  bes[ a g  f)]  e[( f g f]  e[ d c  bes)]
	| a8\f a4\p a a a8 ~
	| a8 a4 a a a8 % There is no '~'
	| a8 r a''2\fp  g16[( fis e  d)]
	|  c![( d e d]  c[ b! a  g)]  fis![( g a g]  fis[ e d  c)]
	| b8\f b4\p b b b8 ~
	| b8 b4 b b b8
% 80
	|  b[ g'16(\fp a]   g8)[ g-.] r8  ais16[(\fp b]   ais8)[ ais-.]
	| r8  b16[(\fp c]   b8)[ b-.] r8  b16[(\fp c]   b8)[ b-.]
	|  b8[\p b b b]  c[-. c( b  a)]
	|  g[ g a a]  g[ g fis fis]
	|  e[(  b') b-. b-.]  c[-. c( b  a)]
	|  g[ g a a]  g[ g fis fis]
	| e r  fis16[(\p a g  fis)] e8 r  dis'[-. dis-.]
	| e-. r  a,[-. a-.] g-. r r4
	|  e8.[ e16 e8. e16]  e8.[ e16 e8. e16]
	| e8 r  dis8.[(\trill cis32  d)] e4 r
% 90
	| b1- \markup{\dynamic "sfp"} ~
	|  b8[(  c)] r4 fis2\fp ~
	|  fis8[(  g)] r4 cis2(\fp
	|   d8)[\p d c! c]  b[ b a a]
	|  g[ g b b]  a[ a g g]
	|  fis[ fis fis fis]  e[ e dis dis]
	|  e[ e e g]  fis[ fis e e]
	| d! r  cis[-.\p cis] d-. r  g[-. g-.]
	| fis r  e'16[( g fis  e)] d8 r r4
	|  d,8.[\pp d16 d8. d16]  d8.[ d16 d8. d16]
% 100
	| d8 r  cis8.[(\trill b32  cis)] d4 r
	| fis8-. r  e8.[(\trill d32  e)] d4 r
	| a'8-. r  g8.[(\trill fis32  g)] fis4 r
	| c'!8 r  b8.[(\trill a32  b)]  a4(- \markup{\italic
          "cresc."}   fis)
	| c'2\f ~  c16[( b c b]  c[ b c  b)]
	| c2 ~  c16[( b c b]  c[ b c  b)]
	| c4(- \markup{\italic "calando"} b a  g)
	| fis( e d  c)
	| b4\f d' c4.(  b8)
	| a4(\p  b)  gis8[( a]  e) r
% 110
	| e2\f d4.(  cis8)
	| d4\p a' ~  a8[( fis]  g8) r
	| R1
	| a4 \grace d16 c8[ b16 a] fis'4(  g8) r
	| r2 g,2(\p ~
	| g4^ \markup{\italic "cresc."} fis  g) r
	| b2(\pp  c8) r r4
	| r2 g2
	| d4(^ \markup{\italic "cresc."}  c) b r8 g8\f
	| d'4(  g) g(  fis8[  e)]
% 120
	|  d8[( dis e  b)] d4(  c8[  b)]
	| a4 r r8  gis'8[(\p\trill a  e)]
	| g!4(  fis8) r r  fis[(\trill g  dis)]
	|  e[ e'(\f d  c)] b4(   a8)[ cis,]
	| d4\p r d r
	| r8  e[( f fis]  g[ gis a ais]
	|   b)[ e( d c]  b[ f' e d]
	|  c4) r r8  e8[( d  c)]
	|  b[(- \markup{\italic "cresc."} c d  e)] b4(   a8)[ c,\f]
	| c'2 r4 r8 c,8\f
% 130
	| c'2 ~ c8 a4(\fp  bes8)
	| c a4(\fp  bes8) c2 ~
	| c4 ~  c16[-. b!-. a-. g-.] fis4 r8 d8(\p
	|  b'4) b  b16[-. ais-. b-. ais-.]  b8[-. b(]
	|  d4.)( b8 d4.  b8)
	| a!4 a  a16[-. gis-. a-. gis-.]  a8[-. a(]
	|  c4.)( a8 c4.  a8)
	| g4( gis a ais
	|  b)  c16[( d e  c)] b4(  a!8) r
	| d4\f d d2
% 140
	| r8 d(  g4.) d8(  g4)
	| d4 d d2
	| r8 d,8(  d'4.) d,8(  d'4) ~
	| d(\p f e g ~
	|  g) \grace b16 a8[ g16 fis] g4 r
	| g,4(\p gis\f a\p  bes)\f
	| b! \grace d16 c8[ b16 a] g8 r r4
	|  a8[\p a] a r  g[ g] g r
	| r e r e a,4  g'16[(  fis) e-. d-.]
	|  cis[( d cis d]  cis[ d e  c)]  ais[( b ais b]  ais[ b d  b)]
% 150
	|  b[( a! gis a]  c[ b ais  b)]  d[( c b c]  b[ c e  c)]
	|  c[( b ais b]  d[ c b  c)]  e[( d cis d]  cis[ d f  d)]
	|  d[ c! b c]  e[ d cis d]  f[( e dis e]  dis[ e g  e)]
	|  g[( fis eis fis]  eis[ fis c'  a)] b2
	| <<g'1 \\ {d2_\markup{\italic "cresc."} e}>> 
	| g8.[ b16] \grace b16 a8[ g16 fis] g2
	| <g,, d'>^ \markup{\italic "cresc."}(  e')
	| << { b'2(  c) } \\ g1 >> 
	| d'16[( c b a]  g[ f e  d)] c8 r r4
% 160
	|  c16[(\f d e fis!]  g[ a b  c)] b8 r r4
	|  g16[( a b cis]  d[ e fis  g)] fis8 r a\p r
	| g r e r d r c! r
	| b r c r b r a r
	| g r fis r g r bes,4\f ~
	| bes\p b4.\f  b8[\p c-. c-.]
	| b r bes'2\fp b4\f ~
	|  b8[\p b-. c-. c-.] b r  c,[-. c-.]
	| b-. r  a'16[( c b  a)] g8 r  c,[-. c-.]
	| b-. r  fis''[-. fis-.] g-. r r4
	|  g,8.[\pp g16 g8. g16]  g8.[ g16 g8. g16]
% 170
	| g8 r  fis8.[(\trill e32  fis)] g4 r8
    }
}
