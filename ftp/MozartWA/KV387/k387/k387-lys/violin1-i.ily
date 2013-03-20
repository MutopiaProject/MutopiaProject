\version "2.16.0"
violinIFirstMov = \relative g' {
    \repeat volta 2 {
        g8\f
        | d'4(  g) g(  fis8[  e)]
        |  d[(\p dis e  b)] d4(  c8) r
        |  c8.[\f\trill( d32  e)]  d16[( c b  a)] g4(  fis8[  e)]
        |  d[\p d'( cis  c)] ais4(  b8) r
        | r2 \tieUp <a, d>4( ~ <b d>8) \tieNeutral r8
        | R1
        | a''4 \grace d16 c8[ b16 a] dis4(  e)
        | g,4.(- \markup{\italic "cresc."}  b16[ a]  g4) r
        |  gis,16[( a c b]  d[ c b  a)]  dis8[( e fis  g!)]
% 10
        | g,!4.(_ \markup{\italic "cresc."}  b16[ a]  g4) r
        | r2 r4 r8 g\f
        | d'4(  g) g(  fis8[  e)]
        |  d[(\p dis e  b)] d4(  cis8) r
        | r8  c![\trill( d  a)] ais4(  b8) r
        | r8  g'[(\f fis  e)] d4(  cis8[  b)]

        | a8[(\p a' gis g]  fis[ d' cis  c)]

        | b1 ~
        | b1 ~
        | b8  b[( ais a]  gis[- \markup{\italic "cresc."} g fis  e)]
% 20
        |  dis[( e fis  g)] d4(  cis8) r
        | r8  g'16[\p( fis]  a[ g f  e)] d4(  cis8) r
        | r8  g'16[( fis!]  a[ g f  e)]  d[( cis g'\fp fis]  a[ g f  e)]
        |  d[( cis g'\fp fis!]  a[ g f  e)] d2 ~
        | d4  cis16[-.\p d-. e-. fis-.] g4 r
        | R1*5
% 30
        | r2 r4 r8 a,8(\f
        |  fis'4) fis  fis16[-. eis-. fis-. eis-.]  fis8[-. fis(]
        |  a4.)( fis8 a4.  fis8)
        | e!4 e  e16[-. dis-. e-. dis-.]  e8[-. e(]
        |  g4.)( e8 g4.  e8)
        | d4(\p dis e  f)
        | fis \grace a16 g8[ fis16 e]  d[ e fis g]  a[ b cis d]
        | d,,4(\p c'\f b\p  b')\f
        | a,(\p cis'\f  d8)\p r  d16[(  cis) b-. a-.]
        |  gis[( a gis a]  gis[ a b  g)]  eis[( fis eis fis]  eis[ fis a  fis)]
% 40
        |  dis[( e! dis e]  dis[ e g  e)]  d[( cis b  a)]  d'[(  cis) b-. a-.]
        |  gis[( a gis a]  gis[ a b  g)]  eis[( fis eis fis]  eis[ fis a  fis)]
        |  dis[( e g  e)]  e[(  d) d(  cis)] d2(
        | fis- \markup{\italic "cresc."}  g)
        |  fis8.[\p a16] \grace a16 g8[ fis16 e] d2(
        | fis- \markup{\italic "cresc."} g
        | a  b)
        |  cis,16[(\f d e fis]  g[ a b cis]  d8) r b\p r
        | a8 r g r  g16[(  fis)] r8  fis16[(  e)] r8
        |  e16[(  d)] r8  d16[(  cis)] r8 d r gis4\f ~
% 50
        | gis4\p \grace b16 a4.\f  g!16[\p fis] \grace fis16 e8[ d16 cis]
        | d8 r gis2\fp \grace b16 a4\f ~
        |  a8[\p g!16 fis] \grace fis16 e8[ d16 cis] d8 r e16[( g fis  e)]
        | d8 r  cis'[-. cis-.] d-. r r4
        |  e,,8.[\p e16 e8. e16]  fis8.[ fis16 g8. g16]
        | fis8 r  e8.[(\trill d32  e)] d4 r8
    }

    \repeat volta 2 {    
        d8\f
        | a'4(  d) d2( ~
        |  d16[ cis e d]  fis[ \> e g fis]  a8[ g fis  e)]
        |  d[( cis b  a\!]  gis[ a]  ais[ b16  g)]
        | g2\f ~  g8[\p( fis c'!  b)]
% 60
        | b2 r2
        | b4(\f  ais) ais2 ~
        | ais2\p a ~
        | a4 r4 r2
        | <b, gis'>4 r4 r2
        | <a g'!>4 r <a fis'> r
        | r d-. d(  b)
        | b2 r2
        | r2 <g f'>\f ~
        |  f'8[ e-.\p d-. c-.] b r r4
% 70
        | R1*2
        | bes8\f bes4\p bes bes bes8 ~
        | bes8 bes4 bes bes bes8
        | a8 r e'''2\fp  d16[( cis b!  a)]
        |  g[( a bes a]  g[ f e  d)]  cis[( d e d]  cis[ bes a  g)]
        | fis8\f <a, fis'>4\p <a fis'> <a fis'> <a fis'>8 ~
        | <a fis'> <a fis'>4 <a fis'> <a fis'> <a fis'>8
        | <a fis'> r8 fis''2\fp  e16[( dis cis  b)]
        |  a[( b c! b]  a[ g fis  e)]  dis[( e fis e]  dis[ c b  a)]
% 80
        | g8 b'4\fp b8 r e4\fp e8
        | r8 dis4\fp dis8 r a'4\fp a8
        | gis4(\p  g) \appoggiatura g8 f4 e8.[ dis16]
        | e4( c b a'
        | gis  g) \appoggiatura g8 f4 e8.[ dis16]
        | e4( c b  dis,)
        | e4 r r2
        | r4  fis'16[(\p a g  fis)] e8 r r4
        |  fis,8.[ fis16 fis8. fis16]  g8.[ g16 a8. a16]
        | g8 r  fis8.[(\trill e32  fis)] e4 r
% 90
        | f2\sf ~ f8[( g16\p a] g[ f
          e  d)]
        |  d8[(  c)] c'4\fp ~  c8[( d16 e]  d[ c b  a)]
        |  a8[(  g)] g'4\fp ~  g8[( a16 b]  a[ g fis!  e)]
        | d4(\p dis e  fis)
        |  a8[(  g)]  fis8.[ e16] d!4(  cis)
        | d4( dis e  fis)
        |  g8[( a16 b]  a[ g fis  e)] d!4(  cis)
        | d8 r  e,16[(\p g fis  e)] d8 r cis'8-. cis-.
        | d-. r cis'-. cis-. d-. r r4
        |  e,,8.[\pp e16 e8. e16]  fis8.[ fis16 g8. g16]
% 100
        | fis8 r  e8.[(\trill d32  e)] d4 r
        | a'8-. r  g8.[(\trill fis32  g)] fis4 r
        | c'!8-. r  b8.[(\trill a32  b)] a4 r
        | e'8-. r  d8.[(\trill c32  d)] c4(- \markup{\italic "cresc."}  a')
        | g2\f ~  g8[( fis c'  a)]
        | g2\f ~  g8[( fis c'  a)]
        | g8( fis4- \markup{\italic "calando"} e d  c8) ~
        | c8 b4( a g  fis8)
        | d'4(\f  g) g(  fis8[  e)]
        |  d8[(\p dis e  b)]  d[( cis]  c) r
% 110
        |  c8.[(\f\trill d32  e)]  d16[( c b  a)] g4(  fis8[  e)]
        |  d[ e'( d cis]  c[ ais]  b) r
        | r2 \tieUp <a, d>4( ~ <b d>8) \tieNeutral r8
        | R1
        | a''4 \grace d16 c8[ b16 a] dis4(  e)
        | g,4.(- \markup{\italic "cresc."}  b16[ a]  g4) r
        | e4.(\pp  g16[ f]  e8) r r4
        |  gis,16[( a c b]  d[ c b  a)] dis8[(-. e-. fis-.  g)-.] 
        | g,4.(^ \markup{\italic "cresc."}  b16[ a]  g4) r
        | r2 r4 r8 g8\f
% 120
        | d'4(  g) g(  fis8[  e)]
        |  d[(\p dis e  b)] d4(  cis8) r
        | r  c![(\trill d  a)] ais4(  b8) r
        | r  a'[(\f b  c)] g4(  fis8[  e)] ~
        |  e[(\p d cis c]  b[ g' fis  f)]
        | e1 ~
        | e4 e'2. ~
        | e8  e[( dis d]  cis[ c b- \markup{\italic "cresc."}  a)]
        |  gis[( a b  c)] g4(  fis8) r
        | r  c'16[(\p b]  d[ c bes  a)] g4(  fis8) r
% 130
        | r  c'16[(\p b]  d[ c bes  a)]  g[( fis c'\fp b]  d[ c bes  a)]
        |  g[( fis c'\fp b]  d[ c bes  a)] g2 ~
        | g4  fis16[-. g-. a-. b!-.] c4 r
        | R1*5
        | r2 r4 r8 d,8(\f
        |  b'4) b  b16[-. ais-. b-. ais-.]  b8[-. b(]
% 140
        |  d4.)( b8 d4.  b8)
        | a!4 a  a16[-. gis-. a-. gis-.]  a8[ a(] % NOT  a8[-. a(]
        |  c4.)( a8 c4.  a8)
        | g!4(\p gis a bes
        |  b!) \grace d16 c8[ b16 a]  g[ fis e d]  c[ b a g]
        | g,4(\p f'\f e\p  e')\f
        | d,\p fis'(\f  g8)\p r  g16[(  fis) e-. d-.]
        |  cis16[( d cis d]  cis[ d e  c)]  ais[( b ais b]  ais[ b d  b)]
        |  gis[( a! gis a]  gis[ a c  a)]  g[( fis e  d)]  g'[(  fis) e-. d-.]
        |  cis[( d cis d]  cis[ d e  c)]  ais[( b ais b]  ais[ b d  b)]
% 150
        |  b[( a! gis a]  c[ b ais  b)]  d[( c b c]  b[ c e  c)]
        |  c[( b ais b]  d[ c b  c)]  e[( d cis d]  cis[ d f  d)]
        |  d[( c! b c]  e[ d cis  d)]  f[( e dis e]  dis[ e g  e)]
        |  g[( fis eis fis]  eis[ fis a  fis)] g2(
        | b- \markup{\italic "cresc."}  c)
        |  b8.[\p d16] \grace d16 c8[ b16 a] g2
        | b,2(- \markup{\italic "cresc."}  c)
        | d(  e)
        | f16[( e d c]  b[ a g f]  e8) r r4
        |  fis16[(\f g a b]  c[ d e fis]  g8) r r4
% 160
        |  cis,16[( d e fis]  g[ a b cis]  d8) r c\p r
        | b r a r g r fis r
        |  a16[(  g)] r8  fis16[(  e)] r8  cis16[(  d)] r8  d16[(  c)] r8
        |  c16[(  b)] r8  b16[(  a)] r8 g8 r cis4\f ~
        | cis\p \grace e8 d4.\f  c!16[\p b] \grace b16 a8[ g16 fis]
        | g8 r cis'2\fp \grace e8 d4\f ~
        | d8\p  c!16[ b] \grace b16 a8[ g16 fis] g8 r a,16[( c b  a)]
        | g8 r  fis'[-. fis-.] g-. r  a,16[( c b  a)]
        | g8 r  c'[-. c-.] b-. r8 r4
        |  a,8.[\pp a16 a8. a16]  b8.[ b16 c8. c16]
% 170
        | b8 r  a8.[(\trill g32  a)] g4 r8
    }
}
