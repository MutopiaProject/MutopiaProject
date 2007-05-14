#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

clarinetFirstMov =  \relative g {
    \key c \major
    \clef violin

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	R1*6
	| r8  g[(\p c  e)]  g[( c e  g)]
	|  f16[( a f  d)]  b[( d b  g)]  f[( g f  d)]  b[( d b  g)]
	| c4 r r2

	% 10
	| R1*5
	| r8  c[( e  g)]  c[( e g  c)]
	|  b16[( d b  g)]  f[( g f  d)]  b[( d b  g)]  f[( g f  d)]
	| c4 r r2
	| R1
	| r8 \grace {
\override Stem   #'stroke-style = #"grace"
   \cue d'32 
  \revert Stem #'stroke-style }
  c16[( b]  c8[ d]  e[ \< f fis  g\!)]

%%% 20
	|  a[( g fis g]  fis[ g a  b)]
	|  c[( a e  f!)]  b[( g dis  e)]
	|  a[( f cis  d!)]  g[( e b  c)]
	|  b16[( c d  e)] f2(  e4)
	|  d16[( e f  g)] a2( g4
	| fis f e  es)
	| d4 r r2
	| R1*8

%%% 35
	| r8 \grace {
\override Stem   #'stroke-style = #"grace"
   \cue e32 
  \revert Stem #'stroke-style }
  d16[( cis]  d8[ e]  fis[ g a  b)]
	| c1
	| r8 \grace {
\override Stem   #'stroke-style = #"grace"
   \cue e,32 
  \revert Stem #'stroke-style }
  d16[( cis]  d8[ e]  fis[ g a  b)]
	| c1 ~
	|  c16[ b a g]  fis[ g a b]  c[ b a g]  fis[ g a b]

%%% 40
	|  c8[\f b16 a]  g[ fis e d]  c8[ b16 a]  g[ fis e d]
	|  c8[ d16 e]  fis[ g a b] c4 r
	| R1*7
	| r2 r8\p  d[(- \markup{\italic "dolce"} e fis]
	
%%% 50
        |  g[ a bes fis]  g[ d es  bes)]
	| d4(  c) r8  es8[( d  c)]
	|  bes'[( a g fis]  es[ cis d  a)]
	| c!4(  bes) r8  d[( g  d)]
	| f!4(  es4.)  es8[( f  g)]
	| bes4(  as4.) \<  as8[( bes  c\!)]
	| c4(\sf  bes4.) \>  f8[( bes  as\!)]
	| fis4(  g) r8  d[( es  f)]
	| g2 ~  g8[ es( f  g)]
	| a!2 \< ~  a8[ fis(  g\!  a)]

%%% 60
	| bes2 ~  bes8[ g( a  bes)]
	|  b!16[\f a g fis]  g[ b a c]  b[ a g fis]  g[ b a c]
	| b4 r r2
	|  g,,8[ a16 b]  c[ d e fis]  g[ a b c]  d[ e fis g]
	| << a1\f\startTrillSpan
	     { s2. s8\stopTrillSpan \tiny \stemUp g16[ a] \stemNeutral \normalsize } >>
	| g4 r r2
	| R1
	| r2  d8[( e fis  g)]
	|  e[( fis g a]  fis[ g a  b)]
	| a4(  g) r2

%%% 70
	| R1
	| r2  d8[( e fis \< g]
	|  e[ fis g a]  fis[  g\! a  b)]
	|  g[( a b c]  a[ b c  d)]
	|  c[( b a  g)]  g[(\trill fis16 g]  a8[  fis)]
	| g4 r r2
	| R1
	| e2.  c'8[(  a)]
	|  g16[\f b d b]  g[ d b g]  fis[ a c a]  fis[ d c a]
	| g4 g' g, r
    }

    \repeat volta 2 {

%%% 80
        | R1
	| r8  g[(\p bes  d)]  g[( bes c  cis)]
	|  d[( es e f]  fis[ g as  a)]
	| bes2( g
	| f!  es)
	| f4( g as  f)
	| d2(  es)
	| c4( es bes  es)
	| bes2 as4.(\trill  g16[  as)]
	| g4 r r2

%%% 90
	| R1*9
	|  a,8[ c e a]  c[ e a c]

%%% 100
	|  e[ c a e]  c[ a e c]
	|  a[ cis e a]  cis[ e a cis]
	|  e[ cis a e]  cis[ a e cis]
	|  d[ f, a d]  f[ a d f]
	|  a[ f d a]  f[ d a f]
	|  d'[ g, b d]  g[ b d g]
	|  b[ g d b]  g[ d b g]
	|  c[ e, g c]  e[ g c e]
	|  g[ e c g]  e[ c g e]
	|  fis[ a c fis]  a[ c fis a]

%%% 110
	|  c[ a fis c]  a[ fis c a]
	| g4 r r2
	| R1*2
	| r8  c[(\f es  g)]  c[( es g  c)]
	| g1\p ~
	| g ~
	| g ~
	| g2 e!(
	|d  c)

%%% 120
	| d4( e f  d)
	| b2(  c)
	| a4(  c) \times 2/3 {  g8[ c e]  g[ c e,] }
	| g2( f4.\trill  e16[  f)]
	| e4 r r2
	| R1
	| r8 \grace {
\override Stem   #'stroke-style = #"grace"
   \cue d32 
  \revert Stem #'stroke-style }
  c16[(\p b]  c8[ d]  e[ f fis  g)]
	|  a[( g fis g]  fis[ g a  b)]
	|  c[( a e f!]  b[ g dis  e)]
	|  a[( f cis d!]  g[ e b  c)]

%%% 130
	|  b16[( c d e]  f[ g a g]  f[ e d c]  b[ a g  f)]
	|  e[( f g a]  bes[ c d c]  bes[ a g f]  e[ d c  bes)]
	| a4 r r2
	| R1*7

%%% 140
	| r8 \grace {
\override Stem   #'stroke-style = #"grace"
   \cue a'32 
  \revert Stem #'stroke-style }
  g16[( fis]  g8[ a]  b[ c d  e)]
	| << f! \context Voice = "x" { s4 \> s2  s4\! } >>
	| R1
	| r8 \grace {
\override Stem   #'stroke-style = #"grace"
    g32[( f  e)] 
  \revert Stem #'stroke-style }
  f8[( \> as g]  f[ es d  c\!)]
	|  b16[ a g \< a]  b[ c d  es\!]  f[ g \> as g]  f[ es d  c\!]
	|  b[ a g \< a]  b[ c d  es\!]  f[ g \> as g]  f[ es d  c\!]
	|  b16[ g\f b d]  f[ d f d]  b[ g b d]  f[ d f d]
	|  f[ d b g]  f[ d b g] f4 r
	| R1*7

%%% 155
	| r2 r8 \p  g''[(- \markup{\italic "dolce"} a b]
	|   c)[ fis,(  g) d(]   es)[ b( c  as')]
	| g4(  f!) r8  g,,[( b  d)]
	|  g[( b d f]  as[ fis g  d)]
	| f!4(  es) r8  es[ es es]

%%% 160
	| << { es2 ~  es8[( e f  des)] } \context Voice = "x" { s2 \< s8  s4.\! } >>
	| b!4(  c) r8  c[ c c]
	| c2 ~  c8[ c'( b  bes)]
	| g4(  as) r8  as[ as as]
	| as4( g2  f4)
	| es2 ~  es8[( d f  d)]
	| d4( c2  b4)
	| e!2.(\sf  f16[ e f  d)]
	|  g8.[(  e16)] c2(  e8[  d)]
	| c4r r2

%%% 170
	| R1
	| r2  g8[( a b  c)]
	|  a[( b c  d)]  b[( c d  e)]
	| d4(  c) g'g
	| a4.( b8  c[ b a  g)]
	|  g[( f]  e4) r2
	| R1
	| r2  d8[( e f  g)]
	|  e[( f g a]  f[ g a  bes)]
	|  g[( a bes c]  a[ b c  d)]

%%% 180
	| b4.(  c8) b( a4  b8)
	| a( g4  a8) g( f4  g8)
	  \override Script
            #'extra-offset = #'(0.0 . 1.0)
	| e4.(\trill  d16[  e)] f4.(\trill  e16[  f)]
	| g4.(\trill  f16[  g)] a4.(\trill  g16[  a)]
	| b4.(\trill\cresc  a16[  b)] c4 r
	  \revert Script
 #'extra-offset
	| r8  a,,[\parentF f a]  c[ f a c]
	|  f[ a c a]  f[ c a f]
	| r  c[ a fis]  a[ c es fis]
	|  a[ c es fis]  a[ b c 
	  \once \override Beam   #'direction = #-1 fis,,,]
	| g4 r r2

%%% 190
	|  g8[ a16 b]  c[ d e! f!]  g8[ a16 b]  c[ d e f]
	| \times 2/3 {  g8[ c b]  bes[ a as]  g[ fis f]  e[ d c] }
	| << d1\f\startTrillSpan
	     { s2. s8\stopTrillSpan \tiny \stemUp c16[ d] \stemNeutral \normalsize } >>
	| c4 r r2
	| R1
	| a'2.(\cresc  f8.[  d16)]
	|  e16[ g c g]  c[ g e c]  b[\f d f d]  b[ g f d]
	| c4 c' c, r
    }
}
