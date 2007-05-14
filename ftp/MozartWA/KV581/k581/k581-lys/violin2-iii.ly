#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

violinIIThirdMov =  \relative a' {
    \key a \major
    \clef violin

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	\lowerText a4-\markup { \dynamic f \italic { senza sordino } } 
	| a2(  gis4)
	| a r \lowerDynamics d,(\p
	|  cis) a(  fis')
	| e2 gis4(\f
	| a b  fis)
	| b( a4.  fis8)
	| e2(  gis4)
	| a r
    }

    \repeat volta 2 {
	r4
	| R2.*4

%%% 13
	| cis2.\p ~
	| cis4 b2(
	|  a4)( gis  a)
	| gis2.
	| cis2(  b4)
	| a( fis  gis8[  b)]
	| cis4( b  a)

%%% 20
	| gis r b,(\p
	|  cis) cis(  d)
	| cis(  b) gis'(
	|  a) a(  b)
	| a(  gis) a
	| a2(\f  gis4)
	| a r \lowerDynamics d,(\p
	|  cis) a(  fis')
	| e2 gis4(\f
	| a b  fis)

%%% 30
	| b( a4.  fis8)
	| e2(  gis4)
	| a r
    }

    % Trio I

    \break
    \key a \minor

    \repeat volta 2 {
        r4
	| r a(\p  e')
	| r b(  f)
	| r e(  b')
	| r a(  c)
	| r d(  f,)
	| r f'(  g,)

%%% 40
	| <c e> <d f>2\fp
	| <c e>4 <d f>2\fp
	| <c e>4 r r
	| R2.
	| d4 cis2\fp
	| d4 cis2\fp
	| d4 r r
	| R2.
	|  e,8[( g e g f  g)]
	| e4 r
    }

    \repeat volta 2 {
        r
	| r c'(\p  c,)

%%% 50
	| r f(  cis)
	| r d'(  d,)
	| r g(  dis)
	| <e e'> <fis dis'>2\fp
	| <e e'>4 <fis dis'>2\fp
	| <e e'>4 r r
	| r r  b'8[(  gis)]
	| a4(  a,) r
	| a'(  b,) r
	| gis'(  b,) r

%%% 60
	| e(  a) r
	| a,(  c) r
	| b(  d) r
	| d'(  b) r
	| <e, c'> <e d'>2\fp
	| <e c'>4 <e d'>2\fp
	| c'4( b a
	| g f  e)
	| d c2\fp
	| d4 c2\fp

%%% 70
	| d4 r r
	| R2.
	| e2(\p  gis4)
	| a r
    }

    % Trio II

    \break
    \key a \major

    \repeat volta 2 {
        r
	| r e\p e
	| r fis fis
	| r d d
	| r cis cis
	| r e e
	| d r g(

%%% 80
	| fis2 g4
	|  fis2) r4
	| R2.*2
	| a,2(  gis4)
	| a r
    }

    \repeat volta 2 {
        r
	| <<b gis'^\markup { pizz. }>> <b gis'> r
	| <a a'> <a a'> r
	| <gis' b> <gis b> <a cis>
	| <gis b> <gis b> r
	| <b, gis'> <b gis'> r
	| <a a'> <a a'> r
	| <gis' b> <gis b> <a c>
	| <gis b> r r
	| fis(^\markup { arco } dis  fis)
	| e2.
	| fis4( dis  fis)
	| gis4.( fis8  a4)
	| gis4.( fis8  a4)
	| gis4.( fis8  a4)

%%% 100
	| gis4.( fis8  a4)
	| gis4 r r
	| r r ais(\fp
	|  b2.) ~
	| b ~
	| b4 b b
	| b b b
	| b b b
	| b r r
	| r e,\p e

%%% 110
	| r fis fis
	| r d d
	| r cis cis
	| r e e(
	|  d) r g(
	|  fis) fis(  g)
	| fis2 r4
	| R2.
	| b4(\rf  cis) r
	| R2.

%%% 120
	| cis4(\rf  d) r
	| R2.
	| fis,2.\p
	|  e8[( cis e cis e  d)]
	| cis4 r
    }
}
