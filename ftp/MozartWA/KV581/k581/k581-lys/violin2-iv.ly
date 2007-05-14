#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

violinIIFourthMov =  \relative cis'' {
    \key a \major
    \clef violin

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	cis4-.\p cis-. a-. a-.
	|  b8.[( cis16 d8.  b16)] e,4-. e-.
	| cis-. cis-. b-. b-.
	| cis2 e
	| cis'4-. cis-. a-. a-.
	|  b8.[( cis16 d8.  b16)] e,4-. e-.
	| cis-. cis-. d-. d-.
	| b4.(\trill  a16[  b)] cis2
    }

    \repeat volta 2 {
	|  b8[(  d) e-. e-.]  a,[(  cis) e-. e-.]
	|  b[(  d) e-. e-.]  a,[(  cis) e-. e-.]
	|  b[(  d) e-. e-.]  a,[(  cis) e-. e-.]
	|  a,[(  cis) e-. e-.] e4 r
	| r2 fis4-. fis-.
	| d-. d-.  e8.[( fis16 gis8.  e16)]
	| cis4-. cis-. d-. d-.
	| b4.(\trill  a16[  b)] cis2
    }

    % Var. I

    \repeat volta 2 {
	| cis'4-. cis-. a-. a-.
	|  b8.[( cis16 d8.  b16)] e,4-. e-.
        | cis-. cis-. b-. e-.

%%% 20
	| a4.(\trill  gis16[  a)] gis4 r
	| R1*2
	| cis,4-. cis-. d-. d-.
	| b4.(\trill  a16[  b)] a4 r
    }

    \repeat volta 2 {
        | b2( a
	| gis  a)
	| b(  a4) r
	| a( cis  e) r
	| cis'4-. cis-. a-. a-.
	|  b8.[( cis16 d8.  b16)] gis4-. gis-.
	| e-. e-. fis-. fis-.
	| d4.(\trill  a16[  d)] cis4 r
    }

    % Var. II

    \repeat volta 2 {
        | \times 2/3 {  cis8[( d  e)]  e[ e e]  a[( b  cis)]  cis[ cis cis] }
	  \noTupletNum
	| \times 2/3 {  b[( cis  d)]  d[ d d]  b,[( cis  d)]  d[ d d] }
	| \times 2/3 {  cis[( d  e)]  e[ e e]  gis[( a  b)]  b[ b b] }
	| \times 2/3 {  b[ b b]  a[ a a]  gis[-. fis-. e-.]  d[-. cis-. b-.] }
	| \times 2/3 {  cis[( d  e)]  e[ e e]  a[( b  cis)]  cis[ cis cis] }
	| \times 2/3 {  b[( cis  d)]  d[ d d]  b,[( cis  d)]  d[ d d] }
	| \times 2/3 {  cis[( d  e)]  e[ e e]  d[( e  fis)]  fis[ fis fis] }

%%% 40
	| \times 2/3 {  b,[-. b( cis]  d[ e  d)] } cis4 r
    }

    \repeat volta 2 {
        | \times 2/3 {  b8[(\f e  gis)]  b[\p b b]  b[ b b]  cis[ cis cis] }
	| \times 2/3 {  gis[(\f b  d)]  gis[\p gis gis]  gis[ gis gis]  a[ a a] }
	| \times 2/3 {  gis[(\f b,  gis)]  b,[\p b b]  b[ b b]  a[ a a] }
	| gis4 r r2
	| \times 2/3 {  cis8[( d  e)]  e[ e e]  a[( b  cis)]  cis[ cis cis] }
	| \times 2/3 {  b[( cis  d)]  d[ d d]  b,[( cis  d)]  d[ d d] }
	| \times 2/3 {  cis[( d  e)]  e[ e e]  d[( e  fis)]  fis[ fis fis] }
	| \times 2/3 {  b,[-. b( cis]  d[ e  d)] } cis4 r \tupletNum
    }

    % Var. III

    \key a \minor

    \repeat volta 2 {
        | a2.(  a'4)

%%% 50
	| b2.(  b,4)
	|  a8[-. a-.] r a(   b)[ b-.] r a(
	|   gis)[ gis-.] gis4 r2
	| a'2.(  a'4)
	| b2.(  b,4)
	|  a8[-. a-.] r a(   gis)[ gis-.] r d(
	|   c)[ c-.] c4 r2
    }

    \repeat volta 2 {
        | b'2.(  dis4)
	| e r r2
	| gis,2.(  a8[  c)]

%%% 60
	| b4 r r2
	| a2.(  a'4)
	| b2.(  b,4)
	|  a8[-. a-.] r a(   gis)[ gis-.] r d(
	|   a)[ a-.] a4 r2
    }

    % Var. IV

    \key a \major

    \repeat volta 2 {
        | cis'4-. cis-. a-. a-.
	|  b8.[( cis16 d8.  b16)] gis4 gis
	| e-. e-. b'-. b-.
	| a4.(\trill  gis16[  a)] gis4 r
	| e4-. e-. cis-. cis-.

%%% 70
	|  d8.[( e16 fis8.  d16)] b4 b
	| r8  cis[( e  cis)] r  fis[( b  fis)]
	|  e[ e d d] cis4 r
    }

    \repeat volta 2 {
        | r8  d'[ d d]  d[ d cis cis]
	|  b[ b b, b]  cis[( e a  cis)]
	| r  d[ d d]  d[ d cis cis]
	|  cis[ cis cis, cis] b4 r
	| cis'4-. cis-. a-. a-.
	|  b8.[( cis16 d8.  b16)] e,4-. e-.
	| cis-. cis-. d-. d-.

%%% 80
	| b4.(\trill  a16[  b)] cis4 r
    }

    | <a' e'>\f r <fis d'> r
    | <b fis'> r <gis e'> r
    | b,1\fp ~
    | b\fermata

    % Var. V

    \repeat volta 2 {
        | cis'2(\p  e8) r r4
	| d8 r b r r2
	| e,2 d4.(  b8)
	|  b[(  a)] gis4 r2
	| r8  cis[ cis cis] r  cis[ cis cis]
	| r  d[ d d] r  b[-. b(  d)]
	| cis r e r d r r4
	|  cis8[( e d  e)] cis r r4
    }

    \repeat volta 2 {
        | r8  b8[-. b-. b-.]  b[(  a) a-. a-.]
	|  gis[-. e'( fis  gis)]  a[-. cis-. e,-. cis-.]
	| r  b[-. b-. b-.]  b[(  a) a-. a-.]
	| r  a[( cis  a)] gis r r4
	| r8  e'[ e e] r  a[( cis  e)]
	| d4 ~  d16[ cis-. b-. a-.] gis8 r b r
	| a r a r fis r r4

%%% 100
	|  cis8[( e d  e)] cis r r4
    }

    | fis4( d  e8) r r4
    | e2 ~ e8 r r4
    | e1 ~
    | e4.(  dis16[ e] fis4  dis)
    | b8 r r4\fermata b8 r r4\fermata
    \bar "||"

    % Coda

    | cis'4-.\p cis-. a-. a-.
    |  b8.[( cis16 d8.  b16)] e,4-. e-.
    | cis-. cis-. e-. e-.
    | a4.(\trill  gis16[  a)] e4 r

%%% 110
    | e-.\f e-. cis-. cis-.
    |  d8.[( e16 fis8.  d16)] b4-. b-.
    | cis-. cis-. d-. d-.
    | b4.(\trill  a16[  b)] cis4 r
    | fis4-.\p fis-. e-. e-.
    |  d8.[(\f e16 fis8.  d16)] cis4-.\p cis-.
    | fis-. fis-. e-. e-.
    |  d8.[(\f e16 fis8.  d16)] cis2\p
    | g'( fis
    | f e

%%% 120
    | f  bes,)
    | b!(  a4) r
    | fis'4-.\p fis-. e-. e-.
    |  d8.[(\f e16 fis8.  d16)] cis4-.\p cis-.
    | fis-. fis-. e-. e-.
    |  d8.[(\f e16 fis8.  d16)] cis2\p
    | cis'2(  b4) r
    | b2(  a4) r
    | gis-. r fis-. e-.
    | fis-. d-.  cis8[( e cis  e)]

%%% 130
    |  b[( e b e]  cis[ e cis e]
    |  d[ e d e]  cis[ e cis  e)]
    |  b[( e b e]  cis[ e cis e]
    |  d[ e d e]  cis[  e) e(  a)]
    | e4(  gis8[ b] e,4  a8[  cis)]
    | e,4(  gis8[ b] e,4  a8[  cis)]
    | e,4(  gis8[ b] e,4  a8[  cis)]
    | e,4(  gis8[ b]  a4) r
    | e2(  a4) r
    |  b8.[(\f cis16 b8.  e16)] cis4 r

%%% 140
    | gis'4.(\p  fis16[  gis)] a4 r
    |  b,8.[(\f cis16 d8.  e16)] a,4 r
}
