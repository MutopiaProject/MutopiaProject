part = \relative c' {
  \clef bass
  \key c \major
  \allegroModeratoTempo
  \partial 4.
  \relative c' {
    r8 r4
    %% 01
    | r4\P c, e fis
    | g8 ( fis g fis ) g4 r
    | r4 f, a b
    | c8 ( b c b ) c c d e 
    %% 05
    | f2\rinforzando e8 e d c
    | b2\rinforzando c8\staccato e\staccato d\staccato c\staccato
    | f4\staccato\p e\staccato d\staccato c\staccato
    | g8_\markup \italic { cresc. } ( g' fis g ) fis g a b
    %% 09
    | c8 c c c c d16 e d8 c
    | c2 b8 c b a
    | g8 f f f f g16 a g8 f
    | f2 e8 e' d c
    %% 13
    | b4.\rinforzando c16 d c8 c b a
    | gis4.\rinforzando a16 b  a8 a g \cAccOn f \cAccOff
    | e8 g c e g ( f ) f ( e )
    | d8 ( g ges f e d des c )
    %% 17
    | b8 c4 d16 c b8 c4 d16 c
    | b4\staccato b\staccato r2
    | r4\P g,4 b cis
    | d8 cis d cis d4 r
    %% 21
    | r4 c e fis
    | g8 fis g fis g b c d
    | e8 d c b b g a b
    | c8 b a g g g a b
    %% 25
    \override TupletBracket.bracket-visibility = ##t
    \tupletUp
    | a4 r \tuplet 3/2 {d,8\dolce  e fis  } \tuplet 3/2 {fis8  g a  } 
    \omit TupletNumber
    \override TupletBracket.bracket-visibility = ##f
    | g 4 r \tuplet 3/2 { g8 g a b a g }
    | fis4 r \tuplet 3/2 {d8  e fis } \tuplet 3/2 {fis8  g a } 
    | g4 r \tuplet 3/2 { g8\F g a b a g } 
    %% 29
    \tuplet 3/2 {
      | fis d e fis g a g d c b a g
    }
    | d'4 d, r2
    | g'4.\dolce a16 g fis4\staccato g\staccato
    | a4\st b\st c\st b\st
    %% 33
    | b4. c16 b a4\staccato b\staccato
    | c4\staccato d\staccato e\staccato d\staccato
    | g4.\F fis8 e4 e
    | d4. c8 ( b d e fis )
    %% 37
    | g4.\F fis8 e4 e
    | d4. c8 ( b c d dis )
    | e4. d8 ( c b c cis )
    | d4. c8 b g ges f
    %% 41
    | e8 e' d c b a c a
    | g2 fis4 r
    |  \compressMMRests {R1*2 }
    %% 45
    | g4.\dolce a16 g fis4\staccato g\staccato
    | a4\staccato b\staccato c\staccato b\staccato
    | e4.\F d8 c4 c
    | b4. a8 g b c d
    %% 49
    | e4. d8 c4 c4
    | b4. a8 g4 r
    | e8 fis g gis a4. g8
    | f e f fis g g, a b
    %% 53
    | c4 r d d,
    | g8 b' d b, g d'' b g
    | fis a c a, d, a'' b c
    | g,8 b' d b, g d'' b g
    %% 57
    | fis a c a, d, a'' b c
    | b8. g16 \tuplet 3/2 {
      g8 a b c\prall b c c d e
    }
    | d8. g,16 \tuplet 3/2 {
      g8 a b c\prall b c c d e
    }
    \tuplet 3/2 {
      | d8 b c d e fis g fis e d c b
      %% 61
      | a8 c b a c b a b a g fis e
      | d8 d' c b a g
    }
    a2\tr
    | g4 r4 g,4\staccato\P b\staccato
    | d4\staccato r d\staccato fis\staccato
    %% 65
    | g4\staccato r g,\staccato b\staccato
    | d4\staccato r d\staccato fis\staccato
    | g4\staccato r e\staccato c\staccato
    | g4 r e' c
    %% 69
    | g4 r r2
    | c4 r c c
    | d4 r \repeat tremolo 4 d8\F
    \allegroModeratoFagotTwoFirstRepeat
    %% 74
    | d'4 r4 r8 b8 b c
    %% 75
    | d4 r r8 d d g
    | g8 fis e d c d e d
    | d4 ( c ) r a8\prall b
    | c4 r r8 a a b 
    %% 79
    | c4 r r8 c c e
    | e d c b b a d c
    | c4 ( b ) b4. a8
    | g8 g a b c4. b8
    %% 83
    | a8 a b c d4. c8
    | b8 d g, b b a g fis
    | g4 r r2
    | r8\P g ( fis g ) g,4 r
    %% 87
    | r8 g' fis g g,4 bes'
    | bes8 a g a b g a b
    | c4 g c, r
    | r8 d ees d ees4 r
    %% 91
    | r8 d ees d ees d c bes
    | a8 bes c d dis4 e
    | f4 r r2
    | r4\dolce f' c a
    | bes1 ~
    %% 95
    | bes4 ees bes g
    | aes1 \cresc ~
    | aes4 des aes f
    | fis1\F ~
    %% 99
    | fis1
    | g8 g \cAccOn a b \cAccOff c ees4 d16 c
    | b8 g a b c ees4 d16 c
    | b4 r8 c\staccato b\staccato c\staccato b\staccato c\staccato
    %% 103
    | b4\staccato r r2
    \compressEmptyMeasures
    | \compressMMRests { R1*2 }
    | c,4.\dolce d16 c b4\staccato c\staccato
    %% 107
    | d4\staccato e\staccato f\staccato e\staccato
    | a4. g8 f4 f4
    | e4. d8 c e f g
    | a4. g8 f4 f
    %% 111
    | e4. d8 c4 r
    | a8 b c cis d4. c8
    | b8\F g a b c c d e
    | f4 r f fis
    %% 115
    | g4 g, g' r
    | c,4.\dolce d16 c b4\staccato c\staccato
    | d4\staccato e\staccato f\staccato e\staccato
    | e4. f16 e d4\staccato e\staccato
    %% 119
    | f\staccato g\staccato a\staccato g\staccato
    | c4. b8 a4 a
    | g4. f8 e g a b
    | c4. b8 a4 a
    %% 123
    | g4. f8 e f g gis
    | a4. g8 f e f fis
    | g4.\F f8 e c' b bes
    | a8 d f d d2\tr
    %% 127
    | c4 r\P c,\staccato e\staccato
    | g4\staccato r g,\staccato b\staccato
    | c4\staccato r c\staccato e\staccato
    | g4\staccato r g,\staccato b\staccato
    %% 131
    | c4 r a\staccato f\staccato
    | c4\staccato r a'\staccato f\staccato
    | c4 r r2
    | f4 r f f
    %% 135
    | g4 r \repeat tremolo 4 g8\F
    | c8 g' e g c, g'' e c
    | b8 f' d, f' g,, f'' e d
    | c,8 g' e g c, g'' e c
    %% 139
    | b8 f' d, f' g,, f'' e d
    | c8. c,16 \tuplet 3/2 { c8 d e \grace g16 f8 e f f g a }
    | g8. c,16 \tuplet 3/2 {
      c8 d e \grace g16 f8 e f f g a
      | g8 e f g a b c b a g f e
      %% 143
      | d f e d f e d e d c b a
      | g8 g' f e d c
    }
    d2\prall
    \allegroModeratoFagotTwoSecondRepeat
  }
}