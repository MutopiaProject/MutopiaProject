#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

violinIIFirstMov =  \relative cis'' {
  \key a \major
  \clef violin
  
  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  
  \repeat volta 2 {
    cis2(\p a
    | d,  cis)
    | d4( e fis  d)
    | b2(  a) ~
    | a4 r a r
    | r8  a[ a a] r  b[ b b]
    | cis4 r r2
    | <b gis'>1\sfp
    | cis'2(\p a
    
%%% 10
    | d,  cis)
    | fis4( ais b  fis)
    | e1( ~
    | e4 d2  cis4)
    | r8  cis[ cis cis] r  b[ b b]
    | a4 r r2
    | <b gis'>1\sfp
    | <cis a'>8  a[(\f cis  e)]  a[( cis e  a)]
    |  gis16[( a b a]  b[ a gis  fis)]  e[( fis gis fis]  e[ d cis  b)]
    | a4 r r2

%%% 20
    | a2(\p gis
    | fis  e)
    | d(  cis)
    | b4 r gis'(  a)
    | r  d,16[( cis b  a)] gis4(  a)
    | b( e a  dis,)
    | e r r2
    | gis'2(\p fis
    | e  dis)
    | cis( b

%%% 30
    |  a) r8  gis[ gis gis]
    | r  fis[ fis fis] r  e[ e e]
    | r  dis[ dis dis] r  cis[ cis cis]
    | r  b[( gis b]  gis[ b e  gis)]
    | e4(-. e-. e-.  e)-.
    | dis r r2
    | e2.(\fp  dis8[  e)]
    | fis4 r r2
    | e2.(\fp  fis8[  g)]
    | a4 r dis, r

%%% 40
    | dis\f  a'8[-. a-.] a4  dis8[-. dis-.]
    | dis4-.  fis8[-. fis-.] fis4-. r
    | <b,, e>1\p ~
    | <b e>
    | <cis fis>
    | << { b ~ b } \\ { fis'(  e) } >>
    | <fis' a>
    | << { a4( gis2  fis4) } \\ b,1 >>
    | e8 b4\pp b b b8 ~
    | b b4 b b b8(

%%% 50
    |  c) c4 c c c8(
    |  b) b4 b b b8 ~
    | b b4 b b b8(
    |  c) c4 c c c8 ~
    | c c4 c c c8(
    |  b) <b d>4 <b d> <b d> <b d>8(
    | \lowerText   c)[\cresc c c c] c4 r
    | r8  c[ c c] c4 r
    | r8  dis[ dis dis] dis4 r

%%% 60
    | r8  e[\f e e] e4 r
    | e\f  gis!8[-. b-.] e,4  gis8[-. b-.]
    | e,4 r r16  gis[( a b]  cis[ dis e  fis)]
    |  gis8[(  e) gis-. gis-.]  gis[(  e) b-. gis-.]
    | << a1\f\startTrillSpan
	 { s2. s8\stopTrillSpan \tiny \stemUp gis16[ a] \stemNeutral \normalsize } >>
    | gis4 r e\p e
    | e1
    | dis4(  e) r e
    | r a r  a8[(  b)]
    | a4(  gis) e e

%%% 70
    | e1
    | dis4(  e) r b' \<
    | r4  cis\! r dis
    | r e r fis(
    |  e) g,  gis8[(\trill fis16 gis]  a8[  fis)]
    | gis'2(\p e
    | b  gis)
    | a4( b cis  a)
    | gis2  a8.[(\trill\f gis16 a8.  b16)]
    | gis4 <gis b e> e r
  }

  \repeat volta 2 {
    | e4-.\p e-. e-. e-.
    | e e e e
    | d! d d d
    | c1
    | f2(  e)
    | f4( g a  f)
    | d2(  c)
    | r8  c[ c c] r  e[ e e]
    | r  a,[ a a] r  b[( d  g,)]
    | g4 r r2

%%% 90
    | R1
    | r8  g[(\f c  e)]  g[( c e  g)]
    |  f16[( a f  d)]  b[( d b  g)]  f[( g f  d)]  b[( d b  g)]
    | c4 e'2 e4~
    | e e,2(  cis!4)
    | d f'2 f4(
    |  fis!) fis,!2(  dis4)
    | e b'2 b4(
    |  cis!) <b, eis>2 <b eis>4
    | <cis fis>1\fp ~

%%% 100
    | <cis fis>
    | cis\fp
    |  cis'16[(\fp fis cis  ais)]  ais[( cis ais  fis)] 
    fis[( ais fis  cis)]  cis[( fis cis  ais)]
    | b1\fp ~
    | b
    | gis'\fp
    |  gis'16[( b gis  e)]  e[( gis e  b)]
    b[( e b  gis)]  gis[( b gis  e)]
    | e1\fp ~
    | e
    | dis\fp

%%% 110
    |  dis'16[( fis dis  a)]  a[( dis a  fis)]
    fis[( a fis  dis)]  dis[( fis dis  a)]
    | b4 r r2
    | r8  a[(\parentF c  e)]  a[( c e  a)]
    |  gis16[( b gis  e)]  e[( gis e  b)]
    b[( e b  gis)]  gis[( b gis  e)]
    | a1(\parentSFP
%%% In the B & H score the first gis has a (sf)
    |   gis8)[ gis-.\p gis-. gis-.]  gis[-. gis-. gis-. gis-.]
    | r <fis a>-[ <fis a> <fis a>-] <fis a>-[ <fis a> <fis a> <fis a>-]
    | r <gis b>-[ <gis b> <gis b>-] <gis b>-[ <gis b> <gis b> <gis b>-]
    | a2( e
    | d  cis)
    
%%% 120
    | b4( e d  fis)
    | b,2(  cis)
    | a1
    | r8  a'[ a a] r \stemUp  gis[( b  e,)] \stemNeutral
    | e4 r r2
    | <b gis'>1(\f
    | <a a'>4 r) r2
    | a'2(\p gis
    | fis  e)
    | d(  cis)
    
%%% 130
    | b4 r r2
    | R1*2
    | fis''2(\p e
    | d  cis)
    | b( a
    |  g) r8  fis[ fis fis]
    | r  e[ e e] r  d[ d d]
    | r  cis[ cis cis] r  b[ b b]
    | dis2.(\fp  a4)
    
%%% 140
    | gis! r r2
    | a'2.(\fp  gis!8[  a)]
    | b4 r r2
    | a2.(\fp  b8[  c)]
    | d4 r d,2\fp ~
    | d4 r a2(\fp
    |  gis4)  d''8[-.\f d-.] d4-.  gis8[-. gis-.]
    | gis4-.  b8[-. b-.] b4 r
    | <cis,, e>1\p ~
    | <cis e>
    
%%% 150
    | <b d> ~
    | <b d>
    | cis
    | fis
    | << { d'4( cis2  b4) } \\ { e,1 } >>
    | a8 e4\pp e e e8 ~
    | e e4 e e e8 ~
    | e d4 d d d8 ~
    | d d4 d d d8(
    |  c) c4 c(  a) a8(
    
%%% 160
    |  bes) bes4 bes bes bes8(
    |  a) a4 a a a8 ~
    | a a4 a a a8 ~
    | a a4 a a a8(
    |  b) b4 b gis gis8
    | r  a[( c  a)] r  b[( d  b)]
    | r  b[(  a) a-.]  a[ a gis gis]
    | gis'!2(->  fis!4) b,
    |  a8[(  cis!)] e2(  gis4)
    | a r cis, cis
    
%%% 170
    | d4.( e8  fis[ e d  cis)]
    |  cis[( b]  a4) r a
    | r d r  d8[(  e)]
    | d4(  cis) cis cis
    | d4.( e8  fis[ e d  cis)]
    |  cis[( b]  a4) r e'
    | r fis r gis
    | r a r e
    | r a r a
    | r a2(  b4)
    
%%% 180
    | b r r2
    | R1
    | r4 a4.(  gis8) b4 ~
    |  b8[( a] cis4.  b16[  a)] d4( ~
    |  d8[ cis16 b] e4.  a,8[ b  cis)]
    | d4 d,2\fp d4 ~
    | d8 r a'-. r d-. r fis-. r
    | r4 a2(\fp  fis8) r
    | dis r a r a r c, r
    | cis!4\parentF r r16  cis[(\f d e]  fis[ gis a b]
    
%%% 190
    |  cis8[  a) a'-. a-.]  a[(  e) cis'-. cis-.]
    | cis-. r e,-. r cis-. r a-. r
    | << gis1\f\startTrillSpan
	 { s2. s8\stopTrillSpan \tiny \stemUp fis16[ gis] \stemNeutral \normalsize } >>
    | a4 r a2(\p
    | e  cis)
    | d4( e fis  d)
    | cis2  d8.[(\trill\f cis16 d8.  e16)]
    | cis4 <a e' a> a r
  }
}
