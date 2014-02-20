\version "2.18.0"

% 5th Movement - RONDO

% ********************************************************************************OBOE********************************************************************************
oboeRondo =  \relative c'' {
   \key bes \major
   \time 2/4
   \repeat volta 2 {
   \partial 4
   f8\p ( d
   c  bes) g' ( es
   d  c) es ( c
   bes  a) c (  f)
   es (  d) r g \< ~ \noBreak
   g f4 (  e8\!)
   bes'4\f r8 a
   a16 \> (  g) f4 (  e8\!)
   f4
   }

   % ******************************2nd REPEAT IN RONDO
   \repeat volta 2 {
   f8\p ( d
   c  b) as'\f-. as-.
   as (  g) es\p ( c
   bes  a!) ges'\f-. ges-.
   ges (  f) r bes,\p-.
   d \< (  c4) d8-.
   f (  es4)  e8\!-.
   f[ \> ( g f  es!) ]
   d (  c\!) r f\p-.
   e16\cresc ( f g  a) bes8-. e,-.
   f4 r8 f-.
   e16 ( f g  a) bes8-. e,-.
   f4 r8 f-.
   e16 ( f g  a) bes8-. e,-.
   \! f4.\f \> (  e8)
   f4. (  e8)
   f (  e\!) f8\p ( d
   c  bes) g' ( es
   d  c) es ( c
   bes  a) c (  f)
   es (  d) r es \< ~ \noBreak
   es d4 (  c8\!)
   g'4\f r8 f
   f16 (  es) d4 (  c8)
   cis (  d) r es ~
   es d4 (  c!8)
   a'2 (
   bes8) g16 (  es) d8 (  c)
   bes r f'\p ( d
   c  bes) g' ( es
   d  c) es ( c
   a)[-. a-. a-. a-. ]
   bes4
   }

   % ******************************MINORE
   \repeat volta 2 {
   bes8\p ( c \noBreak
   des) r bes ( c
   des) r des \< ( es \noBreak
   f8[\!) ges \> ( f  es\!) ]
   des (  bes) r4
   as8[-. \< bes-. c-. ] r
   f[-. g-.  as\!-. ] r
   as[-. \> g-. f-.  e\! ]
   f4
   }

   % ******************************2nd REPEAT IN MINORE
   \repeat volta 2 {
   \paddingDynamics f8\f (  bes,) \normalDynamics
   bes (  a!) bes (  des)
   des (  c) f (  bes,)
   bes (  a) bes (  des)
   des (  c) es\p ( f
   ges) r es ( f
   ges) r es\f (  ges)
   f[ ( es des  c) ]
   bes4
   }

   % ******************************THEME 3rd TIME
   f'8\p ( d!
   c  bes) g' ( es
   d  c) es ( c
   bes  a) c (  f)
   es (  d) r es \< ~ \noBreak
   es d4 (  c8\!)
   g'4\f r8 f
   f16 (  es) d4 (  c8)
   cis (  d) r es ~
   es d4 (  c!8)
   a'2 (
   bes8) g16 ( es) d8 (  c)
   bes r f'\p ( d
   c  bes) g' ( es
   d  c) es ( c
   a)[-. a-. a-. a-. ]
   bes4

   % ******************************5th REPEAT
   \repeat volta 2 {
   r4
   r bes8\p-. bes-.
   b ( c) r4
   r d8\mf-. d-.
   f ( es) r4
   r g8\f-. g-.
   g \> ( f) r es-.
   r d-. r  c\!-.
   bes4 r
   c2\p
   d4.( es8)
   d4-. c-.
   bes
   }

   % ******************************6th REPEAT
   \repeat volta 2 {
   r4
   r bes8\f-. bes-.
   as'4 (  g)
   f (  es)
   d8 (  f) r4
   r bes,8-. bes-.
   as'4 \> ( g
   f es8  c\!)
   bes4 r
   r bes8\p-. bes-.
   b (  c) r4
   r d8\mf-. d-.
   f (  es) r4
   r des8\f-. des-.
   c[ as' ( g  f) ]
   es4 (  d)
   es r
   f4.\p (  d8)
   es[ ( g bes  g) ]
   f4. (  d8)
   es4
   }

   % ******************************INTERLUDE
   r4
   d4.\p (  b8)
   c4 r
   c4.\mf (  a8)
   bes!4 r
   bes'\f r
   e, r
   f2\p ~
   f8[ ges\sfz ( f  e) ]
   f2\p ~
   f8[ ges\sfz ( f  e) ]
   f2\p ~
   f8[ ges\sfz ( f  e) ]
   f2\p ~
   f ~
   f8[ \< g! ( a  bes) ]
   a[ ( bes a  bes\!) ]
   a4\f^\fermata

   % ******************************THEME LAST TIME + CODA
   f8\p ( d
   c  bes) g' ( es
   d  c) es ( c
   bes  a) c (  f)
   es (  d) r es \< ~ \noBreak
   es d4 (  c8\!)
   g'4\f r8 f
   f16 (  es) d4 (  c8)
   cis (  d) r es ~
   es d4 (  c!8)
   a'2 (
   bes8) g16 (  es) d8 (  c)
   bes r f'\p ( d
   c  bes) g' ( es
   d  c) es ( c
   a)[-. a-. a-. a-. ]
   bes4 bes8-. bes-.
   bes4 \< ( es
   d g
   f <<  a) { s8  s8\! } >>
   bes8 (  f) bes,8\p-. bes-.
   bes4 \< ( es
   d g
   f <<  a) { s8  s8\! } >>
   bes4 bes,8\p-. bes-.
   bes'2 (
   as
   g
   ges
   f
   es
   d
   c)
   bes4 a'!\f
   bes a
   bes bes,8. bes16
   bes4 \bar "|."
}

% ********************************************************************************CLARINET********************************************************************************
clarinetRondo =  \relative c'' {
   \set Score.skipBars = ##t
   \key c \major
   \time 2/4
   \repeat volta 2 {
   \partial 4
   r4
   g\p r
   a r
   d, ( g8  b)
   d (  c) e4 \< (
   d <<  c) { s8  s8\! } >>
   d4\f r8 d
   d16 \> (  c) b4 (  a8\!)
   b4
   }

   % ******************************2nd REPEAT IN RONDO
   \repeat volta 2 {
   r4 \noBreak
   r cis8\f-. cis-.
   cis (  d) r4
   r b8-. b-.
   b (  c) c4\p
   c2 \< ~
   << c { s4.  s8\! } >>
   c4. \> (  d8)
   c (  b\!) \paddinggDynamics b,16\p ( d b  d)
   c( \cresc d c d c d c  d)
   b ( d b d b d b  d)
   c ( d c d c d c  d)
   b ( d b d b d b  d)
   c ( d c d c d c  d)
   \! b4\f r \normalDynamics
   R2*2

   g'4\p r
   a r
   d, ( g8  b)
   d (  c) c4 \< (
   b <<  a) { s8  s8\! } >>
   b4\f r8 c
   e16 (  d) c4 (  b8)
   b (  c) c4 (
   b  a)
   g8 ( a16 b c d e  f)
   g8 f16 (  d) c8 (  b)
   c r r4
   g8\p r r4
   a8 r r4
   f16 ( g f  g) f ( g f  g)
   e4
   }

   % ******************************MINORE
   \repeat volta 2 {
   r4 \noBreak \paddingDynamics
   g8\p-. g-. r4 \normalDynamics
   g8-. g-. r4
   << g2- \> { s4.  s8\! } >>
   g4 r
   g8[-. \< a-. bes-. ] r
   bes[-. c-.  d\!-. ] r
   d[-. \> c-. bes-.  a\! ]
   g4
   }

   % ******************************2nd REPEAT IN MINORE
   \repeat volta 2 {
   \paddingDynamics g4\f ( \normalDynamics
   as) g8 (  c)
   c (  b) g4 (
   as) g8 (  c)
   c (  b) r4 \paddingDynamics
   d8[\p ( c  b) ] r
   d[ ( c  b) ] r
   c[\f ( d c  b) ] \normalDynamics
   c4
   }

   % ******************************THEME 3rd TIME
   r4
   g4\p r
   a r
   d, ( g8  b)
   d (  c) c4 \< (
   b <<  a) { s8  s8\! } >>
   b4\f r8 c
   e16 (  d) c4 (  b8)
   b (  c) c4 (
   b  a)
   g8 ( a16 b c d e  f)
   g8 f16 (  d) c8 (  b)
   c r r4
   g8\p r r4
   a8 r r4
   f16 ( g f  g) f ( g f  g)
   e4

   % ******************************5th REPEAT
   \repeat volta 2 {
   r4
   r a8\p-. a-.
   a (  bes) r4
   r bes8\mf-. bes-.
   bes (  a) r4
   r b!8\f-. b-.
   c4 \> r8 d-.
   r c-. r  b\!-.
   c4 r
   c2\p ~
   c
   c4-. b-.
   c
   }

   % ******************************6th REPEAT
   \repeat volta 2 {
   r4
   R2
   r4 c8\f-. c-.
   c4 (  b)
   c c8-. c-.
   c2 ~
   c4 \> c8-. c-.
   c4 ( <<  b) { s8  s8\! } >>
   c4 r
   r a8\p-. a-.
   a (  bes) r4
   r bes8\mf-. bes-.
   bes (  a) r4
   r c!8\f-. c-.
   bes8[ ( d c  bes) ]
   a4 (  g)
   \paddinggDynamics a,8[ \> ( c a  c\!) ]
   bes[\p ( c bes  c) ]
   a[ ( c a  c) ]
   bes[ ( c bes  c) ]
   a4
   }

   % ******************************INTERLUDE
   r4
   g'8[\p ( a g  a) ] \normalDynamics
   f4 r \override DynamicLineSpanner.padding = #1.5
   f8[\mf ( g f  g) ] \normalDynamics
   e4 r
   e'\f r
   c r
   r8   b[\p ( c  d) ]
   es2\sfz (
   d8)[ b\p ( c  d) ]
   es2\sfz (
   d8)[ b\p ( c  d) ]
   es2\sfz (
   d8)[ cis ( d  e!) ]
   f[ ( e f  e) ]
   f4 \< f
   f << f { s8  s8\! } >>
   f4\f^\fermata

   % ******************************THEME LAST TIME + CODA
   r4
   g,4\p r
   a r
   d, ( g8  b)
   d (  c) c4 \< (
   b <<  a) { s8  s8\! } >>
   b4\f r8 c
   e16 (  d) c4 (  b8)
   b (  c) c4 (
   b  a)
   g8 ( a16 b c d e  f)
   g8 f16 (  d) c8 (  b)
   c r r4
   g8\p r r4
   a8 r r4
   f16 ( g f  g) f ( g f  g)
   e4 r
   r c'8\p-. c-.
   c2 \< ( ~
   c4 <<  f) { s8  s8\! } >>
   e4 r
   r c8\p-. c-.
   c2 \< ( ~
   c4 <<  f) { s8  s8\! } >>
   e4 c8\p-. c-.
   e2 (
   g
   fis
   f!
   e
   d
   c
   b)
   c4 d\f
   e d
   e e,8. e16
   e4 \bar "|."
}

% ********************************************************************************BASSOON********************************************************************************
bassoonRondo =  \relative c {
   \set Score.skipBars = ##t
   \key bes \major
   \clef bass
   \time 2/4
   \repeat volta 2 {
   \partial 4
   r4
   d\p r
   es r
   f ( a8  f)
   bes4 bes \< (
   a <<  g) { s8  s8\!} >>
   e4\f r8 f
   bes4 \> ( <<  c) { s8  s8\! } >>
   f,4
   }

   % ******************************2nd REPEAT IN RONDO
   \repeat volta 2 {
   r4
   r f'8\f-. f-.
   f (  es!) r4
   r es8-. es-.
   es (  d) d,4\p (
   es \< f
   g) << c, { s8  s8\! } >>
   d4 \> (  es)
   f8  f\! f\p f \paddingDynamics
   f \cresc f f f
   f f f f
   f f f f
   f f f f
   f f f f
   \! f4\f r \normalDynamics
   R2*2

   d4\p r
   es r
   f ( a8  f)
   bes4 g' \< (
   f <<  e) { s8  s8\!} >>
   es!4\f r8 d,
   es4 (  f)
   bes g (
   f  e)
   es!2
   d8[ es f f ]
   bes, r r4
   d8\p r r4
   es8 r r4
   f8[-. f-. f-. f-. ]
   bes,4
   }

   % ******************************MINORE
   \repeat volta 2 {
   r4 \noBreak
   \paddingDynamics bes8\p-. bes-. r4 \normalDynamics
   bes8-. bes-. r4
   a8[ \> a' a  a\! ]
   bes r f ( g
   as) \< r f ( g
   as) r f (  g\!
   as)[ \> bes-. c-.  c,\!-. ]
   f4
   }

   % ******************************2nd REPEAT IN MINORE
   \repeat volta 2 {
   des'4\f
   es (  des8) bes-.
   f'4 (  des)
   es (  des8) bes-.
   f r ges\p ( f
   es) r ges ( f
   es) r \paddingDynamics ges\f (  es) \normalDynamics
   des[ ( es  f) f, ]
   bes4
   }

   % ******************************THEME 3rd TIME
   r4
   d4\p r
   es r
   f ( a8  f)
   bes4 g' \< (
   f <<  e) { s8  s8\!} >>
   es!4\f r8 d,
   es4 (  f)
   bes g (
   f  e)
   es!2
   d8[ es f f ]
   bes, r r4
   d8\p r r4
   es8 r r4
   f8[-. f-. f-. f-. ]
   bes,4

   % ******************************5th REPEAT
   \repeat volta 2 {
   \paddingDynamics es8\p-. es-.
   es2 ~
   es4 es8\mf-. es-.
   es2 ~
   es4 es8\f-. es-. \normalDynamics
   es2 (
   d8) \> r es-. r
   f-. r  f\!-. r
   bes,4 r
   e2\p
   f4. (  g8)
   f4-. f,-.
   bes
   }
   % ******************************6th REPEAT
   \repeat volta 2 {
   bes'8\f-. bes-.
   as[ (  bes) g-. bes-. ]
   f[-. bes-. es,-. bes'-. ]
   d,[-. bes'-. c,-. bes'-. ]
   bes,-. bes'-. bes-. bes-.
   as[ (  bes) g-. bes-. ]
   f[-. \> bes-. es,-. bes'-. ]
   d,[-. bes'-. c,-.  bes'\!-. ]
   bes, r es\p-. es-.
   es2 ~
   es4 es8\mf-. es-.
   es2 ~
   es4 es8\f-. es-.
   e2
   f4 ( g8  as)
   bes4 (  bes,)
   << es2 \> { s4.  s8\! } >>
   bes2\p (
   es)
   bes (
   es4)
   }

   % ******************************INTERLUDE
   r4
   g2\p (
   c,4) r
   f2\mf (
   bes,4) r
   g\f r
   c r
   r8   f[\p ( g  a)]
   bes2\sfz (
   a8)[ f\p ( g  a)]
   bes2\sfz (
   a8)[ f\p ( g  a)]
   bes2\sfz (
   a8)[ gis ( a  b)]
   c[ ( b c  b) ]
   c4 r8 ges \< \noBreak
   f[ ( ges f  ges\!)]
   f4\f^\fermata

   % ******************************THEME LAST TIME + CODA
   r4
   d4\p r
   es r
   f ( a8  f)
   bes4 g' \< (
   f <<  e) { s8  s8\!} >>
   es!4\f r8 d
   es4 (  f)
   bes, g (
   f  e)
   es!2
   d8[ es f f ]
   bes, r r4
   d8\p r r4
   es8 r r4
   f8[-. f-. f-. f-. ]
   bes,4 bes'8-. bes-.
   as[ \< (  bes) g-. bes-. ]
   f[-. bes-. es,-. bes'-. ]
   d,[-. bes'-. c,-.  bes'\!-. ]
   bes,-. bes'-. bes\p-. bes-.
   as[ \< (  bes) g-. bes-. ]
   f[-. bes-. es,-. bes'-. ]
   d,[-. bes'-. c,-.  bes'\!-. ]
   bes,-. bes'-. bes\p-. bes-.
   bes,[ bes' ( a  bes) ]
   r   b[ ( c  b) ]
   r   c[ ( b  c) ]
   r   a[ ( bes!  a) ]
   r   bes[ ( a  bes) ]
   r   es,[ ( d  es) ]
   r   f[ ( e  f) ]
   r   f[ ( e  f) ]
   bes, bes' f\f f'
   bes,,[ bes' f f' ]
   bes,4 bes,8. bes16
   bes4 \bar "|."
}
