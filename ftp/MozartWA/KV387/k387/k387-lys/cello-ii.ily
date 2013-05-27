\version "2.16.0"
celloSecondMov = \relative g {
    \clef bass

    \repeat volta 2 {
        r4 r g\p
	| r r g,
	| R2.*4
	| g'4(\p fis\f f\p
	| e\f es\p  d)\f
	| c\f b c
% 10
	| d r r
	| r r g\p
	| r r g,
	| R2.*4
	| r4 a'(- \markup{\italic "cresc."} g
	| fis e  d)
	| g\f r g,
% 20
	| a a' r
	| d,(\p fis d
	|  a') r r
	| a,( cis a
	|  d) r r
	| d( fis d
	|  g2.)- \markup{\italic "cresc."}
	| fis4-. g-. a-.
	| d, d' r
	| ais\p ais ais
% 30
	| b r r
	| R2.*2
	| gis4\f gis gis
	| a!2(  b4)
	| g! a a,
	| d r r
	| a r cis'(
	|  d) r r
	| a r a,(
% 40
	|  d) d' r
    }

    \repeat volta 2 {
        d,4(\p  fis) r
	| fis(  a) r
	| a( d  fis)
	| a2. ~
	| a ~
	| a ~
	| a- \markup{\italic "cresc."}
	| g4(\f fis  e)
	| a,\p r b
% 50
	| e,(\f g  b)
	| e2.
	| fis4( cis  d)
	| g, r a
	| d, r r
	| g4\p r8. fis16 g4
	| d r r
	| g,4 r8. fis16 g4
	| d r r
	| R2.
% 60
	| d''2.\pp ~
	| d- \markup{\italic "cresc."} ~
	| d\f
	| r4 r g,\p
	| r r g,
	| R2.*3
	| f'2\p ~  f8[( g16  f)]
	| e4 r r
% 70
	| es2\f ~  es8[( f16  es)]
	| d4( e! fis!
	| g dis  e)
	| c(  d!) d,
	| g(\p b g
	|  d') r r
	|  d,( fis d
	|  g)  r r
	| g\f b g
	| c2.
% 80
	| b4-. c-. d-.
	| g, g' r
	| dis\p dis dis
	| e r r
	| dis' dis dis
	| e r r
	| cis, cis cis
	| d!2(  e4)
	| c d d,
	| g r r
% 90
	| d''\p r fis,(
	|  g) r r
	| d r d,(
	|  g) g' r
    }

    \key g \minor

    \repeat volta 2 {
        g,4\f r bes(
	|  d) r g(
	|  bes) r g
	| cis(  d) r
	| R2.
	| d,2(\p  e4)
% 100
	| fis2.
	| g4-. d-. r
	| g,\f r bes(
	|  d) r g(
	|  bes) r g
	| cis(  d) r8. d,16
	| d'4(  es) r
	| es,2.(\p
	| f!
	|  g)
% 110
	| a(- \markup{\italic "cresc."}
	|  bes)
	| c2(\f  d4)
	| es, f f,
	| bes r r
	| R2.
	| a4( d  f)
	| a2.(\p
	|  d,4) r r
    }

    \repeat volta 2 {
        | R2.
% 120
        | R2.*2
	|  c4( as g
	|  fis)  r r
	| g'( es d
	|  cis) r cis'(
	|  d) d, r 
	| g,\f r bes(
	|  d) r g(
	|  bes) r g
% 130
	| cis(  d) r8. d,16
	| b'4(  c!) r
	| c,,2.(\p
	| d
	| es
	| e
	| f
	|  fis)- \markup{\italic "cresc."}
	| g(
	| as
% 140
	|  a!)\f
	| bes4( d  es)
	| c d d,
	| g r r
	| R2.
	| d4( g  bes)
	| d2.(\p
	|  g,4) r r
    }
}
