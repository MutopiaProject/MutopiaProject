\version "2.16.0"

IBasso =  \relative c {
  \clef "bass"
  \time 4/4
  \key c\major

  % end beams on quarters by default
  \set Timing.beamExceptions = 
    #'( (end. (
      ((1 . 8) . (2 2 2 2))
    )))

  \repeat "volta" 2 {
  \partial 8 r8 |
  %1 page 2
  c4 c c8 c' c, c' | g g, g' g, c c' c, c' | c, e f g c, c' c, c' |
  g g a d, g4 r8 b, | c2 b8 d c d | g,4 r8 c'8 b g a d, |
  %7
  g g, r c' b g a d, | g,4 r c r | d r b r | d r fis8 fis fis fis |
  g16 d g a b a b g a g fis g a g a fis | 
  %12
  g fis? g a b a b g a g fis! g a g a fis | g8 f! e c b cis d fis |
  g g, c d b g' a, fis' | g8.( fis32  e) d16-.( c-. b-.  a)-. g4 r | r8  c'[ c, c']
    % page 3
     c,[ c' c, c'] |
  %17
  g c, e e f f g f | e c c c f4 b,8 b | e4 g8 g f a g g, |
  c4 e16 d e c f4 b,8 b | e4 a8(  g) f a g g, |
  %22
  <<{c16 s e s e s e s f s f s f s f s | e s e s e s e s b s b s b s b s |
    c s c s d s d s e s e s d s d s | c s c s b s b s e s e s f s f s}
   {s g, s g s g s g s g s g s g s g | s g s g s g s g s g s g s g s g |
    s g s g s g s g s g s g s g s g | s g s g s g s g s g s g s g s g}>>
  %26
  e'8 c r g' c c, r f | e4 r8 g c c, g' f |  e[ e f g]  a[ e f g] | \time 2/4
  c,4 r8 }

  \repeat "volta" 2 {
  r8 | \time 4/4
  %30
  g16 g' d b g g' d b g g g' a b a b g |  d8[ d d d] g, g'16 a b a b g |
   d8[ d d d] g,4 d'16 c bes a |  g8[ g' g, g'] fis g es cis |
  %34
   d8[ d d d] g16 g g g es8 cis | d8 d d d g, g' g, g' |
  %36 page 4
  g16 bes g bes g bes g bes g bes fis a fis a fis a |
  f! as f as f as f as f as e ges e ges b,! d | c c c c c8 cis d4 c |
  %39
  b! g fis' d | g e8 c  b[ c d e16 fis] |  g8[ f! e c]  b[ c d e16 fis] |
  g8 g, c d g g, c d | g,1 ~ | g8 g' c, d g,2 ~ | g ~ g8 g' c, d |
  %46
  g,4 r g r | c16 c c c d d d d g,4 r8 g' | c16 g e c c' g e c c'8 c, c c' |
  g16 g g g g, g g g c e g c c, e g c | g g g g g, g g g c e g c c, e g c |
  %51
  e,2  f8[ f f f] | fis2  g8[ g g g] | b,2 c4 r |
  %54 page 5
  c'4 bes a r | a f e r | e e f2 ~ | f4 fis  g8[ g f e] | f d g f e c g' g, |
  %59
  c16 c c c g'8 g, c4 r | c r8 g' c,4 r8 g' | c,4 r8 g'  c,16[ g' f e d c b a] |
  g8 g' f f e e e e | b16 g b g b g b g c g c g c g c g |
  %64
   f'8[ f f f]  e[ e e e] | b16 g b g b g b g  c8[ c c c] |
  g4 r8 a'16 g f8 e f g | c,16 d e f g g, b g c4 r |
  %68 Note: The last chord is presumably very incorrect.
  r8  e[ f g]  a[ e f g] | <c, g b,>2 r_\fermata \bar "|."
  }
}
