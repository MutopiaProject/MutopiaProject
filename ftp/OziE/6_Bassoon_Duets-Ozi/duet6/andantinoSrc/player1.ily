st=\staccato
part = \relative c' {
  \set Staff.forceClef = ##t
  \clef bass
  \key g \major
  \time 2/4
  \tempo "Andantino"
  \override TupletBracket.bracket-visibility = ##f
  \partial 8
  d16. e32*1/2 ( d )
  \omit TupletNumber
  | \fl b8  b16. c32*1/2 ( b ) \fl a8 a16. b32*1/2 ( a )
  |  g8. a32 b  a8.\prall g32 a
  | b16. [ ( g32 ) c16.  ( a32 ) ] d16 dis e c
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1
  | a8. \grace c16 b \fl a8 d16. e32*1/2 ( d )
  | \fl b8 b16. c32*1/2 ( b ) \fl a8 a16. b32*1/2 ( a )
  | g8. a16 \grace c16 b16 a b cis
  | d16 cis b e a, a b cis
  \partial 4.
  | e4 ( d8 )
  \bar ":|.|:"
  \partial 8
  d16 b
  | e d \cAccOn c \cAccOff b c8 a16 cis
  | d \cAccOn c \cAccOff b a b8\prall c16 d
  | e d c b a a\prall b a
  | a4 r8 d16. e32*1/2 ( d )
  | \fl b8 b16. c32*1/2 ( b ) a16 b c d
  | c8. d16 fis e d c
  | b d g, b a c8 fis,16
  \partial 4.
  | a4 ( g16 ) s16
  \bar ":|.|:"
  \partial 8
  \tempo \markup {
    \concat {
      "1" \combine
      \super "c"
      \musicglyph #"dots.dot"
    }
    " Var"
  }
  \time 2/4 \partial 8
  r8
  | g8 r fis r
  \override Beam.auto-knee-gap = #1
  | e r fis fis, | g8-! a-! b-! c-!
  | d8 d d r
  | g8 r fis r | g8 r g4 ( | fis8 ) g a a,
  \partial 4.
  | d16 [ fis a fis ] d8
  \bar ":|.|:"
  \partial 8
  | r8
  | gis4 ( a8 ) r
  | fis4 ( g16 ) f e d
  | c4 r8 cis | d8 r r4 | g8 r fis f | e8 r c4
  \revert Beam.auto-knee-gap
  | b8 c d d,
  \partial 4.
  | g8 d g
  \set Staff.printKeyCancellation = ##f
  \bar ":|.|:"
  \tempo "mineur"
  \time 2/4
  \key g \minor
  \clef bass
  \partial 4
  | \fl d''8. ees16*1/2 d
  | c4. d16 c
  | bes4. c16 bes
  | a4 r16 f g a
  | bes4. b8\prall| c8. d16 ees g f ees
  | d16 f8 bes,16 d\rinf c ees a,
  | c4 ( bes8 ) r
  | r8 aes ( [ g f ] ) | ees8 [ ( d c ] ) r
  | r8 ges' [ ( f ees ] ) | d8 [ ( c bes ] ) r
  | bes'8. g16 c bes a g
  | a8. fis16 bes a g \cAccOn fis \cAccOff
  | g8 r r16 bes a g
  | fis16 ( d[ ees e ] f fis g gis )
  | a8 r r4
  | r16 d, fis g gis a ais b
  | c8 a fis d
  \clef bass
  \tempo "majeur"
  \key g \major
  | g16 ( b a g ) fis ( a g fis )
  | e16 ( g fis e ) fis ( d e fis )
  | g16 d a' d, b' g fis e
  | d16 fis a g fis d e fis | g b a g fis a g fis
  | e d e fis g e a g
  \override Beam.auto-knee-gap = #0.5
  | fis16 d g e a ( gis a ) a,
  | d16 ( fis a fis ) d8 r
  | r16 e ( fis gis a g fis e )
  | fis d e fis g f e d
  | c d e d c a b cis
  | d16 cis d e d  c[ b a ]
  | g16 b' a g fis d g f
  | e f e d c d e fis
  | g16 d b g c a d d,
  \partial 4.
  | g16 d' [ e fis ] g s16
  \bar "||"
  \tempo \markup {
    \concat {
      "3" \super "c"
    }
    " Var"
  }
  \partial 8.
  | d'16-. e-. d-.
  | b8 r r16 a-. b-. a-.
  | g4-. r16 a-. b-. c-.
  | b16-. fis-. g-. a-. b-. d-. e-. d-.
  | a8-. r r16 d-. e-. d-. b8 r r16 a-. b-. a-. g8 r r16 a-. b-. cis-.
  | d4-. r16 e-. a, cis-.
  \partial 4. d8-. r r16 s16
  \bar ":|.|:"
  \partial 8.
  | d16 b dis
  | e8 r r16 c16-. a-. c-. | d8 r r16 b-. c-. d-. | r16 e-. c-. b-. a8 a
  | a8 r r16 d-. e-. d-.
  | b8 r r16 g-. a-. b-.
  | c8-. r r16 e-. d-. c-.
  | b16-. d-. r g,8*1/2-. a16-. c-. fis,-. a-.
  \partial 4.
  | g4-. r8
  \bar ":|.|:"
  \partial 16
  | r16
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 1,1,1,1
  | \tuplet 3/2 {
    r16 d' c b a g fis a b c d c
    | b fis g b fis g d' fis, g c b a
    | g fis g a b c b a g g a g
    | fis8 r8*1/2 d'16 cis e d c b a g fis
  }

  \tempo \markup {
    \concat {
      "4"
      \super "c"
    }
    " Var"
  }
  \tuplet 3/2 {
    | g16 d' c b a g fis a b c d c
    | b a g fis e d g b a g fis e
    | fis e fis g a g fis g a g fis e
    | d16 fis a d a fis d8*3/2 r
    | r16 gis  b c e f e c a c a gis
    | fis a cis d e fis g fis e d c b
    | a16 c b a c d e d c b a g
    | fis g a g fis e d8 r8*1/2 d'16 c a
    | g16 d' c b a g fis a g f e d
    | e e' c b\prall a b c e dis e c a
    | d16 e fis g d b a c b a g fis
    | g16 d' b g b g d g d b d b
  }
  | g4 r \bar "||"

}
