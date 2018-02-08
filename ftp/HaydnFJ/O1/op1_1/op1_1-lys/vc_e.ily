\version "2.18.2"

Cello_e = \relative b {
  \global_e
  \clef bass
  \repeat volta 2 {
    b8 \p b b b
    b8 b b b
    b4 r
    b4 r
    \barNumberCheck 5
    b4 r
    f8-. b-. r4
    b8 \f b b b
    b,4 r
    f'8 f f f
    \barNumberCheck 10
    f,4 r
    c'8 c c c
    c,4 r
    f'8 f g g
    a8 a b b
    \barNumberCheck 15
    a8 a b b
    a8 b c c,
    f8 c f,4
    R2
    r8 a' \p a a
    \barNumberCheck 20
    b8 a g f
    e8 f r4
    R2
    r8 a \f a a
    b8-. f-. g-. e-.
    \barNumberCheck 25
    f8-. d'-. b-. c-.
    f,4 f,
    f4 r
  }
  \repeat volta 2 {
    f'8 f f f
    f8 f f f
    \barNumberCheck 30
    f8 f f f
    f4 r
    f8 f f f
    f8 f f f
    f8 f f f
    \barNumberCheck 35
    f4 r
    f8 f f f
    f4 r
    f8 f f f
    f4 r
    \barNumberCheck 40
    f8 f f f
    f,4 r
    b'8 \p b b b
    b8 b b b
    b4 r
    \barNumberCheck 45
    b4 r
    b4 r
    f8-. b-. r4
    b,8 \f b b b
    b4 r
    \barNumberCheck 50
    b8 b b b
    b4 r
    f'8 f f f
    f,4 r
    b8 b c c
    \barNumberCheck 55
    d8 d es es
    d8 d es es
    d8 es f f,
    b8 f b4
    R2
    \barNumberCheck 60
    r8 d \p d d
    es8 d c b
    a8 b r4
    R2
    r8 d' \f d d
    \barNumberCheck 65
    es8-. b-. c-. a-.
    b8-. g-. es-. f-.
    b,4 b
    b4 r \fine
  }
}