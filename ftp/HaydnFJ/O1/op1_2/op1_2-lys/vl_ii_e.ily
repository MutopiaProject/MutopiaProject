\version "2.18.2"

ViolinII_e = \relative f'' {
  \global_e
  \repeat volta 2 {
    r8
    R2
    f4( \f d8) d-.
    es8-. b-. g-. es-.
    b'4 r
    \barNumberCheck 5
    R2
    f4( d8) d-.
    es8-. c-. as-. b-.
    es4 r
    r4 r8 c'
    \barNumberCheck 10
    c4( b8) r
    r4 r8 c
    c4( b8) r
    <d, b'>4 <d b'>
    <d b'>4 <d b'>8-. d-.
    \barNumberCheck 15
    es8-. c-. f-. d-.
    b4 f''~ \p
    f8 es4 des8~
    des8 c8-. f4~
    f8 es4 des8~
    \barNumberCheck 20
    des8 c8-. f4~
    f8 es4 des8~
    des8 c8-. r4
    <d, b'>4 \f <d b'>
    <d b'>4 r8 d-.
    \barNumberCheck 25
    es8-. f-.g-.a-.
    b16( c d c) b8-. d,-.
    es4 <c es a>
    <b d b'>4 r8
  }
  \repeat volta 2 {
    r8
    R2
    \barNumberCheck 30
    c'4( a8) a-.
    b8-. g-. es-. f-.
    b,4 r
    R2
    f''4( d8) d-.
    \barNumberCheck 35
    es8-. b-. g-. es-.
    b'4 r
    \rt 8 des,16
    \rt8 c
    \rt8 g'
    \barNumberCheck 40
    \rt8 as
    \rt8 as
    g4 g'~ \p
    g8 f4 es8~
    es8 d-. g,4~
    \barNumberCheck 45
    g8 f4 es8
    d8 r r4
    g8-. g-. g-. g-.
    as8-. as-. as-. f'-.
    es8-. d-. c-. h-.
    \barNumberCheck 50
    c4 r8 g-. \f
    c8-. g es'-. h-.
    c4 r8 g-.
    c8-. g-. es-. c-.
    g'4 r
    \barNumberCheck 55
    R2
    f'4( d8) as-.
    g8-. g-. f-. es
    d8-. b-. r4
    r4 r8 f'
    \barNumberCheck 60
    f4( es8) r
    r4 r8 f'
    f4( es8) r
    <g,, es'>4 <g es'>
    <g es'>4 <g es'>8-. g'-.
    \barNumberCheck 65
    as8-. f-. b-. g-.
    es4 b'~ \p
    b8 as4 ges8~
    ges8 f-. b4~
    b8 as4 ges8~
    \barNumberCheck 70
    ges8 f-. b4~
    b8 as4 ges8~
    ges8 f-. r4
    <g, es'>4 \f <g es'>
    <g es'>4 r8 g-.
    \barNumberCheck 75
    as8-. b-. c-. d-.
    es16( f g f) es8-. g,-.
    as4 <as d>
    <g es'>4 r8 \fine
  }
}