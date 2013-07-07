\version "2.16.0"
violinISecondMov = \relative g' {
    \repeat volta 2 {
        g'4(\p  d) r
	| d(  b) r
	| b(\p c\f cis\p
	| d\f dis\p  e)\f
	| a,(\p bes\f b\p
	| c!\f cis\p  d!)\f
	| g,2.\f ~
	| g4( c b ~
	|  b8[  a)]  e'[( c b  a)]
% 10
	|  g[( fis]  d'[ b c  a)]
	|  fis'[(\p  g)] d4 r
	|  cis8[(  d)] b4 r
	| R2.
	| g'2\p ~  g8[( a16  g)]
	| fis4 r r
	| f2 ~  f8[( g16  f)]
	| e4( fis!- \markup{\italic "cresc"} g
	| a b  c) ~
	|  c8[( b a g fis  e)]
% 20
	| d2(  cis4)
	| a'2(\p  d,8.[  cis16)]
	| cis4 r r
	| a'2(  e8.[  d16)]
	| d4 r r
	| a'2(  fis8.[  e16)]
	| e4(- \markup{\italic "cresc."} g  b)
	|  b8[(\f a g fis e  fis)]
	| d4 r  d8.[\p e16]
	| fis4 fis fis
% 30
	|  fis8[( b ais a gis g]
	|  fis4) fis fis
	|  fis8[( b ais a gis  g)]
	|  fis[(\f  e)] e4 e
	|  e8[( b' a gis g  fis)]
	|  fis[(  e)] d4 cis
	| d r r
	|  e8[(\p fis g a b  a)]
	| a4 r r
	|  a,8[( b cis d e  d)]
% 40
	| d4 r r
    }

    \repeat volta 2 {
        r4 r d\p
	| r r d
	| R2.*3
	| c!4( fis  a)
	| dis2.- \markup{\italic "cresc."}
	| e4(\f a,  g)
	| fis(\p  a) dis,
% 50
	| e r r
	| e(\f g  cis)
	| d!( g,  fis)
	| e(  g) cis,
	|  d8[( cis\p d cis d  cis)]
	| d2. ~
	|  d8[ cis,( d cis d  cis)]
	| d2. ~
	|  d8[ cis'(\pp d cis d  cis)]
	| d2. ~
% 60
	|  d8[(- \markup{\italic "cresc."} dis e dis e  dis)]
	| e2. ~
	|  e8[(\f fis g fis g  fis)]
	| g4(\p  d) r
	| d(  b) r
	| R2.
	| g'2\p ~  g8[( a16  g)]
	| fis4 r r
	| a,,4(^\p bes^\f  b)^\p
	| c r r
% 70
	| R2.
	| c''2\f ~  c8[( d16  c)]
	| b4( fis  g)
	| e(  d) fis,
	| d'2(\p  g,8.[  fis16)]
	| fis4 r r
	| d'2(  a8.[  g16)]
	| g4 r r
	| d''2(\f  b8.[  a16)]
	| a4( c  e)
% 80
	|  e8[( d c b a  b)]
	| g4 r r
	| R2.*2
	|  a8[(\p fis a fis a  fis)]
	| g4 r r
	|  b,8[(\f  a)] a4 a
	|  a8[( e' d cis c  b)]
	|  b[(  a)] g4 fis
	|  g8[ g'(\p fis f e  es)]
% 90
	| d2. ~
	| d4 r r
	| r8  d[( es e f  fis)]
	| g4 r r
    }

    \key g \minor

    \repeat volta 2 {
        g,,4^\f r  bes8.[(\trill a32 bes]
	|  d4) r  g8.[(\trill fis32 g]
	|  bes4) r g
	| cis(  d) r
	| c,(\p  es') es-.
	| g,( fis  g)
% 100
	| a d(  c)
	| \grace c16 bes4-. a-. r
        | g,4^\f r  bes8.[(\trill a32 bes]
	|  d4) r  g8.[(\trill fis32 g]
	|  bes4) r g
	| cis(  d) r8. d,16
	| d'4(  es) r
	| r  es-.(\p  es)-. 
	| r  es8.[\trill d16] es4
	| r  es-.(\p  es)-. 
% 110
	| r   es8.[- \markup{\italic "cresc."}\trill 
          d16] es4
	| r es(  g)
	| f(\f es  d)
	| \appoggiatura d16 c4 bes a
	| bes( d  f) 
	| gis2.(
	|  a4) r r
	| cis,2.(\p
	|  d4) r r
    }

    \repeat volta 2 {
        f4( es! d
% 120
	| c!2  b4)
	| as'( g f ~
	| f  es) r
	| r d( a!
	| c  bes) r
	| r g'(  bes,)
	| bes\trill a r
        | g,4^\f r  bes8.[(\trill a32 bes]
	|  d4) r  g8.[(\trill fis32 g]
	|  bes4) r g
% 120
	| cis(  d) r8. d,16
	| b'4(  c!) r
	| r  c(-.\p  c)-. 
	| r4  c8.[\trill b16] c4
	| r c'(  c,)
	| r4  c8.[\trill b16] c4
	| r c'(  c,)
	| r  c'(- \markup{\italic "cresc."}   c,)
	| r c'(  c,)
	| r d'(  d,)
	| r es'(\f  es,)
	| d( c  bes)
	| \appoggiatura bes16 a4 g fis
	| g( bes  d)
	| g2.(
	|  d'4) r r
	| fis,,2.(\p
	|  g4) r r
    }
}




