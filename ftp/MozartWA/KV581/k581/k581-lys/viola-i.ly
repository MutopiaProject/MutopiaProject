#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

violaFirstMov =  \relative cis {
    \key a \major
    \clef alto

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	\lowerDynamics cis2(\p e
	| gis  a)
	| fis4( e d  fis)
	| d'2(  cis)
	| d4 r e r
	| r8  fis,[ fis fis] r  gis[ gis gis]
	| a4r r2
	| e1\sfp
	| cis2(\p e

%%% 10
	| gis  a)
	| d4( e fis  d)
	| b2(  a) ~
	| a1
	| r8  fis[ fis fis] r  gis[ gis gis] a4r r2
	| e1\sfp
	| a4r r2
	| e'1 ~
	| e4 r r2

%%% 19
	| R1*7
	| e'2(\p dis ~
	| dis4 cis2  b4) ~
	| b( a2  gis4) ~

%%% 30
	| gis(  fis) r8  e[ e e]
	| r  dis[ dis dis] r  cis[ cis cis]
	| r  b[ b b] r  a[ a a]
	| r  gis[( e gis]  e[ gis b  e)]
	| cis4(-. cis-. cis-.  cis)-.
	| b r r2
	| e,2.(\fp  fis8[  g)]
	| a4 r r2
	| e2.(\fp  dis8[  e)]
	| fis4 r fis r

%%% 40
	| fis\f  fis'8[-. fis-.] fis4  a8[-. a-.]
	| a4-.  dis8[-. dis-.] dis4-. r
	| gis,,1\p ~
	| gis
	| a ~
	| a
	| gis
	| cis
	| dis4( e b  a)
	| gis8 gis4\pp gis gis gis8(

%%% 50
	|  g) g4 g g g8(
	|  a) a4 a a a8 ~
	| a a4 a a a8(
	|  g) g4 g g g8 ~
	| << { \voiceTwo g g4 g g g8( | f) f4 f f f8( | \oneVoice d) } 
	     { \voiceOne a'8 a4 a a a8 ~ | a a4 a a a8( 
	       | \oneVoice d,) } >> g4 g g g8 ~
        | \lowerText  g[\cresc g g g] g4 r
	| r8  gis![ gis gis] gis4 r
	| r8  a[ a a] a4 r

%%% 60
	| r8  ais[\f ais ais] ais4 r
	| b4\f r b r
	| b r r2
	| R1
	|  b8[ b b b]  b[ b b b]
	| b4 r gis\p gis
	| a4.( b8  cis[ b a  gis)]
	|  gis[( fis]  e4) gis r
	| a r b r
	| b2 gis4 gis

%%% 70
	| a4.( b8  cis[ b a  gis)]
	|  gis[( fis]  e4) r e' \<
	| r  a\! r a
	| r gis r b ~
	| b(  ais) b2
	| R1
	| fis2(\p  e)
	| cis4( b a  cis)
	| b2 dis4.(\trill\f  cis16[  dis)]
	| e4 e e, r
    }

    \repeat volta 2 {
%%% 80
        | R1*2
	| f'1\p
	| e2(  g,)
	| d'(  a) ~
	| a4( g f  a)
	| g2(  c,)
	| r8  a'[ a a] r  c[ c c]
	| r  c[ c c] r  b[ b b]
	| c4 r r2

%%% 90
	| R1*3
	| r8  c,[(\f e  g)]  c[( e g  c)]
	|  cis16[( e cis  a)]  g[( a g  e)]  cis[( e cis  a)]  g[( a g  e)]
	| d4 d''2 d4(
	|  b) b,2 b4 ~
	| b g'2 << { s4 | b } \\ { g4( | gis!) } >> gis,2 gis4
	|  cis'16[( fis cis  a)]  a[( cis a  fis)] 
	   fis[( a fis  cis)]  cis[( fis cis  a)]

%%% 100
	| fis1\fp
	| <fis ais>\fp ~
	| <fis ais>
	|  d''16[( fis d  b)]  b[( d b  fis)]  fis[( b fis  d)]  d[( fis d  b)]
	| d,1\sfp
	| <b' e>\fp
	| <b e>
	|  cis'16[( e cis  a)]  a[( cis a  e)]  e[( a e  cis)]  cis[( e cis  a)]
	| cis,1\sfp
	| <fis a>\fp ~
	| <fis a>
	|  gis8[\parentF e( gis  b)]  e[( gis b  e)]
	|  c16[( e c  a)]  a[( c a  e)]  e[( a e  c)]  c[( e c  a)]
	| b1(\parentFP
	|  c)(\parentFP
	% The B & H edition has a (sf on) the next b
	|  b8)  e8[-.\p e-. e-.]  e[-. e-. e-. e-.]
	| r  e[ e e]  e[ e e e]
	| r  e[ e e]  e[ e e e]
	| e2( e,
	| b'  fis)

%%% 120
	| fis'2. fis,4
	| gis2(  e)
	| fis4r a r
	| r8  fis'[ fis fis] r  gis[ gis gis]
	| a4 r r2
	| << { e1 ~ | e4 } \\
	     { d1(\f | cis4) } >> r r2
	| R1*3

%%% 130
        | r2 r8  e,8[-.\p fis-. gis-.]
	|  a16[( b cis d]  e[ fis g fis]  e[ d cis b]  a[ g fis  e)]
	| d4 r r2
	| d''2(\p cis ~
	| cis4 b2 a4 ~
	| a g2 fis4 ~
	| fis  e) r8  d[ d d]
	| r  cis[ cis cis] r  b[ b b]
	| r  a[ a a] r  gis![ gis gis]
	| a2.(\fp  fis4)

%%% 140
	| b4 r r2
	| a2.(\fp  b8[  c)]
	| d4 r r2
	| a'2.(  gis8[  a)]
	| b4 r a,2(\fp
	|  b4) r d,2(\fp
	|  e4)  b''8[-.\f b-.] b4-.  d8[-. d-.]
	| d4-.  gis,8[-. gis-.] gis4 r
	| a,1\p ~
	| a

%%% 150
	| fis(
	|  e)
	| a
	| <b d>
	| gis'4( a e  d)
	| cis8 cis4\pp cis cis cis8(
	|  c) c4 c c c8(
	|  b) b4 b b b8 ~
	| b b4 b b b8(
	|  a) a4 a e e8(

%%% 160
	|  g) g4 g e e8(
	|  f) f4 f f f8(
	|  g) g4 g g g8(
	|  f) f4 f f f8(
	|  e) e4 e e e8
	| a2(  f)
	| e1
	| eis'2(-> fis!4  d)
	| e!1 ~
	| e4 r a, a

%%% 170
	| a1
	| gis4(  a) cis, r
	| d r e r
	| e2 a'4 a
	| a1
	| gis4(  a) r a,
	| d r d r
	| r cis gis2(
	| a  b)
	| cis( d4  dis)

%%% 180
	| e  b8[( cis] d!4  a8[  b)]
	| cis4(  gis8[ a] b4  fis8[  gis)]
	| a4 r r2
	| r2 r4 r8 fis'(
	| b4.  gis8)  e[( cis d  e)]
	| fis4 d,2\fp d4 ~
	| d8 r fis'-. r a-. r d-. r
	| r4 dis2(\fp  c8) r
	| a-. r fis-. r dis-. r fis-. r
	| a,4\parentF r r2

%%% 190
	| R1*2
	| << d1\f\startTrillSpan
	     { s2. s8\stopTrillSpan \tiny \stemUp cis16[ d] \stemNeutral \normalsize } >>
	| cis4 r cis2(\p
	| b  a)
	| fis4( e d  fis)
	| e2 gis4.(-\trill-\f  fis16[  gis)]
	| a4 a' a, r
    }
}
