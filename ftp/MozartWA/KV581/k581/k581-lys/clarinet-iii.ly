#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

clarinetThirdMov =  \relative g'' {
    \key c \major
    \clef violin

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	g4
	| g2(  f4)
	| e(  c) d-.\p
	| e-. e(  f)
	| e(  d) g(\f c f,  a)
	| g4.(  a8[ f  d)]
	| c2  e8[(  d)]
	| c4 r
    }

    \repeat volta 2 {
	r4
%%% 9
	| R2.*7
	|  g'8[( fis g fis g gis]
	|  a[ gis a gis a b]
	|  c[ b c d b g!]
	|  a[ c b g fis  a)]

%%% 20
	| g2. ~
	| g ~
	| g ~
	| g ~ 
	|  g8[( \< fis g fis g  fis\!]
	| g2\f  f!4)
	| e(  c) d-.\p
	| e-. e(  f)
	| e(  d) g(\f
	| c f,  a)

%%% 30
	| g4.(  a8[ f  d)]
	| c2(  e8[  d)]
	| c4 r
    }

    % Trio I

    \break

    \repeat volta 2 {
        r4
	| R2.*15
	| r4 r
    }

    \repeat volta 2 {
        r4
	| R2.*24
	| r4 r
    }

    % Trio II

    \break

    \repeat volta 2 {
         c8[(\parentP e]
	|  g[ e]  c'4)  g8[( e]
	|  d[ f]  a4)  f8[( d]
	|  c[ b e d g  f)]
	| dis4(  e)  c8[( e]
	|  g[ e]  c'4)  g8[( e]
	|  d![ f]  a4) r

%%% 80
	| R2.
	| r4 r \times 2/3 {  d,,8[( a f] }
	|   a8)[ d-. f-. a-. d-. f-.]
	|  a[( g f e f  d)]
	| c2(  e8[  d)]
	| c4 r
    }

    \repeat volta 2 {
        r4
	| R2.*3

%%% 90
	| r4 r g'(
	| b2 g4
	|  c2) g4
	| f2(  es4)
	| d2  b'8[( g]
	|  fis[ a] c4  a8[  fis)]
	|  g[( b] d,4  b'8[  g)]
	|  fis[( a] c4  a8[  fis)]
	|  g[( b d, c' a  fis)]
	|  g[( b d, c' a  fis)]
	| g4 r r

%%% 100
	| R2.*8
        | r4 r  c,8[( e]
	|  g[ e]  c'4)  g8[( e]

%%% 110
	|  d[ f]  a4)  f8[( d]
	|  c[ b e d g  f)]
	| dis4(  e)  c8[( e]
	|  g[ e]  c'4)  g8[( e]
	|  d![ f]  a4) r
	| R2.
	| r4 r \times 2/3 {  d,,8[( a f] }
	|   a8)[ d-.f-. a-. d-. f-.]
	| a4 r  e,,8[ g]
	|  c[ e g c]  e[ g]

%%% 120
	| bes4 r  f,,8[ a]
	|  c[ f a c]  f[ a]
	|  c[( gis a e f  d)]
	| c2(  e8[  d)]
	| c4 r
    }
}
