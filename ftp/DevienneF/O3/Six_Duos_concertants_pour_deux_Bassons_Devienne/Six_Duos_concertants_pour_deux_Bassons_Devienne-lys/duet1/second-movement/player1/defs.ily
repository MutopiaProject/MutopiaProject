signatures = {
  \clef bass
  \time 6/8
  \key f \major
}
uptoFine = \relative c' {
    %% 01
    | f4 f8 \grace g8 f8 e f
    | c8 c c \grace d8 c bes a
    | d4. d8 f d
    | d b c c f d
    | c d c bes a g
    | a8 bes b c d e
    | f e d c bes a
    | a8 ( g ) g g4 r8
    | f,8 a c f, a c
    | f, a c f, a c
    | f, bes d f, bes d
    | f, a c f, f'' e
    | \grace e8 d4 c8 \grace { bes16 c } d4 c8
    | c8 bes a c a f
    | d8 d' c bes a g
    | g4. f
}
uptoSegno = \relative c' {
    | r8 a4 a4 a8
    | d4. ~ d8 f e | d8 f e d f gis a a, a a4 d8
    | f4 e8 d4 c8
    | b4 a8 g4 e'8 | e8 d c b c d
    | c d dis e4 e8
    | e8 d c b c d | c d dis e4 e,8
    | f2.
    | f4. f4.
    |g8 g g \repeat tremolo 3 g8
    | c,4. g'8 c e
    | \grace f8 d4 c8 d4 e8
    | \grace d8 f4. e4.
    | d4 c8 d4 e8
    | c4. g8 c e
    | \grace e8 d4 c8 d4 e8
    | \grace d8 f4. e4.
    |d4 c8 d4 e8
    | c16 d e d c b a b c b a g
    | f16 g a g f e  d e f e d c
    | b16 c d e f g a #(if facsimile #{ bes16 #} #{ b16 #} ) c d e f
    | g8 d16 e d c d4.\trill
    | c2.
    | f,,2.
    | g4.  f'4.
    | e4 f8 g4 g,8
    | c2.  ( | e'2. )
}
uptoEnd = \relative c' {
    | d4. a4 f8
    | d8 a f #(if facsimile #{ d8 s8 #} #{ d4 #} ) a''8
    | a8 bes a f' e d
    | d ( cis ) cis cis 4 a8
    | a8 bes a f' e d | d8 ( cis ) cis cis4 a8
    | a8 bes a d a fis
    | g8 a g e' cis g
    | f8 a' g f e d
    | d4. cis4 r8
    | f,4 r8 f4 r8
    | f8 a bes a4.
    | a8 g a bes a g
    | e4. f4.
    | a8 bes a a e' g
    | f8 e d d4.
    | a8 bes a a e' g
    | f8 e d cis d c
    | bes8 a g f e d
    | a'8 a' g f e d
    | e g f e d cis
    | d2.
}
