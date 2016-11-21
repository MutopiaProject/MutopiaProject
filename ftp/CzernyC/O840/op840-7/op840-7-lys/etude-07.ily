\version "2.18.2"

\language "deutsch"

\include "defn.ily"
%% wenn erforderlich linken Abstand ändern


RH= \relative c'' {
  \time 2/4
  \key g \major \partial 8
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4)  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \set Staff.printKeyCancellation = ##f
  \posTextC \omitDynamic
  e8-1\p-\markup { \whiteout \center-align { \concat { \hspace #3 \dynamic p \italic " dol." } } } (
  g-3^\markup { \center-align \huge "Allegretto grazioso" } d h' g fis-2 a d, fis
  \set Staff.beatStructure = #'(2 2)
  g-3 \slashedGrace a8 g16 fis g8-1 h-2 )
  d-4-.[ d-. d-. d-.]
  c-2 ( d16 e d8 c h-1[ g'-5 d-3 h-2]
  a-1 e'-5 d16 c h a g-3 fis a g fis8-. )\noBeam d (
  \set Staff.beatStructure = #'(4)
  g d h' g fis a d, fis
  \set Staff.beatStructure = #'(2 2)
  g \slashedGrace a8 g16 fis g8 h )
  d-.[ d-. d-. d-.]
  \ottava #1
  d16-1 ( fis-3 a-5 g fis e d-1 c-2 )
  h8 ( g'-. ) a, ( e'-. ) \ottava #0
  g,-. g-. \slashedGrace h8-3 a16-2 ( fis a h
  g8[ h g] )
  \bar ".|:" \break
  d'16-4 ( cis e8-5-.[ ) d-. cis-. h-.]
  a4-1 ( d16-5 cis h a-2 )
  g8-1 ( a16 h a8-. ) g-1-.
  eis-2 ( fis-3 ) \omitDynamic fis4\p
  \omitHairpin r8\< d'16-5_\markup { \center-align \italic "cresc." } ( cis h a g-1 fis-2
  \set Staff.beatStructure = #'(4)
  dis8-2 e-1 g-3 h-5 )
  \set Staff.beatStructure = #'(2 2)
  d,!-1 ( e32-4 d-3 cis-1 d-1 fis8-3 ) e(
  \set Staff.beatStructure = #'(4)
  \omitHairpin\omitDynamic d\mf\> d'-5 c!-4 a-3 )
  \omitDynamic g-2\p ( d h' g-3 fis a d, fis
 
  \set Staff.beatStructure = #'(2 2)
  g  \slashedGrace a8 g16 fis g8 h )
  \omitHairpin d[\< d d d] \omitDynamic c-1\f \shpSlurD a'16-5 ( g fis e d-1 c-4
  h a g-1 fis-4 e d c-1 h-2 )
  \omitDynamic a8-.[\p e' ( d-. ) fis,-2] g4-. r8^\markup "Fine."
  \bar ":..:" \break
  %\autoBeamOff f,,8_\markup { \italic \small "cresc." }  f8 f8 f8 \autoBeamOn
  \mark \markup \fontsize #-1.5 { \bold "G Moll." \italic "(Sol mineur)" }
  \key b \major
  \posTextB d8~\p < d b' >-.[_( q r < c es a >-.] )
  r < b d g >[_( r < a d fis >-.] )
  r < g'^2 d'^5 >-._( [ r < d a' c >-. ] r q-.[ r < d fis a^4 >-. ) ] ) ]
  \posHairpinA g-1\< ( g'-5 ) f!-4 ( es )
  \posHairpinA es-3\> ( d ) c-1 ( b-3\! ) \break
  b_3_( a )
  \once \override Slur.positions = #'(-2 . 0)
  b_( g )
  \stemUp b4_( a8 ) \stemNeutral
  \bar ":..:"
  d-2
  \set Staff.beatStructure = #'(4)
  d8. ( es32 f es8 d c4.-1 d8-2 es8.-3 f32 g f8 es
  \omitHairpin d4.-1\< ) d'8-3 ( es d ) d d
  \omitDynamic d4-5\sf ( c16 b a g fis8-2 g-3 fis g )
  a4 r8 d,,~ < d b' >-._([\p q-. r < c es a >-. ] )
  r < b d g > [ r < a d fis > ]
  r < g' d' > [ r < d a' c > ]
  \set fingeringOrientations = #'(up)     %% für Akkorde!
  \override Fingering.direction = #DOWN      %% für Einzelnoten!
  r < d g b > [ r < fis-2 a-4 > ]
  \set Staff.beatStructure = #'(2 2)
  \once \override Slur.positions = #'(1 . -2)
  \override TextScript.extra-offset = #'(0 . -4)
  \posTextD g^\markup { \whiteout \dynamic "sf" } ( g' ) f!\p ( es )
  es ( d ) c ( b )
  b_( a ) c-5_( fis,-2 )
  a4_( g8 )
  \bar ":..:"
 %}
}

LH = \relative c' {
  \clef bass
  \key g \major
  \partial 8

  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \set Staff.printKeyCancellation = ##f
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt

  %\slashedGrace s8 r4 %% für den Fall, dass das Stück mit einem Vorschlag beginnt!
  %% Lilypond Bug, Workaround
  \omitDynamic r8\p
  \clef treble
  < h-5 g'-2 >4 r8  %\offsetPositions #'(0 . 12) q
  \once \override Slur.positions = #'(-1 . -4)
  q ( < d-4 a'-1 >4 ) r8
  \once \override Slur.positions = #'(-1 . -3)
  q ( < g-2 h-1 >4 ) r8
  \once \override Slur.positions = #'(-1 . -2)
  q ( < d a' >2 )
  \clef bass
  < fis, a d >4 r8 < fis a d >8
  < g h d >4 r
  <<
    {
      e4 ( a h a8 )
    }
    \\
    {
      < c, e >2 d4.
    }
  >>
  r8
  \clef treble
  < h' g' >4 r8 q
  < d a' >4 r8 q < g h >4 r8 q
  < d a' >2
  \clef bass
  < fis, a d >4. < fis a d >8
  < g h d > r \clef treble < c e a > r
  < d g h >4 < d fis c' >
  <<
    \relative c' {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(down) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(3 )  %% abhängig vom Takt
      h'8 d h s
      \set Staff.beatStructure = #'(4)
      \clef bass
      g, < h d > q q
      fis < a d > q q
      e < a cis > q q
      \stemDown
      d, < a' d > q q
      \stemUp
      \omitHairpin fis\< < a d > q q
      g < h e > q q
      \clef treble
      a < d fis > a < cis g' >\!
    }
    \\
    \relative c' {
      \voiceTwo
      \set fingeringOrientations = #'(down)
      \override Fingering.direction = #LEFT
      \override Fingering.staff-padding = #'()
      g'4. h8\rest
      g,2 fis e s2 \omitHairpin fis\< g
      a4 a4\!
    }
  >>
  \omitDynamic \grace { s8\mp } %to set volume
  \omitHairpin < d fis >4\> r
  \omitDynamic < h g' >\p r8 q ( < d a' >4 ) r8 q (
  < g h >4 ) r8 q ( \omitHairpin < d a' >2\< )
  \clef bass
  \omitDynamic < fis, a d >\f
  < g h d >4 r
  \omitDynamic < c, e a >\p < d a' c >
  \stemDown
  < g h >8
  \stemUp \once \override Slur.positions = #'(-2 . -1)
  d[ ( g, ] )
  \key b \major
  \override Fingering.direction = #DOWN  %% für Einzelnoten!
  \omitDynamic r8\p g4-5^( c-2 d c-2 b-5 \stemNeutral fis'^2 g^1 d^5 )
  <<
    \relative c {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(left) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
      \omitDynamic s2\p
      s2
      < es-2 >4 ( < e-1 > < g-2 > fis8-3 ) d8\rest
      \clef treble
      b' f' f f a, f' f f a, f' f f
      \omitHairpin b,\< f' f f
      a, < c fis > q q
      \clef bass

      \stemDown \omitDynamic g\sf < b d > q q es, < g cis > q q
    }
    \\
    \relative c {
      \voiceTwo
      \set fingeringOrientations = #'(left) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      \omitDynamic \grace { s8\p }
      \omitHairpin < b g' >4^(\< < c g' > \omitHairpin < b g' >\> < es-1  g-2 > )
      \stemDown
      < c-4 >\! < cis-3 > < d-5>4. s8
      b'2 a a
      \omitHairpin b\< a \stemUp
      \omitDynamic g\sf es
    }
  >>
  \stemDown
  \omitDynamic < d fis >8\f ( d' c! a )
  \stemUp \override Fingering.padding = #0.1
  \omitDynamic g,4\p ( c d c b-3 fis-5 g-4 )
  <<
    \relative c {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(left) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
      d8 c'-1 s2 s2 s2 <c-1>4 b8
    }
    \\
    \relative c {
      \voiceTwo
      \set fingeringOrientations = #'(up) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      \omitDynamic \grace { s8\p } \shpSlurU d4-5\<_( \omitDynamic es8-5\sf ) d8\rest
      \omitDynamic \posSlurPriority \shpSlurT < c-5 g'-2>4\p (
      < fis-3 a-1 > < g-4 d'-1 > )
      \override Fingering.avoid-slur = #'inside
      \set fingeringOrientations = #'(left) %% für Akkorde!
      < c,-5 es-3 >^( < d a' c > ) < g-4 >4._\markup "D.C. sino al fine."
    }
  >>
}

dynamics = {
  \partial 8 s8
  s2*23
  %24
  \posHairpinA s2\>
  s2\!_\markup { \dynamic "p" \italic "dol." }
  s2*2
  %28
  s2\<
  s2\!^\markup { \concat { \italic "r" \dynamic "f" } }
  s2
  %31
  s2\p
  s2*8
  s4. s8-\markup { \italic "dol." }
  s2*3
  %42
  s2-\markup { \hspace #2 \italic "cresc." }
  s2
  s2\sf
}
