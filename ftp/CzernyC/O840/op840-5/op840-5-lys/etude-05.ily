\version "2.18.2"

\language "deutsch"

\include "defn.ily"

RH= \relative c'' {
  \time 2/4
  \key c \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(1 1 1 1 ) % abhängig vom Takt
  \mark \markup  "Allegretto animato"
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  r8_\markup { \dynamic p \italic \large "leggierm." }
  \omitDynamic c32-.-1\p
  ( d e f g8-5-. ) g32-1 ( a h c
  d8-5-. ) d32-5 ( c h a g8-1-. ) g'32-5 ( f e d
  e8-3-. ) e32-5 ( d c h a8-. ) d32-5 ( c h a
  g8 ) f'!32-4 g f e \posTextC d_\markup { \italic \large "cresc." } c-1 h-4 a g f-1 e-3 d
  c8-.\f c32 ( d e f g8-. ) g32 ( a h c
  d8-. ) d32 ( c h a g8-. ) h32-5 ( a g f
  e8-. ) a32-5 ( g f e d8-. ) g32-5 ( f e d
  c d e-3 f-1 g a h c ) c,8-. r8
  \bar ":..:"
  \set Staff.beatStructure = #'(4 )
  \posTextB < h-3 d-5 >8\f q q q
  < c d >^4^5 q q q < fis,-1 a-2 d-5 >_[ q q q] < g h d > q q q r8
  \set Staff.beatStructure = #'(1 1 1 1 )
  d''32-5 ( c h a g8-. ) h32-5 ( a g fis
  e8-. ) e'32-5 ( d c h a8-.) c32-4 ( h a g
  fis-3 g a g fis e d e fis-3 g-1 a h c-1 d e fis )
  \set Staff.beatStructure = #'(2 2 )
  e16 ( d\> ) h-. g-1-. f!-3 ( e f d\! )
  \set Staff.beatStructure = #'(1 1 1 1 )
  c8-2-.\p c32-1 ( d e f g8-5-. ) g32 ( a h c
  d8-. ) d32 ( c h a g8-. ) g'32 ( f e d
  < e-3>8-. ) e32-5 ( d c h a8-. ) d32 c h a
  g-1 a h-3 c-1 \posTextC d_\markup { \italic  \large "cresc." } e f!-4 e d c-1 h-4 a g f-1 e-3 d-2
  \set Staff.beatStructure = #'(4 )
  \posTextB < c-1 e-3 >8\f q q q < a c d >[ q] < c d a' >\sf q
  \set Staff.beatStructure = #'(1 1 1 1 ) %\pageBreak
  h32-5 c d c h a g a h-3 c-1 d e f-1 g a h
  \ottava #1
  c-1 d e f-1 g a h c c,8 \ottava #0 r8^\markup "Fine." \bar ":..:"
  \key es \major
  \set Staff.beatStructure = #'(4 )
  \mark \markup \fontsize #-1.5 { \bold "C moll." \italic "(Ut mineur)" }
  \posTextC \omitDynamic es,4-3\p-\markup { \dynamic p \italic \large dol. } ( f16 es d c )
  as'4-3 ( b16 as g f )
  es8-2 ( d g d )
  f4 ( es16-. ) g,-1 ( c-2 d-3
  \posTextC es4-4_\markup { \italic "cresc." } f16-5 es-3 d-2 c-1 )
  c'4-5_> ( b16 as g f )
  \set Staff.beatStructure = #'(2 2 )
  b8-5\f ( g16-4 es-1 as8-5 f16-3 d-1
  es-3 b-1 g'-5 b,-1 es8-3 ) r8 \bar ":..:"
  g8-5\p g f16 ( es d c-1
  d4-3 g, )
  g'8 g ( f16 es d c ) d4. g,8_\markup { \italic "cresc." }
  es'4-3 ( f16 es d c )
  c'4\sf ( b16 a g f )
  es8-3 ( g16 c, es-3 d-2 f-4 h, c8 ) r8 r4
  \once \override Voice.Slur #'positions = #'(2.8 . 0.6)

  \bar ":..:"
  \key es \major
  \bar ":..:"
}

Struktur= {
  s2*4 \break
  s2*4 \break
  s2*4 \break
  s2*4 \break
  s2*4 \break
  s2*4 \pageBreak
  s2*4 \break
  s2*4 \break
  s2*4 \break
  s2*4 \break
}

LHI = \relative c' {
  \clef bass  \key c \major
  \voiceOne
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 ) % abhängig vom Takt
  \set fingeringOrientations = #'(up)
  \override Fingering.direction = #DOWN
  \override Fingering.staff-padding = #'()
  \clef treble
  \omitDynamic c8\p < e g > q q h < f' g > q q
  c[ < e g >] d < fis c' > h s8 s4
  \omitDynamic c,,8\f < e g > q q h < f' g > q q
  \set Staff.beatStructure = #'(2 2 )
  c < e g > g, < h d > e s8 s4
  \set Staff.beatStructure = #'(1 1 1 1 )
  \omitDynamic d8\rest\f g,32-5 ( a h c d8-1 ) \stemDown d32 ( e fis g
  a8-1-. ) a32-4 ( g fis e d4-5^> )
  d8\rest d32-5 ( e fis g a8-1-. ) a32-4 ( h c d
  h8-.-3 ) d32-1 ( c h a g4-5_> )
  \stemUp \set Staff.beatStructure = #'(4 )
  \mergeDifferentlyHeadedOff
  h,8 < d g > q q c < e a > q q d < a' c > q q h  s8 s4
  \mergeDifferentlyHeadedOn
  \omitDynamic c8\p < e g > q q h < f' g > q q
  \set Staff.beatStructure = #'(2 2 )
  c[ < e g > d < fis c' >] h s8 s4
  s2 s2
  \set Staff.beatStructure = #'(4 )
  \stemDown g,8-5 < d' f! > <d f> q < c e > q q\noBeam d,8\rest
  \key es \major \stemDown
  \set Staff.beatStructure = #'(2 2 )
  \once \override Voice.Slur #'positions = #'(2.5 . 3)
  \omitDynamic c16\p ( g' es g \stemUp c,8 ) d8\rest \stemDown
  \once \override Voice.Slur #'positions = #'(3.5 . 4)
  f16 ( c' as c f,8 ) d8\rest
  g16 ( f' h, f' g, f' h, f' )
  h, ( g' d g c,8-. ) d,8\rest
  c16 ( g' es g  \stemUp c,8_. ) d8\rest \stemDown
  as16 ( f' c f \stemUp as,8_. ) d8\rest \stemDown
  \omitDynamic b16^(\f g' es g b, as' f as ) < es-3 g-1 >8[ q q] d8\rest
  \omitDynamic g16\p ( h d h g-5 c-2 es-1 c-2 g h d h g h d h )
  g16 ( h d h g c es c )
  \override Fingering.direction = #UP
  \shpSlurM g-5 ( h-2 d-1 h-2 g-1 f es d-4 )
  \shpSlurE c16 ( g' es g \stemUp c,8 ) d8\rest \stemDown
  \omitDynamic \shpSlurE as16\sf ( f' c f \stemUp as,8 ) d8\rest \stemDown
  g,16 es' c es g, f'
  d f c-4 es g es \stemUp c8
  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 5 . 0 )
  d8\rest_\markup "D.C. sino al fine."
}

LHII = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.direction = #LEFT
  \override Fingering.staff-padding = #'()
  \omitDynamic c2\p h c4 d g8
  h8\rest h4\rest \clef bass
  \omitDynamic c,,2\f h c4 g4 c8 d8\rest d4\rest
  s2 * 4
  h2 c2 d2 g8
  d8\rest d4\rest \clef treble
  \omitDynamic c'2\p h2 c4 d g8 h8\rest h4\rest
  \clef bass
  \set Staff.beatStructure = #'(1 1 1 1 )
  \once\stemUp \omitDynamic c,,8-5-.\f c32-5^( d e f g8-1-. ) g32-4^( a h c
  f,8-5-. ) f32-3^( g a g \omitDynamic fis4-3_>\sf )
  \once\stemUp g2
}

LH = {
     <<
      \new Voice = "first"
      \relative c'
      \LHI
      \new Voice= "second"
      \LHII
      \new Voice \Struktur
    >> 
}

dynamics = { }
