#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

celloThirdMov =  \relative a, {
    \key a \major
    \clef bass

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 8)

    \repeat volta 2 {
	a4\f
	| a( cis  e)
	| a r e(\p
	| a fis  d)
	| e2 d'4(\f
	| cis b  a)
	| gis(  a) d,
	| e e e
	| a, r
    }

    \repeat volta 2 {
	gis'(\f
	|  a) a(  b)

% 10
	| a(  gis) a(
	|  b) b(  cis)
	| b(  a) r
	| R2.*2
	| r4 r bis\p
	| cis2(  b!4)
	| a2(  gis4)
	| fis( dis  e)
	| a-. b-. b,-.

% 20
	|  e,8[( dis e dis e  dis)]
	| e4 r r
	|  e'8[( dis e dis e  dis)]
	| e4 r r
	| r r a,
	| a(\f cis  e)
	| a r e(\p
	| a fis  d)
	| e2 d'4(\f
	| cis b  a)

%%% 30
	| gis(  a) d,
	| e e e
	| a, r
    }

    % Trio. I

    \break
    \key a \minor

    \repeat volta 2 {
        r
	| a'4(\p  c) r
	| d(  f) r
	| e,(  gis) r
	| a(  c) r
	| d(  f) r
	| g,(  b) r
	| c b2\fp

%%% 40
	| c4 b2\fp
	| c4 r r
	| R2.
	| f,4 g2\fp
	| f4 g2\fp
	| f4 r r
	| R2.
	| g4 g g
	| c, c'
    }

    \repeat volta 2 {
        r
	| c,(\p  e) r

%%% 50
	| f(  a) r
	| d,(  fis) r
	| g(  b) r
	| e, e,2\fp
	| e'4 e,2\fp
	| e'4 r r
	| R2.
	| a,4(  c) r
	| d(  f) r
	| e(  gis) r

%%% 60
	| a(  a,) r
	| c(  a') r
	| d,(  f) r
	| e(  e,) r
	| a gis2\fp
	| a4 gis2\fp
	| a4 r r
	| R2.
	| d,4 es2\fp
	| d4 es2\fp

%%% 70
	| d4 r r
	| R2.
	| e!4 e e
	| a a'
    }

    % Trio II

    \break
    \key a \major

    \repeat volta 2 {
        r4
	| a\p r r
	| d, r r
	| e r r
	| fis r r
	| cis r r
	| d r r

%%% 80
	| R2.*4
	| e,4(-. e-.  e)-.
	| a r
    }

    \repeat volta 2 {
        r
	| e'\p^\markup { pizz. } e r
	| e e r
	| e e e 
	| e e, r

%%% 90
	| e' e r
	| e e r
	| e e e
	| e r r
	| e,2.^\markup { arco } ~
	| e ~
	| e ~
	| e4 r b'
	| e r b
	| e r b'

%%% 100
        | e, r b'
	| e, r r
	| R2.*2
	| r4 r  e,8[(\p gis]
	|  b[ gis]  e4)  b'8[( e]
	|  gis[ e]  b'4)  gis8[(  b)]
	|  e[( b e gis b  gis)]
	| e4r r
	| a, r r

%%% 110
	| d, r r
	| e r r
	| fis r r
	| cis r r
	| d r r
	| R2.*3
	| d'4(\rf  e) r
	| R2.

%%% 120
	| e4(\rf  fis) r
	| R2.
	| d,2.\p
	| e4 e e
	| a, a'
    }
}
