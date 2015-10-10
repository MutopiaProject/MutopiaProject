\version "2.18.0"
violinIISecondMov =  \relative c' {
  \key c \major
  \clef violin

  \noTupletBracket

  c4(-\markup { \italic {a mezza voce} } b)
  | a4.( cis8)
  | d[( e d d)-.]
  | d( c! b4)
  | c( b)
  | a( bes)
  | c8( f) e( <g, d'>)
  | <g d'>4( e'8) r
  | c'4( b)

  % 10
  | c8.( bes16 a8 cis)
  | d[( e d d)]-.
  | d( c! b4)
  | d( cis)
  | d8( c!4 es8)
  | e!4( d)
  | e16-. e,-. e-. e-.^\markup { \italic stacc. } e-. e-. e-. e-.
  | d d d d d d e e
  | f f f f f f f f
  | e e e e e e e e

  % 20
  | f f f f f f f f
  | e e e e e e e e
  | f d a' a a a a a
  | d, d d d b' b b d
  | g, g gis gis a a a a
  | <d, a'> <d a'> <d a'> <d a'> <d a'> <d a'> <d a'> <d a'>
  | g g g g g g g g
  | d d d d d d d d
  | d d d d d d d d
  | es\cresc es es es g g g g

  % 30
  | <g b>16\f <g b> <g b> <g b> <g b>8 r
  | R2
  | g8\p r a r
  | g4(-\markup { \italic m.v. } fis)
  | e2 ~
  | e4( d)
  | d2
  | b' ~
  | b8 d4(\fz c8)
  | b4( a)

  % 40
  | g16-. g-. g-. g-. g-. g-. g-. g-.
  | g fis fis fis f f gis gis
  | a a a a a a a a
  | a gis gis gis g g g g
  | g32( fis g fis g bes a g) fis4
  | f32( e f e f a g f) e( dis e dis e e' d! c)
  | b8[\cresc ~ b32 f'( e d)] c( b c b) c( e d c)
  | b(\f cis d cis) e( d f e) d( cis f e) d( cis f e)
  | d( e) f( e) f(-\> e) f-. e-. d-. c!-. b-. a-. g-. f-. e-. d-.-\!
  | c4(\p b)

  % 50
  | a4.( cis8)
  | d8[( e d d-.)]
  | d( c! b4)
  | d4( cis)
  | d8( c!4 es8)
  | e!4( d)
  | c16-. es-. es-. es-. es-. es-. es-. es-.
  | d d d g g g g g
  | g fis fis f f f f f
  | e e e a a a a a

  % 60
  | a gis gis gis gis gis gis gis
  | a-. c-. c-. c-. c-. c-. c-. c-.
  | c c c c c c c c
  | c-\markup { \italic dim. } c c c c c c c
  | c\pp c c c c c c c
  | r32 d'\f r c r b r a r g r f r e r d
  | c16-. c-. c-. c-. c-. c-. c-. c-.
  | <f, c' a'>8 r r r16. g'32-.\p
  | c,8-. r r r16. a32-.
  | a8-. r16. a32 as8-. r16. as32

  % 70
  | d,8 r16. d32-. c16-. r f-. r
  | e8-. r d-. r
  | c4( b)
  | a4.( cis8)
  | d8([ e d d])-.
  | d( c! b4)
  | c4( b)
  | a( bes)
  | c8[( f) e( d)]
  | c16-.-\markup { \italic più \dynamic f } e-. e-. e-. e-. e-. e-. e-.
  | f f f f f f f f

  % 80
  | g g g g g g g-\> g-\!
  | f\p a a a a a a a
  | d, <b d> <b d> <b d> <b d> <b d> <b d> <b d>
  | e g g g g g g g
  | g g g g g g g g
  | g g g g g g g g
  | as\cresc as as as c, c c c
  | <c e!>\f <c e> <c e> <c e> <c e>8 r
  | R2
  | c'8\p r f, r
  | <g, e'>16 <g e'> <g e'> <g e'> <g f'> <g f'> <g f'> <g f'>
  | <g e'> <g e'> <g e'> <g e'> <g f'> <g f'> <g f'> <g f'>
  | <g e'>8 r <g e'> r
  | e'[\pp c-.( c-. c-.)]
  | c2\fermata

  \bar "|."
}
