\version "2.18.0"

% 3nd Movement - LARGHETTO

% ********************************************************************************OBOE********************************************************************************
oboeLarghetto =  \relative c'' {
   \key bes \major
   \time 3/4
   \repeat volta 2 {
   \override Stem.direction = #-1
   bes4\p (  f8) bes \< ( c  d\!) \revert Stem.direction
   d16 \> ( f es  d)  c4\! r
   c4 (  f,8) c' \< ( d  es\!)
   e16 \> ( g f  es)  d4\! r
   f8. \< ( g32  a\!) bes8 \> ( a g  f\!)
   f (  e) es2
   d8. \< ( es32  f\!) g8 \> ( f es  d\!)
   f8. ( d16  c4) r
   c4. \<   a'8[ ( g  f\!) ]
   g16 \> ( f e  f)  e4\! e16 \< ( f g  a\!)
   bes8 g4 \>   e8[ ( c  bes\!) ]
   c16\p ( bes a  bes) a4 r
   d\p \< \paddingSlur d8-. ( d-. d-.  d\!)-. \normalSlur
   cis8.\f (  d16) d4 r8. d16\p \noBreak
   es8. (  d16) d4 r8. d16 \noBreak
   g4 ( e->  f) ~
   f8 c4 f16 \< (  a) a ( g f  g\!)
   }
   \alternative {
      { g4 (  f) f16 \> ( e es  c\!) }
      { \paddinggDynamics g'4 \> (  f\!) r \normalDynamics }
   }

   % ******************************2nd REPEAT
   \repeat volta 2 {
   f4\f \> (  a,8\!) \paddinggDynamics \paddingSlur a\p-. \< ( a-.  a\!)-. \normalSlur \normalDynamics
   a \> ( c16  bes)  bes2\!
   f'4\f \> (  c8\!) c\p \< c (  d\!)
   d \> ( f16  es)  es2\!
   d16 \< ( es e  f)  g8\! ( f es  d)
   f8. \> ( d16  c4\!) r \override Stem.direction = #-1
   bes4\p (  f8) bes \< ( c  d\!) \revert Stem.direction
   d16 \> ( f es  d)  c4\! r
   c4 (  f,8) c' \< ( d  es\!)
   e16 \> ( g f  es)  d4\! r
   f8. ( g32  a) bes8 ( a g  f)
   f4\cresc (   e2) \noBreak
   c8. ( d32  es!) f8 ( g f  es)
   es4 (   d2)
   d8. ( es32  f) es8 ( d c  bes)
   \! a16\f ( f a c f a c a bes f es  d)
   \paddingDynamics d \> ( c es  g) bes,4 d16 ( c bes  c\!)
   c4\p (  bes) r \normalDynamics
   }
}

% ********************************************************************************CLARINET********************************************************************************
clarinetLarghetto =  \relative c' {
   \key c \major
   \time 3/4
   \repeat volta 2 {
   e4\p r8   g[ \< ( b  c\!) ]
   cis8 \> ( d16  c)  b4\! r
   b4 r8   b[ \< ( c  d\!) ]
   dis8 \> ( e16  d)  c4\! r
   e r r
   a,8. \< ( b32  c\!) d8 \> ( c b  d\!)
   c2 b8 (  c)
   e8. ( c16  b4) r \override Stem.direction = #-1
   r8   b[ \< b b ]   c[ (  cis\!) ] \revert Stem.direction
   r d d16 \> ( dis e  d) c ( b a  g\!)
   fis8 c'4 a a8
   b16 ( a g  a) g8 b16 ( \<  g) c (  a) d (  b\!)
   \paddinggDynamics g4\p \< \paddingSlur g8-. ( g-. g-.  g\!)-. \normalSlur \normalDynamics
   g4\f g r8. g16\p \noBreak
   gis8. (  a16) a4 r
   r c-> (  cis)
   d8 b4 b16 \< (  d) d ( c b  c\!)
   }
   \alternative {
      { c4 (  b) r }
      { c4 \> (  b\!) r }
   }

   % ******************************2nd REPEAT
   \repeat volta 2 {
   b4\f \> (  g8\!) \paddinggDynamics \paddinggSlur g\p-. \< ( g-.  g\!)-. \normalSlur
   g \> ( b16  a)  a2\! \normalDynamics \override Stem.direction = #-1
   b4\f \> ~  b8\! b\p \< b (  cis\!) \revert Stem.direction
   cis \> ( e16  d)  d2\!
   c!16 \< ( d dis  e)  f8\! ( e d  c)
   e8. \> ( c16  b4\!) r
   e,4\p r8   g[ \< ( b  c\!) ]
   cis8 \> ( d16  c)  b4\! r
   b4 r8   b[ \< ( c  d\!) ]
   dis8 \> ( e16  d)  c4\! r
   R2.
   a8. ( b32  c) d8 \cresc ( c b  c)
   c4 (   b2)
   g8. ( a32  bes) c8 ( d c  bes)
   a2. \! \noBreak
   g8\f g4 g'8 ~ g16 e ( d  c)
   \paddinggDynamics a8. \> (  f16) e4 g16 ( f e  f\!)
   f4\p (  e) r \normalDynamics
   }
}

% ********************************************************************************BASSOON********************************************************************************
bassoonLarghetto =  \relative c' {
   \key bes \major
   \clef bass
   \time 3/4
   \repeat volta 2 {
   bes4\p r8   d[ \< ( c  bes\!) ]
   f4 \>  r16\! f' ( e  f) c-. f-. a,-. c-.
   f,4 r8   es'[ \< ( d  c\!) ]
   bes4 \>  r16\! bes ( a  bes) f-. bes-. d,-. f-.
   bes,4 r r
   R2.
   \paddingDynamics bes8. \< ( c32  d\!) es8 \> ( d c  bes\!) \normalDynamics
   f'4 r16 f' ( e  f) c-. f-. a,-. c-.
   f,8 f f f d d
   r c' c c c c
   r c, c c e e
   r f f f \< ( g  a\!)
   \paddingSlur bes4\p \< bes8-. ( bes-. bes-.  bes\!)-. \normalSlur
   a8.\f (  bes16) bes4 r8. bes16\p \noBreak
   c8. (  bes16) bes4 r
   r cis4-> (  d)
   c!8 c c c \< c,  c\!
   }
   \alternative {
      { f f, f' r r4 }
      { f8 \> f,  f'\! r r4 }
   }
   % ******************************2nd REPEAT
   \repeat volta 2 {
   r8 f\p f f \< f  f\!
   r f4 \>  e16\! ( f e \< f e  f\!)
   f8\fp \< (  es!) es es es (  d\!)
   c4 \>  r8\!   c'[ ( g  a) ]
   bes4 \< es,4. (  e8\!)
   f4 \> ~ f16 e ( f g f d es  c\!)
   bes4\p r8   d'[ \< ( c  bes\!) ]
   f4 \>  r16\! f' ( e  f) c-. f-. a,-. c-.
   f,4 r8   es'[ \< ( d  c\!) ]
   bes4 \>  r16\! bes ( a  bes) f-. bes-. d,-. f-.
   bes,8 bes' r16 bes, d f bes8 bes,
   c8 c' r16 c, e g c8 \cresc c, \noBreak
   f8 f' r16 f, a c f8 f,
   bes,8 bes' r16 bes, d f bes8 bes,
   es8 es' r16 es, g bes es8 es,
   \! es'4\f es, d8 (  g)
   es \> es f f f  f\!
   bes,\p bes' bes,4 r
   }
}
