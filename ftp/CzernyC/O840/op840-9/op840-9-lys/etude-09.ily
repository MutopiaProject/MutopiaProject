\version "2.18.2"

\language "deutsch"

\include "defn.ily"

RH= \relative c' {
  \time 2/4
  \key b \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegro vivace"

  \once \override Slur.positions = #'(2 . -2)
  \grace { \posTextB f32-1_(-\f b-2 } d8-4-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { b32-1 ( d-2 } f8-5-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { d32-1 ( f-2 } b8-5-. ) r
  \grace { f32-1 ( b-2 } d8-5-. ) r
  \slashedGrace f,32 d'8-5 ( c-4-. )
  \slashedGrace f,32\noBeam c'8-5 ( b-4-. )
  \grace { b32 c } b8-5 ( a-2-. ) g-1-. f-2-.
  \once \override Slur.positions = #'(2 . -2)
  \grace { f,32 ( b } d8-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { b32 ( d } f8-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { d32 ( f } b8-. ) r
  \grace { f32-1 ( b-2 } d8-5-. ) r
  \acciaccatura g,8 c-3-. es-5-.
  \acciaccatura f,8\noBeam a-2-. c-4-. b r8 r4
  \bar ":..:"
  \set Staff.beatStructure = #'(2 2 )
  a16-3 \p ( b a g a8-. ) f-1-.
  b16-2 ( c b a b8-2-. ) d-1-.
  \ottava #1
  f16-3 ( g f e f8-. ) c-1-.
  es!-3[ ( d ) c-1-. b-2-.]
  e16-3 ( f e d \posTextC \omitHairpin e8-.\<_\markup \italic "cresc." ) c-.
  f16-3 ( g f es f8-1-. ) c'-3-.
  c-5 ( b ) g-. e-.
  f-2  \ottava #0 f,-5 [ ( es!-4 c-2 ) ]
  \once \override Slur.positions = #'(2 . -2)
  \grace { \posTextB f,32\f ( b } d8-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { b32 ( d } f8-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { d32 ( f } b8-. ) r
  \grace { f32 ( b } d8-. ) r
  \slashedGrace g,8 d'8 ( c-. )
  \slashedGrace g8 c8 ( b-. )
  \slashedGrace f8 b8[ ( a-. ) g-. f-.]
  \ottava #1
  \once \override Slur.positions = #'(2 . 0)
  \grace { b32 ( d } f8-. ) r
  \acciaccatura f-1 b-4-. r
  \acciaccatura es,-3 g-5-. r
  \acciaccatura c,-1 es-3-. r
  \ottava #0
  \acciaccatura b-2 d-4-. f-5-.
  \acciaccatura a, es'-4-. c-1-.
  b-2 r r4^\markup "Fine."
  %\offsetPositions #'(1 . 0)
  \bar ":..:"  \pageBreak
  \key es \major
  \shpSlurD g,16-1_\markup { \dynamic p \italic "dol." } ( b-3 es-4 b-2 g'4-5
  f,16 b es b g'4 )
  \shpSlurD f,16 ( b d-4 f-1 b d f b,-4
  \noFingPad es4-5 b8-2-. ) r
  \shpSlurD g,16 ( b es b g'4
  f,16 b es b g'4 )
  \shpSlurD a,16 ( c es-3 f-1 a c \noFingPad es-4 a,
  b8-. ) b-. b-.\noBeam r
  \bar ":..:"
  \shpSlurD b16-4 \p ( as! f d b-4 as f d b_2 d_1 f as b-4 d-1 f-3 d-1 )

  es-2 ( f es d es8-. ) g-4-.
  f4-1 ( b8-4-. ) r
  \shpSlurD \posTextB b16 \f ( as f d b as f d_1
  f as b-4 d-1 f as b-4 d-1
  f-4 es d es \noFingPad g-5 es b g
  f2-2 )
  \shpSlurD g,16 \p ( b es b g'4 g,16 b es b g'4 )
  f,16 ( b d f b d f d
  es4 b8-. ) r
  \shpSlurD \omitHairpin c,16\<_\markup \italic "cresc." ( es as es c'4
  b,16-1 es-2 g-4 es-2 b'4-5 )
  \shpSlurD d,,16 \f ( f as b_4 d-1 f as d,
  es8-. ) es-. es-. r
  \once \override Voice.Slur #'positions = #'(2.8 . 0.6)

  \bar ":..:"
}

LH = \relative c' {
  \clef bass
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \key b \major
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 )  %% abhängig vom Takt

  \grace { s32 s32 }
  \omitDynamic b8\f-._\markup { \italic "stacc." } < d f >-. b-. q-.
  b-. q-. b-. q-.
  a-. < es' f >-. b-. < d f >-.

  <<
    {
      \voiceOne
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #UP
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      f,8 < c' es > q q
    } \\ {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #DOWN %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #DOWN
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      f,2
    }
  >>
  b8-.[ < d f >-.] b-. q-.
  b8-.[ < d f >-.] b-. q-.
  es,-.[ < g c >-.] f-. < c' es >-.
  < b-4 d-2 >-. < d-2 f-1 >-. < b d >-.\noBeam r
  <<
    {
      \voiceOne
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #UP
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      \omitDynamic f8\p < c' es > q q
      f, < b d > q q
      f < a c > q q
      \clef treble
      b < d f > q q
      c < g' b > \omitHairpin q\< q
      c, < f a > q q
      c < es g > c < g' b >
      < f a > b8\rest \omitDynamic b4\rest\f

    } \\ {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #DOWN %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #DOWN
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      \omitDynamic f,2\p f f
      b c c c4 c4
      %d4\rest_\markup "D.C. sino al fine."
    }
  >>
  \clef bass
  \omitDynamic b8-.[\f < d f >-.] b-. q-.
  b8-.[ < d f >-.] b-. q-.
  es,-.[ < g c >-.] e q
  f-.[ < a c >-.] es!-. q-.
  d-.[ < f b >-.] d-. q-.
  es-.[ < g b >-.] es-. < g c >-.
  f-.[ < b d >-.] f-. < a c es >-.
  < b-4 d-2 > < d-2 f-1 > < b d >\noBeam r
  \key es \major
  <<
    {
      \voiceOne
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #UP
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      es,2 es b es es es f
      s

      b, b s b b b b s es es b es as^4 g^5
      b,
    } \\ {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #DOWN
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      es8-4 b'-1 g-2 b-1
      es,8 b' g b
      b, as' f as
      es b' g b
      es, b' g b
      es, b' g b
      f es' c es
      < b d >4. d,8\rest
      b8 as'! f as
      b, as' f as
      g-2^( b-1 g-2 es-3 )
      b f' d f
      b, f' d f
      b, f' d f
      b, g' es g
      < b,^5 d^3 > b'-1 as-2 f-3
      es b' g b
      es, b' g b
      b, as' f as
      es b' g b
      \omitHairpin as\< es' c es
      g, es' b es
      \omitDynamic b,\f as' f as
      \override TextScript.self-alignment-X = #RIGHT
      \override TextScript.extra-offset = #'( 3 . 0 )
      < es g >4. d8\rest_\markup "D.C. sino al fine."
    }
  >>
}

dynamics = { }

%{
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line {
          \bold \huge { "№" }
          \number { \exercise "." }
        }
        \line \large { B Dur }
        \italic \line { Si \flat majeur. }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant"
    \RH
    \new Staff="Bass"
    \LH
  >>
  \layout {
    ragged-last-bottom = ##t
    %ragged-last = ##t
    ragged-right = ##f
  }
  \midi { }
}

%}
