\version "2.18.2"

Cello_e = \relative b {
  \global_e
  \clef bass
  \compressFullBarRests
  \repeat volta 2 {
    r8
    R2
    b4. \f d8-.
    es8-. b-. g-. es-.
    b'4 r
    \barNumberCheck 5
    R2
    b,4. d8-.
    es8-. c-. as-. b-.
    es4 r
    r4 r8 f
    \barNumberCheck 10
    b8 f b,4
    r4 r8 f'
    b8 f b,4
    b'4 b
    b4 b8-. d,-.
    \barNumberCheck 15
    es8-. c-. f-. d-.
    b4 r
    a'4 \p b
    f4 r
    a4 b
    \barNumberCheck 20
    f4 r
    a4 b
    f4 r
    b4 \f b
    b4 r8 d,-.
    \barNumberCheck 25
    es8-. f-.g-.a-.
    b16( c d c) b8-. d,-.
    es4 f
    b,4 r8
  }
  \repeat volta 2 {
    r8
    R2
    \barNumberCheck 30
    f'4. a8-.
    b8-. g-. es-. f-.
    b,4 r
    R2
    b'4. d8-.
    \barNumberCheck 35
    es8-. b-. g-. es-.
    b'4 r
    g8 g g g
    as as as as
    e e e e
    \barNumberCheck 40
    f f f f
    f f f f
    g4 r
    h4 \p c
    g4 r
    \barNumberCheck 45
    h,4 c
    g8 r r4
    R2 * 3
    \barNumberCheck 50
    r4 r8 g'-. \f
    c8-. g es'-. h-.
    c4 r8 g-.
    c8-. g-. es-. c-.
    g'4 r
    \barNumberCheck 55
    R2
    b4. b8
    es,4 r8 es-.
    b'8-. b,-. r4
    r4 r8 b
    \barNumberCheck 60
    es8 b es4
    r4 r8 b
    es8 b es4
    es4 es
    es4 es8-. g-.
    \barNumberCheck 65
    as8-. f-. b-. g-.
    es4 r
    d'4 \p es
    b4 r
    d,4 es
    \barNumberCheck 70
    b4 r
    d4 es
    b4 r
    es4 \f es
    es4 r8 g,-.
    \barNumberCheck 75
    as8-. b-. c-. d-.
    es16( f g f) es8-. g,-.
    as4 b
    es4 r8 \fine
  }
}