\version "2.18.2"

Viola_e = \relative b' {
  \global_e
  \clef alto
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
    es4 r8 es
    d4 r8 a
    \barNumberCheck 10
    b8 f b es
    d4 r8 a
    b8 f b4
    f'8 r f r
    f4 f8-. d-.
    \barNumberCheck 15
    es8-. c-. f-. d-.
    b4 des'~ \p
    des8 c4 b8~
    b8 a-. des4~
    des8 c4 b8~
    \barNumberCheck 20
    b8 a-.des4~
    des8 c4 b8~
    b8 a-. r4
    f4 \f f
    f4 r8 d-.
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
    \rt 8 es,16
    \rt 8 es16
    \rt 8 c16
    \barNumberCheck 40
    \rt 8 c16
    d16 d d d c c c c
    g4 es''~ \p
    es8 d4 c8~
    c8 h-. es,4~
    \barNumberCheck 45
    es8 d4 c8
    h8 r r4
    es8-. es-. es-. es-.
    f8-. f-.  f-. f-.
    g8-. g-. g-. g-.
    \barNumberCheck 50
    c,4 r8 g'-. \f
    c8-. g es'-. h-.
    c4 r8 g-.
    c8-. g-. es-. c-.
    g'4 r
    \barNumberCheck 55
    R2
    b4. b8es,4 r8 es-.
    b'8-. b,-. r4
    r4 r8 d
    \barNumberCheck 60
    es8 b es,4
    r4 r8 d'
    es8 b es,4
    b'8 r b r
    b8 r b-. g'-.
    \barNumberCheck 65
    as8-. f-. b-. g-.
    es4 ges~ \p
    ges8 f4 es8~
    es8 d-. ges4~
    ges8 f4 es8~
    \barNumberCheck 70
    es8 d-. ges4~
    ges8 f4 es8~
    es8 d-. r4
    es4 \f es
    es4 r8 g,-.
    \barNumberCheck 75
    as8-. b-. c-. d-.
    es16( f g f) es8-. g,-.
    as4 b
    es4 r8 \fine
  }
}