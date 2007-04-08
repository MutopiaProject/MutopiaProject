% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

melody = \relative f' {

  \context Voice = verses {
    \autoBeamOff

    \repeat volta 2 {
      f8 |
      as8. f16 c'8. e,16 |
      g8 f r f |
      f8. f'16 f8. es16 |
      \appoggiatura es8 des4 c8 r16 c |
      \appoggiatura c16 bes8. bes16 \appoggiatura bes as8. as16 |
      as16[( g]) g4 des'16.[( c32]) |
      c8 f, e f |
      as[( g]) r c |

% 10
      b c des8. bes16 |
      bes[( as]) g8 r c |
      b c des8. bes16 |
      bes16[( as]) g8 r8. c16 |
      des8 r16 des e4-\fermata |
      r16 f es! des des[( c]) bes as |
      as[( g]) bes[( g]) f8 e |
      f r16 f' ges8. a,16 |
      c8 bes r4 |
      r8 des c e, |

% 20
      f4 r |
      R2*2 |
      r4 r8
    }
  }

  \break

  f8 |
  as8. f16 c'8. e,16 |
  g8 f r f |
  f8. f'16 f8. es16 |
  \appoggiatura es8 des4 c8 r16 c |
  \appoggiatura c16 bes8. bes16 \appoggiatura bes as8. as16 |
  as16[( g]) g4 des'16.[( c32]) |
  c8 f, e f |
  as[( g]) r c |
  b c des8. bes16 |
  bes[( as]) g8 r c |
  b c des8. bes16 |
  bes16[( as]) g8 r8. c16 |
  des8 r16 des e4-\fermata |
  r16 f es! des des[( c]) bes as |
  as[( g]) bes[( g]) f8 e |
  f r16 f' ges8. a,16 |
  c8 bes r4 |
  r8 des c e, |
  f4 r |

  r r8 as |
  as8. as16 as8. as16 |
  bes8 as r as |
  a8. a16 a8. a16 |
  c16[( bes]) bes8 r bes |
  des bes g8. des'16 |
  des16[( c]) c8 r c |
  f des bes f |
  g4 r8 bes |
  bes8. bes16 bes8. f16 |
  g8 g r bes16[( es]) |
  \appoggiatura es d8. d16 d8. d16 |
  f8 es16 es ges4-\fermata |
  r16 a, bes c des![( es]) es f |
  f[( es]) des[( c]) c[( bes]) as[( g]) |
  as4 r8 

  as |
  es'8. es,16 es8. es16 |
  f8 es r c' |
  f8. f,16 f8. f16 |
  ges8 f r des' |
  ces ces es ces |
  a bes r c! |
  des des f des |
  c b4 b8 |
  c c16[( des]) des8. c32[( bes!]) |
  as!4 r8 as |
  ges des' bes ges |
  f e r c' |
  \appoggiatura c16 bes8. bes16 bes8. g16 |
  f8 e r g |
  \appoggiatura c16 bes8. bes16 bes8. bes16 |
  f'8 e r g |
  bes, des g, bes |
  e,4 r8-\fermata

  f |
  as8. f16 c'8. e,16 |
  f8 f r f |
  f8. f'16 f8. es16 |
  \appoggiatura es8 des4 c8 r16 c |
  \appoggiatura c16 bes8. bes16 \appoggiatura bes as8. as16 |
  as16[( g]) g4 des'16.[( c32]) |
  c8 f, e f |
  as[( g]) r c |
  b c des8. bes16 |
  bes[( as]) g8 r c |
  b c des8. bes16 |
  bes[( as]) g8 r8. c16 |
  des8. des16 des8. bes16 |
  f'[( e]) e8 r4 |
  r16 f es! des des[( c]) bes as |
  as[( g bes g] f8) e |
  f r16 f' ges8. a,16 |
  bes8. f'16 ges8. a,16 |
  c[( bes]) bes8 r4 |
  r16 f' es! des des[( c]) bes as |
  as[( g bes g] f8) e |
  f4 r8 as |
  \appoggiatura as8 g4. e'8 |
  e[( f]) r as, |
  \appoggiatura as g4. e'8 |
  e[( f]) r des |
  \appoggiatura des c4. e,8 |
  f4 r |
  R2
  
  \bar "|."
}
