st = \staccato
part = \relative c' {
  \clef bass
  \time 3/4
  \key f \major
  \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
  \relative c {
    | f,4\P r f'
    | e8 c d e f f,
    | bes4 r bes
    | c8 c, f a c f
    | f,4 r8 f' e d | c8 e f g a b | c8. f,16 g4 g, | c4 g c,
    \bar ":|.|:"
    r8\rinf ees'8 ( d fis g a ) | bes8. a16 g4 r
    | r8\rinf des8 c e f g | f4 r8 f g a
    | bes4 ( b ) c8 ( bes
    | a8 g f e d c )
    | bes4 c c, | f4 c f
    \bar ":|.|:"
    | r8 c''8 a c f16 e d c
    | bes8 c bes g bes a
    | a8 ( g ) bes16 c d c bes a g f
    | e16 f g e f4 r
    | r8 c' a c bes16 a g f
    | e16 c d e f g a \cAccOn bes \cAccOff c\prall bes c e
    \override Beam.auto-knee-gap = #1.5
    | d8 f e c g, b' | b2 c8 r
    \revert  Beam.auto-knee-gap
    \mark \markup \fermata
    \bar ":|.|:"
    | r8 c a g fis16 a bes c | bes8 c\prall d16 c bes a bes a g f
    | e8 bes'8 g f e16 g a bes
    | a8 f a c f e
    | d fis g f e16 c d e
    |f8 f, f' e d16 c bes a
    | g16 a bes d f,8 a g e | e2 ( f4 )
    \mark \markup \fermata
    \bar ":|.|:"
    \tempo "mineur"
    \clef bass
    \key f \minor
    \time 3/4
    | f4 r r | des8\dolce ( f des ) c bes d | \cAccOn ees2. \cAccOff
    | c8 ees c bes aes c | des8 ( ees f g aes bes ) | c8 ( bes aes g f ees )
    | des4 ees ees, | aes4 c8 [ ees ] aes r
    | ees'8 ( des c bes a c ) | des2. ~ | des8 ( c bes ) aes g bes
    | c2. ~ | c8 bes aes g f a
    | bes2.\cresc ~ | bes8 aes g4 f | e8\P ( \cAccOn des \cAccOff c bes aes g )
    | f4 r r
    | \cAccOn des'8 \cAccOff f des c bes d
    | \cAccOn ees2. \cAccOff
    | c8 ees c bes aes c
    | des2 c4
    | bes8 des c bes aes g
    | aes8 bes c4 c,
    | f8 f' g a bes b
    \bar ":|.|:"
    \tempo "majeur" \key f \major \time 3/4
    %% 057
    | c4\dolce f8 e d c
    | c4 bes \prall a
    | g4 bes8 a g f
    | e8. g16 f4 r
    %% 061
    | a8. g16 f8 a g f
    | e8 g a b c d
    | e8 f e4 d
    | d2 c8 r
    %% 065
    | c4. a8 bes c
    | d8. c16 bes4 bes8 a
    | g4 c4. bes8
    | a8 c f4. e8
    | d8 g4 f8 e16 c d e
    | f8 ( e d c bes a )
    \undo \omit TupletNumber
    \once \override TupletBracket.bracket-visibility = ##t
    \override TupletBracket.direction=#UP
    | \tuplet 3/2 { g8 bes d } f,4 \grace a8 g4 | g2 ( f4 )
    \omit TupletNumber
    \bar ":|.|:"
    | f,4\P r f' | e8 r c r f r | bes,4 r r
    | c4\F \tuplet 3/2 { f,8 a bes c d e }
    | f4\P r f | e4 r e | f4 g g,
    | \tuplet 3/2 { c8\F e f g a b }  c8 r
%%    #(if (not fullScore) #{
%%      \tweak self-alignment-X #CENTER \textEndMark \markup \fermata  #} )
    \bar ":|.|:"
    | fis,4\P r d | g,4 r r | e'4 r c | f,4 r a
    | bes4 b c8 bes
    | a4 r a | bes c c,
    | \tuplet 3/2 { f8\F a c f c a } f4
    \bar ":|."
  }
}
