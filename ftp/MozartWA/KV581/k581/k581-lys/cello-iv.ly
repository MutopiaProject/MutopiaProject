#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

celloFourthMov =  \relative a {
    \key a \major
    \clef bass

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	R1*2
	| a4-.\p a-. gis-. gis-.
	| a2 e
	| R1*2
	| fis4-.\p fis-. d-. d-.
	| e2 a,
    }

    \repeat volta 2 {
	| e'4 r a r

%%% 10
	| e r a, r
	| e' r a r
	| a, cis e r
	| R1*2
	| fis4-. fis-. d-. d-.
	| e2 a,
    }

    % Var. I

    \repeat volta 2 {
        | R1*2
	| a'4-.\p a-. gis-. gis-.

%%% 20
	| a2 e4 r
	| cis'-. cis-. a-. a-.
	|  b8.[( cis16 d8.  b16)] e,4-. e-.
	| fis-. fis-. d-. d-.
	| e2 a,4 r
    }

    \repeat volta 2 {
        | e'4 r a r
	| e r a, r
	| e r a r
	| R1*3

%%% 31
	| a'4-. a-. d,-. d-.
	| e2 a,4 r
    }

    % Var. II

    \repeat volta 2 {
        | a r a' r
	| e r e, r
	| a2 e'
	| a4 a, e' r
	| a, r a' r
	| e' r e, r
	| a2(  d,)

%%% 40
	| e4 e, a a'
    }

    \repeat volta 2 {
        | e,\f r e'\p r
	| e\f r e'\p r
	| e,,\f r e'\p r
	| e, r r2
	| a4 r a' r
	| e r e, r
	| a2(  d,)
	| e4 e' a, a'
    }

    % Var. III

    \key a \minor

    \repeat volta 2 {
        | a,1(

%%% 50
	|  gis)
	|  a8[-. a-.] r a(   gis)[-. gis-.] r a(
	|   e)[ e-.] e4r2
	| a1(
	|  gis)
	|  a8[-. a-.] r a(   e)[ e-.] r e(
	|   a)[ a-.] a4 r2
    }

    \repeat volta 2 {
        | e''1 ~
	| e4 r r2
	| e,1 ~

%%% 60
	| e4 r r2
	| a,1(
	|  gis)
	|  a8[-. a-.] r a8(   e)[ e-.] r e(
	|   a)[ a-.] a4 r2
    }

    % Var. IV

    \key a \major

    \repeat volta 2 {
        | a'4 r a, r
	| e'r e, r
	| a a gis gis
	|  a8.[( b16 cis8.  d16)] e4 r
	| a4 r a, r

%%% 70
	| e' r e, r
	| a r d r
	|  e8[ e e, e] a4 r
    }

    \repeat volta 2 {
        | e8 r e''2.\fp ~
	| e8 r e, r a r a, r
	| e r e''2.\fp ~
	|  e8[ cis,-. a-. cis-.] e4r
	| cis'-. cis-. a-. a-.
	|  b8.[( cis16 d8.  b16)] e,4-. e-.
	| fis-. fis-. d-. d-.

%%% 80
	| e e, a r
    }

    cis\f r d r
    | dis r e r
    | gis,1\fp ~
    | gis\fermata

    % Var. V

    \repeat volta 2 {
        | a'2(\p  cis8) r r4
	| b8 r e, r r2
	| cis'2(  gis)
	| a8-. r e-. r r2
	| a,2(  cis)

%%% 90
	| b(  e,)
	| a8 r cis r d r r4
	| e2(  a,8) r r4
    }

    \repeat volta 2 {
        | e2.(  a8.[  cis16)]
	| e2(  a,4) r
	| e'2.(  a8.[  cis16)]
	| e2(  e,8) r r4
	| a2(  cis)
	| b4 ~  b16[ a-. gis-. fis-.] e8 r gis r
	| a r cis, r d r r4

%%% 100
	| e2(  a,8) r r4
    }

    | R1*2
    | a'2(\p  gis)
    | fis1
    | e8 r r4\fermata e,8 r r4\fermata
    
    % Coda

    R1*3
    | r2 r8  e[(\f fis gis]
    |   a)[ cis-. e-. cis-.]  fis[ fis,( gis a]
    |   b)[ cis-. d-. b-.]  e[-. b-. e-. d-.]
    |  cis[-. a-. b-. cis-.]  d[-. b-. cis-. d-.]
    |  e[-. d-. e-. e,-.] a4 r
    | R1
    | r2  a'8[(\p cis e  cis)]
    | a4 r r2
    | r2  a8[(\p cis e  cis)]
    | ais2(  b)
    | gis(  a)
    | f(  d)
    | e(  a,4) r
    | R1
    | r2  a'8[(\p cis e  cis)]
    | a4 r r2
    | r2  a8[(\p cis e  cis)]
    | ais2(  b4) r
    | gis2(  a!4) r
    | eis-. r fis-. cis-.
    | d-. e-. a,2

%%% 130
    | a1 ~
    | a ~
    | a ~
    | a ~
    | a ~
    | a ~
    | a ~
    | a2 ~ a4 r
    | R1
    | e'4\f r a r

%%% 140
    | R1
    | e,4\f r a r
}
