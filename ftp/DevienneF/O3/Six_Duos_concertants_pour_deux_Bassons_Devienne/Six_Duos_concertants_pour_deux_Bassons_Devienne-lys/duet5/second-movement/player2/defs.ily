uptoFine = \relative c' {
  #(if facsimile #{ c8 #} )
  | f,,8\p a c a c f
  | d4. e4 f8
  | bes,4. b | c \cAccOn bes \cAccOff 
  | a4 a'8 g4 e8 | f4 a8 g4 e8
  | f8 a a a g f
  | \repeat tremolo 3 c8 c8 #(if facsimile #{ r8*2 #} #{ r4 #} )
  | f,8\f a c a c f
  | d4. e4 f8
  | bes,4. b | c c4 a'8
  | bes4 g8 a4 a8
  | bes4 g8  a4 a,8
  | bes4. c | f,8 a c f4\fermata
  
}
uptoSegno = \relative c' {
  c8
  | bes4 g8 e4 bes'8
  | gis8 a a a4 c8
  | c bes g e c'8 bes
  | a d c c4 cis8
  | d16 cis d cis d cis d e f e d c
  | b c d c b a g4 g,8
  | c16 b c d e fis g fis g a b g 
  | c, b c d e f g a g f e d
  | c b c d e fis
  g fis g a b g
  | c, b c d e fis g4 e8
  | f4. d | f  d
  | b2. c4 a'8 f4 g8
  | c,8 g e c4 c''8
  | b16 c d c b8 c16 d e d c8
  | d16 e f e d8 d16 g f e d c
  #(if facsimile #{ \cadenzaOn  \once \override NoteHead.color = #white bis1*1/8 \hideNotes g,8^\markup \italic \bold "w" \grace g'16 \unHideNotes\cadenzaOff #} )
   % #(if facsimile #{ \cadenzaOn  \once  cis'8 \hideNotes g4\trill s4. \cadenzaOff #} )
  | b16 c d c b8 c16 d e d c8
  | d16 e f e d8 e16 g f e d c
  | d e f e d c b c d e d c
  | g fis g a b c d c b a g f
  | e g' f e d c d4.
  | c8 g f e d c 
  | f4. e
  | b c | f e | b c | f4 r8 d4 r8
  | b2. | c4 e8 f4 g8
  | c, e d c #(if facsimile #{ _[ #} #{ [ #} ) e c ] | d f d e g e | f bes a \bentKnee a f, a
  | g4. c | f, c'4 c8
  | d8 e d e4 e8
  | f bes a a d c
  | bes a g f e d
  | c4. c, 
   #(if facsimile #{
   | d4. e #})  
}

uptoEnd = \relative c' {
  #(if facsimile #{ \partial 8 r8 #} ) 
  | f,8 d f a g f | e f g g f e 
  | f4. d | a ~ a4 fis'8
  | g2. | e | f | a,
  | g4 e8 f4 b8 
  | \repeat tremolo 3 c8 c4 r8
  | g16 bes c bes g bes
  \bentKnee a c' bes a g f 
  | e g f e d c f c bes a g f
  | g16 bes c bes g bes
  \bentKnee a c' bes a g f 
  | e g f e d c f c bes a g f
  | bes'2.
  | a8 c bes a g f
  | bes,4 a8 bes c c 
  | f, a c f4 a8
  | a bes a f'4 d8 
  | d4. cis8 d dis
  | e \cAccOn d \cAccOff cis bes a g
  | f bes a a4 d,8
  | cis e g f a d,
  | cis e g f4 f8 
  | e4. cis | d f
  | g a
  | d,8 f a \bentKnee d d, d'
  |
  \bentKnee \cAccOn c \cAccOff c, c' \bentKnee bes bes, bes'
  | a4. f | g e | f4 a8 f4 a8
  | g4 e8 g4 e8
}

