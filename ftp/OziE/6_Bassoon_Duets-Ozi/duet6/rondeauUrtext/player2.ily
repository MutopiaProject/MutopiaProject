st = \staccato
part = \relative c' {
  \clef bass
  %%  \override Staff.TimeSignature.style=#'single-digit
  \override TupletBracket.tuplet-slur = ##f
  \time 3/4
  \key g \major
  \tempo "Gratioso"
  \set Timing.beamExceptions = #'()
  \set Timing.beatBase = #1/4
  \set Timing.beatStructure = 1,1,1,1
  \repeat segno 2 {
    | r4\P g d
    | e4. fis8 g a
    | b4. a8 c fis,
    | a4 ( g8 ) r g4 ~
    | g4 fis8 r f4 ~
    | f4 e8 d c b
    | a8 b c4 cis | d4 r r
    | b'4.\F a8 c fis,
    | a4 ( g8 ) a b c
    | d4. c8 e a, | c4 ( b8 ) g e' d
    | cis4\prall d8 a d c
    | b4\prall c8 gis a b
    | c8 d e c a fis
    | g16\F b d b d4 ~ d16 c b a
    | g4 r8*1/2 g16 b g b a g fis
    | g4 g, r
    \volta 2 \fine
    \volta 1 {
      | g'4\P r r | fis8 d a' b16 a g8 fis
      | \grace fis16 e4 c r
      | g'8 [ d ] g g a b
      | c8 ( c, c' b a g )
      | fis ( ais b a g fis )
      | e8 ( gis a g fis e )
      | d8 ( e fis g a fis )
      | g8 ( b c b a g )
      \tupletUp
      \tuplet 3/2 4 {
        \override TupletBracket.bracket-visibility = ##t
        | d8\dolce fis a
        \override TupletBracket.bracket-visibility = ##f
        \omit TupletNumber
        d,8*3/2 r
        a'8 g fis
        \override TupletBracket.bracket-visibility = ##t
        \undo \omit TupletNumber
        | g8 b d
        \override TupletBracket.bracket-visibility = ##f
        \omit TupletNumber
        d,8*3/2 r
        b'8 a g
        | d8 fis a d,8*3/2 r a'8 g fis
        | g bes d d,8*3/2 r \cAccOn bes'8 \cAccOff a g
      }
      | \cAccOn fis4\P \cAccOff r fis | g r gis | a r gis | a r gis
      | a8\F ( a b cis d e ) | \cAccOn fis2 \cAccOff e4
      | d8 cis b d e fis
      | g2 fis4
      | e8 d cis a b cis
      \tuplet 3/2 4 {
        d8 a fis d fis a d e fis | e8 cis b a cis d e fis g | fis a, fis d fis a d e fis
        | e cis b a cis d e fis g
        | fis fis, a g a b a b \cAccOn c \cAccOff
        | b cis d cis d e d e fis
        | e cis d e fis g fis e d
      }
      | g8 e d4 cis\prall
      | d4 r d,\P | cis r a | d r d | cis r a
      | d4-! e-! fis-! | g-! a-! b-! | cis2 d4
      | g,4 a a,
      | d4 d'2\F (
      | cis4 ) c2 ( | b4 ) bes2 ~ | bes2 a8 g
      | fis4 r fis8\dolce gis | a ( \cAccOn g \cAccOff fis d e fis )
      | g8 ( fis g f ees d )
      | ees8 ( d ees d c cis )
      | d4 r cis
      | d8 ( d cis d dis e )
      \set Score.repeatCommands = #'((volta "1"))
      | d4 r2 | d4 r2
      \set Score.repeatCommands = #'((volta "2") end-repeat)
      | d4 r2
      \set Score.repeatCommands = #'((volta #f))
      r2.
    }
    \tempo "mineur"
    \bar ".|:"
    | b'4 g e
    | c'2. ~ | c4 a fis | b2. ~ | b4 g e
    | a2. ~ | a4 fis d
    | g4 a b
    | \grace b16 a4 g fis | a ( g ) r
    | e4 r r | r8 e dis e c a
    | fis'2. ~ | fis8 dis cis dis b g
    | e'2. ~ | e8 c b c a fis
    | d'2 c4 | b4 a g | c4 d d,
    | g4 r g' | fis8 ( e d e fis g )
    | a4 r a
    | g8 ( d b d g a )
    | b4 r8 e, gis e | a4 r8 e fis gis
    | a4 r8 d, fis d | g8 fis g fis e dis
    | e8 ( \cAccOn d \cAccOff  c b a ais )
    | b8 ( fis' g fis e dis )
    | e8 ( \cAccOn  d \cAccOff c b a ais )
    \tuplet 3/2 4 {
      | b8 dis e fis g a b8*3/2 r
      | e,,4*3/2\F r ais
      | b8 dis e fis g a b8*3/2 r
      | e,,4*3/2 r ais
      | b r r
      | a'8\dolce c a fis a g fis8*3/2 r
      | g8 b g e g fis e8*3/2 r
      | fis8 a fis d fis e d e fis
      | g8\F bes a g f ees ees d cis
    }
    | d4\P r cis
    | d r cis
    | d8 ( d cis d dis e )
    \set Score.repeatCommands = #'((volta "1"))
    | fis4 r2 | r2.
    \set Score.repeatCommands = #'((volta "2") end-repeat)
    | fis4 r2 | fis4 r2
    \set Score.repeatCommands = #'((volta #f))
    \bar "||"
  }
}
