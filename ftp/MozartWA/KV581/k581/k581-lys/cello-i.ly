#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

celloFirstMov =  \relative a, {
    \key a \major
    \clef bass

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	a2(\p cis
	| e  fis)
	| d4( cis b  d)
	| e2(  fis)
	| d4 r cis r
	| r8  b[ b b] r  e[ e e]
	| a,4 r r2
	| R1
	| a2(\p cis

%%% 10
	| e  fis)
	| d4( cis b  d)
	| e2(  cis)
	| d4 r a r
	| r8  b[ b b] r  e,[ e e]
	| a4 r r2
	| R1*2
	| e'2 ~ e4.(  fis16[  gis)]
	| a4 r r2

%%% 20
	| R1*6
	| r8 \grace {
\override Stem   #'stroke-style = #"grace"
   \cue fis32 
  \revert Stem #'stroke-style }
  e16[(\p dis]  e8[ fis]  gis[ a ais  b)]
	|  cis[( b ais b]  ais[ b cis  dis)]
	|  e[( cis gis  ais)]  dis[( b fisis  gis)]
	|  cis[( a! eis  fis)]  b[( gis dis  e)]

%%% 30
	|  a[( fis cis  dis)] e!4 r
	| b r cis r
	| gis r a r
	| e1
	| fis4(-. fis-. fis-.  fis)-.
	| b r r2
	| c1(\fp
	|  b4) r r2
	| c1(\fp
	|  b4) r \< b  r\!

%%% 40
	| b\f r b' r
	| b, r b' r
	| e,,\p^\markup { pizz. } b' e r
	| e, b' e r
	| e, cis' fis r
	| fis, b fis' r
	| e, b' e r
	| a, fis' a r
	| b, r b r
	| e, b'\pp e r

%%% 50
	| e, b' e r
	| e, c' fis r
	| dis, b' fis' r
	| e, b' e r
	| a, e' a r
	| d,,! a' d r
	| g, d' g r
	| r8  c,[_\markup { \raise #-0.5 { \italic cresc. } }^\markup { arco }
              c c] c4 r
	| r8  c[ c c] c4 r
	| r8  c[ c c] c4 r

%%% 60
	| r8  cis![\f cis cis] cis4 r
	| b4\f r b r
	| b r r2
	| R1
	|  b8[ b b b]  b[ b b b]
	|  e,[ e'\p e e]  e[ e e e]
	|  e[ e e e]  e[ e e e]
	| e4 e, r2
	| R1
	|  e8[ e' e e]  e[ e e e]

%%% 70
	|  e[ e e e]  e[ e e e]
	| e4 e, gis'2( \<
	| a  b\!
	| cis  dis)
	| e4(  cis) b2
	| R1
	| b2(\p  gis)
	| a4( gis fis  a)
	| b2 b,\f
	| e4 e e, r
    }

    \repeat volta 2 {
        R1*3
	| \lowerDynamics c2(\p e
	| g  a)
	| f4( e d  f)
	| g2(  a)
	| f4 r e r
	| d2(  g)
	| c,4r r2

%%% 90
	| R1*5
	| r8  d8[(\f f  a)]  d[( f a  d)]
	|  dis16[( fis! dis  b)]  a[( b a  fis!)]  dis[( fis dis  b)]  a[( b a  fis!)]
	| e4 e''2 e4(
	|  eis) cis,,!2 cis4
	| fis1\fp

%%% 100
	|  a'16[(\fp cis a  fis)]  fis[( a fis  cis)] 
           cis[( fis cis  a)]  a[( cis a  fis)]
	| e!1\fp ~
	| e
	| d\fp
	|  b''16[(\fp d b  fis)]  fis[( b fis  d)]  d[( fis d  b)]  b[( d b  fis)]
	| d1\fp ~
	| d
	| cis\fp
	|  cis''16[(\fp e cis  a)]  a[( cis a  e)]  e[( a e  cis)]  cis[( e cis  a)]
	| fis1\fp ~

%%% 110
	| fis
	| e4-.\fp e'-. b-. gis-.
	| e-.\fp e'-. c-. a-.
	| e-.\fp e'-. b-. gis-.
	| e-.\fp e'-. c-. a-.
	| e-.\parentSF e'-.\f r e-.
	| e-. e'-. r e-.
	| e-. e-. r2

%%% 120
	| a,,2( cis
	| e  fis)
	| d4( cis b  d)
	| e2(  cis)
	| d4 r a r
	| r8  b[ b b] r  e[ e e]
	| a,4 r r2
	| r8  e[(\f gis  b)]  e[( gis b  e)]
	| a,4 r r2
	| R1*4

%%% 131
	| r2 r8  a,8[-.\f b-. cis-.]
	|  d[-. \grace {
\override Stem   #'stroke-style = #"grace"
   \cue e32 
  \revert Stem #'stroke-style }
 d16( cis]  d8[ e]  fis[ g gis  a)]
	|  b[( a gis a]  gis[ a b  cis)]
	|  d[( b fis g]  cis[ a eis  fis)]
	|  b[( g dis e!]  a[ fis cis  d)]
	|  g[( e b  cis)] d!4 r
	| cis r b r
	| a r gis! r
	| \lowerDynamics fis1(\fp

%%% 140
	|  e4) r r2
	| f'1(\fp
	|  e4) r r2
	| f'1(\fp
	|  e4) r f,2(\fp
	|  e4) r f,2(\fp
	|  e4) r e'\f r
	| e' r e,, r
	| a\p^\markup { pizz. } e' a r
	| a, e' cis' r

%%% 150
	| a, fis' d' r
	| b, e d' r
	| a, e' cis' r
	| d,, b' fis' r
	| e, r e r
	| a e'\pp a r
	| a, e' a r
	| gis, e' b' r
	| e,, e' gis r
	| a, e' a r

%%% 160
	| e, c' g' r
	| f, c' a' r
	| cis,,! a' e' r
	| d, a' f' r
	| gis,! e' b' r
	| a r d, r
	| e r e r
	| eis2(->^\markup { arco } fis!4  d)
	| e! e e e,
	|  a8[ a a a]  a[ a a a]

%%% 170
	|  a[ a a a]  a[ a a a]
	| a4 a r2
	| R1
	|  a8[ a a a]  a[ a a a]
	|  a[ a' a a]  a[ a a a]
	| e4 a, cis r
	| d r e r
	| fis r r2
	| R1*2

%%% 180
	| e1 ~
	| e
	|  a,8[( b cis d]  b[ cis d  e)]
	|  cis[( d e fis]  d[ e fis  d)]
	|  e[( d cis b]  a[ g fis  e)]
	| d2\fp d ~
	| d4 r r2
	| dis1 ~
	| dis
	| e4\parentF r r2

%%% 190
	| R1*2
	|  e8[\f e' e e]  e[ e e e]
	| a,4 r a'2(\p
	| e  fis)
	| \stemUp \slurDown d4( cis b  d) \stemNeutral \slurNeutral
	| e2 e,\f
	| a4 a' a, r
    }
}
