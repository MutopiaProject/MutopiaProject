signatures = {
  \clef bass
  \time 3/4
  \key g \major
}
% player 2
uptoFine = \relative c' {
  %% 01
  \partial 4
  r4
  | b,2 g4
  | a d c
  | b8 d a d g, d'
  | d,4 g r
  | b2 g4
  | a d c
  | b8 g b d c a
  \partial 2
  | b2
}
%% 2nd player
uptoSegno = \relative c' {
  \partial 4
  | a8 a
  | a4 \grace { b16 a } d4. c8
  | c8 b d b a g
  | fis4 r8 c'a fis
  | \grace a16 g4 fis a 8 a
  | a4 \grace { b16 a } d4. c8
  | c8 b d b a g
  | fis4 r8 c' a fis
  | g4 b4. a8
  | g4 b4. a8
  | g4 b8 a g b
  | a8 g b a g gis
  | a4 a d,8 e
  | fis4 fis fis
  | a2 b16 a g fis
  | g8 a g a g a
  | g a g e d e
  | fis4 fis fis
  | a2 b16 a g fis
  | g8 a g a g a | g a g a a cis
  \override TupletBracket.bracket-visibility = ##f
  \override TupletBracket.direction = #UP
  \tuplet 3/2 4 {
    #(if (not facsimile) #{ \override TupletBracket.bracket-visibility = ##t
                            \undo \omit TupletNumber #} )
    d8 cis d fis e d
    \override TupletBracket.bracket-visibility = ##f
    \omit TupletNumber
    \cAccOn cis \cAccOff b a
    | b ais b d cis b a g fis
    | g fis g b a g fis e d
    \once \override Beam.auto-knee-gap = #1
    | cis8 g'' fis e d cis b a g
  }
  | fis8 d' cis c b ais
  | cis8 b \cAccOn a \cAccOff g fis e
  | a8 d, e2
  | d4 r r
  | a r r | d r r | a r r | d r r
  | fis2. | g2. | fis8 g a4 a,
  | d4 r fis8 a
  | g4 fis g8 e
  | fis4 r fis8 a
  | g4 fis g8 e
  | d8 d e d cis d
  | d8 \cAccOn c \cAccOff a c d c
}
uptoEnd = \relative c' {
  \partial 4
  g4
  | fis2 f4 | e2 ees4 | d4 c8 bes a g
  | d4 d' g
  | fis2 f4 | e2 ees4 |
  d4 c8 bes c d
  | g,4 g' bes8 d
  | f8 f4 g16 f ees d c bes
  | bes4 a8 bes c d
  \tuplet 3/2 4 {
    \showTuplets
    | ees8 d c bes a g
    \hideTuplets
    f g ees
  }
  | ees4 d f'8 d
  | b4 c8 ees d f
  | f ees ees4. d8
  | fis 8 g f ees d c
  | bes2 a4
  | c16 d c bes a8 a a a
  | bes4 c d
  | c16 d c bes \repeat tremolo 4 a8
  | bes4 c d
  | ees4 r ees, | d r d | ees f f,
  | r8 bes d f bes4
  | ees16 f ees d c8 c c c
  | d4 ees f
  | ees16 f ees d c8 c c c
  | d4 ees f
  \tuplet 3/2 {
    | g8 f ees d c b c ees g
    | f ees d c \cAccOn bes \cAccOff a bes d f
  }
  | f8 ees d4 c\trill
  | c4 bes g
  | fis2 f4 | e2 ees4 | d4 c8 bes a g
  | d4 d' g
  | fis2 f4 | e2 ees4
  | d4 bes' g
  | fis2 g4 | fis2 g4
  | fis8 d e d cis d | d \cAccOn c \cAccOff a c d c
}
