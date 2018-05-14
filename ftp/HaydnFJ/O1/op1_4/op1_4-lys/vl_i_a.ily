\version "2.18.2"
\language "deutsch"

ViolinI_a = \relative h {
  \override Score.SpacingSpanner #'strict-grace-spacing = ##t
  \global_a
  \repeat volta 2 {
    <h g'>8 \p r r
    <a fis'>8 r r
    <fis' c'>8 r r
    <g h>8 r r
    \barNumberCheck 5
    <d h' g'>8 \f d' d
    d4 c16( a)
    <d, h' g'>8 d' d
    d4 c16( a)
    g8 c16( h) e( d)
    \barNumberCheck 10
    g16( fis) a( g) h( g)
    d4 c8 \tr
    h8 r r
    <h, g'>8 \p r r
    <a fis'>8 r r
    \barNumberCheck 15
    <fis' c'>8 r r
    <g h>8 r r
    h'4 \f h,16( cis)
    d16( a g fis e d)
    cis16( e g e fis d)
    \barNumberCheck 20
    a8 r r
    cis16( e g e fis d)
    a8 r r
    cis'16( e g e fis d)
    cis16( d e cis a g)
    \barNumberCheck 25
    fis4 r8 \breakVoice
    r8 r \grace { h'32([ a gis] } a8) \p
    a,8 r r
    r8 r \grace { h'32([ a gis] } a8)
    a,8 r r
    \barNumberCheck 30
    r8 r \grace { h'32([ a gis] } a8)
    a,8 r r
    R4.
    \revert Score.SpacingSpanner #'strict-grace-spacing \newSpacingSection
    \app a'16 cis4. \cresc \breakVoice
    \app cis16 e4.
    \barNumberCheck 35
    \app e16 g!4.
    \slurDown \afterGrace g,4.( \tr { fis32 g a) } \slurNeutral
    g16( fis h a) d8
    a,4. \f
    e'4. \tr
    \barNumberCheck 40
    d8 r a'( \p
    fis8) r r
    r8 r a(
    fis8) r r
    r8 r d(
    \barNumberCheck 45
    cis8) r d(
    cis8) r d(
    cis8) r d(
    cis4) \fermata r8
    d,8-. \f fis-. a-.
    \barNumberCheck 50
    d-. fis-. a
    e8.( fis32 g) fis8-.
    e8.( fis32 g) fis8-.
    d,8-. fis-. a-.
    d8-. fis-. a-.
    \barNumberCheck 55
    h8.( cis32 d) a8-.
    h8.( cis32 d) a8-.
    g8-. fis-. e-.
    d4 r8
  } \break
  \repeat volta 2 {
    <fis, d'>8 \p r r
    \barNumberCheck 60
    <e cis'>8 r r
    <cis' g'>8 r r
    <d fis>8 r r
    d,8-. \f a''( fis)
    d8-. d,( dis)
    \barNumberCheck 65
    e8-. h''( g)
    e8-. e,( d!)
    c8-. c'-. h-.
    a8-. a,( ais)
    h4 dis'16( h)
    \barNumberCheck 70
    e16( g fis a g h)
    h,4 dis16( h)
    e16( g fis a g h)
    c8 r c,
    fis16( a g h a c)
    \barNumberCheck 75
    h8 r h,
    e16( g fis a g h)
    a8 r a,
    dis16( fis e g fis a)
    g8.( a32 h) fis8-.
    \barNumberCheck 80
    g8.( a32 h) dis,8-.
    e4.
    e'4.
    c4.~
    c8 h16( a g fis)
    \barNumberCheck 85
    g8-. e-. dis-.
    e8 r h'16( g)
    e8-. h-. g-.
    e4 r8
    h''8( \p gis f)
    \barNumberCheck 90
    \stemUp d8( \< h gis) \stemNeutral
    f4 \f e16( d)
    c8 gis'( a)
    f8 e16( d c h)
    a4 r8
    \barNumberCheck 95
    <d c' a'>8 c' c
    c16( h e d) d8
    <d, c' a'>8 c' c
    c16( h e d) d8
    d8 c16( h a g)
    \barNumberCheck 100
    d4 r8
    <h g'>8 \p r r
    <a fis'>8 r r
    <fis' c'>8 r r
    <g h>8 r r
    \barNumberCheck 105
    <d h' g'>8 \f d' d
    d4 c16( a)
    <d, h' g'>8 d' d
    d4 c16( a)
    g8 c16( h) e( d)
    \barNumberCheck 110
    g16( fis) a( g) h( g)
    d4 c8 \tr
    h8 r r
    <h, g'>8 \p r r
    <a fis'>8 r r
    \barNumberCheck 115
    <fis' c'>8 r r
    <g h>8 r r
    <c, g' c e>4 \f e'16( fis)
    g16( d c h a g)
    fis16( a c a h g)
    \barNumberCheck 120
    d8 r r
    fis16( a c a h g)
    d8 r r
    fis16( a c a h g)
    fis16( g a fis d c) \breakVoice
    \barNumberCheck 125
    h4 r8
    \override Score.SpacingSpanner #'strict-grace-spacing = ##t
    \newSpacingSection
    \override Score.AccidentalPlacement.right-padding = #-0.15
    r8 \once \override Rest #'extra-offset = #'( -0.5 . 0 ) r \grace { e'32( d cis } d8) \p
    d,8 r r
    r8 \once \override Rest #'extra-offset = #'( -0.5 . 0 ) r \grace { e'32( d cis } d8)
    d,8 r r
    \barNumberCheck 130
    r8 \once \override Rest #'extra-offset = #'( -0.5 . 0 ) r \grace { e'32( d cis } d8)
    d,8 r r
    R4. \breakVoice
    \revert Score.AccidentalPlacement.right-padding
    \revert Score.SpacingSpanner #'strict-grace-spacing \newSpacingSection
    \app d'16 fis4. \cresc
    \app fis16 a4.
    \barNumberCheck 135
    \app a16 c4.
    \app c16 e4~( e16 d32 c)
    h8 d g
    d,,4. \f
    a'4. \tr
    \barNumberCheck 140
    g8 r d''( \p
    h8) r r
    r8 r d(
    h8) r r
    r8 r g(
    \barNumberCheck 145
    fis8) r g(
    fis8) r g(
    fis8) r g(
    fis4) \fermata r8
    g,8-. \f h-. d-.
    \barNumberCheck 150
    g8-. h-. d-.
    a8.( h32 c) h8-.
    a8.( h32 c) h8-.
    g,8-. h-. d-.
    g8-. h-. d-.
    \barNumberCheck 155
    e,8.( fis32 g) d8-.
    e8.( fis32 g) d8-.
    c8-. h-. a-.
    g4 r8
  }
}