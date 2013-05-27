\version "2.16.0"
violaFirstMov = \relative g' {
    \clef alto

    \repeat volta 2 {
        r8
        | g4\f d c4.(  e8)
        | a,4(\p e' ~  e8[ gis]  a) r
        | a,4\f  e8[(  c')] b4(  a8[  g)]
        | a2\p c4(  b8) r
        | a'4 \grace d16 c8[ b16 a] fis4(  g8) r
	\set doubleSlurs = ##t
        | r2 <d a'>4( ~ <d b'>8) r8
	\set doubleSlurs = ##f
        | r2 a2\p
        | b4(- \markup{\italic "cresc."} c  b) r
        | r2 bes2\p
% 10
        | b!4^ \markup{\italic "cresc."} fis(  g) r
        | b4\f d c4.(  b8)
        | a4(  b) r d ~
        |  d8[(\p a' b  gis)] e4 a, ~
        | a d2 b4\f ~
        |  b8[ b'( a  g)] fis4(  e8[  d)]
        | e4 r fis r
        | r2 r8  b,[( c! cis]
        |  d[ dis]  e4)  d8[( a' g  fis)]
        | e4 r r2
% 20
        | r8   b[(- \markup{\italic "cresc."}  a  g)] a4
          r8 e8\f
        | e'2 r4 r8 e,8\f
        | e'2 ~ e8 cis4(\fp  d8)
        | e cis4(\fp  d8) e2 ~
        | e4 ~  e16[\p d-. cis-. b-.] a4 r
        | a4\p a a2
        | r8  fis[-. fis'(  a,)] r  fis[-. fis'(  a,)]
        | b4 b b2
        | r8  e,8[-. b'(  g)] r  e8[-. e'(  cis)]
        | r8  a4(-. a-. a-.  a8)-. ~ 
% 30
        |  a[(  d)]  e16[( fis g  e)] d4(  cis8) r
        | d4-.\f d-.  d16[-. cis-. d-. cis-.]  d8[-. d(]
        |  fis4.)( d8 fis4.  d8)
        | cis4 cis  cis16[-. bis-. cis-. bis-.]  cis8[-. cis(]
        |  e4.)( cis8 e4.  cis8)
        | d4(\p a' g  b)
        | << {a2 ~ a4 r} \\ { a4 g fis} >>
        | fis,2(\p  g4) d'\f ~
        | d(\p   e8)[ g,-.] fis r r4
        |  e'8[\p e] e r  fis[ fis] fis r
% 40
        | r g r g a4 r
        | <<
           {
    	     e8[ e] e r  d[ d] d r
    	    | r b r a a2
    	    | a'2 b
    	    | s4 s8 g8 fis2 }
    	  \\ {
    	     a,8[ a] a s  a[ a] a s
    	    | s g s g fis2
    	    | d'1- \markup{\italic "cresc."}
    	    |  a'8[\p a a a,] a2}
        >>
        | d2- \markup{\italic "cresc."} ~  d16[( e fis g]  a[ b c!  d)]
        |  c[( b a g]  fis[ e d  c)]  b[( c d e]  fis[ g a  b)]
        |  e,[( fis g a]  b[ cis d e]  d8) r d\p r
        | d r cis r b r g r
        | fis r e r d r d4\f ~
% 50
        | d\p d4.\f  d8[\p e-. e-.]
        | d8 r d2\fp d4\f ~
        |  d8[\p d-. e-. e-.] d r  a[-. a-.]
        | d r  g[-.\pp g-.] fis r r4
        |  b,8.[\p b16 b8. b16]  a8.[ a16 g8. g16]
        | a8 r g r fis4 r8
    }

    \repeat volta 2 {
        r8
	| fis4-.\f a-. e'2 ~
	| e\p ~ e4 r
	| R1
	| r4  a,(-. a-.  a)-. 
% 60
	| a2 r2
	| g'4\f g g2 ~
	| g(\p  fis) ~
	| fis4 r r2
	| d4 r r2
	| cis4 r c r
	| r f, f(  d)
	| d2 r4 r8 c\f
	| g'4(  c) c2 ~
	|  c16[( b d c]  e[ d f  e)]  g8[( f e  d)]
% 70
	|  c[(  b)] d'2\fp  c16[( b a  g)]
	|  f[( g a g]  f[ e d  c)]  b[( c d c]  b[ a g  f)]
	| <e g>8\f <e g>4\p <e g> <e g> <e g>8 ~
	| <e g>8 <e g>4 <e g> <e g> <e g>8 ~
	| <e g>8\f <e g>4\p <e g> <e g> <e g>8 ~
	| <e g>8 <e g>4 <e g> <e g> <e g>8
	| fis8\f <d c'>4\p <d c'> <d c'> <d c'>8 ~
	| <d c'> <d c'>4 <d c'> <d c'> <d c'>8
	| b'\f <fis a>4\p <fis a> <fis a> <fis a>8 ~
	| <fis a> <fis a>4 <fis a> <fis a> <fis a>8
% 80
	| <e g> e'4\fp e8 r g4(\fp  e8)
	| r fis4\fp fis8 r fis4\fp fis8
	|  e8[\p e e e]  c[( a' g  fis)]
	|  e[ e e e]  e[ e dis dis]
	|  e[ e e e]  c[( a' g  fis)]
	|  e[ e e e]  e[ e a, a]
	| g r  a[-.\p a-.] g-. r  fis'16[( a g  fis)]
	| e8 r  dis8[-. dis-.] e-. r r4
	|  c8.[ c16 cis8. cis16]  b8.[ b16 a8. a16]
	| b8 r a r g4 r
% 90
	| d2.\sf ~  d8[(\p e16  f)]
	|  f8[(  e)] r4 a4.(\fp  b16[  c)]
	|  c8[(  b)] r4 e4.(\fp  fis16[  g)]
	|  fis8[\p fis fis fis]  g[ g dis dis]
	|  e[ e b g']  fis[ fis e e]
	|  d![ d c! c]  b[ b a a]
	|  g[ g b b]  a[ a g g]
	| fis r  g[-.\p g-.] fis-. r  e'16[( g fis  e)]
	| d8 r  g[-. g-.] fis-. r r4
	|  b,8.[\pp b16 b8. b16]  a8.[ a16 g8. g16]
% 100
	| a8 r g r fis4 r
	| r2 a8-. r  g8.[(\trill fis32  g)]
	| fis4 r c'8 r  b8.[(\trill a32  b)]
	| a4 r r d\f
	% In the Breitkopf & Haertel edition the last "d"
	% in the previous bar was connected through a slur
	% with the first "a16" in the next bar.  This is
	% obviously a mistake, so I replaced it with a tie
	% between a2 and a16.
	| a'2 ~  a16[( gis a gis]  a[ gis a  gis)]
	| a2 ~  a16[( gis a gis]  a[ gis a  gis)]
	| a4(- \markup{\italic "calando"} g! fis  e)
	| d( c b  a)
	| g\f d' a'4.(  g8)
	| fis4\p e2(  a,8) r
% 110
	| a4(\f  e8[  c')] b4(  a8[  g)]
	| a4\p c2 ~ c8 r
	| a'!4 \grace d16 c8[ b16 a] fis4(  g8) r
	| r2 <d a'>4( ~ <d g>8) r8
	| r2 a2
	| b4(- \markup{\italic "cresc."} c  b) r
	| gis'2(\pp  a8) r r4
	| r2 bes,2(
	|  b4)^ \markup{\italic "cresc."} fis g r
	| b4(\f  d) c4.(  b8)
% 120
	| a4(  b) r d ~
	|  d8[(\p a' b  gis)] e4 a, ~
	| a d2  g,8[ b'\f] ~
	|  b[( a gis  a)] d,4.(  g,!8)
	| a4\p r b r
	| r2 r8  e[( f fis]
	|  g[ gis]  a4)  g8[( d' c b]
	|  a4) r r2
	| r8  e8[(- \markup{\italic "cresc."} d  b)] d4 r8 a\f
	| a'2 r4 r8 a,8\f
% 130
	| a'2 ~ a8 fis4(\fp  g8)
	| a fis4(\fp  g8) a2 ~
	| a4 ~  a16[-. g-. fis-. e-.] d4 r
	| d4\p d d2
	| r8  b[-. b'(  d,)] r  b[-. b'(  d,)]
	| d4 d d2
	| r8  a[ e'(  c)] r  a[ a'(  fis)]
	| r8  d4(-. d-. d-.  d8)-. 
	|  d8[(  g)]  a16[( b c  a)] g4(  fis8) r
	| g4\f g  g16[-. fis-. g-. fis-.]  g8[-. g(]
% 140
	|  b4.)( g8 b4.  g8)
	% The seventh note is not marked with "staccato"!
	| fis4 fis  fis16[-. eis-. fis-. eis-.]  fis8[ fis(]
	|  a4.)( fis8 a4.  fis8)
	| g4(\p d' c  e)
	| d( c  b) r
	| b,2\p c4 g'\f ~
	| g(\p   a8)[ c,] b r r4
	|  d8[\p d] d r  d[ d] d r
	| r c r c d4 r
	| <d, a'>8[ <d a'>] <d a'> r <d g>[ <d g> <d g>] r
% 150
	| r <g g'> r <g g'> r <g g'>[ <g g'> <g g'>]
	| r <g g'> r <g g'> r <g g'>[ <g g'> <g g'>]
	| r <g g'> r <g g'> r <g g'>[ <g g'> <g g'>]
	| r <c d>[ <c d> <a d>]  g16[( a b c]  d[ e fis  g)]
	|  f[( e d c]  b[ a g  f)]  e[( f g a]  b[ c d  e)]
	|  d8[\p d d d] << d2 \\b2 >>
	| r2  g16[( a b c]  d[ e fis  g)]
	|  f[( e d c]  b[ a g  f)]  e[( f g a]  b[ c d  e)]
	| g8 r r4  e16[(\f d c b]  a[ g f  d)]
	|  a'[( b c d]  e[ fis! g d]  g8) r r4
% 160
	|  e16[( fis g a]  b[ cis d e]  d8) r d\p r
	| d r c r b r a r
	| g r a r d, r e r
	| d r c r b r g4\f ~
	| g4\p g4.\f  g8[\p a-. a-.]
	| g8 r g'2\fp g4\f ~
	|  g8[\p g-. a-. a-.] g r  d,[-. d-.]
	| g-. r  c[-. c-.] b-. r  d,[-. d-.]
	| g-. r  a'16[( c b  a)] g8 r r4
	|  e8.[\pp e16 e8. e16]  d8.[ d16 c8. c16]
% 170
	| d8 r <c d> r <b d>4 r8
    }
}





