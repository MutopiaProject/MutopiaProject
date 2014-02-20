\version "2.18.0"

% 2nd Movement - MENUETTO

% ********************************************************************************OBOE********************************************************************************
oboeMenuettoOne =  \relative c' {
   \key bes \major
   \time 3/4
   \partial 4
   \repeat volta 2 {
   f4\mf
   f' \< ( d  bes\!)
   f2 d'4\mf
   f \< ( es  c\!)
   f,2 es'4\mf
   d ( f  d)
   c ( es  c)
   bes8 (  a) a (  g) a4 \noBreak
   bes r
   }

   % ******************************2nd REPEAT IN MENUETTO
   \repeat volta 2 {
   c\f ( ~
   c d e
   f g  a)
   bes2. (
   a4) r c,\p ( ~
   c d e
   f g  a)
   bes2 g8 (  e)
   f4 r c\p
   c2 es8 (  des)
   c4 r f\f
   f2 (  e4)
   f r a,\p (
   bes) r b (
   \cresc  c) r cis (
   d) r d (
   es) r \! e\mf
   f \< ( d  bes\!)
   f2 d'4\mf
   f \< ( es  c\!)
   f,2 es'4\mf
   d ( f  d)
   c ( es  c)
   bes8 (  a) a (  g) a4
   }
   \alternative {
      { \set Timing.measureLength = #(ly:make-moment 2/4)
        bes r
      }
      { \set Timing.measureLength = #(ly:make-moment 3/4)
        bes4 r r
      }
   }
   \break

   % ******************************TRIO
   \key es \major
   \repeat volta 2 {
   bes2.\p \< (
   <<  c) { s2  s4\! } >>
   es4 \> ( d  c\!)
   bes r es8 \< ( << f { s16  s16\! } >>
   g8 \> f es d c  bes\!)
   as!4 r d8 \< ( << es { s16  s16\! } >>
   f8 \> es d c bes  as\!)
   g4 r r
   R2.
   r4 r a'8\f ( bes
   c bes a g f  es)
   d ( es f g a  bes)
   a ( g f es d  c)
   bes2 \> ( d8  c\!)
   bes4 r r
   }

   % ******************************2nd REPEAT IN TRIO
   \repeat volta 2 {
   \paddinggDynamics f2.\p \< (
   <<  ges) { s2  s4\! } >> \normalDynamics
   bes4 \> ( as  ges\!)
   f r d'8 \< ( es
   g f es d c  bes\!)
   a4\f r c8\p \< ( d
   f es d c bes  a\!)
   bes4 r c8 (  d)
   bes4 r c8 (  d)
   << bes2.~ \> { s2 s8  s8\! } >>
   bes2.
   bes\p \< (
   <<  c) { s2  s4\! } >>
   es4 \> ( d <<  c) { s8  s8\! } >>
   bes4 r es8 \< ( f
   g f es d c  bes)
   as!4 ( c <<  f) { s8  s8\! } >>
   as2\f (  d,4)
   bes'2 (  b4)
   c ( as  f)
   es2 g8 (  f)
   es4 r es8\p ( f
   g f es d c  bes)
   c4 r f8 ( g
   bes as g f es  d)
   }
   \alternative {
      { es4 r r }
      { es4 r \bar "||" \key bes \major }
   }
}

% ********************************************************************************CLARINET********************************************************************************
clarinetMenuettoOne =  \relative c' {
   \key c \major
   \time 3/4
   \partial 4
   \repeat volta 2 {
   r4
   e\mf r r
   \paddingDynamics e8 \< ( g c  g)  c4\!
   d r r
   d,8 \< ( g b  g\!) d'4\mf \normalDynamics
   c r g
   a r a
   f f f \noBreak
   e r
   }

   % ******************************2nd REPEAT IN MENUETTO
   \repeat volta 2 {
   r
   d'2\f ( c4
   b a  g)
   fis ( g a
   b c  d)
   \paddinggDynamics fis,\p ( g a \normalDynamics
   b c  d)
   e2 c8 (  a)
   b4 r b\p
   c2. (
   b4) r b\f
   c2 d8 (  c)
   \paddingDynamics b4 r g\p( \normalDynamics
   a) r ais (
   \cresc  b) r b (
   c) r cis (
   d) r \! dis\mf (
   e) r g,
   g' \< ( e )  c\!
   g2 d'4\mf
   g \< ( f )  d\!
   c\mf r g
   a r a
   f f f
   }
   \alternative {
      { \set Timing.measureLength = #(ly:make-moment 2/4)
        e4 r
      }
      { \set Timing.measureLength = #(ly:make-moment 3/4)
        e4 r r
      }
   }
   \break

   % ******************************TRIO
   \key f \major
   \repeat volta 2 {
   a2.\p \< (
   <<  bes) { s2  s4\! } >>
   d4 \> ( c  bes\!)
   a r r
   r r a ( ~
   a  g) r
   r r g ( ~
   g  f) r
   r r \cresc f'8 ( g \noBreak
   a g f e d  c)
   \! b4\f ( c  d)
   c2. ~
   c4 b8 ( a g  f) \paddinggDynamics
   e \> ( g e g f  g\!)
   e4 r r
   }

   % ******************************2nd REPEAT IN TRIO
   \repeat volta 2 {
   e2.\p \< (
   <<  f) { s2  s4\! } >>
   as4 \> ( g  f\!)
   e r r
   r r e\f (
   f) f r
   r r f (
   e8 g e g f  g)
   e ( g e g f  g)
   e4 \> ( g <<  a) { s8  s8\! } >> \normalDynamics
   bes2.
   a\p \< (
   <<  bes) { s2  s8\! } >>
   d4 \> ( c <<  bes) { s8  s8\! } >>
   a4 r r
   r r bes8 \< ( c
   d c bes a g  f\!)
   e4\f ( g  c)
   f8 ( e f e f  es)
   d ( cis d cis d  bes)
   a ( c, a c bes  c)
   a4 r r
   f'2.\p ~
   f4 r r
   e ( g  bes)
   }
   \alternative {
      { a r r }
      { a r \bar "||" \key c \major }
   }
}

% ********************************************************************************BASSOON********************************************************************************
bassoonMenuettoOne =  \relative c {
   \key bes \major
   \clef bass
   \time 3/4
   \partial 4
   \repeat volta 2 {
   r4
   bes\mf r r
   r d (  bes)
   a r r
   r f (  a)
   bes r bes
   es r es
   f f f \noBreak
   bes, bes'
   }

   % ******************************2nd REPEAT IN MENUETTO
   \repeat volta 2 {
   r
   R2.
   r4 r c,\f ( ~
   c d e
   f g  a)
   bes2.\p
   a4 ( g  f)
   bes (  g) c
   f, f' r
   r e,\p e (
   f) f' r
   r ges,\f ges (
   f) f' r
   r f,\p r
   r \cresc f r \noBreak
   r f r
   r f r \!
   bes8\mf (  f') d-. f-. bes,-. f'-.
   bes,8 (  f') d-. f-. bes,-. f'-.
   f,8 (  f') c-. f-. a,-. f'-.
   f,8 (  f') c-. f-. a,-. f'-.
   bes,8 (  f') d-. f-. bes,-. f'-.
   es,8 (  es') d-. es-. es,-. es'-.
   f,8 (  f') es!-. f-. f,-. f'-.
   }
   \alternative {
      { \set Timing.measureLength = #(ly:make-moment 2/4)
        bes,4 bes,
      }
      { \set Timing.measureLength = #(ly:make-moment 3/4)
        bes'4 f bes,
      }
   }
   \break

   % ******************************TRIO
   \key es \major
   \repeat volta 2 {
   \paddingDynamics \paddingSlur es4-.\p \< ( es-.  es)-.
   es-. ( es-.  es\!)-.
   es-. \> ( es-.  es\!)-. \normalSlur
   es es' r
   r r e, (
   f) f, r \override Slur.direction = #1
   r r d' (
   es) es,\cresc \revert Slur.direction es'8 ( f \noBreak
   g f es d c  bes)
   a4 ( bes  c)
   \! f,\f ( g  a) \normalDynamics
   bes r d
   es r es \override DynamicLineSpanner.padding = #2.3
   f \> f << f { s8  s8\! } >>
   bes,4 bes' r
   }

   % ******************************2nd REPEAT IN TRIO
   \repeat volta 2 {
   \paddingSlur bes,-.\p \< ( bes-.  bes)-.
   bes-. ( bes-.  bes\!)-.
   bes-. \> ( bes-.   bes)\!-. \normalSlur \normalDynamics
   bes bes' r
   r r bes\f (
   c) c r
   r r c (
   bes) bes f (
   bes) bes f
   bes, r bes'8 \< ( << b { s16  s16\! } >>
   c8 \> as g f es  d\!)
   es4\p \< es es
   es es  es\!
   es8 \> ( d es d es  d\!)
   es4 es' r
   R2.
   r4 r d,8\f ( es
   f es d c bes  as)
   g4 g g
   as as as
   bes bes bes
   es, es' r
   es\p ( f g
   as) r r
   bes bes bes
   }
   \alternative {
      { es, r r }
      { es r \bar "||" \key bes \major }
   }
}
