%%% -*- LilyPond -*-

\version "2.10.10"

#(ly:set-option 'old-relative)

violinISecondMov =  \relative fis' {
  \key d \major
  \clef violin

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 8)

  \LowerText  fis8[(_\markup { \dynamic p \italic { con sordino } } 
		    d fis d fis  d)]
  | g[( d g d g  d)]
  | g[( e  g) g( fis  e)]
  | d4( fis8)[ d'( cis c)]
  | b[( g b g b  g)]
  | b[( g a fis a  fis)]
  | a[( g a g a  fis)]
  | a[( e fis a g  b)]
  | fis[( a e a e  a)]

%%% 10
  | a[( e a e a  e)]
  | a[( fis a fis a  d,)]
  | b'[( d, b' d, gis  e)]
  | gis[( e a e a  g)]
  | fis[( a fis a fis  a)]
  | g[( b a e' a,  d)]
  | b[( g fis a g  e)]
  | f[( b f b e,  b')]
  | e,[( a e cis' d,  d')]
  | b[( g fis a cis,  a')]

%%% 20
  | d, d''4(- \markup{\italic "dolce"}  cis16[  b)]  b[( a g  fis)]
  | a[( g fis  e)] e4 r
  | a,8 e''4(  d16[ cis]  b[ a g  b)]
  | b[( a g  fis)] fis4 r
  | a8[( d cis g fis  b)]
  | a[ \raiseScript e16.(\turn fis32] a8 g4  fis8) ~
  | fis32[( b a g]  fis[ a g  e)] 
  << { d4(  fis8[ e16.  d32)] }
     \context Voice = "x" { s8 \lowerScript s8\turn s4 } >>
  | d16-.  a'[( fis  d)] r  g[( e  cis)] r  fis[( d  b)]
  | r  e[( d cis]  b[ a gis  g)]  e'[( g, fis  d')]
  | r  e,[( g  b)]  b[( a g  fis)]  fis[( e a  cis,)]

%%% 30
  | d8[( fis d fis cis  fis)]
  | d4 r32  b[( cis d]  e[ fis gis ais]  b[ cis d e]  fis[ gis ais  b)]
  | R2.
  | r4 r32  a,,[( b cis]  d[ e fis gis]  a![ b cis d]  e[ fis gis  a)]
  | r4 r32  fis,[( gis ais]  b[ cis d e]  fis[ gis ais b]  ais[ b ais  b)]
  | r4 r32  e,,[( fis gis]  a![ b cis d]  e[ fis gis a!]  gis[ a gis  a)]
  | r4 r32  d,,[( e fis]  gis[ a b cis]  d[ e fis gis]  fis[ gis fis  gis)]
  | r4 r32  cis,,[( dis eis]  fis[ gis a b]
  cis[ dis eis fis]  eis[ fis eis  fis)]
  | b,4 ~  b8.[ \grace {
    \override Stem   #'stroke-style = #"grace"
    cis32[ b ais b] 
    \revert Stem #'stroke-style }
		cis16] 
  d8.[ \grace {
    \override Stem   #'stroke-style = #"grace"
    e32[ d cis d] 
    \revert Stem #'stroke-style }
       e16]
  | fis8[( a gis fis e  d)]

%%% 40
  | cis8.[( d32  e)] a,4(  gis)
  | a8[( fis a fis a  fis)]
  | a4(  gis8[ fis e  d)]
  | cis[-. e-.] r  e[(  fis) fis-.]
  | r  a[ a a gis gis]
  | a4 r r
  | b'2.(
  | a
  | g
  | g,2) r4

%%% 50
  | R2.
  | \lowerDynamics  fis8[(\p d fis d fis  d)]
  | g[( d g d g  d)]
  | g[(e  g) g( fis  e)]
  | d4(   fis8)[ d'( cis  c)]
  | b[( g b g b  g)]
  | b[( g a fis a  fis)]
  | a[( g a g a  fis)]
  | a[( e fis a g  b)]
  | fis[( a e a e  a)]

%%% 60
  | a[( e a e a  e)]
  | a[( fis a fis a  d,)]
  | b'[( d, b' d, gis  e)]
  | gis[( e a e a  g)]
  | fis[( a fis a fis  a)]
  | g[( b a e' a,  d)]
  | b[( g fis a g  e)]
  | f[( b f  b) e,(  b')]
  | e,[( a e cis' d,  d')]
  | b[( g fis a cis,  a')]

%%% 70
  | d, d''4(- \markup{\italic "dolce"}  cis16[  b)]  b[( a g  fis)]
  | a[( g fis  e)] e4 r
  | a,8 e''4(  d16[  cis)]  b[( a g  b)]
  | b[( a g  fis)] fis4 r
  | a8[( d cis g fis  b)]
  | a[ \raiseScript e16.(\turn fis32] a8 g4  fis8) ~
  | fis32[( b a g]  fis[ a g  e)]
  << { d4(  fis8[ e16.  d32)] } \\ { s8 \lowerScript s8\turn s4 } >>
  | \times 2/3 {  d16[ a'( g]  fis[ e  d)] r  g[( fis]  e[ d  cis)] 
		  r  fis[( e]  d[ cis  b)] } \noTupletNum
  | \times 2/3 { r16  e[( d]  cis[ b  a)]  g[( fis e]  d[ cis  b)]
		 a[( cis e]  g[ fis  d')] }
  | \times 2/3 { r16  e,[( g]  b[ g  e)] r  d[( fis]  a[ fis  d)] 
		 r  cis[( e]  g[ e  cis)] }
  | \times 2/3 {  d16[( fis a]  d[ cis  d)]  d,[( fis a]
		  d[ cis  d)]  d,[( fis a]  c[ b  c)] }
  | \times 2/3 {  d,16[( fis a]  b[ a  b)]  d,[( fis g]  bes[ a  bes)]
		  d,[( fis g]  a[ g  a)] }
  | \times 2/3 {  b,!16[( d f]  gis[ f  d)]  bes[( cis! e]  g[ e  cis)]
		  a[( cis d]  fis[ d  fis)] } \tupletNum
  | e4(-. e-.  e)-.
  | d8 r d' r d r
  | d2 r4\fermata
}
