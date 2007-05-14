#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

violinIFourthMov =  \relative e'' {
    \key a \major
    \clef violin

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	e4-.\p e-. cis-. cis-.
	|  d8.[( e16 fis8.  d16)] b4-. b-.
	| a-. a-. b-. b-.
	| a4.(\trill  gis16[  a)] gis2
	| e'4-. e-. cis-. cis-.
	|  d8.[( e16 fis8.  d16)] b4-. b-.
	| a'-. a-. b-. b-.
	| \raiseScript gis4.(\trill  fis16[  gis)] a2
    }

    \repeat volta 2 {
	| gis2  b8[( a gis  fis)]

%%% 10
	| e4(  d) cis2
	| gis'  b8[( a gis  fis)]
	|  fis[( e d  cis)]  b[( cis d  dis)]
	| e4-. e-. cis-. cis-.
	|  d!8.[( e16 fis8.  d16)] b4-. b-.
	| a'-. a-. b-. b-.
	| \raiseScript gis4.(\trill  fis16[  gis)] a2
    }

    % Var. I
    
    \repeat volta 2 {
	| e4-.\p e-. cis-. cis-.
	|  d8.[( e16 fis8.  d16)] b4-. b-.
	| a-. a-. b-. b-.

%%% 20
	| \raiseScript cis4.(\trill  b16[  cis)] b4 r
	| R1*2
	| a4-. a-. b-. b-.
	| gis4.(\trill  fis16[  gis)] a4 r
    }

    \repeat volta 2 {
        |  d,8[( e d e]  cis[ e cis  e)]
	|  b[( e b e]  cis[ e cis  e)]
	|  d[( e d e]  cis[ e a  b)]
	|  bis[( cis d  cis)] gis4r
	| e'-. e-. cis-. cis-.

%%% 30
	|  d8.[( e16 fis8.  d16)] b4-. b-.
	| a-. a-. b-. b-.
	| gis4.(  fis16[  gis)] a4 r
    }

    % Var. II

    \repeat volta 2 {
        e'4..(  cis16) a'4 r8. a16
	| gis4.(  a16[  b)] d,4 r8. b16
	|  cis8.[(  a16)] e'4-.\f  d8.[(\p  b16)] e4\f
	| d\p  cis8.[(\trill b32  cis)] b4 r
        | e4..(  cis16) a'4 r8. a16
	| gis4.(  a16[  b)] d,4 r8. b16
	|  cis8.[(  e16)] a4-.\f  b,8.[(\p  d16)] fis4\f

%%% 40
	| gis,4.(\p\trill  fis16[  gis)] a4 r
    }

    \repeat volta 2 {
        | r4 d2(\fp  cis8) r
	| r4 d'2(  cis8) r
	| r4 d,,2(\fp  cis8) r
	| \times 2/3 {  b8[ e fis]  g[ gis a]  ais[ b c]  cis[ d dis] }
        | e4..(  cis16) a'4 r8. a16
	| gis4.(  a16[  b)] d,4 r8. b16
	|  cis8.[(  e16)] a4-.\f  b,8.[(\p  d16)] fis4\f
	| \lowerDynamics gis,4.(\p\trill  fis16[  gis)] a4 r
    }

    % Var. III

    \key a \minor

    \repeat volta 2 {
        | c,2.(  c'4)

%%% 50
	| d2.(  d,4)
	|  c8[-. c-.] r c(   d)[ d-.] r c(
	|   b)[ b-.] b4 r2
	| c'2.(  c'4)
	| d2.(  d,4)
	|  c8[-. c-.] r c(   b)[ b-.] r e(
	|   a,)[ a-.] a4 r2
    }

    \repeat volta 2 {
        |  e'8[( gis b dis]  e[ b c  a)]
	|  gis[-. b( ais a]  gis[ g fis  f)]
	|  e[( gis b dis]  e[ b c  a)]

%%% 60
	|  gis[( g fis f]  e[ dis d  cis)]
	| c!2.(  c'4)
	| d2.(  d,4)
	|  c8[-. c-.] r c(   b)[ b-.] r e(
	|   a,)[ a-.] a4 r2
    }

    \key a \major

    \repeat volta 2 {
	| e'4-. e-. cis-. cis-.
	|  d8.[( e16 fis8.  d16)] b4-. b-.
	| a-. a-. e'-. e-.
	| \raiseScript cis4.(\trill  b16[  cis)] b4 r
	|  a,8[ b16 cis]  d[ e fis gis]  a[ b cis d]  e[ fis gis a]

%%% 70
	|  a[(  gis) d' cis]  b[ a gis fis]  fis[(  e) b' a]  gis[ fis e d]
	|  cis[ d e fis]  gis[( a gis  a)]  b,[ cis d e]  eis[( fis eis  fis)]
	|  dis[(  e!) cis-. a-.]  e'[(  d) b-. gis-.]  gis[(  a) e-. cis-.] a8 r
    }

    \repeat volta 2 {
        |  gis16[(  b) e-. gis-.]  b[-. e-. gis-. b-.]  d[(  b) gis-. b-.] 
           a[(  cis) cis,-. e-.]
	|  d[( b gis  a)]  b[(  gis) e-. d-.]  cis[( e a  e)]  cis[ e cis a]
	|  gis[(  b) e gis]  b[ e gis b]  d[(  b) gis b]  a[(  cis) e cis]
	|  a[(  cis) e, a]  cis,[ e a, cis]  e,[ e fis gis]  a[ b cis d]
	| e4-. e-. cis-. cis-.
	|  d8.[( e16 fis8.  d16)] b4-. b-.
	| a-. a-. b-. b-.

%%% 80
	| gis4.(  fis16[  gis)] a4 r
    }

    | <a g'>\f r <a fis'> r
    | <b a'> r <b gis'!> r
    |  d'8[(\fp b gis e]  d[ b gis  e)]
    | d1\fermata

    \repeat volta 2 {
        | e'4..(\p  fis32[  gis)] a4 r8. a16
	| \raiseScript  gis8.[(\trill a32  b)] d,4.  fis16[( e]  d[ cis d  b)]
	| a4.(  ais8)  cis16[( b d cis]  e[ d fis  e)]
	|  d8[(  cis)] b4 r2
	| r8  e,[ e e] r  e[ e e]

%%% 90
	| r  e[ e e] r  gis[ gis gis]
	| a r a r fis r r4
	| e4(  gis) a8 r r4
    }

    \repeat volta 2 {
        | r8  d,[-. d-. d-.]  d[(  cis) cis-. cis-.]
	|  b[-. gis'( a  b)]  cis[-. e-. cis-. a-.]
	| r  d,[-. d-. d-.]  d[(  cis) cis-. cis-.]
	| r  cis[( e  cis)]  b16[ e( fis gis]  a[ b cis  d)]
	| e4..(  cis16)  a8[ e''( cis  a)]
	| a4  gis32[( b a cis b d cis  e)] d4 r8. d,16
	| cis8(  e4) a8 ~  a16[ ais,( b cis]  d[ e eis  fis)]

%%% 100
	| a,!4( \grace {
\override Stem   #'stroke-style = #"grace"
   \cue cis32 
  \revert Stem #'stroke-style }
  b8.[  a16)] a8 r r4
    }

    | a4..( b16  gis8) r r4
    | gis4( b  a8) r r4
    | cis2(  b)
    | a1 ~
    | a8 r r4\fermata gis8 r r4\fermata

    \bar "||"
    | e'4-.\p e-. cis-. cis-.
    |  d8.[( e16 fis8.  d16)] b4-. b-.
    | a-. a-. b-. b-.
    | \raiseScript cis4.(\trill  b16[  cis)] b4 r

%%% 110
    | cis4-.\f cis-. a-. a(
    |  b)  b8.[(  a16)] gis4.(\trill  fis16[  gis)]
    | a4-. a'-. b-. b-.
    | gis4.(\trill  fis16[  gis)] a4 r
    | a4-.\p a-. gis-. gis-.
    |  fis8.[(\f gis16 a8.  fis16)] e4-.\p e-.
    | a-. a-. gis-. gis-.
    |  fis8.[(\f gis16 a8.  fis16)] e2\p
    | cis b ~
    | b a ~

%%% 120
    | a f
    | e ~ e4 r
    | a'-. a-. gis-. gis-.
    |  fis8.[(\f gis16 a8.  fis16)] e4-.\p e-.
    | a-. a-. gis-. gis-.
    |  fis8.[(\f gis16 a8.  fis16)] e2\p ~
    | e(  dis4) r
    | d!2(  cis4) r
    | b r a-. a-.
    | a-. gis-. a( e

%%% 130
    | b' e, a e
    | gis e a  e)
    | b'( e, a e
    | gis  e) a4.(  b16[  cis)]
    | d4 d cis cis
    |  b8.[( cis16 d8.  dis16)] e4 e(
    |  d!) d(  cis) cis(
    |  b8.[ cis16 d8.  e16)] a,4 r
    | gis2(  a4) r
    | <e' b'>\f r <e cis'> r

%%% 140
    |  b'8.[(\p cis16 d8.  e16)] cis4 r
    | <e,, b' gis'>\f r <e cis' a'> r
}
