\version "2.18.2"

\language "deutsch"

\include "defn.ily"

RH= \relative c'' {
  %\accidentalStyle modern
  \key c \minor \time 3/8
  \override Fingering.direction = #UP
  \set fingeringOrientations = #'(left)
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 ) % abhängig vom Takt
  < es, c' >8 
  q^\markup { \center-align \larger "Andantino con moto." } q
  <<
    { 
      es'4-5( c8-3
      < h d >8^2^4)_[ q q]
    }
    \\
    { 
      g4.-1
      s4.
    }
  >>
  < d'-3 f-5 >4( < g,-1 d'-5 >8 < g-1 es'-4 >) q q \break
  < es'-3 g-5 >( < d f > < c-1 es-3 > < h  d >4 < c es >8 < h d >) r
  g'-3  as-4( d,) r as'( d,) r \break
  g-2( c) r g( c) r
  < d,-1 f-3 >( < es g > < f-3 as-5 >)

  < c-1 es-3 >( < d f >) < f,-1 h-4 >( \once\stemDown < f d' >4. < es c' >8) r r
  \bar ":..:" \break
  b'!4-1(\p es8-2 g8.-4 f16 es8)
  es16-2([ d f es] d8) d4.
  \shpSlurH b4-1( f'8-3 as8.-5 g16 f8) \break
  f16-3( es g f es8)\noBeam es4.
  < h d g >8\f q q
  <<
    { g'4( f8-4) }
    \\
    { < h, d >4. }
  >>
  < g c es^4 >8 q q
  < g c es >4 \posTextB g'16(\p es) \break
  d8( as') r
  g( h,) r
  \doubleSlurOn < f d' >4.( < es c' >8) \doubleSlurOff r r^\markup "Fine."
  \bar ":..:"
  \mark \markup \fontsize #-1.5 { \bold "C Dur." \italic "(Ut majeur)" }
  \key c \major
  \set Timing.baseMoment = #(ly:make-moment 1/16)
  \set Staff.beatStructure = #'(2 2 2 )
  e16-1(-\markup { \dynamic p \italic dol. } g-2) c-4( e-5) d-3( c-2)
  \once \override Voice.Slur #'positions = #'(0 . 3)
  \slashedGrace h8-1( f'16-.-5)[ r32 f( d8.-3 h16-2)]
  g16( h) \posTextC d(-\markup { \smaller \italic "cresc." } f) e( d)
  \once \override Slur.positions = #'(3 . 3.5)
  \slashedGrace c8-1( g'16-.)[ r32 f( e8.-3 c16-1)] \break
  a'32-5(\f g fis e d16[ d'-.) d-. d-.]
  d32-5( c h a g16[ g'-.) g-. g-.]
  g16([ d h g-1] \slashedGrace h8 a32-2 d a h)
  a8( g4) \bar ":..:" \break
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 ) % abhängig vom Takt
  \set fingeringOrientations = #'(left)
  < g, h d f! >8\f q q
  \autoBeamOff < d'-2 f-4 >16([ < e g > < d f >  < c e >]  < h-2 d-4 >8) \autoBeamOn
  < f' g d' >\sf q q \shpSlurJ < f g d' >4( c'32-4 h a g)
  e'16-.-5[ r32 e( c8. g16-1)]
  \autoBeamOff a-2([ c-4)] \autoBeamOn < g-1 h-3 >-. < f-1 a-3 >-. < e g >-. < d f >-.
  \autoBeamOff  e-2([ c' g e-1] \autoBeamOn \slashedGrace e8-3 d32-2 c d e)
  c8 r r
  \bar ":|."
}

LHI = \relative c' {
  \set fingeringOrientations = #'(down)
  \override Fingering.direction = #DOWN
  \override Fingering.staff-padding = #'()
  \clef bass  \key c \minor
  \voiceOne
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 ) % abhängig vom Takt
  c,4.
  s4. s d8\rest g,_5_( h_3 c4._2)
  s s s
  f8 < as h d > q f8 < as h d > q
  es < g c > q es < g c > q
  s4. s4.
  g,8_( h g c) d8\rest d8\rest
  r8 b'_1 b_1 r8 b b r8 as as r8 as as r8 as as r8 as as
  r b b r b b
  s4. s s s
  f8 < as d > q g < d' f > q
  s4. s4.
  \set fingeringOrientations = #'(left)
  \key c \major
  c,8 < e g > q
  d < f g h > q d q q
  e < g c > q \omitDynamic fis\f < c' d > q
  g < h d > q d, < g h > < fis c' > s4.
  s s s
  \once \override Slur.positions = #'(3 . 3.5)
  \stemUp g,8( \once\stemDown g'4)
  c,8 < e g > q f a d
  g, < c-2 e-1 > < h f' >
}

LHII = \relative c' {
  \override Fingering.staff-padding = #'()
  \voiceTwo
  \set fingeringOrientations = #'(left left)
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 ) % abhängig vom Takt
  s4.
  d,8\rest c-4^( es-2^) g4.
  s4. s c8^2^( h c g g' fis g)  d,8\rest d8\rest
  f4. f4. es4. es4.
  f4 f8^2 g4^1 g8 s4. s4.
  \omitDynamic < es-4 g-2 >4.\p q
  < b-5 f'-2 > q
  < b-5 d-3 > q
  < es-4 g-2 >4. q
  g,8^[( h d] g^[ g,)] d'8\rest
  c^( es g c c,) \omitDynamic d8\rest\p
  f4. g
  \shpSlurH g8^4^( h g c) d,8\rest d8\rest
  c4. d d e fis g d4 d8
  < d fis c' >8 < g h >4
  \override Fingering.direction = #UP
  \posSlurPriority \omitDynamic g,16-5^(\f h-4 d-2 g-1 h-2 d-1)
  g,8-5 g'4-1
  g16-1^( d-2 h-4 g-1 d h)
  s4.
  c4. f g4 g8 < c e>8
  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 10 . 0 )
  \stemUp c,4^>_\markup "D.C. sino al fine."
}

LH = {
   <<
    \new Voice = "first"
    \relative c'
    \LHI
    \new Voice= "second"
    \LHII
  >> 
}

dynamics = { }
