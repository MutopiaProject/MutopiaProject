\version "2.18.0"


% 4th Movement - MENUETTO

% ********************************************************************************OBOE********************************************************************************
oboeMenuettoTwo =  \relative c'' {
   \key bes \major
   \time 3/4
   \repeat volta 2 {
   bes2\f c8  (  a)
   bes4 r8   bes[\p \< ( c  d\!) ]
   f (  es) d4. \> (  es8)
   d (  c)  bes4\! r
   c\f f16 ( g a g f e d  c)
   c8-. c4 c c8-.
   c4\p f16 ( g a g f e d  c)
   c8-. c4 c c8-.
   d16 \< ( c bes  a) bes ( c d e f g a  bes\!)
   c8 \> ( bes a g f  e\!)
   d bes'16 (  g) f4 (  e)
   f2 r4
   }

   % ******************************2nd REPEAT IN MENUETTO
   \repeat volta 2 {
   f2.\f \>
   e
   es!
   << d { s2 s8  s8\! } >>
   r8 c\p \< ( es c a  bes)
   r es ( g es cis  d\!)
   r bes' \> ( a g f  es\!)
   d4 (  c) r
   bes8\f ( c16 d es f g a bes a g  f)
   f8-. f4 f f8-.
   g16 ( f es  d) es ( f g a bes a g  f)
   f8-. f4 f f8-.
   f4-. as-. r
   g\p-. bes-. r
   d,8-. r es-. r c-. r
   bes\f (  g') f4. (  a,8)
   bes (  g') f4. (  a,8)
   bes4 r r
   }
   \break

   % ******************************TRIO
   \key f \major
   \repeat volta 2 {
   a2\p \< (  bes4\!)
   c\f (  d) r
   g,4.\p ( a8  bes4)
   c8 (  bes) a4 r
   r8 e'! \< ( d c b  c)
   r f ( e d c  b\!)
   g'2.\p \< ~
   << g { s2  s4\! } >>
   g2\f (  gis4)
   a ( b  c)
   e,4.\p (   g8[ f  d) ]
   c4 r r
   }

   % ******************************2nd REPEAT IN TRIO
   \repeat volta 2 {
   << c2.~ \p \< { s2 s8  s8\! } >>
   c4\f b-. r
   << bes!2.~ \p \< { s2 s8  s8\! } >>
   bes4\f a-. r
   d2\p \< (  es4\!)
   f\f (  g) r
   c,4.\p \< ( d8  es4)
   es (  d2) ~
   d4 g8 ( f e  d\!)
   << c2\f { s4 s4 \> } >> c8 (  bes\!)
   a2\p \< (  bes4\!)
   c\f (  d) r
   g,4.\p ( a8  bes4)
   c8 (  bes) a4 r
   c2. \< ~
   << c { s2  s4\! } >>
   r8 c' \cresc ( bes a g  f)
   r bes ( a g f  e)
   f4 r \! f\f (
   a) r a, (
   c4.)   a8[ ( bes  g) ]
   f4 r8   f'[ \> ( e  g) ]
   f4 r8   a[ ( bes  e,\!) ]
   f4 r r \key bes \major
   }
}

% ********************************************************************************CLARINET********************************************************************************
clarinetMenuettoTwo =  \relative c' {
   \key c \major
   \time 3/4
   \repeat volta 2 {
   \paddinggDynamics e8\f ( g e g f  g) \normalDynamics
   e4 r r
   c'\p ~ c r
   b (  c) r
   b\f r r8 b (
   c) c4 c c8-.
   b4\p r r8 b (
   c) c4 c c8-.
   b4 r r
   b r8   b[ ( c  d) ]
   c e16 (  c) b4 (  a)
   b2 r4
   }

   % ******************************2nd REPEAT IN MENUETTO
   \repeat volta 2 {
   b2.\f \>
   c
   d
   << g, { s2 s8  s8\! } >>
   a2\p \< (  g4)
   a ( b <<  c) { s8  s8\! } >>
   r8 a' \> ( g f e  d\!)
   c4 (  b) r
   e,\f r r8 e' (
   f) f4 f f8-.
   e4 r r8 e (
   f) f4 f f8-.
   e4-. c-. r
   c\p-. es-. r
   c8-. r d-. r b-. r
   c\f ( g e g f  g)
   e ( g e g  f  g)
   e4 r r
   }
   \break

   % ******************************TRIO
   \key g\major
   \repeat volta 2 {
   \paddingDynamics g2\p \< (  a4\!) \normalDynamics
   b\f (  c) r
   \paddinggDynamics fis,4.\p ( \normalDynamics g8  a4)
   b8 (  a) g4 r
   a2.\p \< ~
   << a { s2 s8  s8\! } >>
   r8 fis'! \< ( e d cis  d)
   r g ( fis e d  cis\!)
   d2\f (  cis4)
   b ( a  gis)
   a\p d8 ( fis e  cis)
   d4 r r
   }

   % ******************************2nd REPEAT IN TRIO
   \repeat volta 2 {
   \paddingDynamics r4 bes\p \< ( <<  a) { s8  s8\! } >>
   gis4\f-. a-. r
   r4 a\p \< ( <<  g!) { s8  s8\! } >>
   fis4\f-. g-. r \normalDynamics
   c2\p \< (  d4\!)
   e\f (  f) r
   b,2.\p \< ~
   b4. ( c8  d4)
   d ( <<  c2) { s4.  s8\! } >>
   c4\f d8 \> ( c b  a\!)
   \paddingDynamics g2\p \< (  a4\!) \normalDynamics
   b\f (  c) r
   \paddinggDynamics fis,4.\p ( \normalDynamics g8  a4)
   b8 (  a) g4 r
   r8 d' \cresc ( c b a  g)
   r c ( b a g  fis)
   g (  b) d2 ~
   d2.
   d4 r \! b\f (
   g') r g, (
   b4.)   g8[ ( a  fis) ]
   g (  b) d4. \> (  c8)
   b (  g') d4. (  c8\!)
   b4 r r \key c \major
   }
}

% ********************************************************************************BASSOON********************************************************************************
bassoonMenuettoTwo =  \relative c {
   \key bes \major
   \clef bass
   \time 3/4
   \repeat volta 2 {
   bes4\f d f
   bes bes, r
   g'\p (  f) r
   es (  d) r
   f\f r r8 f
   g ( f e c d  e)
   f4\p r r8 f
   g ( f e c d  e)
   f4 r r
   f r8   f[ ( g  a) ]
   bes4 (  c) c,
   f f, r
   }

   % ******************************2nd REPEAT IN MENUETTO
   \repeat volta 2 {
   r8 f'\f \> ( e f e  f)
   r g ( fis g fis  g)
   r a ( gis a gis  a)
   r bes ( a bes a  bes\!)
   es2\p \< (  d4)
   c ( f,  bes)
   << es,2. { s2 s8  s8\! } >>
   f8[ f' ]   f,[ \> ( es d  c\!) ]
   bes4\f r r8 bes'
   c ( bes a f g  a)
   bes4 r r8 bes
   c ( bes a f g  a)
   bes4-. d,-. r
   es\p-. e-. r
   f8-. r es!-. r f-. r
   bes,4\f d (  f)
   bes, d (  f)
   bes, bes' r
   }
   \break

   % ******************************TRIO
   \key f \major
   \repeat volta 2 {
   \paddingSlur f4\p-. \< ( f-.  f\!)-. \normalSlur
   f\f (  bes,) r
   \paddingDynamics \paddingSlur c\p-. ( c-.  c)-. \normalSlur \normalDynamics
   c (  f) r
   c\p \< (  g) e'-.
   d (  g,) << f'-. { s8  s8\! } >>
   e4\p \< (  g,) e'-.
   d (  g,) << f'-. { s8  s8\! } >>
   e4\f e (  d)
   c ( b  a)
   g\p g g
   c c' r
   }
   % ******************************2nd REPEAT IN TRIO
   \repeat volta 2 {
   r c,\p \< ( <<  es) { s8  s8\! } >>
   d4\f-. g,-. r
   r bes\p \< ( <<  des) { s8  s8\! } >>
   c4\f-. f,-. r
   bes\p \< bes  bes\!
   bes\f-. es-. r
   f\p \< f f
   fis fis fis
   g g ( <<  f!) { s8  s8\! } >>
   e4\f e \> << e { s8  s8\! } >>
   f4\p \< f  f\!
   f\f (  bes,) r
   c\p c c
   c (  f) r
   f( c\cresc) a'-.
   g (  c,) bes'-.
   a (  c,) a'-.
   g (  c,) bes'-.
   \! a8\f c ( bes a g  f)
   r f' ( e d c  b)
   c4 c, c
   \paddingDynamics f a, \> (  c)
   f a, ( <<  c) { s8  s8\! } >> \normalDynamics
   f,4 f' r \key bes \major
   }
}
