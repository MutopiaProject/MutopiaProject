\version "2.14.2"

rightMvtI = \relative c''
{
  \clef treble
  \key f \major

  <<
    {
      r8 f a, bes |
      c4 d |
      c8 f4 es16 d |
      <bes d>8 <a c> r4
    }
    \\
    {
      r4\f f8-. g-. |
      a4 bes |
      f2 |
      f4 r
    }
    \\
    {
      s2 |
      s2 |
      a4 bes |
      s2
    }
  >>
  <<
    {
      r8 c' e, f |
      g4 a |
      g8 c4 bes16 a |
      <f a>8 <e g>
    }
    \\
    {
      r4 c8 d |
      e4 f |
      c2 |
      c4
    }
    \\
    {
      s2 |
      s2 |
      e4 f |
      s4
    }
  >>
  r16 c16 bes a |
  bes8 g'~ g16 bes,16 a g |
  a g f g a bes c d |
  es8 c'~ c16 es, d c |
  d c bes c d e f g |
  as16 g32 f g8~ g16 f32 e f8~ |
  f16 e32 d e8~ e16 g e c |
  bes-. g'( e c) bes-. g'( e c) |
  bes-. g'( e c) bes-. g'( e bes) |
  a-. a'( f des) c-. a'( f des) |
  c-. a'( f des) c-. a'( f es) |
  d-. b'( as f) d-. b'( as f) |
  d-. b'( as f) d-. b'( as f) |
  e c' g e c e d f |
  e g e c g bes a c |
  bes d bes g e g f a |
  g bes g e c bes' a g |
  a f g a bes c d e |
  f e d c
  <<
    {
      c'8 f, |
      <c f>4 <c e>~ |
      e16 f8. r4 |
      r16 c f8~ f <c e> |
      <a c f>4
    }
    \\
    {
      r8 <a c> |
      a4 g |
      f s |
      s4 s8 bes |
      s4
    }
    \\
    {
      \voiceFour
      s4 |
      s2 |
      c8 b~b16 d c bes |
      a8. a16 g4 |
      f
    }
  >> r8 c'\f |
  d16 c d8~d16 f es d |
  c e f8~f16 e d c |
  bes a bes d g8 bes, |
  bes\prall a r a
  g16( bes) bes( a) a( f') f( e) |
  e( d) d( c) c( bes) bes( a) |
  g bes c32( bes a16) a( f') g32( f e16) |
  f32( e d16) e32( d c16) d32( c bes16) c32( bes a16) |
  bes32( a g16) a8~ a16 c16 bes a |
  g b c8~ c16 b a g |
  f e f a d8 f, |
  f\prall e r16 c' d e |
  a, e( f a d) d e f |
  b, fis( g b e) e f g |
  c, gis( a c fis) fis g a |
  g\prall fis g8~ g16 g, b d |
  f e f8~ f16 g,  b d |
  e d e8~ e16 g, c d |
  es-. c( b c) fis c a' c, |
  b-. f( e f) b f d' f, |
  e g c g' f e d c |
  c4 r4 |
  <<
    {
      r8 c\f e, f |
      g4 a |
      g16 a bes4 a16 g |
      a4 r |
      r8 f' a, bes
      c4 d |
      c16 d es4 d16 c |
      d4 r
    }
    \\
    {
      s4 c,8 d |
      e4 f |
      e2 |
      r16 f e d c s16 s8 |
      r4 f8 g |
      a4 bes |
      a2 |
      r16 bes a g f s16 s8
    }
  >> |
  r16 d'( cis d) bes'8 d,~ |
  d16 cis( b cis) a'8 c,~ |
  c16 b( a b) g'8 bes, |
  bes8\prall a r4 |
  r16 d bes g a d g, e |
  f d' g, e f d' e, cis |
  d\p d' bes32 a g16 a d g,32 f e16 |
  f d' g,32 f e16 f d' e,32 d cis16 |
  <<
    {
      \voiceOne
      r8 a''\f bes a |
      s8 g a g |
      r f g f |
      r f g f~
    }
    \new Voice
    {
      \voiceTwo
      d,8 f' g f |
      e, e' f e |
      f, d' e d |
      f, d' e d
    }
  >> \oneVoice
  \stemUp
  f16 e32 d e8~ e16 d32 cis d8~ |
  d16 cis32 b cis8~ \stemNeutral cis16 e cis a |
  g-. e'( cis a) g-. e'( cis a) |
  g-. e'( cis a) g-. e'( cis a) |
  f-. f'( d bes) a-. f'( d bes) |
  a-. f'( d bes) a-. f'( d c) |
  b-. gis'( f d) b-. gis'( f d) |
  b-. gis'( f d) b-. gis'( f d) |
  cis a' e cis a cis b d |
  cis e cis a e g f a |
  g bes g e cis e d f |
  e g e cis a g' f e |
  f d e f g a b cis |
  d cis b a
  <<
    {
      a'8 d, |
      <d f>4 <cis e>~ |
      e16 d8. r4 |
      r16 a d8~ d <a cis> |
      <f a d>4
    }
    \\
    {
      r8 a |
      a4 g |
      f s |
      s4 a8\rest g |
      s4
    }
    \\
    {
      \voiceFour
      s4 |
      s2 |
      cis16 d gis,8~ gis16 bes a g |
      f8. f16 e4 |
      d
    }
  >> r8 a'\f |
  a16\prall gis a8 a16\prall gis a8~ |
  a16 b cis d e8 a, |
  a16\prall gis a8 a16\prall gis a8~ |
  a16 cis d e f8 a, |
  a16\prall gis a8 a16\prall gis a8~ |
  a16 cis e f g8 a,~ |
  a16 g' f e32 d bes'8 g,~ |
  g16 f' e d32 c a'8 f,~ |
  f16 es' d c32 bes g'16 d c bes32 a |
  f'16 c bes a32 g es'16 bes a g32 f |
  d'16 a bes d es, d' c bes |
  a g a c f, es' d c |
  <<
    {
      d8 bes' d, es |
      f4 g |
      f8 bes4 as16 g |
      <es g>8 <d f> r8 <d f> |
      <d f> <c es> r <c es> |
      <c es> <bes d> r <bes d> |
      <bes d> <a c> r <a c> |
      <a c> <g bes> bes'4~ |
      bes8 a16 g a fis g a
    }
    \\
    {
      r4 bes,8 c |
      d4 es |
      bes2~ |
      bes4 g~ |
      g f~ |
      f es~ |
      es d~ |
      d r16 d' g f |
      es4 s4
    }
    \\
    {
      s2 |
      s2 |
      d4 es |
      s2 |
      s2 |
      s2 |
      s2 |
      s2 |
      s2
    }
  >> |
  d2~\prallprall \startTrillSpan |
  d~ |
  d~ |
  d8 \stopTrillSpan g, bes d |
  c2~\prallprall \startTrillSpan |
  c~ |
  c~ |
  c8 \stopTrillSpan f, a c |
  f f,
  <<
    {
      bes4~ |
      bes a~ |
      a~ a16 a g f |
      e g e d c4
    }
    \\
    {
      r8 d |
      e16 g e c r8 c |
      d16 f d c bes4~ |
      bes~ bes16 bes a g
    }
  >> |
  a c f e d c bes a |
  bes e g f e d c bes |
  c f a g f e d c |
  d f bes a g f e d |
  e c e g bes c e g |
  a8 d, e16 d cis d~ |
  d g d b c b c e |
  f8 bes, c16 bes a bes~ |
  bes es bes g a g a c |
  d8 g, a16 g fis g~ |
  g c g e f e f a |
  bes2~\prallprall \startTrillSpan |
  bes16 \stopTrillSpan g' e c bes g' e c |
  bes2~\prallprall \startTrillSpan |
  bes16 \stopTrillSpan g' e c bes g' e c |
  <<
    {
      a8 f' a, bes |
      c4 d~ |
      d8 c16 d-. es8 d16 c |
      d4 r |
      r8 g b, c |
      d4 e~ |
      e8 d16 e f8 e16 d |
      e4
    }
    \\
    {
      r4 f,8 g |
      a4 bes |
      bes8 a4. |
      bes4 r |
      r g8 a |
      b4 c |
      c8 b4. |
      c4
    }
  >> r8 c\f |
  c16\prall b c8 c16\prall b c8~ |
  c16 d e f g8 c,-. |
  c16\prall b c8 c16\prall b c8~ |
  c16 e f g a8 c, |
  c16\prall b c8 c16\prall b c8~ |
  c16 e g a bes8 c,-~ |
  c16 bes' a g32 f c'8 es,~ |
  es16 d32 c d16 c32 bes g'8 bes,~ |
  bes16 a32 g a16 g32 f d'8 f, |
  f8\prall e r bes'' |
  a16 bes c f, a g f e |
  f c d f bes, a bes d |
  f bes, c f a, g a c |
  f a, b f' g, f g f' |
  e f g f e d c bes |
  a bes c f, a g f e |
  <<
    {
      f8\f f' a, bes |
      c4 d |
      c8 f4 es16 d |
      <bes d>8 <a c> r4 |
    }
    \\
    {
      s4 f8 g |
      a4 bes |
      f2 |
      f4 r |
    }
    \\
    {
      s2 |
      s2 |
      a4 bes |
      s2 |
    }
  >> |
  <<
    {
      r8 c' e, f |
      g4 a |
      g8 c4 bes16 a |
      <f a>8 <e g>
    }
    \\
    {
      r4 c8 d |
      e4 f |
      c2 |
      c4
    }
    \\
    {
      s2 |
      s2 |
      e4 f |
      s4
    }
  >>
  r16 c16 bes a |
  bes8 g'~ g16 bes,16 a g |
  a g f g a bes c d |
  es8 c'~ c16 es, d c |
  d c bes c d e f g |
  as16 g32 f g8~ g16 f32 e f8~ |
  f16 e32 d e8~ e16 g e c |
  bes-. g'( e c) bes-. g'( e c) |
  bes-. g'( e c) bes-. g'( e bes) |
  a-. a'( f des) c-. a'( f des) |
  c-. a'( f des) c-. a'( f es) |
  d-. b'( as f) d-. b'( as f) |
  d-. b'( as f) d-. b'( as f) |
  e c' g e c e d f |
  e g e c g bes a c |
  bes d bes g e g f a |
  g bes g e c bes' a g |
  a f g a bes c d e |
  f e d c
  <<
    {
      c'8 f, |
      <c f>4 <c e>~ |
      e16 f8. r4 |
      r16 c f8~ f <c e> |
      <a c f>2\fermata
    }
    \\
    {
      r8 <a c> |
      a4 g |
      f s |
      s4 s8 bes |
      s2
    }
    \\
    {
      \voiceFour
      s4 |
      s2 |
      c8 b~ b16 d c bes |
      a8. a16 g4 |
      f2
    }
  >>
}

leftMvtI = \relative c
{
  \clef bass
  \key f \major

  <<
    <a c f>4
    \\
    f4
  >>
  r4 |
  r8 f'' d bes |
  r8 f d bes |
  <<
    f'4
    \\
    { f8 f, }
  >>
  r4 |
  <<
    <e' g c>4
    \\
    c4
  >>
  r4 \clef treble |
  r8 c'' a f \clef bass |
  r8 c a f |
  <<
    c'4
    \\
    { c8 c, }
  >>
  r4 |
  <<
    {
      <g' c>4 <e g c>~ |
      c'8 a c f
    }
    \\
    {
      e,4 c |
      f r
    }
  >> \clef treble |
  <<
    {
      <c' f>4 <a c f>~ |
      f'8 d f bes |
      <f b>4 <d g> |
      \clef bass
      <b d> <g c>
    }
    \\
    {
      a4 f |
      bes r |
      d b |
      g c,
    }
  >> |
  r8 c'16 d e8 g |
  e c c,4 |
  r16 c'16 d e f8 a |
  f c c,4 |
  r8 d'16 e f8 d16 e |
  f8 d g, b |
  c c,16 d e8 g |
  c c,16 d e8 f |
  g c,16 e g8 a |
  bes c,16 d e8 c |
  f16 a g f e d c bes |
  a c d e f g a bes |
  c4 c, |
  d r8 e |
  f a, bes c |
  f, \clef treble
  <<
    {
      a'' a a |
      bes bes bes bes |
      bes bes a a |
      g g g g |
      g f r f |
      f e f a |
      g f e f |
      f e f a |
      g f e g |
      f f f f |
      f f e e |
      d d d d
    }
    \\
    {
      f f f |
      f f f f |
      f f f f |
      f f e e |
      f f,16 g a8 f |
      c' c c c |
      c c c c |
      c c c c |
      c c c c |
      c c c c |
      c c c c |
      c c b b
    }
  >> |
  \clef bass
  <<
    {
      d8 c r4 |
      r16 g a c f8 r8 |
      r16 a, b d g8 r8 |
      r16 b, c e a8 c,8 |
      d b d f |
      d b d f |
      g16 f e d c8 s8 |
      s2 |
      r8 d, g4~ |
      g8 c,4 b8 |
      c16 c'[ b a] g f e d |
      c s16 s8 s4 |
      r8 c' a f |
      c2~ |
      c8 r r16 bes'16 a g |
      f s16 s8 s4 |
      r8 f' d bes |
      f2~ |
      f8 r8 s16
    }
    \\
    {
      c'8 c,16 d e8 c |
      f4 r8 d |
      g s r e |
      a4 r8 a |
      b g b d |
      b g b d |
      c4~ c16 b a g |
      fis e d c b a g fis |
      g4 r8 b |
      c e, f g |
      g16 r16 r8 r4 |
      r16 c b a g f e d |
      c8 r r4 |
      r8 g' e c |
      f r r4 |
      r16 f'16 e d c bes a g |
      f8 s8 s4 |
      r8 c' a f |
      bes r8 r16
    }
  >> es' d c |
  bes8 g'~ g16 bes, a g |
  a8 f'~ f16 a, g f |
  g8 e'~ e16 d cis d |
  g, d' cis e a, g f e |
  f8 g f e |
  d bes' a g |
  f g f e |
  d bes' a g |
  f16 cis'([ d e] d cis d) f,-. |
  g-. cis( d e d cis d) g,-. |
  a-. cis( d e d cis d) a-. |
  bes-. cis( d e d cis d) \change Staff = upper f \change Staff=lower |
  <<
    {
      \voiceThree
      \change Staff=upper \override Stem #'length = #4.8 <d gis>4 <b e> |
      \voiceOne
      \change Staff=lower \revert Stem #'length <gis b> <e a> |
    }
    \\
    {
      b'4 gis |
      e a,
    }
  >> |
  r8 a'16 b cis8 e |
  cis a a,4 |
  r16 a'16 b cis d8 f |
  d a a,4 |
  r8 b'16 cis d8 b16 cis |
  d8 b e, gis |
  a8 a,16 b cis8 e |
  a a,16 b cis8 d |
  e a,16 cis e8 f |
  g a,16 b cis8 a |
  d16 f e d cis b a g |
  f a b cis d e f g |
  a4 a, |
  bes r8 cis |
  d f, g a |
  <<
    {
      d,8 s s4 |
      e''8 r f r |
      e r r4 |
      f8 r e r |
      f16 g f e d e f d |
      g8 r f r |
      e s
    }
    \\
    {
      s8 d,16 e f= g a b |
      cis8 a d a |
      cis a16 b cis d e cis |
      d8 a cis a |
      d e,8\rest r4 |
      e'8 a, d=' a |
      cis16 d cis b
    }
  >>
  a g f e |
  d d' e f g, f' e d |
  c, c' d e f, es' d c |
  bes, bes' c d es,8 a |
  d, g c, f |
  bes, d g es |
  f c a f |
  bes bes, r4 \clef treble |
  r8 bes''' g es \clef bass |
  r bes g es |
  bes'16 c d c bes a bes g |
  c, g' c bes a g a f |
  bes, f' bes a g f g es |
  a, es' a g fis e fis d |
  g, d' g a g f es d |
  c g' c d c bes a g |
  fis d' cis d d, fis e g |
  fis a d, fis g bes d, g |
  a c a fis d c' bes a |
  bes d bes g d f e d |
  e c' b c c, e d f |
  e g c, e f a c, f |
  g bes g e c bes' a g |
  a c a f c es d c |
  d f d bes g bes a g |
  c e c a f a g f |
  bes8 c d bes |
  c d e c |
  c, a' bes d |
  c, bes' c e |
  c, c' d f |
  c, d' e g |
  c,,4 r \clef treble |
  <<
    {
      r8 a''' a a |
      g g g g |
      r f f f |
      es es es es |
      r d d d |
      c c c c
    }
    \\
    {
      r f f f |
      e e e e |
      r d d d |
      c c c c |
      r bes bes bes |
      a a a a
    }
  >> |
  \clef bass
  r16 d e f g, e' f, d' |
  e, g c8 r4 |
  r16 g f e c' e, d' d, |
  e'8 c, r4 |
  r16 f' e d c bes a g |
  f f es d c bes a g |
  f f' c a f f' es f |
  bes, d f a bes \clef treble d f a |
  g g f e d c b a |
  g \clef bass g f e d c b a |
  g g' d b g g' f g |
  c, \clef treble g' a b c g c d |
  <<
    {
      g8 r a r |
      g r r4 |
      a8 r g r |
      a16 bes a g f g a f |
      bes8 r a r |
      g16 f e d c
    }
    \\
    {
      e8 c f c |
      e c16 d e f g e |
      f8 c e c |
      f r r4 |
      g8 c, f c |
      e r r16
    }
  >> \clef bass bes16 a g |
  f g f es d c bes a |
  bes f' bes8~ bes16 g f e |
  f a c8~ c16 b a b |
  c g c d e c d e |
  f8 a, bes c |
  d bes f d' |
  c a f c' |
  b d b g |
  c c, d e |
  f a, bes c |
  <<
    <a c f>4
    \\
    f4
  >>
  r4 |
  r8 f'' d bes |
  r8 f d bes |
  <<
    f'4
    \\
    {f8 f,}
  >>
  r4 |
  <<
    {<e' g c>4 r}
    \\
    {c4 r}
  >> |
  \clef treble
  r8 c'' a f |
  \clef bass
  r8 c a f |
  <<
    c'4
    \\
    {c8 c,}
  >>
  r4 |
  <<
    {
      <g' c>4 <e g c~> |
      c'8 a c f
    }
    \\
    {
      e,4 c |
      f r
    }
  >> |
  \clef treble
  <<
    {
      <c' f>4 <a c f>~ |
      f'8 d f bes |
      <f b>4 <d g> |
      \clef bass
      <b d> <g c>
    }
    \\
    {
      a4 f |
      bes r |
      d b |
      g c,
    }
  >> |
  r8 c'16 d e8 g |
  e c c,4 |
  r16 c'16 d e f8 a |
  f c c,4 |
  r8 d'16 e f8 d16 e |
  f8 d g, b |
  c c,16 d e8 g |
  c c,16 d e8 f |
  g c,16 e g8 a |
  bes c,16 d e8 c |
  f16 a g f e d c bes |
  a c d e f g a bes |
  c4 c, |
  d r8 e |
  f a, bes c |
  f,2\fermata |
}

rightMvtII = \relative c'''
{
  \key d \minor
  \clef treble
  R2. |
  R |
  R |
  a4~\mordent a16 g( f e d cis d) f~ |
  f32 e d16 e8~ e16 g a bes~ bes cis,( d e) |
  a,32( g f16) g8~ g16 a bes cis~ cis d8 e16~ |
  e g, f\prall e f bes a\prall g a b32( cis d e f g) |
  f e d e f16 d \grace { c( } bes2)~ |
  bes16 a32 g f g e16 \grace { e8( } a2)~ 
  a16 b32 cis d cis b a d16 bes a\prall g~ g32 a g fis g16. g32 |
  g16 e'8.~ e32 d cis d e d cis b a16 g~ g32 bes a g |
  f32 g f e f a cis,16 cis16( d) r8 r d'8~ |
  d16 c bes\prall a bes g bes d g d bes'8~ |
  bes32 c bes a bes g a bes f16( e) r8 r c32 d e16~ |
  e32 bes c d c bes a g a f g a bes c d e f e d c a'8~\mordent |
  a16 d, d32\prall c d16 d g8.~ g4~ |
  g32 bes( a g f e d c) c16 f8.~ f4~\upprall |
  f32 e d e f16 d c32 bes a16 bes8~\mordent bes32 c bes a bes16. bes32 |
  bes16 g'8.~ g32 f e f g f e d c16 bes32 a bes16. g'32 |
  bes,16( c) a'8~ a32 g f g a g f e d c bes a g f e f |
  f16 e~ e32 g f e bes' c bes a bes16 c~ c d8 e16~ |
  e32 g f e f c d e f e f g f g a g a bes a bes c a bes c |
  c16 f,8 e16~ e32 d e f e g f e d c bes a bes16. g'32 |
  g f e g f e d f e d c e d c bes d c bes a c bes a g bes |
  bes16 c,8 e16 g bes d c~ c32 bes a g a16 c~ |
  c32 g f e f16 d' a32 bes a g a g f g g8.\upprall d32 g |
  f4 r r |
  r f'2~\mordent |
  f16 e32 d cis16 d g,32 a bes8 bes16~ bes32 c bes a bes c bes a |
  bes16 g'8 cis,16~ cis e8 g16~ g bes8 a16~ |
  a32 g f e f16 d~ d32 cis d e d cis b a~ a16 d8 f16~ |
  f32 g f e f16 bes~ bes a8 g16 g f32 e d c bes a |
  g b d f~ f16 e~ e32 d c b c16 g~ g c8 e16~ |
  e32 f ees d ees16 c'~ c32 bes a16~ a32 g f16~ f32 e d e f e d e |
  f, a g f c' bes a ees' d cis d8.~ d32 d, cis d e f g a |
  bes d bes a bes d bes a g fis g8.~ g32 bes g f g e' g, f |
  g16( bes cis e~) e32 d c d e d c b a16 g32 f g16. e'32 |
  g,16( f) f'8~ f32 e d e f e d c bes16 a32 g a16. f'32 |
  a,16( g) g'8~ g32 f e f g f e d cis16 bes32 a bes16. g'32 |
  bes,16( a8) cis16~ cis d8 e32 f g a bes a bes16. bes32 |
  bes16 cis,8( d32 e) e16 g,8( a32 bes) bes e f g~ g16 bes, |
  a32 d e f~ f16 gis,~ gis32 b a gis a b cis d e bes a gis a g fis g |
  g4~\mordent g32 a cis e g bes a16~ a32 g f e f16 a~ |
  a32 e d cis d16 bes' f32 g f e f e d e e8.\upprall d32 e |
  d8 c32( d ees16~) ees32 d c16~ c32 bes a16~ a32 g fis e d cis d16~ |
  d16 e32 fis g f g a bes g bes c d a cis d e f g a bes d, cis d |
  d16 g,~ g32 a g f g16 cis32 d e16 g, f32 a b cis d16 bes |
  cis16 a8 d,32 g f16~ f64 g f e f e d e d cis d e e8.\upprall d32 e |
  d4 r r |
}

leftOneMvtII = \relative c'
{
  f8 r r f g a |
  bes r r a g f |
  e r r g f e |
  f r r f g a |
  bes r r a g f |
  e r r g f e |
  f r r e d cis |
  d r r f e d |
  e r r e d cis |
  d r r d cis b |
  cis r r cis d e |
  f r r f g a |
  bes r r a g f |
  e r r e f g |
  a r r g f ees |
  d r r d c bes |
  c r r c bes\prall a |
  bes r r a g f |
  e r r e f g |
  a r r f g a |
  bes r r g a bes |
  c r r c bes a |
  bes r r bes a g |
  a r r a g f |
  g r r g a e |
  f4~ f8 e16 d e8 bes' |
  a r r a b cis |
  d r r f g a |
  bes r r a g f |
  e r r g f e |
  f r r f g a |
  bes r r bes, c d |
  e r r e f g |
  a r r a, bes c |
  d r r c bes a |
  g r r f e d |
  cis r r cis d e |
  f r r d e f |
  g r r e f g |
  a r r a g f |
  g r r g f e |
  f r r f e d |
  e r r e f cis |
  d4~ d8 cis16 b cis8 g' |
  fis r r fis g a |
  bes r r a g f |
  g r r e f a |
  d,2~ d16 cis g'8~ |
  g8 f r4 r |
}

leftTwoMvtII = \relative c'
{
  d8 d, d \tre d' e f |
  g \ba d, d \tre f' e d |
  cis \ba d, d \tre e' d cis |
  d \ba d, d \tre d' e f |
  g \ba d, d \tre f' e d |
  cis \ba d, d \tre e' d c |
  d \ba d, d g f e |
  d d, d d'' c bes |
  c e, e c' bes a |
  bes bes, bes bes' a g |
  a a, a a' b cis |
  d d, d \tre d' e f |
  g \ba g, g \tre f' e d |
  c \ba c, c \tre c' d e |
  f \ba f, f \tre e' d c |
  bes \ba bes, bes bes' a g |
  a a, a a' g f |
  g g, g f' e d |
  c c, c c' d e |
  f c, c d' e f |
  g c,, c e' f g |
  a c,, c a'' g f |
  g c,, c g'' f e |
  f c, c f' e d |
  e c, c e' f c |
  d bes c2 |
  f8 f, f g' f e |
  d d, d \tre d'' e f |
  g \ba d, d \tre f' e d |
  cis \ba d, d \tre e' d c |
  d \ba d, d \tre d' e f |
  g \ba g,, g g' a bes |
  c c, c c' d e |
  f f,, f f' g a |
  bes bes, bes a' g f |
  e e, e d' cis b |
  a a, a a' b cis |
  d a, a b' cis d |
  e a,, a cis' d e |
  f a,, a f'' e d |
  e a,, a e'' d cis |
  d a, a d' cis b |
  cis a, a cis' d a |
  bes8 g a2 |
  d8 d, d d' e fis |
  g d, d f' e d |
  e d, d cis' d f |
  b, bes a gis a4 |
  d r r |
}

leftMvtII = \relative c'
{
  \key d \minor
  \clef bass
  << \leftOneMvtII \\ \leftTwoMvtII >>
}

rightMvtIII = \relative c''
{
  \key f \major
  f4 f,2 g8 a |
  bes c d e f g a bes |
  <<
    {
      c4 <c a> <c g> <bes g> |
      <a f>2 <g e> |
      a r8 g e c |
      f2 r8 ees c a |
      d2 r8 c a f |
      bes2 r8 bes g e |
    }
    \\
    {
      r4 f' e c |
      c2 c |
      r8 f e d c2 |
      r8 d c bes a2 |
      r8 bes a g f2~ |
      f8 f e d e2 |
    }
  >>
  c8( d e) bes'-. a( bes c) f-. |
  e( f g) bes-. a( bes c) ees,-. |
  d( e f) c'-. bes a g f |
  e f g e c2 |
  f4 f,2 g8 a |
  bes c d e f g a bes |
  <<
    {
      c4 <c a> <c g> <bes g> |
      <a f>2 <g e> |
      bes2 bes4 a |
      g2 g4 a |
      bes2 bes4 a |
      g2 g4 a |
      bes a g2 |
      c,4 bes a2 |
      r4 <c f,> <a f> g8 f |
      f2
    }
    \\
    {
      r4 f' e c |
      c2 c |
      \repeat unfold 4 {r8 f e f r f4 f8 |}
      r8 f4 f8 r f e d |
      r8 g,4 f8 r g f e |
      f4 c c <bes e> |
      <a c>2
    }
  >> r2 |
  r8 a'(^\p bes c bes a g f) |
  ees' c d4~ d8 bes a bes |
  e bes f' bes, g' bes, a g |
  a c bes a bes a g a |
  f4 a^\f c a |
  f bes8 c d4 f, |
  g bes e c |
  f8 e f4~ f8 c[^\p bes c] |
  a' bes a g f e d c |
  b g' b, a g d' e f |
  g a g f e d c b |
  a f' a, g f c' d e |
  f g f e d c b a |
  g f' g, f g f' a, f' |
  b, f' b, a b f' c f |
  d f d c d f c f |
  b, f' b, a b f' a, f' |
  g, f' g, f g f' a, f' |
  b, f' b, a b f' c f |
  d f d c b a g f |
  e g f e f e d c |
  bes' g a4~ a8 f e f |
  b f c' f, d' f, e d |
  e g f e f e d e |
  c4 e^\f g e |
  c f8 g a4 c, |
  d f b g |
  c g g' f |
  <<
    {
      e1~ |
      e8 g f e g f e f |
      d1~ |
      d8 f e d f e d e |
      c1~ |
      c8 e d c e d c d |
      b2~ b4 b |
      c2 r4 e |
      f2. d4 |
      e2. fis4 |
      g1 |
    }
    \\
    {
      r8 c, bes a bes a g a |
      f4 r r2 |
      r8 a g f a g f g |
      e4 r r2 |
      r8 g f e g f e f |
      d4 r r2 |
      r4 d g2 |
      r4 g c2~ |
      c4 b8 a b2~ |
      b4 a8 g a4 c~ |
      c8 e d c d c b a |
    }
  >>
  g a b c d e f d |
  e4 c,2 d8 e |
  f g a b c d e f |
  <<
    {
      g4 <g e> <g d> <f d> |
      <e c>2 <d b> |
      f f4 e |
      d2 d4 e |
      f2 f4 e |
      d2 d4 e |
      f e d2 |
      r8 d4 d8 r d c b |
      c4 <c g'> <c e> d8 c |
      <c g>2
    }
    \\
    {
      r4 c b g |
      g2 g |
      \repeat unfold 4 {r8 c b c r c4 r8 |}
      r8 c4 c8 r c b a |
      g4 f e2~ |
      e4 g g f |
      e2
    }
  >> r2 |
  g8^\p e c e g e bes' e, |
  a f c f a f c' f, |
  g8 e c e g e bes' e, |
  a f c f a f bes f |
  c' a f a c a ees' a, |
  d bes f bes d bes f' bes, |
  c a f a c a ees' a, |
  d bes f bes d bes f' bes, |
  g' cis, bes cis g' cis, g' d |
  g e a, e' g e g d |
  g cis, bes cis g' cis, g' d |
  g e a, e' g e g d |
  g cis, bes cis g' cis, g' d |
  g f g e f e d e |
  f g a4 a, cis |
  d8 d[^\f c bes] a g f e |
  d e f g a b cis d |
  e f g e f e d e |
  f d cis b cis d e cis |
  d a g f g a bes a |
  <<
    {
      \repeat unfold 2
      {
        r4 <d f> <cis e> <d f> |
        r4 <d f> <cis g'> <d f> |
      }
      <cis e> d cis8 d e f |
      g2~ g8 g f e |
      f4 <d a'> <d f> e8 d |
      d2 r |
    }
    \\
    {
      bes1 |
      a |
      bes |
      a |
      bes4 a g r |
      r e' a,2~ |
      a4 a~ a <g~ c> |
      g8 a g f g f e f |
    }
  >>
  r8 d' c bes c bes a c |
  bes2 b\upprall |
  <<
    {
      r8 g' f e f e d f |
      e4 f g2~ |
      g8 c bes a bes a g bes |
      c4 <g bes> <a c>2~ |
      <a c>8 f ees d ees d c ees |
      d2 c |
      bes4
    }
    \\
    {
      c2~ c4 b |
      c d e2~ |
      e4 f2 e4 |
      f2~ f~ |
      f8 r bes,2 a4~ |
      a8 bes a g a g fis a |
      g4
    }
  >>
  bes,2 c8 d |
  ees f g a bes c d ees |
  <<
    {
      f4 <f d> <f c> <ees c> |
    }
    \\
    {
      r4 bes a f |
    }
  >>
  <d' bes f>2 <c a~ f> |
  <<
    {\voiceTwo a4}
    \new Voice {\voiceOne r8 d c bes c bes a c |}
  >> \oneVoice
  <<
    \new Voice
    {
      \voiceOne
      bes4 <e g~> <cis g'> <d f~> |
      f8 f e d e d cis e |
      a,1~ |
      a8 a g f g f e g |
      cis,2 r |
    }
    {
      \voiceTwo
      g'2 a |
      g1~ |
      g8 g f e f e d f |
      bes,1~ |
      bes8 bes \change Staff=lower \voiceOne  a g a g f e |
      f g a b \change Staff=upper \oneVoice cis d e f |
    }
  >>
  g a b cis d e f g |
  << {a4 <a f> <a e> <g e> | <f d>2 e |} \\ {r4 d cis a | a2 cis} >>
  f8^\p g f e d c b a |
  g f' g, f g b c d |
  e f e d c b a g |
  f e' f, e f a b c |
  d e d c b a gis fis |
  <<
    {
      r4 gis8 fis gis4 a |
      b1~ |
      b4 d8 c d4 f~ |
      f e8 d e4 a~ |
      a4 gis8 fis gis4 a |
      b b8 a b4 a |
      d,1~ |
      d2~ d4
    }
    \\
    {
      e,1~ |
      e4 e8 d e4 fis |
      gis2~ gis4 a |
      b2 r4 a |
      b e2 d8 c |
      b4 r r2 |
      r4 gis8 fis gis4 b |
      e,2~ e4
    }
  >> r4 |
  r8 e fis gis a b c d |
  << {e4 <e c> <e b> <d b>} \\ {r4 a gis e} >> |
  <c' a e>2 <b gis e> |
  <<
    {
      d2 d4 c |
      b2 b4 c |
      r a' gis a |
      e2. e4 |
      d4 c b2 |
      r8 b4 b8~ b b a gis |
      a4 <a c e> <a c> b8 a |
      <a e>4
    }
    \\
    {
      \repeat unfold 2 {r8 a gis a r a4 a8 |}
      d4 c b a |
      gis2. a4 |
      r8 a4 a8 r a gis fis |
      e4 d c2~ |
      c4 e e d |
      c
    }
  >> r4 r2 |
  r2
  <<
    \new Voice
    {
      \voiceOne
      r8 f g a |
      r c d e f g a bes |
      c4 <c a> <c g> <bes g> |
      <a f>2 <g e> |
    }
    {
      \voiceTwo
      e,2~ |
      e1 |
      r4 f' e c |
      c2 c~ |
    }
    \new Voice
    {
      \voiceFour
      s2 bes2
    }
  >> \oneVoice
  c8 a^\p f a c a ees' a, |
  d bes f bes d bes f' bes, |
  c a f a c a ees' a, |
  d bes f bes d2~ |
  d8 b g b d b f' b, |
  e c g c e c g' c, |
  d b g b d b f' b, |
  e c g c e c f c |
  g' e c e g e bes' e, |
  a f c f a f c' f, |
  g e c e g e bes' e, |
  a f c a f2~ |
  f8 a( bes c bes a g f) |
  ees' c d4~ d8 bes a bes |
  e bes f' bes, g' bes, a g |
  a c bes a bes a g a |
  f4 a^\f c a |
  f bes8 c d4 f, |
  g bes  e c |
  f8 a, g f d' c bes c |
  <<
    {
      a1~ |
      a8 c bes a c bes a bes |
      g1~ |
      g8 bes a g bes a g a |
      f1~ |
      f8 a g f a g f g |
      e2. e4 |
      f2 r4 a |
      bes2. g4 |
      a2. b4 |
      c1 |
    }
    \\
    {
      r8 f, ees d ees d c d |
      bes4 r r2 |
      r8 d c bes d c bes c |
      a4 r r2 |
      r8 c bes a c bes a bes |
      g4 r r2 |
      r4 g c bes |
      a c f2~ |
      f4 e8 d e2~ |
      e4 d8 c d4 f~ |
      f8 a g f g f e d |
    }
  >>
  c8 d e f g a bes g |
  a c f,4~ f8 f g a |
  bes c d e f g a bes |
  <<
    {
      c4 <c a> <c g> <bes g> |
      <a f>2 <g e> |
      a2 r8 g e c |
      f2 r8 ees c a |
      d2 r8 c a f |
      bes2 r8 bes g e |
    }
    \\
    {
      r4 f' e c |
      c2 c |
      f8 f e d c2 |
      r8 d c bes a2 |
      r8 bes a g f2~ |
      f8 f e d e2 |
    }
  >>
  c8( d e) bes'-. a( bes c) f-. |
  e( f g) bes-. a( bes c) ees,-. |
  d( e f) c'-. bes a g f |
  e f g e c2 |
  f4 f,2 g8 a |
  bes c d e f g a bes |
  <<
    {
      c4 <c a> <c g> <bes g> |
      <a f>2 <g e> |
      bes bes4 a |
      g2 g4 a |
      bes2 bes4 a |
      g2 g4 a |
      bes a g2 |
      c,4 bes a2 |
      r4 <c a f> <a f> g8 f |
    }
    \\
    {
      r4 f' e c |
      c2 c |
      \repeat unfold 4 {r8 f e f r f4 f8 |}
      r8 f4 f8 r f e d |
      r8 g,4 g8 r g f e |
      f4 c c <bes e> |
    }
  >>
  <a c f>1\fermata |
}

leftMvtIII = \relative c'
{
  \key f \major
  \clef bass
  <<
    {
      a2 c |
      f,4 bes a g |
      f8 r r4 r2 |
    }
    \\
    {
      f2 e |
      d c4 bes |
      a8 f g a bes c d e |
    }
  >>
  f g a bes c d e c |
  f4 f, e a |
  d d, c f |
  bes bes, a d |
  g, g'8 a g4 f |
  e g f a |
  g c, f a, |
  bes d g, bes |
  c8 d e f g a bes g |
  <<
    {
      a2 c |
      f,4 bes a g |
      f8 r r4 r2 |
    }
    \\
    {
      f2 e |
      d c4 bes |
      a8 f g a bes c d e |
    }
  >>
  f8 g a bes c d e c |
  d4 d, d' c |
  bes bes, bes' c |
  d d, d' c |
  bes bes, bes' c |
  d c bes g |
  e c f c |
  a8 g a bes c4 c, |
  f4 g8 a bes c d e |
  f4^\f a c a |
  f bes8 c d4 f, |
  g bes e c |
  f c a c |
  f,8 a8[^\p bes c] bes a g f |
  ees' c d4~ d8 bes a bes |
  e bes f' bes, g' bes, a g |
  a c bes a bes a g a |
  f4^\f a c f~ |
  f8 e d c b a g f |
  e4 g c e~ |
  e8 d c b a g f e |
  d4 f a c~ |
  c b8 a b4 c |
  d g,8 f g4 a |
  b4 b8 a b4 c |
  d g,8 f g4 a |
  b4 b8 a b4 c |
  d4 g,8 f g4 a |
  b8 d b a g f e d |
  c4 e g e |
  c f8 g a4 c, |
  d f b g |
  c g e g |
  c,8 e[^\p f g] f e d c |
  bes'8 g a4~ a8 f e f |
  b f c' f, d' f, e d |
  e g f e f e d e |
  c4^\f e g bes |
  a c a f |
  b, d f a |
  g b g e |
  a, c e g |
  f a f d |
  g,8-. g'( f e f e d e) |
  g,-. f'( e d e d c d) |
  g,-. e'( d c d c b c) |
  g-. d'( c b c b a b) |
  g-. c( b a b a g a) |
  b c d e f g a b |
  c4 r b r |
  << {r4 f' e d | c8 r r4 r2 |} \\ {a2 g4 f | e8 c, d e f g a b |} >>
  c d e f g a b g |
  a4 a, a' g |
  f f, f' g |
  a a, a' g |
  f f, f' g |
  a g f d |
  b g c8 d e f |
  g f e f g4 g, |
  c,8 c'[^\p d e] f g a b |
  c4 g e c |
  c' a f c |
  c' g e c |
  f8 c a c f,4 r |
  f' c a f |
  f' d bes f |
  f' c a f |
  bes8 f d f bes,4 r |
  \repeat unfold 2
  {
    e'4 g8 f e4 d |
    cis8 d cis b a b cis d |
  }
  e8 f g a bes4 d, |
  cis8 a b cis d e f g |
  a g f g a4 a, |
  d,8 d'[^\p e f] g a b cis |
  d4 d,,2 e8 f |
  g a b cis d e f g |
  a4-. a-. a-. g-. |
  f2\upprall e |
  \repeat unfold 2
  {
    g8 d cis d g d f d |
    e d cis d e d f d |
  }
  g d f d e d cis b |
  a e' g, e' f, e' d cis |
  d a f d a'4 a, |
  d d''2 c4 |
  <<
    {
      d4 g2 fis4 |
      r8 g f e f e d f |
      e2 d |
      c8 r r4 r2 |
    }
    \\
    {
      bes2 a |
      g1~ |
      g |
      r8 c, bes a bes a g bes |
    }
  >>
  a4 d g, c |
  f,8 \change Staff=upper \voiceFour f'' ees d ees d c ees |
  d2 c |
  \change Staff=lower
  \oneVoice
  bes4 ees a, d~ |
  <<
    {
      \voiceOne
      d8 r r4 r2 |
      r4 ees d c |
      bes8 r r4 r2 |
    }
    \new Voice
    {
      \voiceTwo
      g8 bes aes g aes g f aes |
      g2 f4 ees |
      d8 bes c d ees f g a |
    }
  >> \oneVoice
  bes c d ees f ees d f |
  << {r4 g2 fis4 |} \\ {bes,2 a |} >>
  r8 g f e f e d f |
  bes,4 d g e |
  cis a d f, |
  g bes e, g |
  \voiceTwo
  a e cis a |
  d r \oneVoice r2 |
  r8 f g a b cis d e |
  f d e f g a b cis |
  \clef treble
  d e f g a f g a |
  d,4 a' f d |
  b d b g |
  \clef bass
  c4 g' e c |
  a c a f |
  b f' d b |
  gis8 d' e, d e d' fis, d' |
  gis, d' gis, fis gis d' a d |
  b d b a b d a d |
  gis, d' gis, fis gis d' f, d' |
  e, d' e, d e d' fis, d' |
  gis, d' gis, fis gis d' a d |
  b d b a b d a d |
  gis, d' e, fis g a b c |
  d c b a gis fis e d |
  c a b c d e fis gis |
  a b c d e b gis e |
  f f' e f f, f' e, e' |
  d, f e f d d' e, e' |
  <<
    {
      r8 a, gis a d a c a |
      b a gis a b a c a |
      d4 r r2 |
    }
    \\
    {
      f,2~ f4 e |
      d2. c4 |
      f e d b |
    }
  >>
  gis4 e a8 b c d |
  e d c d e4 e, |
  a,8 a' b c d e f g |
  <<
    \new Voice
    {
      \voiceOne
      r8 b c d s2 |
      s2 bes |
      a8 r r4 r2 |
    }
    \new Voice
    {
      \voiceTwo
      a1 |
      g |
      f8 f, g a bes c d e |
    }
    \new Voice
    {
      s4 \voiceFour c'~ \voiceOne c2~ |
      c
    }
  >>
  f,8 g a bes c d e c |
  f4 c a f |
  f' d bes f |
  f' c a f |
  bes2~ bes8 c bes a |
  g4 d b g |
  g' e c g |
  g' d b g |
  c8 c' b a g f e d |
  c4 g e c |
  c' a f c |
  c' g e c |
  f2~ f8 f g a |
  bes c d e f g a bes |
  c a f a bes d c d |
  g,4 bes e c |
  f c a c |
  f,8 a,[^\p bes c] bes a g f |
  ees' c d4~ d8 bes a bes |
  e bes f' bes, g' bes, a g |
  a c bes a bes a g a |
  f4^\f a c ees |
  d f d bes |
  e, g bes d |
  c e c a |
  d, f a c |
  bes d bes g |
  c,8-. c'( bes a bes a g a) |
  c,-. bes'( a g a g f g) |
  c,-. a'( g f g f e f) |
  c-. g'( f e f e d e) |
  c-. f( e d e d c d) |
  e f g a bes c d e |
  <<
    \new Voice
    {
      \voiceOne
      r8 g a bes s2 |
      f4 bes a g |
      f8 r r4 r2 |
    }
    \new Voice
    {
      s4 \voiceFour a~ \voiceOne <a c>2 |
    }
    \new Voice
    {
      \voiceTwo
      f2~ f4 e |
      d2 c4 bes |
      a8 f g a bes c d e |
    }
  >>
  f8 g a bes c d e c |
  f4 f, e a |
  d d, c f |
  bes bes, a d |
  g g,8 a g4 f |
  e g f a |
  g e' f a, |
  bes d g, bes |
  c8 d e f g a bes g |
  << {a2 c | f,4 bes a g | f8 r r4 r2 |} \\ {f2 e | d c4 bes | a8 f g a bes c d e |} >>
  f g a bes c d e c |
  d4 d, d' c |
  bes bes, bes' c |
  d d, d' c |
  bes bes, bes' c |
  d c bes g |
  e c f c |
  bes8 a g f << {c'2} \\ {r4 c,} >> |
  <f c'>1\fermata |
}
