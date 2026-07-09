part = \relative c' {
  \clef bass
  \key c \major
  \allegroModeratoTempo
  \partial 4.
  \relative c' {
    g8 a b
    \allegroModeratoFirstBarLine
    %% 01
    | c c c c c d16 e d8 c
    | c2 b8 c b a
    | g f f f f g16 a g8 f
    | f2 f8 e' d c
    %% 05
    | b4.\rinforzando c16 d c8 c d e
    | f2\rinforzando e8\staccato c\staccato b\staccato c\staccato
    | d4\staccato\P e\staccato f\staccato e\staccato
    | d r r2
    %% 08
    | r4 c,\P e fis
    | g8 ( fis g fis ) g4 r
    | r4 f, a b
    | c8 ( b c b ) c c  d e
    %% 13
    | f2\rinforzando ( e8 ) c d e
    | f2\rinforzando ~ f8 f e d
    | c4 r b c
    %% \override Beam.auto-knee-gap = #1
    | g'8\P g, a b c d e fis
    %% 17
    | g8 r fis fis g r fis fis
    | g4\staccato g\staccato r8 d8 e fis
    | g8 g g g g a16 b a8 g
    | g2 ( fis8 ) g a b
    %% 21
    | c8 c c c c d16 e d8 c
    | c2 ( b8 ) d e fis
    | g8 fis e d d4 r
    | e8 d c b b b c d
    %% 25
    | \tuplet 3/2 {c8\dolce ( b a ) } \tuplet 3/2 {c8 ( b a ) } a4 r
    | \tuplet 3/2 {d8 ( c b ) } \tuplet 3/2 {d8 ( c b ) } b4 r
    \omit TupletNumber
    \override TupletBracket.bracket-visibility = ##f
    | \tuplet 3/2 { c8 b a c b a } a4 r
    \tuplet 3/2 {
      | d8 c b d c b b\F b c d c b
      %% 29
      | a fis g a b c b d c b a g
    }
    | d4 d, r2
    | R1*2
    %% 33
    | g'4.\dolce a16 g fis4 g 
    | a4\staccato b\staccato c\staccato b\staccato
    | e4.\F d8 c4 c
    | b4. a8 g b c d
    %% 37
    | e4.\F d8 c4 c4
    | b4. a8 g4 r
    | e8 ( fis g gis ) a4 r
    | d,8 ( e f fis ) g g, a b
    %% 41
    | c4 r c c
    | d4 d, d' r
    | g4.\dolce a16 g fis4 g
    | a4\staccato b\staccato c\staccato b\staccato
    %% 45
    | b4. c16 b a4\staccato b\staccato
    | c\staccato d\staccato e\staccato d\staccato
    | g4.\F fis8 e4 e
    | d4. c8 b d e fis
    %% 49
    | g4. fis8 e4 e
    | d4. c8 b c d dis
    | e4. d8 c b c cis
    | d4. c8 b g ges f
    %% 53
    | e8 e' c a \grace b16 a8 g \grace a16 g8 fis
    | g4 r g,\staccato\P g\staccato
    | d'\staccato r d\staccato d,\staccato
    | g\staccato r g\staccato g\staccato
    %% 57
    | d'\staccato r d\staccato d,\staccato
    | g\staccato r e'\staccato c\staccato
    | g\staccato r e'\staccato c\staccato
    | g4 r r2
    | c4 r c cis
    %% 61
    | d4 	r \repeat tremolo 4 d8\F
    %% \override Beam.auto-knee-gap = #2
    | g,8 b' d b, g d'' b g
    | fis8 a c a, d, a'' b c
    | g, b' d b, g d'' b g
    %% 65
    %% \override Beam.auto-knee-gap = #1
    | fis8 a c a, d, a'' b c
    | b8. g16 \tuplet 3/2 { g8 a b  c8\prall b c c d e }
    | d8. g,16 \tuplet 3/2 { g8 a b c\prall b c c d e }
    \tuplet 3/2 {
      | d8 b c d e fis g fis e d c b
      %% 69
      | a c b a c b a b a g fis e
      | d8 d' c b a g
    }
    a2\tr
    \allegroModeratoFagotOneFirstRepeat
    | r8\P g8 fis g g,4 r
    | r8 g' fis g g,4 b'
    | b8 a c b a4 gis
    | a4 e a, r
    %% 77
    | r8 a' gis a a,4 r
    | r8 a' gis a a, a' a c
    | c8 b a g fis4 d
    | g g, r8 d'8\rinforzando e fis
    %% 81
    | g8 \cAccOn f \cAccOff e d c e fis g
    | a8_\markup \center-align "rinf" g fis e d fis g a
    | g4\P r d d,
    | g8 ( d' e fis ) g\F a bes\prall c
    %% 85
    | d4 r r8 bes bes c
    | d4 r r8 d \grace f8 e d
    | d4. g8 g4. f8
    | ees8 d c4 r a8\prall bes
    %% 89
    | c4 r r8 a a bes
    | c4 r r8 c c d
    | ees4. d8 d c c bes
    | a8\P f f f \repeat tremolo  4 f8
    %% 93
    | f1 ~
    | f4 d f aes
    | g1 ~
    | g4_\CrescMark c,4 ees ges
    %% 97
    | f1
    | r4\F \cAccOn a,4 \cAccOff c ees
    | \cAccOn d4 \cAccOff d c c
    | \cAccOn b8 \cAccOff g \cAccOn a \cAccOff b c c16 d ees8 fis
    %% 101
    | g8 g, a b c c16 d e8 fis
    | g4 r8 fis\staccato g\staccato fis \staccato g\staccato fis\staccato
    | g4 r r2
    | c,4._\dolce d16 c b4\staccato c\staccato
    %% 105
    | d4\staccato e\staccato f\staccato e\staccato
    | e4. f16 e d4\staccato e\staccato
    | f4\staccato g\staccato a\staccato g\staccato
    | c4. b8 a4 a
    %% 109
    | g4. f8 e g a b
    | c4. b8 a4 a
    | g4. f8 e f g gis
    | a4. g8 f e f fis
    %% 113
    | g4.f8 e\F c' b bes
    | a d cis d e f e d
    | c2 ( b4 ) r
    | R1*2
    %% 118
    | c,4.\dolce d16 c b4 c
    | d4\staccato e4\staccato f4\staccato e4\staccato
    | a4. g8 f4 f
    %% 121
    | e4. d8 c e f g
    | a4. g8 f4 f
    | e4. d8 c4 r
    | a8 b c cis d4. c8
    %% 125
    b8\F g a b c c d e
    | f4 r g8 g g, g
    | c8 g' e g c, g'' e c
    | b8 f' d, f' g,, f'' e d
    %% 129
    | c,8 g' e g c, g'' e c
    | b8 f' d, f' g,, f'' e d
    | c8. c,16 \tuplet 3/2 { c8 d e \grace g8 f e f f g a }
    | g8. c,16 \tuplet 3/2 { c8 d e \grace g8 f e f f g a }
    %% 133
    | \tuplet 3/2 {
      g8 e f g a b c b a g f e
      | d8 f e d f e d e d c b a
      | g8 g' f e d c 
    }
    d2\tr
    | c4 r c\P c
    %% 137
    | g'4 r g, g
    | c4 r c c
    | g'4 r g, g
    | c,4 r a' f
    %% 141
    | c4 r a' f
    | c4 r r2
    | f4 r f f
    | g r g2
    %% 145
    \allegroModeratoFagotOneSecondRepeat
  }
}