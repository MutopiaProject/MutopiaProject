\version "2.18.2"

ViolinI_e = \relative b' {
  \global_e
  \override Beam.auto-knee-gap = #3
  \repeat volta 2 {
    b8-. \f
    es8-. b-. g'-. es-.
    as4( f8) d-.
    es8-. b-. g-. es
    b'4 r8 b,-.
    \barNumberCheck 5
    es8-. b-. g'-. es-.
    as4( f8) d-.
    es8-. c-. as-. b-.
    es4 r8 g'8(
    f8) b,-. a( es')
    \barNumberCheck 10
    es4( d8) g-.
    f8-. b,8( a) es'-.
    es4( d8) f-.
    b8-. f-. b-. f-.
    b8-. f-. b-. d,,-.
    \barNumberCheck 15
    es8-. c-. f-. d-.
    b4 f'16 \p f f f
    \rt 8 f16
    \rt 8 f16
    \rt 8 f16
    \barNumberCheck 20
    \rt 8 f16
    \rt 8 f16
    f4 r8 f'8-. \f
    b8-. f-. b-. f-.
    b16( a b c) d8-. d,,-.
    \barNumberCheck 25
    es8-. f-.g-.a-.
    b16( c d c) b8-. d,-.
    es4 <c es a>
    <b d b'>4 r8
  }
  \break
  \repeat volta 2 {
    f'-.
    b8-. f-. d'-. b-.
    \barNumberCheck 30
    es4( c8) a-.
    b8-. g-. es-. f-.
    b,4 r8 b'-.
    es8-. b-. g'-. es-.
    as4( f8) d-.
    \barNumberCheck 35
    es8-. b-. g-. es
    b'4 r8 g'-.
    b8-. es,,-. b'-. des-.
    c8-. es,-. as,-. c'-.
    g'8-. c,,-. g'-. b-.
    \barNumberCheck 40
    as8-. f as,-. f''-.
    f16( g f g) as8-. c,-.
    h16 g \p g g g g g g
    \rt 8 g
    \rt 8 g
    \barNumberCheck 45
    \rt 8 g
    g8 r r g
    c4 c8.( d32 es)
    d4 r8 as'-.
    g8-. f-. es-. d-.
    \barNumberCheck 50
    c4 r8 g-. \f
    c8-. g es'-. h-.
    c4 r8 g-.
    c8-. g-. es-. c-.
    g'4 r8 b!8-.
    \barNumberCheck 55
    es8-. b-. g'-. es-.
    as4( f8) d-.
    es8-. b-. as-. g
    f8-. b,-. r c'(
    b8) es,-. d( as')
    \barNumberCheck 60
    as4( g8) c-.
    b8-. es( d) as'-.
    as4( g8) b16( g)
    es8-. b-. es-. b-.
    es8-. b-. es-. g,-.
    \barNumberCheck 65
    as8-. f-. b-. g-.
    es4 b16 \p b b b
    \rt 8 b
    \rt 8 b
    \rt 8 b
    \barNumberCheck 70
    \rt 8 b
    \rt 8 b
    b4 r8 b'-. \f
    es8-. b-. es-. b-.
    es16( d es f) g8-. g,,-.
    \barNumberCheck 75
    as8-. b-. c-. d-.
    es16( f g f) es8-. g,-.
    as4 <as d>
    <g es'>4 r8 \fine
  }
}