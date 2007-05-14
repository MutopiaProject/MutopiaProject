#(ly:set-option 'old-relative)
				% -*- LilyPond -*-

\version "2.10.10"

violinIFirstMov =  \relative e'' {
  \key a \major
  \clef violin

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat volta 2 {
    e2(\p cis
    | b  a)
    | b4( cis d  b)
    | gis2(  a)
    | fis4( a e  a)
    | e2 d4.(\trill  cis16[  d)]
    | cis4 r r2
    | R1
    | e'2(\p cis

%%% 10
    | b  a)
    | b4( cis d  fis)
    | gis,2(  a)
    | fis4( a e  a)
    | e2 d4.(\trill  cis16[  d)]
    | cis4 r r2
    | R1
    | r8  cis8[(\f e  a)]  cis[( e a  cis)]
    |  b16[( cis d cis]  d[ cis b  a)]  gis[( a b a]  gis[ fis e  d)]
    | cis4 r r2

%%% 20
    | cis2(\p b
    | a  gis)
    | fis2(  e)
    | d4 gis16[( fis gis a] b4  a)
    | gis16[( a b  cis)] d2(  cis4)
    | fis,( gis  a2)
    | gis4 r r2
    | R1*3

%%% 30
    | r2  gis'8[( e bis  cis)]
    |  fis[( dis ais  b)]  e[( cis gis  a)]
    |  dis[( b fisis  gis)]  cis[( a eis  fis)]
    |  b8.[(  gis16)] b4. gis'8(  fis16[ e dis  cis)]
    |  b8[(  ais)] ais4(-. ais-.  ais)-.
    | b4 r r2
    | r8 \grace {
      \override Stem   #'stroke-style = #"grace"
      b32[( a  gis)] 
      \revert Stem #'stroke-style }
    \stemUp  a8[( c b]  a[ g fis  e)]
    | dis4 r r2
    | r8 \grace {
      \override Stem   #'stroke-style = #"grace"
      b'32[( a  gis)] 
      \revert Stem #'stroke-style }
    a8[( c b]  a[ g fis  e)]
    | dis4 \stemNeutral r a' r

%%% 40
    | a\f  dis8[-. dis-.] dis4  fis8[-. fis-.]
    | fis4-.  a8[-. a-.] a4-. r
    | r2 r8  b,8[(\p cis dis]
    |  e[ fis gis dis]  e[ b cis  gis)]
    | b4(  a) r8  a[( b  cis)]
    |  dis[( e fis cis]  dis[ a b  fis)]
    | a4(  gis) r8  e'8[( gis  e)]
    | dis4( cis4.  fis8[ a  fis)]
    | fis4( e2  dis4)
    | e8 e,4\pp e e e8 ~

%%% 50
    | e e4 e e e8(
    |  fis) fis4 fis fis fis8 ~
    | fis fis4 fis fis fis8(
    |  e) e4 e e e8 ~
    | e e4 e e e8(
    |  d) d4 d d d8 ~
    | d f4 f f f8(
    | \lowerText   e)[\cresc e e e] e4 r
    | r8  e[ e e] e4 r
    | r8  fis![ fis fis] fis4 r

%%% 60
    | r8  g[\f g g] g4 r
    | gis!4\f  e'8[-. dis-.] e4  e8[-. dis-.]
    | \stemDown  e16[ e,( fis gis]  a[ b cis dis]
    e)[ b( cis dis]  e[ fis gis  a)]
    |  b8[(  gis) e'-. e-.]  e[(  b) gis-. e-.] \stemNeutral
    | << dis1\f\startTrillSpan
	 { s2. s8\stopTrillSpan \tiny \stemUp cis16[ dis] \stemNeutral \normalsize } >>
    | e4 r b_\markup { \dynamic p \italic dolce } b
    | cis4.( dis8  e[ dis cis  b)]
    |  b[( a]  gis4) r b
    | r cis r dis
    | dis(  e) b b

%%% 70
    | cis4.( dis8  e[ dis cis  b)]
    |  b[( a]  gis4) r2
    | R1*3
    | b'2(\p gis
    | fis  e)
    | fis4( gis a  fis)
    | e2 \grace {
      \override Stem   #'stroke-style = #"grace"
      gis8 
      \revert Stem #'stroke-style }
    \raiseScript  fis8.[(\f\trill e16 fis8.  gis16)]
    | e4 <b gis'> <b e> r
  }

  \repeat volta 2 {
    | gis4-.\p gis-. gis-. gis-.
    | g g g g
    | g g g g
    | g1
    | b2(  c)
    | a4( cis! d  a)
    | f2(  e)
    | r8  a[ a a] r  g[ g g]
    | r  f[ f f] r  d[ d d]
    | r  g,[(\f c  e)]  g[( c e  g)]

%%% 90
    |  f16[( a f  d)]  b[( d b  g)]  f[( a f  d)]  b[( d b  g)]
    | c4 g''( e  c') ~
    |  c8.[(  b16)] d2  f,8.[(^\markup
			      {
				\center-align {
				  \tiny \natural
				  \musicglyph #"scripts.trill"
				}
			      } e32  f)]
    | e4 g2 g4 ~
    | g 
    << { a,2 a4 | a } \\ { g2( e4) | f } >>
    a'2 a4 ~
    | a << { b,2 ~ b4 } \\ { a2(  fis!4) } >>
    | <g b>8  g,[( b  e)]  g[( b e  g)]
    | gis!16[( b gis  eis)]  cis[( eis cis  b)] 
    gis![( b gis  eis)]  cis[( eis cis  b)]
    | a1\fp ~

%%% 100
    | a
    |  ais''!16[(\fp cis ais  fis)]  fis[( ais fis  cis)] 
    cis[( fis cis  ais)]  ais[( cis ais  fis)]
    | cis1\fp
    | <fis b>\fp ~
    | <fis b>
    |  b'16[(\fp e b  gis)]  gis[( b gis  e)]  e[( gis e  b)]  b[( e b  gis)]
    | gis1\fp
    | <a e'>\fp ~
    | <a e'>
    |  a'16[( dis a  fis)]  fis[( a fis  dis)] 
    dis[( fis dis  a)]  a[( dis a  fis)]

%%% 110
    | dis1\fp
    | e4 r r2
    | R1
    | r8  e8[(\f gis  b)]  e[( gis b  e)]
    |  c16[( e c  a)]  a[( c a  e)]  e[( a e  c)]  c[( e c  a)]
    | e'1(\p
    | dis
    |  d!)
    | cis!2( a
    | gis  a)

%%% 120
    | b4( ais b  d,)
    | e1 ~
    | e4 d2(  cis4)
    | r8  cis'[ cis cis] r  b[ b b]
    | r  a,[(\f cis  e)]  a[( cis e  a)]
    |  gis16[( b gis  e)]  d[( e d  b)]  gis[( b gis  e)]  d[( e d  b)]
    | cis4 r r2
    | cis'2(\p b
    | a  gis)
    | fis( e

%%% 130
    |  d4)  b'16[( cis d cis]  b[ a gis fis]  e[ d cis  b)]
    | a4 r r2
    | R1*4
    | r2  fis''8[( d ais  b)]
    |  e[( cis gis  a!)]  d[( b fis  gis)]
    |  cis[( a eis  fis)]  b[( gis dis  e)]
    |  a8[(\fp b16 cis]  b8[ a]  gis[ fis e  dis)]

%%% 140
    | e4 r r2
    | r8 \grace {
      \override Stem   #'stroke-style = #"grace"
      e'32[( d  cis)] 
      \revert Stem #'stroke-style }
    d8[( \> f  e\!]  d[ c b  a)]
    |  gis8[ \grace {
      \override Stem   #'stroke-style = #"grace"
      \cue fis'!32 
      \revert Stem #'stroke-style }
	     e16( dis]  e8[ fis]  gis[ a b  cis)]
    | d1 ~
    | d4 r a,2(\fp
    |  gis4) r d2\fp ~
    | d4  gis'8[-.\f gis-.] gis4-.  b8[-. b-.]
    | b4-.  d8[-. d-.] d4 r
    | r2 r8  e,8[(\p fis gis]
    |  a[ b cis gis]  a[ e fis  cis)]

%%% 150
    | e4(  d) r8  d[( e fis]
    |  gis[ a b fis]  gis[ d e  b)]
    | d4(  cis) r8  a'8[( cis  a)]
    | gis4(  fis4.)  b8[( d  b)]
    | b4( a2  gis4)
    | a8 a,4\pp a a a8 ~
    | a a4 a a a8(
    |  b) e,4 e e e8 ~
    | e e4 e e e8 ~
    | e e4 e c c8 ~

%%% 160
    | c c4 c c c8 ~
    | c c4 c c c8(
    |  e) e4 e e e8(
    |  d) d4 d d d8 ~
    | d d4 d d d8
    | r  c[( e  c)] r  d[( f  d)]
    | r  d[(  c) c-.]  c[ c b b]
    | b'2(->  a4)  fis!16[( e fis  d)]
    |  cis!8[( e cis e]  cis[ e d  e)]
    | cis4 r e e

%%% 170
    | fis4.( gis8  a[ gis fis  e)]
    |  e[( d]  cis4) r e
    | r fis r gis
    | gis(  a) e-. e-.
    | fis4.( gis8  a[ gis fis  e)]
    |  e[( d]  cis4)  e8[( fis gis  a)]
    |  fis[( gis a b]  gis[ a b  cis)]
    |  a[( b cis  d)] r4 b
    | r cis r d
    | r e( d  fis)

%%% 180
    |  b,8[( cis d e]  a,[ b cis  d)]
    |  gis,[( a b  cis)]  fis,[( gis a  b)]
    | e,4 r r2
    | R1
    | r8  e[(\cresc e' d]  cis[ e a  g)]
    | fis4 <a,, fis'>2\fp <a fis'>4 ~
    %% In the B & H edition the last a has no staccato mark
    | <a fis'>8 r d'-. r fis-. r a-. r
    | r4 c2(\fp  a8) r
    | fis-. r dis-. r c-. r a-. r
    | r16  e[(\parentF fis gis]  a[ b cis! d!]   e)[ a,( b cis]  d[ e fis gis]

%%% 190
    |  a8[  e) cis'-. cis-.]  cis[(  a) e'-. e-.]
    | e-. r cis-. r a-. r e-. r
    | e,4 r r2
    | e'2(\p cis
    | b  a)
    | b4( cis d  b)
    | a2  b8.[(\f\trill a16 b8.  cis16)]
    | a4 <e cis' a'> a, r
  }
}
