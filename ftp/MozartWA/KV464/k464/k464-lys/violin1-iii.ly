\version "2.16.0"

violinIThirdMov =  \relative a' {
    \key d \major
    \clef violin

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	 a16.[(\p  fis32) g16.(  e32)]
	| d8( fis4  a8) ~
	|  a[(  g)]  a16[( g fis  e)]
	|  d8[( cis d  a')]
	|  g[(  fis)]  b[( a]
	|  gis[  a)]  fis'[( e]
	|  dis[  e)] e4\sf ~
	|  e16[( fis] \grace e32 d16[ cis32  b)]  a8.[(\p cis32  b)]
	| a8 r
    }

    \repeat volta 2 {
	 a16[( gis a  e)]
	| e4.(  dis8)

% 10
	|  a'[(  gis)]  g16[( b8  a16)]
	|  fis[( a8  g16)]  e[( g8  fis16)]
	|  d8[(  cis)]  b'[( a]
	|  gis[  a)]  g'![(\f fis]
	|  eis[  fis)] e4\p ~
	|  e16[( b'] \grace a32 g16[ fis32  e)]  d8[(  e)_\cresc]
          \noBreak
	|  g[(  fis)]  b[(  cis)]
	| \times 2/3 {  d16[(  a) fis-.] } \times 2/3 {  e[(  g) b-.] }
           d,8.[( fis32  e)]
	| d8 r
    }

    \repeat volta 2 {
	  gis,32[(\p a b a]  g[ fis g  e)]
	|  d[(  fis) a d fis8] ~  fis32[( e d cis]  e[ d cis  b)]

% 20
	|  a8[(  g16)] r  g32[( a b a]  g[ fis e  d)]
	|  cis[(  a') cis e g8] ~ \stemDown  g32[( e cis d]  e[  cis) e, a]
          \stemNeutral
	|  g8[(  fis16)] r r  b8[(  a16)] ~
	|  a[( gis8  a16)] r32  fis'[( gis  fis)] r  e[( fis  e)]
	| r  dis[( e  dis)] r  e[( fis  e)]  a[(\f  cis) b a]  gis[(  fis) e d]
	|  cis[(  b) cis d]  e[( fis e d]  cis[ d dis e]  d[ cis d  b)]
	| a8 r
    }

    \repeat volta 2 {
	 a32[(\p b c b]  a[ gis a  f)]
	|  e[(\f  a) c e a8] ~  a32[(\p fis! dis e]  fis[  dis) fis, b]
	|  a8[(  g16)] r  e'32[(  g) fis  e_\cresc]  d![(  cis!) b
          a]
	|  g[(  fis) g a]  b[( cis e  d)]  cis[( b a g]  fis[ e g  b,)]

% 30
	|   d8[(\f  cis16)] r r  b'8[\p a16] ~
	|  a[( gis8  a16)] r32  g'![( a  g)] r  fis[( g  fis)]
	| r  eis[( fis  eis)] r  fis[( g  fis)]  e[(\f g fis e]  dis[ fis e
          dis]
	|   e)[ b'(\p ais a]  gis[ g fis  e)]  d[-. a'( b a]  e[ a b  a)]
	|  g8[(  fis16)] r  e32[(\f fis g a]  b[ cis d e]
	|   fis)[ cis(\p  d) ais(]   b)[ fis(  g) e(]  d[ fis a gis]  g[ fis
          g  e)]
	| d8 r
    }

    \repeat volta 2 {
         a8[\p a]
	| a( d4  fis8)
	|  \times 2/3 { fis16([ a  g) } g8]  a,[ a]
	| a( cis4  e8)

% 40
	|  \times 2/3 { e16([ g  fis) } fis8]  b,16[( cis d  b)]
	|  e8.[(\fp d64 cis b  a)]  fis'16[( gis a  fis)]
	|  b8.[(\fp a64 gis fis  e)]  cis'16.[(\f  a32) gis16.(  b32)]
	|  a16.[(  cis,32) b16.(  fis'32)]  a,8[ b^\trill]
        | \tag #'part {a8 r
	  \override VoltaBracket #'stencil = ##f}
    }
    \alternative {
        { \tag #'score {a8 r} }
        { \tag #'score {a8 r} }
    }

    \repeat volta 2 {
         a8[ a]
	| a8( c'4  b8)
	|  \times 2/3 { a16([ fis  g) } g8]  g16[( e'8  g,16)]
	|  fis[( d'8  fis,16)]  e16[( b'8  b,16)]
	|  d8[(  cis)]  b16[( cis d  b)]
	|  e8.[(\fp d64 cis b  a)]  e'16[( fis g  e)]

% 50
	|  a8.[(\fp g64 fis e  d)]  b'16.[(\f  e,32) dis16.(  c'32)]
	|  b8.[(\fp a64 g fis  e)]  d!8[(  cis)]
	|  g'[(  fis)]  b16.[(\f  e,32) cis'16.(  a32)]
	|  d16.[(  fis,32) e16.(  b'32)]  d,8[ e^\trill]
        | \tag #'part {d8 r
	  \override VoltaBracket #'stencil = ##f}
    }
    \alternative {
        { \tag #'score {d8 r} }
        { \tag #'score {d8 r} }
    }

    \repeat volta 2 {
          fis,16.[(\p  d32) g16.(  e32)]
	| a8 r r4
	| r4  e16.[(  cis32) fis16.(  d32)]
	| g8 r r4
	| R2*2

% 60
	| r4  g'!8[(\p fis]
	|  eis[_\cresc  fis)]  a,8.[(\fp cis32  b)]
	| a8 r
    }

    \repeat volta 2 {
         e16.[(  c32) a'16.(  e32)]
	| c'8 r r4
	| r  e16.[(  cis!32)]  g'[( e g  e)]
	| a8 r r4
	| r4  b8[( a]
	|  gis[  a)] r d ~
	|  d[(  cis)] r  b16.[(  a32)]
	|  a8.[(  b16)]   d,8[(_\cresc  cis)]

% 70
	|  g'[(  fis)]  c'[( b]
	|  ais[  b)]  d,8.[(\fp fis32  e)]
	| d8 r
    }

    \key d \minor

    \repeat volta 2 {
           d,8[(-.\p  d)-.]
	| d4 ~ \times 2/3 {  d16[( f d] } \times 2/3 {  a'[ g  f)] }
	| e4 ~ \times 2/3 {  e16[( g e] } \times 2/3 {  bes'[ g  e)] }
	|  d8[(  cis)] ~ \noTupletNum \times 2/3 {  cis16[( e gis]  a[ e  a)] }
	|  g!8[(  f)] \times 2/3 { r16 \stemDown  bes[( a]  bes[ d  bes)]
          \stemNeutral }
	| \times 2/3 {  gis[( b gis]  a[ c  a)] } \times 2/3 { r16  f'[(
          e]  f[ a  f)] }
	| \times 2/3 {  dis[( fis dis]  e[ gis  e)] } \tupletNum
           c'8.[ r32 c,]
	|  a'8.[ r32 a,]  f'8[-. gis,-.]

% 80
	| a8 r
    }

    \repeat volta 2 {
          a8[(-.\p  a)-.]
	| a4.(  a'8)
	| \grace g8 f4.  e16[ d]
	| cis4  d8.[(^\trill cis32  d)]
	| e8 r  a,[-.\f a-.]
	| a bes'4  a16[(  g)]
	| \grace g8 f4.  e16[ d]
	| f'4(  gis,)
	| a8 r \times 2/3 { r16   es[(\p d] } \times 2/3
          {  es[ g  es)] }
	| \times 2/3 {  cis[( e! cis] } \times 2/3 {  d[ f  d)] }
          \noTupletNum \times 2/3 { r16  bes'[( a]  bes[ d  bes)] }
	| \times 2/3 {  gis[( b gis]  a[ cis  a)] } \tupletNum
           f'8.[\f r32 f,]
	|  d'8.[ r32 d,]  bes'8[-. g-.]
	| f r  f8.[\p r32 f,]
	|  d'8.[ r32 d,]  a'8[-. a-.]
	| d, r
    }

    \key d \major

     a'8[(\p  g)]
    | fis( b4  a8) ~
    |  a[(  g)] ~  g16.[(  a32) fis16.(  g32)]
    | e8( a4  g8) ~
    |  g[(  fis)] ~  fis16.[(  g32) e16.(  fis32)]
    |  d8[(  g)] ~  g16.[(  a32) fis16.(  g32)]

% 100
    |  e8[(  a)] ~  a16.[(  b32) g16.(  a32)]
    |  fis8[(  b)]  a[( gis16^\trill fis32  gis)]
    | a8 r  a[(\f  g!)]
    | fis( b4  a8) ~
    |  a[( g16. fis32]  g16.[ a32 fis16.  g32)]
    | e8( a4  g8) ~
    |  g[( fis16. e32]  fis16.[ g32 e16.  fis32)]
    | g8 r r4
    | r4  cis8[(  b)]
    |  a[(  e')] ~  e16.[(  fis32) d16.(  e32)]

% 110
    | cis8 r r c(\p ~
    |  c[  b)] r4
    | r8  g'[( a bes] ~
    |  bes[  a)] r4
    | r  d,8[(  cis)]
    |  b[(  e)] ~  e16.[(  fis32) d16.(  e32)]
    |  cis8[ a'] ~  a16.[(  b32) g16.(  a32)]
    |  fis16.[(  g32) e16.(  fis32)]  d16.[(  e32) cis16.(  e32)]
    | d8 r r4
    | r8 b'\f ~  b16.[(  c32) a16.(  b32)]

% 120
    |  g16.[(  a32) fis16.(  g32)] e8 r
    | r4 r8 a ~
    |  a16.[(  b32) g16.(  a32)] fis8 r
    | R2
    |  g8[(\p fis e  a)] ~
    |  a16.[(  b32) g16.(  a32)]  fis16.[(  g32) e16.(  fis32)]
    | d8 r

    \repeat volta 2 {
        r4
	| a4.(\p  d8)
	| cis4.(  d8)
	|  e[( fis g  a)]

% 130
	|  g[(  fis16)] r r4
	| r4  fis8[(  e)]
	| dis( e4 d8
	|  cis[  c)] \stemDown  b16[( \grace cis32 b32 a]
          \stemNeutral  b16[  e)]
	|  e8[(  a,16)] r
    }

    \repeat volta 2 {
          a8[(-.  a)-.]
	|  a[( c b  a)]
	|  g![( bes a  g)]
	|  fis[( a b!  e)]
	|  d[(  cis16)] r r4
	| r4  g'8[( fis]

% 140
	| eis fis4  e8) ~
	| e d4(  cis8)
	| a'4(\f  gis8[ g]
	|  fis[  f)]  e8.[(^\markup {{\tiny \sharp} \hspace #'0.5 \musicglyph #"scripts.trill"} d32  e)]
        | \tag #'part {d8 r
	  \override VoltaBracket #'stencil = ##f}
    }
    \alternative {
        { \tag #'score {d8 r} }
        { \tag #'score {d8 r} }
    }

    r4
    | c2(\p
    |  b4) r
    | g'4(\f  e8[  cis)]
    |  a'8.[(  fis16)] d8 r
    | c'2(\p

% 150
    |  b8) r a r
    |  g[-. fis-. e-. d-.]
    | cis4 r8 e(
    |  f4) r8 d(
    |  cis4) r8 cis'(
    |  d4) r8 gis,(
    | \stemDown   a16)[ a,32 a]  a16[ a]  a'[-. a,-. a'-. a,-.]
    |  b'16[ a,32 a]  a16[ a]  b'[ a, b' a,]
    |  cis'16[ a,32 a]  a16[ a]  d'16[ a,32 a]  a16[ a]
    |  e''16[ a,,32 a]  a16[ a]  fis''16[ a,,32 a]  a16[ a] \stemNeutral

% 160
    | g''4_ \markup{ {\dynamic "f"} {\italic " calando"}} ~  g16[( e cis a]
    |  g[ e cis a]  g[ e cis  a)]
    |  bes2(\p
    |  a8) r  a'16.[(  fis32) g16.(  e32)]
    |  d8( fis4  b8)
    |  a[(  g)]  a16[( g fis  e)]
    |  d8[( cis d  a')]
    |  g[(  fis)]  b[( a]
    |  gis[  a)]  g'![(\f fis]
    |  eis[  fis)] e!4\p ~

% 170
    |  e16[( b'] \grace a32 g16[ fis32  e)]  d8[( e_\cresc] \noBreak
    |  g[  fis)]  b[(  cis)]
    | \times 2/3 {  d16[(  a) fis-.] } \times 2/3 {  e[(  g) b-.] }  d,8.[(
      fis32  e)]
    | d8 r  d[(\p cis]
    |  b[  e)] ~  e16.[(  fis32) d16.(  e32)]
    |  cis8[(  a')] ~  a16.[(  b32) g16.(  a32)]
    |  fis16.[(  g32) e16.(  fis32)]  d16.[(  e32) cis16.(  e32)]
    | d8 d4(\f  cis8)
    |  b[(  e)] ~  e16.[(  fis32) d16.(  e32)]
    |  cis8[(  a')] ~  a16.[(  b32) g16.(  a32)]

% 180
    |  fis16.[(  g32) e16.(  fis32)]  d16.[(  e32) cis16.(  e32)]
    | d4 r
    | a'4.(\p  cis8)
    | d4 r
    | a4.(  cis,8)
    | d r d, r
    | d4 r \bar "|."
}
