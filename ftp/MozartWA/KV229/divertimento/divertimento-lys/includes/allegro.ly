\version "2.18.0"

% 1st Movement - ALLEGRO

% ********************************************************************************OBOE********************************************************************************
oboeAllegro =  \relative c'' {
   \key bes \major
   \time 4/4
   \repeat volta 2 {
   f2\f d
   f8 (  es) c-. a-. bes4 r8 \paddinggDynamics f\p ( \normalDynamics
   g) \< a-. bes-. c-. d-. es-. f-.  g\! (
   f) es4 \> d8-. d(   c)\! r4
   f2\f d
   f8 (  es) c-. a-. bes4 r8 bes\p (
   a) \< bes-. c-. d-. es-. f-. g-.  a\!-.
   bes2\f g
   e (  f8) r es4\p (
   d8) r e16 ( f g  e) f8 r a4 (
   bes8) r e,16 ( f g  e) f8 r r4
   }

   % ******************************2nd REPEAT
   \repeat volta 2 {
   f2\f des
   b (  c4) r8. g'16-.\p \noBreak
   f8-. r f-. r es-. r es-. r
   d-. r d-. r c-. r r4
   es2\f ces
   a! (  bes4) r8. f'16-.\p \noBreak
   es8-. r es-. r d-. r d-. r
   c-. r c-. r bes-. r bes'4\f ~
   bes a2 g4 ~
   g f2 \dim es4 ~ \noBreak
   es d c8-. g'4 f8-.
   es8 ( d c  bes) a (  f') f-. f-.
   d ( f bes,  d) \! \paddingSlur f-.\p ( f-. f-.  f)-. \normalSlur
   d ( f bes,  d) f,4 r

   % ******************************3rd PART
   f'2\f d
   f8 (  es) c-. a-. bes4 r8 \paddinggDynamics f\p ( \normalDynamics
   g) \< a-. bes-. c-. d-. es-. f-.  g\! (
   f) es4 \> d8-. d (   c)\! r4
   f2\f d
   f8 (  es) c-. a-. bes4 r8 bes\p (
   a) \< bes-. c-. d-. es-. f-. g-.  a\!-.
   bes2\f g
   f8 (  d) f16 ( es d  c) bes8 r d4\p (
   es8) r a4 (  bes8) r d,16 ( es f  d)
   es8 r c16 ( d es  c) bes8 r r4
   }
}

% ********************************************************************************CLARINET********************************************************************************
clarinetAllegro =  \relative c' {
   \key c \major
   \time 4/4
   \repeat volta 2 {
   e2\f ( g4  bes)
   a ( f  e) r8 \paddinggDynamics e\p ( \normalDynamics
   f) \< g-. a-. b-. c-. d-. e-.  f\! (
   e) d4 \> c8-. c (   b)\! r4
   e,2\f ( g4  bes)
   a ( f  e) r8 \paddinggDynamics c\p ( \normalDynamics
   d) \< e-. f-. g-. a-. b-. c-.  d\!
   e2.\f (  c4)
   a8 ( b16  c) d8-. c-. b r b4\p (
   c8) r c4 (  b8) r f'4 (
   e8) r c4 (  b8) r r4
   }

   % ******************************2nd REPEAT
   \repeat volta 2 {
   bes2\f g
   e8 ( f16  g) a8-. g-. f4 r8. f'16-.\p \noBreak
   f8-. r e-. r e-. r d-. r
   d-. r cis-. r d-. r r4
   as2\f f
   d8 ( e16  f) g8-. f-. e4 r8. e'16-.\p \noBreak
   e8-. r d-. r d-. r c-. r
   c-. r b-. r c-. r e4\f
   d2 c
   b a \dim \noBreak
   g a8-. f'4 e8-.
   d ( c b  a) g (  g') g-. g-.
   e ( g c,  e) \! \paddingSlur g-.\p ( g-. g-.  g)-. \normalSlur
   e ( g c,  e) g,4 r

   % ******************************3rd PART
   e2\f ( g4  bes)
   a ( f  e) r8\paddinggDynamics  e\p ( \normalDynamics
   f) \< g-. a-. b-. c-. d-. e-.  f\! (
   e) d4 \> c8-. c (   b)\! r4
   e,2\f ( g4  bes)
   a ( f  e) r8 \paddinggDynamics c\p ( \normalDynamics
   d) \< e-. f-. g-. a-. b-. c-.  d\!
   e2\f f
   e8 (  c) e16 ( d c  b) c8 r bes4\p (
   a8) r f'4 (  e8) r bes4 (
   a8) r f4 (  e8) r r4
   }
}

% ********************************************************************************BASSOON********************************************************************************
bassoonAllegro =  \relative c {
   \key bes \major
   \time 4/4
   \clef bass
   \repeat volta 2 {
   bes8\f bes' bes bes bes bes bes bes
   bes bes bes bes bes4 r
   R1
   r8 f  \> ( a  bes) f'-.  f,\!-. r4
   bes,8\f bes' bes bes bes bes bes bes
   bes bes bes bes bes4 r
   R1
   r8 bes\f ( a  bes) bes,-. bes' ( a  bes)
   c,-. c' ( b  c) f, f\p f f
   f f f f f f f f
   f f f f f r r4
   }

   % ******************************2nd REPEAT
   \repeat volta 2 {
   r8 f\f ( e  f) r as ( g  as)
   r g ( fis  g) c,4 r8. c'16-.\p \noBreak
   a8-. r b-. r c-. r as-. r
   f-. r g-. r c,-. r r4
   r8 es\f ( d  es) r ges ( f  ges)
   r f ( e  f) bes,4 r8. bes'16-.\p \noBreak
   g8-. r a-. r fis-. r g-. r
   es-. r f-. r bes,-. r r g''-.\f
   es (  c) f,-. f'-. d (  bes) r es-.
   c (  a) d,-. d'-. bes (  g) r c-.
   a\dim (  f) bes,-. bes'-. es, es es es
   es es e e f f'-. f-. f-.
   d ( f bes,  d) \! \paddingSlur f-.\p ( f-. f-.  f)-. \normalSlur
   d ( f bes,  d) f,4 r
   % ******************************3rd PART
   bes,8\f bes' bes bes bes bes bes bes
   bes bes bes bes bes4 r
   R1
   r8 f  \> ( a  bes) f'-.  f,\!-. r4
   bes,8\f bes' bes bes bes bes bes bes
   bes bes bes bes bes4 r
   R1
   r8 bes\f ( a  bes) es,-. es' ( d  es)
   f, f' f, f' bes,, bes'\p bes bes
   bes bes bes bes bes bes,, bes bes
   bes bes bes bes bes r r4
   }
}
