%Viola 1, 1st movement
\version "2.19.80"

FirstViolaFirstMovement =
{
 \relative c' {  
  \key c \minor
  \clef "alto"
  \time 4/4
  g8\p g4 g g g8~ |
  \repeat volta 2 {
   g8 g4 g <ees g> <ees g>8~ |
   <ees g> <ees g>4 \deprecatedcresc <ees g> <ees g> <ees g>8~ |
   <ees g>\f <ees g>4 <ees g> g g8( |
   f) f4\p f f f8( |
   <f aes>) <f aes>4 <f aes> <f aes> <f aes>8~ |
   \deprecatedcresc <f aes> <f aes>4 <f aes> <f aes> <f aes>8~ |
   <f aes>\f <f aes>4 <f aes> <f aes> <f aes>8 |
   g\( bes16 g bes g bes g \repeat tremolo 4 {bes g\)} |
   a\sf\( fis a fis \repeat tremolo 6 {bes g\)} |
   a\sf\( fis a fis \repeat tremolo 6 {bes g\)} |
   \repeat tremolo 4 {a\( fis} \repeat tremolo 4 {aes\sf f\)} |
   \repeat tremolo 4 {bes\( g} \repeat tremolo 4 {bes g\)} |
   a\sf\( fis a fis \repeat tremolo 6 {bes g\)} |
   a\sf\( fis a fis \repeat tremolo 6 {bes g\)} |
   \repeat tremolo 4 {c\p( a)} \repeat tremolo 4 {bes( aes)} |
   \repeat tremolo 4 {bes( des)} \deprecatedcresc \repeat tremolo 4 {ces( d)} |
   \repeat tremolo 4 {des( e)} \deprecatedcresc \repeat tremolo 4 {ees( ges)} |
   \repeat tremolo 4 {f\f( aes)} g!( ees g ees  c ees c ees) |
   bes2:16\ff bes2:16 |
   bes8 r r4 r2 |
   r4 bes2.\p~ |
   bes4 r r2 |
   r4 g( aes d |
   aes' g8) r r4 f,( |
   g) r r aes( |
   c) r r2 |
   r2 r4 d( |
   ees) r r f,( |
   g) r r aes( |
   c) r r ees,\sf( |
   ees'2 d4 bes) |
   bes2. r4 |
   R1 |
   \deprecateddim des,1(\accent\mf |
   c4\p ees f aes |
   bes8) r g16\( ees g ees \repeat tremolo 4 {g ees\)} |
   \repeat tremolo 4 {g\( ees} \repeat tremolo 4 {g ees\)} |
   \deprecatedcresc \repeat tremolo 4 {g\( ees} \repeat tremolo 4 {g ees\)} |
   \repeat tremolo 4 {g\f\( ees} \repeat tremolo 4 {g ees\)} |
   \repeat tremolo 4 {g\p\( e} g e g e g8\) g'( |
   e[ des] bes) g16( e g e g e g8) bes'( |
   \deprecatedcresc f des bes f) bes'( g e\f des) |
   des'( bes g e) \repeat tremolo 4 {des16( bes)} |
   \repeat tremolo 4 {aes\( c} \repeat tremolo 4 {aes c\)} |
   aes\(\sf b aes b \repeat tremolo 6 {aes c\)} |
   aes\(\sf b aes b \repeat tremolo 6 {aes c\)} |
   \repeat tremolo 4 {aes\p( b)} \repeat tremolo 4 {g( bes)} |
   aes8 r r4 \deprecatedcresc \repeat tremolo 4 {des16\( ees} |
   c8\) ees16( aes f aes f aes f\f aes f aes f g f g) |
   ees4:16 g,4:16 g4:16 g4:16 |
   d8 r r4 r g\p( |
   fis) r r g( |
   d) r r a'~ |
   \deprecateddim a2( g |
   fis4)\! r r2 |
   R1*2 |
   \repeat tremolo 4 {bes16\p\( f} \repeat tremolo 4 {bes f} |
   \repeat tremolo 4 {bes f} \repeat tremolo 4 {bes f\)} |
   \deprecatedcresc \repeat tremolo 4 {bes\( g} \repeat tremolo 4 {bes g} |
   \deprecatedcresc \repeat tremolo 4 {bes g} \repeat tremolo 4 {bes g\)} |
   \repeat tremolo 4 {c\f\( a} \repeat tremolo 4 {c a\)} |
   \repeat tremolo 4 {c\( a} \deprecatedcresc \repeat tremolo 4 {c a\)} |
   \repeat tremolo 4 {c\ff\( ees} \repeat tremolo 4 {c ees\)} |
   a,\sf( c a c) a\sf( c a c) a\sf( c a c) a\sf( c a c) |
   a\sf( c a c) a\sf( c a c) a\sf( c a c a\sf c a c) |
   bes8 r d4(\p ees f |
   g f8 e) f4 d8( ees |
   f4 g8 f) f( ees d ees) |
   d4 r r2 |
   r4 d( ees f |
   aes!8 g) f( e) f4 d8( ees |
   f4 g8) f f( ees) d-. ees-. |
   d8 r r4 r2 |
   R1 |
   g,1_\markup{\dynamic {sf pp} }~ |
   g( |
   d)~ |
   d4 r r2 |
   r4 g( a b |
   c b8 a) b4 g8( a |
   b4 c8 b) b( a) g-. a-. |
   g r aes'!-.^\markup{\bold\italic "stacc."} g-. g( f) ees-. f-. |
   ees( c) aes'-. g-. g( f) ees-. f-. |
   ees r f-. ees-. ees( des) c-. des-. |
   c( aes) f'-. ees-. ees( des) c-. des-. |
   c r r4 r f16-. f-. f-. ees-. |
   d!-. d-. bes-. d-. f-. f-. d-. f-. bes8-. r r4 |
   
   %% Bar 90
   r2 r4 ees16-.\pp ees-. ees-. d-. |
   c c c c a8 r r4 ees'16-. ees-. ees-. d-. |
   c-. c-. ees-. c-. a4( bes8) r r4 |
   r r8 d,,(\mf g bes d bes' |
   g4.)\accent \deprecatedcresc d,8( g bes d bes' |
   g4.)\accent d,8( g bes d d' |
   bes2\f f) |
   bes,1\accent |
   f\accent~ |
   f4 bes8.(\f c16) c8.( d16) d8.( ees16) |
   ees4( d8 cis) d4 bes8( c |
   d4 ees8 d) d( c f c) |
   bes1\ff~ |
   bes_\markup{\bold\italic "sempre" \dynamic {ff}}~ |
   bes~ |
   bes8 r r g\f( f g aes! f) |
   g8 r r g( f g aes f) |
   g4( aes) g( aes) |
   \deprecatedcresc g8( aes) g( aes) g-. aes-. g-. r |
   f''-.\ff d-. bes-. g-. f-. d-. bes-. g-. |
   
   %% Bar 110
   f2~\accent f8 d'16 d d d d d |
   d8 r r4 r2 |
   r4 <bes d>8 r <c ees> r <c ees> r |
   <bes d>16\f <bes d> <bes d> <bes d> bes4:16 bes2:16 |
   bes2:16 bes2:16 |
   <bes d>2:16 <bes d>2:16 |
   <bes e>2:16 ees2:16 |
   d2:16 d2:16 |
   g2:16 g2:16 |
   f2:16 f2:16 |
   g,2:16 a2:16 |
   bes2:16 c2:16 |
   bes2:16\ff c2:16 |
   bes8 <bes d>16 <bes d> <bes d>8 <bes d>16 <bes d> <bes d>8 <bes d>16 <bes d> <bes d>8 <bes d>16 <bes d> |
   <bes d>8 <bes d>16 <bes d> <bes d>8 <bes d>16 <bes d> <bes d>8 <bes d>16 <bes d> <bes d>8 <bes d>16 <bes d> |
   <bes d>8 <bes d>16 <bes d> <bes d>8 <bes d>16 <bes d> <bes d>8 <bes d>16 <bes d> ees8 r |
   d r ees r d r ees r |
  }
  \alternative
  {
   {
    r4 <bes d>8 r r4 c8 r |
    r bes r aes! r g r cis |
    r d r ees r f r g |
    r4 <f, aes> r <bes d> |        
    <bes ees>8 r r g4\p g \once\override Slur.control-points = #'((1 . -2.5) (2 . -3.5) (3 . -3.5) (4 . -2.5)) g8( |
   }
   {
    <bes d>8\f) <bes d>4 <bes d> <bes d> <bes d>8~ |
   }
  } 
  <bes d> <bes d>4 <bes d>4 <bes d>4 <bes d>8~ |  
  \set doubleSlurs = ##t
  <bes d> <bes d>4 <bes d>4 <bes d>4 <bes d>8( |
  <b d>) \set doubleSlurs = ##f <b d>4 <b d>4 <b d>4 <b d>8~ |
  <b d>( f d f b d f d')~ |
  d( b f) f,( b d f d')~ |
  d( b f) f,( b d f d')~ |
  d( b g) r d( g b g |
  b4) r8 b,( g' f d c |
  
  %% Bar 140
  << {b)\< <g g'>16 <g g'> <g g'>4:16 <g g'>2:16 } {s2.. s8\!} >>|
  <c ees>2\ff <c ees>4.. <c ees>16 |
  <c ees>8 r des4-.\accent( des-.\accent des-.\accent) |
  des2 bes4.. des16 |
  des8 r <c ees>4-.\accent( <c ees>-. -\tweak Y-offset 4 \accent <c ees>-.\accent) |
  des2 des4.. des16 |
  des8 r fes4-.(\accent fes-.\accent fes-.\accent) |
  <des f!>2 <des f>4.. <des f>16 |
  <des f>8 r ees4-.\accent( ees-. -\tweak Y-offset 4 \accent ees-.\accent) |
  des2 <f, aes>4.. <f aes>16 |
  <f aes>8 r <aes aes'>4-.\accent( <aes aes'>-.\accent <aes aes'>-.\accent) |
  <aes aes'>1~ |
  <aes aes'>8 r <des e>4-.\accent( <des e>-. -\tweak Y-offset 4 \accent <des e>-.\accent) |
  r <c f>-.\accent( <c f>-.\accent <c f>-.\accent) |
  r des\f-.\accent( des-.\accent des-.\accent) |
  r \deprecateddim c-.( c-. c-.) |
  r g\mf-.( g-. g-.) |
  r \deprecateddim bes-.( bes-. bes-.) |
  r g\p-.( g-. g-.) |
  r c-.( c-. c-.) |
  r des-.( des-. des-.) |
  r des-.( des-. des-.) |
  r ees-.( ees-. ees-.) |
  r d!-.( d-. d-.) |
  r des-.( des-. des-.) |
  r \deprecateddim c-.( r bes-.) |
  r2 c\pp( |
  r bes) |
  r4 aes\p( bes c |
  des c8 bes) c4 aes8( bes |
  c4 des8 c) c( bes aes bes) |
  aes4 aes( bes c |
  des c8 bes) c4 aes8( bes |
  c4 des8 c) c( bes aes bes) |
  aes r aes4 aes( bes |
  \deprecateddim ces bes8 aes) bes4 g8( aes |
  bes4 c!8 bes) bes( aes g aes) |
  g4\! r r2 |
  R1*14 |
  r4 ges\pp( f ees |
  d1) |
  R1*2 |
  r4 ges( f ees) |
  r ges( f ees) |
  r ges( f ees |
  d) r r2 |
  R1*2 |
  d'8\p d4 d d d8( |
  aes) aes4 aes aes aes8~ |
  \set doubleSlurs = ##t
  aes aes4 aes aes <f aes>8( |
  <f a>) <f a>4 <f a> <f a> <f a>8( |
  <g bes>) r r4 r2 |
  \set doubleSlurs = ##f
  R1 |
  r2 aes16(\mf g f g aes g f ees |
  
  %% Bar 210
  d8) r r4 d16( ees f g aes bes c d |
  ees f g aes \deprecatedcresc bes aes g f ees f g f ees d c bes) |
  a( bes c d ees d c bes) a(\< bes c d ees f g a |
  bes8\f f d bes f bes) bes-. bes~ |
  bes bes4 bes \deprecatedcresc bes bes8~ |
  bes bes4 bes8( aes16 g f ees d c d ees) |
  f( e f g aes g aes bes) c\ff( bes c d ees! f g a |
  bes a c bes d c ees d) f( e g f aes! g f ees) |
  d_\markup{\bold\italic "sempre" \dynamic {ff}}( c ees d f ees d c) bes( a bes b c bes aes g) |
  aes( g f e) f( ees d c) \stemUp d( c bes a bes c d ees) \stemNeutral|
  
  %% Bar 220
  f( ees d c d ees f g) aes(\< g f g aes bes c d\! |
  ees8) g,,4\p g g g8~ |
  g g4 g <ees g> <ees g>8~ |
  \deprecatedcresc <ees g> <ees g>4 <ees g> <ees g> <ees g>8~ |
  <ees g> <ees g>4\f <ees g> g g8( |
  f) f4\p f f f8( |
  <f aes>) <f aes>4 <f aes> <f aes> <f aes>8~ |
  \deprecatedcresc <f aes> <f aes>4 <f aes> <f aes> <f aes>8~ |
  <f aes> <f aes>4\f <f aes> <f aes> <f aes>8( |
  g) bes16\( g bes g bes g \repeat tremolo 4 {bes g\)} |
  a\sf\( fis a fis \repeat tremolo 6 {bes g\)} |
  a\sf\( fis a fis \repeat tremolo 6 {bes g\)} |
  \repeat tremolo 4 {a\(\p ges} \repeat tremolo 4 {bes aes\)} |
  \repeat tremolo 4 {bes\( g!} \repeat tremolo 4 {d' aes\)} |
  \deprecatedcresc \repeat tremolo 4 {bes\( g} \repeat tremolo 4 {d' c\)} |
  \repeat tremolo 4 {f\( d} \repeat tremolo 4 {g, d'\)} |
  \repeat tremolo 4 {c\f\( g} \repeat tremolo 4 {c g\)} |
  \repeat tremolo 4 {c\sf\( a} \repeat tremolo 4 {c a\)} |  
  ees'2\fp( f4 g |
  aes! g8 fis) g4 ees8( f |
  g4 \deprecateddim aes8 g) g( f ees f) |
  ees1\pp~ |
  ees4 ees( f g |
  aes g8 fis) g4 ees8( f |
  g4 aes8 g) g( f ees f |
  ees) r des-.\p^\markup{\bold\italic "stacc."} c-. c( bes) aes-. bes-. |
  aes( f) des'-. c-. c( bes) aes-. bes-. |
  aes r f'-. ees-. ees( des) c-. des-. |
  c( aes) f'-. ees-. ees( des) c-. des-. |
  c r r4 r d,!16-.\pp d-. d-. ees-. |
  f-. f-. d-. f-. bes-. bes-. f-. bes-. d8 r ees,16-. ees-. ees-. f-. |
  g-. g-. ees g-. c-. c-. g-. c-. ees8 r f,16-. f-. f-. g-. |
  aes-. aes-. f-. aes-. d4:16 ees4:16 d4:16 |
  ees4:16 d4:16 c8 r r4 |
  r2 r4 r8 c,( |
  ees c' ees ees') c2( |
  \deprecatedcresc bes1)~ |
  bes4 aes( g f) |
  <bes, ees>1~\f 
  <bes ees>2. r4 |
  ges'2_\markup{\dynamic {ff sf}} ges16_\markup{\bold\italic "con fuoco"} ges ges f ees ees ees des |
  c c c bes a8 ges'16 f ees des c bes a! ges f ees |
  d1~ |
  d~ |
  d |
  r4 r8 g(\f f g aes f) |
  g4 r8 g( f g aes f) |
  g4( aes) g( aes) |
  g8( aes) g( aes) g-. aes-. g-. aes-. |
  g16\< bes bes bes bes4:16 c2:16\ff |
  bes8 r <g ees'> r <aes ees'> r <bes d> r |
  bes2:16\f bes2:16 |
  <g ees'>2:16 <g ees'>2:16 |
  ees'2:16 ees2:16 |
  ees2:16 d2:16 |
  ees2:16 ees2:16 |
  ees2:16 ees2:16 |
  ees2:16 ees2:16 |
  ees2:16 d2:16 |
  ees2:16 d2:16 |
  ees2:16\ff d2:16 |
  ees8 r ees16 ees ees f g g ees g bes bes g bes |
  ees8 r bes,4\p d2( |
  ees8) r g16\ff g g f ees ees g ees c c ees c |
  bes8 r g4\p aes2( |
  g4) r r f'( |
  e) r r aes,( |
  bes) r r bes( |
  a2 aes) |
  ges1\pp~ |
  ges2( c |
  d! ees |
  f) aes~ |
  aes4( g ges2)~ |
  ges4( f fes2)~ |
  fes4( ees8) \deprecatedcresc ees4 ees ees8~ |
  ees ees4 ees ees ees8( |
  \deprecatedcresc ges) ges4 ges ges ges8( |
  ges8)\f ges4 ges ges ges8 |
  \repeat tremolo 4 {g!16\p\( ees} \repeat tremolo 4 {g ees} |
  \repeat tremolo 4 {g ees} \repeat tremolo 4 {g ees\)} |
  \deprecatedcresc \repeat tremolo 4 {f\( ees} \repeat tremolo 4 {f ees\)} |
  \repeat tremolo 4 {fis\(\< ees} \repeat tremolo 4 {fis ees\)} |
  g\(\f ees g ees b ees b ees \repeat tremolo 4 {c ees\)} |
  \repeat tremolo 4 {bes!\( ees} \repeat tremolo 4 {bes d\)} |
  \repeat tremolo 4 {bes\( ees} \repeat tremolo 4 {c ees\)} |
  \repeat tremolo 4 {bes\(\< ees} \repeat tremolo 4 {bes d\)} |
  d2:16\ff ees4:16 des4:16 |
  c2:16 c2:16 |
  c2:16 c2:16 |
  ees2:16 ees2:16 |
  f2:16 f2:16 |
  ees2:16 ees2:16 |
  d2:16 d2:16 |
  \deprecatedcresc ees2:16^\markup{\dynamic "sf"} des2:16^\markup{\dynamic "sf"} |
  c4:16^\markup{\dynamic "sf"} f4:16 ges2:16^\markup{\dynamic "sf"} |
  f2:16\ff f2:16 |
  f2:16 f2:16 |
  g!8 g,4\p g g g8~ |
  \deprecatedcresc g g4 g <ees g> <ees g>8~ |
  << {<ees g>\f <ees g>4 <ees g> <ees g> <ees g>8~ } {s2 s2\< } >>|
  <ees g>16 g g g g4:16 d'2:16\ff |
  ees8 r r4 <bes d>8 r r4 |
  <bes ees>8 r r4 r2 |
  \bar "|."
 }    
}

FirstViolaFirstMovementTiming =
{
 s1^\markup {" " \raise #4.0 \bold\huge "Allegro moderato ma con fuoco"} | 
 s1*180 \pageBreak
 s1*59
 s1^\markup{" " \raise #2.0 \bold\huge "poco rit."} |
 s1*3 |
 s1^\markup{" " \raise #2.0 \bold\huge "a tempo"}
}