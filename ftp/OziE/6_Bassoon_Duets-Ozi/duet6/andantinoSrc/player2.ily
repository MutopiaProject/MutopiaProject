part = \relative c' {
  \set Staff.forceClef = ##t
  \clef bass
  \key g \major
  \time 2/4
  \tempo "Andantino"
  \override TupletBracket.bracket-visibility = ##f
  \partial 8
  \omit TupletNumber
  r8
  \override Beam.auto-knee-gap = #1
  | g8 r fis r | e4 ( fis )
  | g8-! a-! b16 b, c e | d8 [ d, d' ] r
  | g8 r fis r
  | e8 ( \cAccOn fis  ) \cAccOff g4 (
  | fis8 g ) a a,
  \partial 4.
  | d [ a d ]
  \bar ":|.|:"
  \partial 8
  | r8
  | r8 gis16 e a g fis e
  | fis8 d16 fis g f e d
  | c4 cis
  | d16 cis d cis d8 r
  | g8 r fis ( f )
  | e16 f e d c8 fis
  | g8 d,
  \revert Beam.auto-knee-gap
  d' d,
  \override Beam.auto-knee-gap = #1
  \partial 4.
  | g [ g' g, ]
  \bar ":|.|:"

  \tempo \markup {
    \concat {
      "1"
      \super "c"
    }
    " Var"
  }
  \time 2/4
  \partial 8.
  d''16 (  e d )
  | b16 ( d e d ) a ( d e d )
  | g,16 ( g a b ) a a\prall b c
  | b16 g c a d g e c
  | b d c b \fl a d e d
  | b16 d e d a d e d
  | b16 g a ais b ais b cis
  | d16 cis b e a, g fis e
  \partial 4.
  | d4 r8
  \bar ":|.|:"
  \partial 8
  | d'16 b
  | f'16 d c b d c a c
  | e16 d c a c b c d
  | e d c b a g fis e
  | d16 d' cis d cis ( d e d )
  | b16 d e d a d e d
  | c b c d e fis g e
  | d b g' e d c b a
  \partial 4.
  | a4 ( g8 )
  \set Staff.printKeyCancellation = ##f
  \bar ":|.|:"
  \tempo "mineur"
  \time 2/4
  \key g \minor
  \clef bass
  | r8 bes ( a g )
  | r a ( g  fis )
  | g ( \cAccOn f \cAccOff ees c )
  | d8 [ d, d' ] r
  | g8 ( \cAccOn f \cAccOff ees d )
  | c8 ( bes a g )
  | bes8 d ees f
  | bes,8 f bes, r
  | f'''8. g32 f ees8 d
  | c16 b c d ees ees ees ees
  | ees8. f32 ees d8 c
  | \grace c8 bes16 a bes c d d d d
  | d8. bes16 ees d c bes
  | c8. a16 d c bes a
  | bes d \grace f8 ees16 d d8 c16 bes
  | a8 r r4
  | r16 d, ( e fis g gis a ais )
  | b8 r r4
  | r16 d d d d [ d ] d ees32 d
  \clef bass
  \tempo "majeur"
  \key g \major
  | \fl b8 b16. ( c32*1/2  b ) \fl a8 a16. ( b32*1/2  a )
  | g4 a8.\prall g32 a
  | b8-! c-! d-! e-!
  | a,4  r8 d16. e32*1/2 ( d )
  | \fl b8 b16.( c32*1/2  b ) \fl a8 a16. ( b32*1/2  a )
  | g8. a16 b8 cis | d b16 e d8 cis\prall
  | d8 [ d d ] d16 [ b ]
  | e8. d16 c8 a16 c | d8. c16 b8 c16 d | e16 d c b a c b a
  | a4 r8 d16. ( e32*1/2 d )
  | \fl b8 b16. ( c32*1/2 b ) a8-! b\prall
  | c8. d16 e8 c
  | b8 g a fis
  \partial 4.
  | a4 ( g16 ) s16
  \bar "||"
  \tempo \markup {
    \concat {
      "3"
      \super "c"
    }
    " Var"
  }
  \partial 8
  | r8
  | r16 g,-. b-. g-. d'8-. r | r16 e-. g-. e-. d-. c-. b-. a-. | g-. d'-. e-. fis-. g-. b,-. c-. e-.
  | r d-. a-. fis-. d8-. r
  | r16 g-. b-. g-. d'8-. r | r16 e-. fis-. g-. a8 g
  | fis16-. d-. b'-. gis-. a8-. a,
  \partial 4.
  | d16-.[  a-. fis-. a-. ]d,8-.
  \bar ":|.|:"
  \partial 8
  | r8
  | r16 gis'-. e-. gis-. a8-. r | r16 fis-. d-. fis-. g-. f-. e-. d-.
  | c8 r r16 cis-. a-. cis-.  | d-. fis-. a-. fis-. d8-. r
  | r16 g,16-. b-. d-. f4
  | e16-. f-. e-. d-. c8-. fis-.
  | g16-. b,-. c-. e-. d8-. d,
  | r16 g'-. d-. b-. g4
  \bar ":|.|:"
  \tempo \markup {
    \concat {
      "4"
      \super "c"
    }
    " Var"
  }
  \partial 8
  | d'8
  | b8 b a a | g4. a8 | b c d e | a,4 r8 d
  | b8 b a a | g8. a16 b8 cis
  | d8 e a, cis
  |d8 r r d
  | e8 b c a
  | d8 c b c16 d
  | << { \voiceOne e8 c } \\ { e16 d c b } >> a8 b16 cis
  | d8 r r d
  | b8 b a b | c8. e16 e8 c
  | b8 g
  \revert Beam.auto-knee-gap
  d' d,
  \override Beam.auto-knee-gap = #1

  | g8 g' d b
  | g4 r
  \bar "||"

}
