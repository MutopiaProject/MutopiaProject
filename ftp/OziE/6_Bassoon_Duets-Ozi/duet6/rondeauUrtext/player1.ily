st = \staccato
part = \relative c' {
  \clef bass
  \time 3/4
  \key g \major
  \tempo "Gratioso"
\set Timing.beamExceptions = #'()
 \set Timing.beatBase = #1/4
  \set Timing.beatStructure = 1,1,1,1
\repeat segno 2 {
    b4.\dolce a8 c fis,
    | a4 ( g8 ) a b c
    | d4. c8 e a,
    | c4 b8 g e' d
    | cis4\prall d8 a d c
    | b4\prall ( c8 ) gis  a b
    | \override TupletNumber.direction=#DOWN
    \override TupletBracket.bracket-visibility = ##t
    \tupletUp
    | c8 d \tuplet 3/2 { e8   d c    }
    \omit TupletNumber
    \override TupletBracket.bracket-visibility = ##f
    \tuplet 3/2 { b8 a g }
    | fis8 e d c b a
    | g4\p g' d | e4. fis8 g a
    | b4. a8 c fis,
    | a4 ( g8 ) r g4 ~ | g4 ( fis8 ) r f4 ~
    | f4 e8 d c b
    | a8 b c4 d
    | g,4 r16\F g' b g b a g fis
    | g b d b d4 ~ d16 c b a
    | g4 g r
    \volta 2 \fine
    \volta 1 {
      | b8 g d' e16 d c8 b | \grace b8 a4 d, r
      | c'8 a e' fis16 e d8 c
      | \grace c8 b4 g8 b c d
      | e4. e8 e e
      | e4 ( d8 ) d d d
      | d4 ( cis8 ) cis cis cis
      | \cAccOn c2. \cAccOff
      | b8 ( d e d c b )
      \revert TupletBracket.bracket-visibility
      \undo \omit TupletNumber
      | a8 r  \tuplet 3/2 4 { r8\dolce c c }  \tuplet 3/2 4 {  \grace d16 c8 b a }
      | b8 r \tuplet 3/2 { r8 d d }
      \omit TupletNumber
      \override TupletBracket.bracket-visibility = ##f
      \grace e16 \tuplet 3/2 {
        d8 c b
        | a8*3/2 r r8 c c \grace d16 c8 bes a
        | bes8*3/2 r r8 d d \grace e16 d8 c bes
        | a8\F fis a d e d \grace d16 c8 \cAccOn b \cAccOff c
        | b8 g b d e f f e d
        | cis8 a b cis d e f e d
        | cis8 a b cis d e f e d
      }
      | cis4 r r
      | d2\dolce cis4
      | b8 a g b cis d
      | e2 d4
      | cis8 b a4 g
      | \cAccOn fis4 \cAccOff r d
      | cis4 r a
      | d4 r d
      | cis r a
      | d4-. e-. fis-.
      | g-. a-. b-. | cis2 d4
      | g,4 a a,
      | \tuplet 3/2 4 {
        d'8\F a fis d fis a d e fis
        | e cis b a cis d e fis g
        | fis a, fis d fis a d e fis
        | e cis b a cis d e fis g
        | fis fis, a g a b a b \cAccOn c \cAccOff
        | b8 cis d cis d e d e fis
        | e8 cis d e fis g fis e d
        | b8 g' e
      }
      d4 cis\prall| d4 r gis,\dolce (
      | a4 ) r fis (
      | g4 ) r g8\cresc f
      | ees4 d cis
      | d4 d'2\F
      | cis4 c2 | b4 bes2 ~ | bes2 a8 g
      | \cAccOn fis8 ( \cAccOff d' cis bes a g )
      | \cAccOn fis8 ( \cAccOff d' cis bes a g )
      \set Score.repeatCommands = #'((volta "1"))
      | fis8 \caesura \dolce fis ( e fis g gis )
      | a \cAccOn g \cAccOff fis g a ais
      \set Score.repeatCommands = #'((volta "2") end-repeat)
      | fis4 r2
      \set Score.repeatCommands = #'((volta #f))
      | r2.
    }
    \tempo "mineur"
    \bar ".|:"
    | r2.
    | e4\F c a
    | fis'2. ~
    | fis4 dis b | e2. ~ | e4 c a
    | \cAccOn d2 ( \cAccOff c4 )
    | b4 a g | c d d, | g g r
    | r8 b' ais b g e
    | c'2. ~ | c8 a gis a fis dis
    | b'2. ~ | b8 g fis g e c
    | a'2. ~ | a8 fis e fis d fis | r8 g a c b d
    | e8 ( c b a g fis )
    | g4 b2
    | a8 ( g fis g a b )
    | c4 c2 | b8 ( a g a b c ) | d8 b e4. d8
    | c8 e, fis gis a b | c a d4. c8
    | b4 r8 b b b
    | b4. g8 fis e
    | d4 r8 b' b b
    | b8 g'4 g8 [ fis e ]
    | dis4 r \tuplet 3/2 4 {
      r8 b a
      | g8 b ais b cis dis e fis e
    }
    | dis4 r \tuplet 3/2 4 {
      r8 b a
      | g8 b ais b cis dis e\dolce fis e
      | dis8 b b b b b b b b
      | c8*3/2 r a8 c b a b c
      | b8*3/2 r g8 b a g a b
      | a8*3/2 r fis8 a g fis g a
    }
    | bes2\F g4
    | \tuplet 3/2 4 {
      \cAccOn fis8 \cAccOff d' c bes a g g a g
      \cAccOn fis8 \cAccOff d' c bes a g g a g
    }
    | fis4 r2
    \set Score.repeatCommands = #'((volta "1"))
    | fis4 r2 | r2.
    \set Score.repeatCommands = #'((volta "2") end-repeat)
    | r8 \dolce fis ( e fis g gis )
    | a ( \cAccOn g \cAccOff fis g a ais )
    \set Score.repeatCommands = #'((volta #f))
    \bar "||"
  }
}