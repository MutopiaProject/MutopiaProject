signatures = {
  \clef bass
  \time 6/8
  \key f \major
}
% player 2
uptoFine = \relative c' {
  %% 01
  | a4 a8 a\trill g a  
  | a a a a g f | bes4. ~ bes8 d bes
  | bes gis a a d bes
  | a bes a g f e f g gis a bes g
  | a8 c bes a g f
  | \repeat tremolo 3 c8 c4 r8
  | f'4 f8 \grace g f e f | c c c \grace d c bes a
  | d4. ~ d8 f8 ( d )
  | c ( b c ) c ( d c )
  | \cAccOn bes4  (  \cAccOff a8 ) bes4 ( a8 )
  | g4 ( f8 ) a,4.
  | bes4 a8 bes c c | f, a c f4. 
}
%% 2nd player
uptoSegno = \relative c' {
  a,4. a4 a8
  | d4. ~ d8 f ( e )
  | d ( f e ) d-. f -. gis-.
  #(if facsimile #{ \once \override Beam.auto-knee-gap = #1 #} )
  | a8 a, a a4 r8
  | d4 e8 f4 e8
  | d8 f fis g4 g'8
  | g8 f e d d f | e f fis g4 g8
  | g8 \cAccOn f \cAccOff e d e f
  | e f fis g4 g,8
  | a8\trill gis a d cis d
  | f e d f16 e g f e d
  | c4. d4.\trill
  | c4. e,4 g8
  | f4 e8 f4 g8
  | \grace f8 a4. g4.
  | f4 e8 f4 g8
  | e8 g f e4 g8
  | f4 e8 f4 g8
  | \grace f8 a4. g
  | f4 e8 f4 g8 
  | c,2.
  | f,2.
  | g4. f'
  | e4 f8 g4 g,8
  | c'16 d e d c b a b c b a g
  | f g a g f e d e f e d c
  | b c d e f g a #(if facsimile #{ bes16 #} #{ b16 #} ) c d e f
  | g8 f16 e d c d4\trill s8
  | c8 \cAccOn bes \cAccOff g e c bes
  | g bes c e g bes
}
uptoEnd = \relative c' {
  d,4. a4 f8 | d a' f d4 r8
  | d'2.
  | e8 bes' a g f e
  | d2. | e8 bes' a g f e | d2. 
  | e4. cis
  | d4 e8 f g gis
  | \repeat tremolo 3 a8 a4 \cAccOn c,8 \cAccOff
  | f8 f16 e f g a8 a16 g a bes
  | c8 f d8 #(if facsimile #{ s8 c4 #} #{ c4. #} ) ~
  | c8 b c \grace e d c bes
  | gis4. a
  | cis,2.
  | d | cis | d | d | f, | g4. a | d2.
}
