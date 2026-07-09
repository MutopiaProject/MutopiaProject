signatures = {
  \clef bass
  \time 3/4
  \key g \major
}
uptoFine = \relative c' {
  %% 01
  \partial 4
  d8 d
  | d8. e32 ( d ) g8 fis e d
  | d8 ( c ) b a g fis
  | g4 a b
  | a8. ( b32 c ) b4 d8 d
  | d8. e32 ( d) g8 fis e d
  | d ( c ) b a g fis
  | g4 r8 b ( a fis )
  \partial 2
  | g4 r
}
uptoSegno = \relative c {
  \partial 4
  | r4
  | fis,2. | g | a | b4 d d 
  | fis,2. | g | a
  | b4 g''4. fis8
  | fis e g4. fis8
  | fis e g fis e g
  | fis e g fis e d 
  | d16 cis b a a4 fis8 g
  | a4 a a 
  | fis'2 g16 fis e d
  | cis4 cis cis
  | cis r fis,8 g
  | a4 a a
  | fis'2 g16 fis e d
  | cis4 cis cis 
  | cis2 a8 g
  | fis4 r r
  | g r r 
  | e r r 
  | a,2 cis4
  | d4. d8 e fis
  | g2. 
  | fis8 g a4 a,
  | d16 d' cis d fis e d cis b a g fis
  | g e fis g a b cis d e cis a g
  | fis d' cis d fis e d cis b a g fis
  | g e fis g a b cis d e cis a g
  | fis d e fis g a b cis d e fis g
  | gis8 a g fis e d
  | cis b a g fis e
  | a b16 g fis4 e
  | d r d'8 fis
  | e4 d e8 cis
  | d4 r d8 fis
  | e4 d e8 cis
  | d2. d2 d8 d
}
uptoEnd = \relative c' {
  \partial 4
  | bes8 c
  | d4. ees16 d a8 b
  | c4. d16 c g8 a
  | \grace c8 bes4 a8 g fis g
  | bes4 a bes8 c
  | d4. ees16 d a8 b
  | c4. d16 c g8 a
  | \grace c8 bes4 a8 g a fis
  | fis4 g r
  | d2.
  | c4 c8 d c bes
  | a4 a a 
  | bes bes d
  | ees ees f
  | g g f
  | ees ees e
  | f f f
  | ees'16 ( f ees d ) c8 c c c 
  | d4 ees\trill f
  | ees16 f ees d \repeat tremolo 4 c8
  | d4 ees f
  \tuplet 3/2 4 {
    g8 f ees d c b 
    \override TupletBracket.bracket-visibility = ##f
    \omit TupletNumber
    c ees g
    | f ees d c bes a bes d f
  }
  | f8 ees d4 c
  | cis2 d4
  | \cAccOn c16 \cAccOff d c bes \repeat tremolo 4 a8
  | bes4 c \trill d
  |  c16  d c bes \repeat tremolo 4 a8
  | bes4 c \trill d
  | ees4 r ees,
  | f r f 
  | ees f f 
  | bes, bes' bes8 c
  | d4. ees16 d a8 b
  | c4. d16 c g8 a
  | \grace c8 bes4 a8 g fis g
  | bes4 a bes8 c
  | d4. ees16 d a8 b
  | c4. d16 c g8 a
  | \grace c8 bes4 a8 g g' cis,
  | d2 ees8 cis
  | d2 ees8 cis 
  | d2. ~
  | d2 d8 d
}
