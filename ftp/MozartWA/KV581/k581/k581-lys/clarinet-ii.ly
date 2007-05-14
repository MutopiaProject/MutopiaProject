%%% -*- LilyPond -*-

#(ly:set-option 'old-relative)

\version "2.10.10"

clarinetSecondMov =  \relative c'' {
  \key f \major
  \clef violin

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  c4.(\p  f8[ a  f)]
  |  e[(  d)] d2
  | g4  bes8[( g f  e)]
  |  f8.[(  g16)] a4 r
  | bes(   d,8)[ d( es  e)]
  |  f8.[( d16]  c4.) f8
  | e2(  f4)
  | g( a  bes)
  | a(  g) r

%%% 10
  | g4  f16[( e d  c)]  c8[ c]
  |  c[(  f)] f4.(  c'8)
  | c4 ~  c16[ b( a g]  fis[ g d  g)]
  | f!4(  e) r
  | a  a8[ a]  bes!16[( a g  f)]
  |  f8[(  bes)] bes4.(  a8)
  |  a16[( g a  bes)] f4(  e)
  | f as,, \>  g8[  f\!]
  | e4 bes'''4.(  a8)
  |  fis16[( g bes  d)] f,4( \grace {
    \override Stem   #'stroke-style = #"grace"
    \cue a32 
    \revert Stem #'stroke-style }
  g8.[  f16)]

%%% 20
  | f4 r r
  | << 
    { r8 c4 ~  c16.[(  d32)]
      e16.[(  f32) g16.(  a32)] }
    { s4. s16 \once \override TextScript #'script-priority = #-100 
      s16^\turn^\markup { \tiny ( \natural ) } s16 s16\turn s16 
      \once \override TextScript #'script-priority = #-100 
      s16^\turn^\markup { \tiny ( \sharp ) } } >>
  | bes4 r r
  | r8 f,,8 ~  f32[ f'( g a]  bes[ c d  e)]  f[( e g f]  a[ g bes  a)]
  | c4( bes  a)
  | g( e  f)
  |  d8.[(  bes16)]  a8[( c bes  c)]
  | a4 r r
  | R2.*2

%%% 30
  | a'4.( \<  g16[  f\!)]  f16[( \> e d  cis\!)]
  | << {  d8.[(  e16)] }
       \context Voice = "x"         {
	 s8 s8^\markup 
	 {
	   \center-align {
	     \musicglyph #"scripts.turn"
	     \teeny \semisharp 
	   }
	 }
       }
     >> f4 r
  | g4 \< ~  g16[(  a32\! \> g f16  e\!)]  e[( d c!  b!)]
  | << {  c8.[(  d16)] }
       \context Voice = "x"         {
	 s8 s8^\markup 
	 {
	   \center-align {
	     \musicglyph #"scripts.turn"
	     \teeny \semisharp 
	   }
	 }
       }
     >> e4 r
  | a2.
  | g
  | f
  | e
  | d4 r r
  | R2.*2

%%% 41
  | d4 ~  d8.[ \grace {
    \override Stem   #'stroke-style = #"grace"
    e32[ d cis d] 
    \revert Stem #'stroke-style }
	       e16]  f8.[ \grace {
		 \override Stem   #'stroke-style = #"grace"
		 g32[ f e f] 
		 \revert Stem #'stroke-style }
			  g16 ]
  |  a8[( c b a g  f)]
  |  e16[( f fis g]  e[ f fis  g)]  a[( bes b  c)]
  |  a[( bes b  c)] << d,2 \context Voice = "x" { s4. \tiny \stemUp  c16[(  d)] } >>
  | c4 r32  c,[( d e]  f[ g a b]  c[ d e f]  g[ a b  c)]
  | r4 r32  d,,[( e f]  g[ a bes c]  d[ e fis g]  a[ bes c  d)]
  | r4 r32  c,,[( d e]  f[ g a b]  c[ d e f!]  g[ a b  c)]
  | r4 r32  b,,[( \< c d]  e[ f g  a\!]  b16[ c32 d]  e[ f g  a)]
  | bes4\f ~  bes16[( \> a c bes]  a[ g f  e\!)]

%%% 50
  |  g[( fis a g]  f[ e d  c)]  b[( c d  c)]
  | c4.(- \markup{\italic "dolce"}  f8[ a  f)]
  |  e[(  d)] d2
  | g4  bes8[( g f  e)]
  |  f8.[(  g16)] a4 r
  | bes(   d,8)[ d( es  e)]
  |  f8.[(  d16)] c4.(  f8)
  | e2( f4
  | g a  bes)
  | a(  g) r

%%% 60
  | g4  f16[( e d  c)]  c8[ c]
  |  c[(  f)] f4. c'8
  | c4 ~  c16[ b( a g]  fis[ g d  g)]
  | f!4(  e) r
  | a  a8[ a]  bes!16[( a g  f)]
  |  f8[(  bes)] bes4.(  a8)
  |  a16[( g a  bes)] f4(  e)
  | f as,, \>  g8[  f\!]
  | e4 bes'''4.(  a8)
  |  fis16[( g a  bes)] f4( \grace {
    \override Stem   #'stroke-style = #"grace"
    \cue a32 
    \revert Stem #'stroke-style }
  g8.[  f16)]

%%% 70
  | f4 r r
  | << 
    { r8 c4 ~  c16.[(  d32)]
      e16.[(  f32) g16.(  a32)] }
    { s4. s16 \once \override TextScript #'script-priority = #-100 
      s16^\turn^\markup { \tiny ( \natural ) } s16 s16\turn s16 
      \once \override TextScript #'script-priority = #-100 
      s16^\turn^\markup { \tiny ( \sharp ) } } >>
  | bes4 r r
  | r8 f,,8 ~  f32[ f'( g a]  bes[ c d  e)]  f[( e g f]  a[ g bes  a)]
  | c4( bes  a)
  | g( e  f)
  |  d8.[(  bes16)]  a8[( c bes  c)]
  | a4 r r
  | R2.*2

%%% 80
  | f'4( a  c)
  |  c8[( b] bes4  a)
  | as( g  f)
  | e(-. e-.  e)-.
  | f c, a
  | f2 r4\fermata
}
