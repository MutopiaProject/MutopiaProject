\version "2.16.0"

celloThirdMov =  \relative d {
    \key d \major
    \clef bass

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 8)

    \repeat volta 2 {
	r4
	| d8\p r d r
	| e r r4
	| r8  g,[( fis  cis')]
	| d4 r
	| r  a'8[( gis]
	|  fis[  e)] cis4(\sf
	|  d8) r  e[\p e]
	|  a,[ a']
    }

    \repeat volta 2 {
	r4
	| r8  a,[( b  c)]

% 10
	|  dis,[(  e)] r cis'!
	| r d r g,
	| a4 r
	| r  b'8[(\f a]
	|  gis[  a)] r4
	| r r8 a(_ \markup{ {\dynamic "p"} {\italic " cresc."}} \noBreak
	|  ais[ b gis  g)]
	|  fis[\f g]  a[ a,]
	| d r
    }

    \repeat volta 2 {
        r4
	| d4(\p  fis)

% 20
	| e(  b)
	| a(  cis)
	| d r
	| r  a'8[( gis]
	|  fis[  gis)] cis,4(\f
	|  d)  e8[ e]
	|  a,[ a']
    }

    \repeat volta 2 {
        r4
	| c,(\f  b)\p
	| << e( { s8 s8_\cresc } >>  cis!4)
	| d(  g,)

% 30
	| a\f r
	| r  b'8[(\p a]
	|  gis[  a)]  g[(\f a]
	|  g) r  a[(\p  a)-.]
	| d, r g4(\f
	|  fis16) r g\p r  a8[ a,]
	| d r
    }

    \repeat volta 2 {
        r4
        | d8\p r d r
	| d4 ~  d16[ cis32( d]   e16)[ d-.]
	| cis8 r a r

% 40
	| d4 r8 d'\fp ~
	|  d[(  cis)]  a,[ a'\fp] ~
	|  a[(  gis)]  a,[(\f  b)]
	|  cis[(  d)]  e[ e,]

        | \tag #'part {a8 r
	  \override VoltaBracket #'stencil = ##f}
    }
    \alternative {
        { \tag #'score {a8 r} }
        { \tag #'score {a8 r} }
    }

    \repeat volta 2 {
        r4
	| b8\p r dis r
	|  e8.[(  d!16)] cis8 r
	| d r g, r
	| a r r d'\fp ~
	|  d[(  cis)]  g,[ g'\fp] ~
	|  g[(  fis)]  g[(\f  a)]
	| g r r a,(\p
	|  ais[  b)]  gis[(\f  g)]
	|  fis[(  g) a-. a-.]
        | \tag #'part {d,8 r
	  \override VoltaBracket #'stencil = ##f}
    }
    \alternative {
        { \tag #'score {d8 r} }
        { \tag #'score {d8 r} }
    }

    \repeat volta 2 {
        r4
	| r d'(\p
	|  e8) r r4
	| r cis(
	|  d8) r  b[( a]
	|  gis[  a)] a'4( ~

% 60
	|  a8[  gis)] cis,4\p
	|  d8[(_\cresc  dis)]  e[\fp e,]
	| a r
    }

    \repeat volta 2 {
        r4
	| r8  c[(\p b  dis)]
	| e r  a[(  g)]
	|  fis[-. fis,(]  g8.[ gis16]
	|  a8) r r4
	| R2
	| r4  e''8[( d]
	|  cis[  d)]  a[(_\cresc ais] ~

% 70
	|  ais[  b)]  a![( g]
	|  fis[  gis)]  a[\fp a,]
	| d r
    }

    \key d \minor

    \repeat volta 2 {
        r4
	| \times 2/3 {  d16[(\p cis d]  f[ a f] }  d8) r
	| \times 2/3 {  g,16[( fis g]  bes[ d bes] }  g8) r \noTupletNum
	| \times 2/3 {  a16[( gis a]  cis[ e cis] }  a8) r
	| \times 2/3 {  d16[( cis d]  f[ a f] }  d8) r
	| r4  a8[ a'(] ~
	|  a[  gis)] \times 2/3 { r16  a[(\f gis]  a[ c  a)] }
	| \times 2/3 { r16  f[( e]  f[ a  f)]  d[( c  d)]  e[( d  e)] }

% 80
	| a,8 r \tupletNum
    }

    \repeat volta 2 {
        r4
	| a8\p r a r
	| a r a r
	| a r a r
	| \times 2/3 { r16  a[\f cis]  e[ cis e]  a[ cis a]  e[ cis e] }
	| a,8 r a r
	| a r a r
	| b2(
	|  a8) r r4
	| r  d8[\p d'] ~

% 90
	|  d[(  cis)] \times 2/3 { r16   d[(\f cis]  d[ f
           d)] }
	| \times 2/3 { r16  bes[( a]  bes[ d  bes)] \noTupletNum  g[( f
           g)]  a[( g  a)] }
	| bes8 r \times 2/3 { r16   bes,[(\p a]  bes[ d
           bes)] }
	| \times 2/3 { r16  gis[( fis]  gis[ b  gis)]  a[( gis  a)]  a[( gis
           a)] } \tupletNum
	| d,8 r
    }

    \key d \major

    \repeat volta 2 {
        r4
	| R2
	| r8   e[(\p fis  g)]
	| a r r4
	| r8  d,[( e  fis)]
	|  g[( e fis  g)]

% 100
	|  a[( fis g  a)]
	| b2(
	|  a8) r r4
	| r  b8[(\f  dis)]
	| e r r4
	| r  a,8[(  c)]
	| d!8 r r4
	| r  g8[(  fis)]
	| e( a4  g8)
	|  fis[( e16.  d32)]  e8[ e]

% 110
	|  a,[ a'] r4
	| r8  b,[(\p cis  dis)]
	| e4 r
	| r8  a,[( b  cis)]
	| d!4 r
	| gis,2
	| a4.(  cis8)
	|  d[ g a a,]

	% The (f is) mine, not Breitkopf's
	| d4 r8  a'_\parentF ~
	|  a16.[(  b32) g16.(  a32)]  fis8[-. dis-.]

% 120
	|  e[ e'] ~  e16.[(  fis32) d16.(  e32)]
	|  cis16.[(  d32) b16.(  cis32)]  a8[-. cis,-.]
	| d r  d[(\p  cis)]
	|  b[(  e)] ~  e16.[(  fis32) d16.(  e32)]
	|  cis8[(  d) a cis]
	|  d[ g a a,]
	| d r
    }

    \repeat volta 2 {
         d16[-.\p a-. d-. a-.]
	|  d[ a32 a]  a16[ a]  d[-. a-. fis'-. a,-.]
	|  e'[ a,32 a]  a16[ a]  e'[-. a,-. d-. a-.]
	|  cis[-. a-. d-. a-.]  e'[-. a,-. cis-. a-.]

% 130
	|  d[ a32 a]  a16[ a]  g'[-. a,-. fis'-. a,-.]
	|  eis'[-. a,-. fis'-. a,-.]  d[-. a-. cis-. a-.]
	|  bis[-. a-. cis-. a-.]  d[-. a-. gis'-. a,-.]
	|  a'[-. a,-. dis-. a-.]  e'[-. a,-. d-. a-.]
	|  cis[ a32 a]  a16[ a]
    }

    \repeat volta 2 {
         a'[-. a,-. g'!-. a,-.]
	|  fis'[-. a,-. e'-. a,-.]  dis[-. a-. fis'-. a,-.]
	|  e'[-. a,-. d!-. a-.]  cis[-. a-. e'-. a,-.]
	|  d[-. a-. fis'-. a,-.]  g'[-. a,-. gis'-. a,-.]
	|  a'[ a,32 a]  a16[ a]  g'![-. a,-. fis'-. a,-.]
	|  eis'[-. a,-. fis'-. a,-.]  e'[-. a,-. d-. a-.]

% 140
	|  cis[-. a-. dis-. a-.]  e'[-. a,32-. a-.]  cis16[-. a-.]
	|  d![ a32 a]  gis'16[-. a,-.]  a'[-. a,-. g'-. a,-.]
	|  fis'[-.\f a,-. f'-. a,-.]  e'[ a,32 a]  cis16[-. a-.]
	|  d[ a32 a]  gis'16[ a,]  a'[ a,32 a]  a16[ a]
	   \set Timing.measureLength = #(ly:make-moment 3 4)
    }
    \alternative {
        { d[ a32 a]  a16[ a] }
	{ d8 r }
    }

      r4
    | \set Timing.measureLength = #(ly:make-moment 2 4)
      d'2\p ~
    | d4 r
    | a2\f ~
    | a4(  d8) r
    | d2\p ~

% 150
    | d8 r d r
    |  d[-. d-. cis-. d-.]
    | e4 r8 g(
    |  f4) r8 f(
    |  e4) r8 e(
    |  d4) r8 d(
    |   cis)[ a,(]  a'4) ~
    |  a8[ a,(_\cresc]  a'4) ~
    |  a16[ a,(  a'8.)]  a,16[(  a'8)] ~
    |  a16[ a,(  a'8.)]  a,16[(  a'8)]

% 160
    | a,4\f ~ a8 r
    | R2
    | r8   g[(\p e d]
    |  cis) r r4
    | d'4(  dis)
    | e r
    | r8  g,[( fis  cis)]
    | d4 r
    | r  b''8[(\f a]
    |  gis[  a)] r4

% 170
    | r r8 a(_ \markup{ {\dynamic "p"} {\italic " cresc."}} \noBreak
    |  ais[ b gis  g)]
    |  fis[-.\f g-. a-. a,-.]
    | d r r4
    | gis,2\p
    | a4.(  cis8)
    |  d[ g a a,]
    |  d16[\f a32 a]  d16[-. a-.]  e'[-. a,-. fis'-. a,-.]
    |  g'[ a,32 a]  e'16[-. a,-.]   fis'[-. a,-. g'-. a,-.]
    |  a'[ a,32 a]  g16[-. g'-.]  fis[-. fis,-. e-. e'-.]

% 180
    |  d,[-. d'-. g,-. g'-.]  a[-. g-. a-. a,-.]
    |  d[ d,32\p d]  d16[ d]  fis[-. d-. a'-. d,-.]
    |  d'[ d,32 d]  d16[ d]  fis[-. d-. a'-. d,-.]
    |  d'[ d,32 d]  d16[ d]  fis[-. d-. a'-. d,-.]
    |  d'[ d,32 d]  d16[ d]  fis[-. d-. a'-. d,-.]
    | d'8 r d, r
    | d4 r \bar "|."
}
