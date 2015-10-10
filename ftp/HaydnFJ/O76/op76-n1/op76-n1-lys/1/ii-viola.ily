\version "2.18.0"
violaSecondMov =  \relative g {
  \key c \major
  \clef alto

  g4(-\markup { \italic {a mezza voce} } f)
  | e4( f8 g)
  | a( e16. f32 g8 g)-.
  | g2
  | g4( f)
  | e( f8 g)
  | a4 g8( b)
  | b4( c8) r
  | g'4( f)

  % 10
  | e( f8 g)
  | a( e16. f32 g8 g)-.
  | g2
  | a4( g)
  | f8( g a c)
  | c4( b)
  | c16-. c,-. c-. c-.^\markup { \italic stacc. } c-. c-. c-. c-.
  | c c c c b b cis cis
  | d d d d d d d d
  | d d d d cis cis cis cis 

  % 20
  | d d d d d d d d
  | d d d d cis cis cis cis
  | d d d d <a f'> <a f'> <a f'> <a f'>
  | <a f'> f' f f f d f b,
  | c e e e e e e e
  | d fis fis fis fis fis fis a
  | d, d d d d d d d
  | d d d d c c c c
  | bes bes bes bes as as as as
  | g\cresc g g g cis cis cis cis

  % 30
  | d\f <g, d'> <g d'> <g d'> <g d'>8 r
  | R2
  | d'8\p r d r
  | d4(-\markup { \italic m.v. } c)
  | b( e,8. fis16)
  | g4( fis)
  | g2
  | b'4( a
  | g8) g4(\fz g8)-.
  | g4( fis)

  % 40
  | g16-. b,-. b-. b-. b-. b-. b-. b-.
  | a a a a a a b b
  | c c c c c c c c
  | b b b b b-[ b-] bes-[ g'32( f!)-]
  | e32( dis e dis e g f! e) d4
  | d32( cis d cis d f e d) c4
  | f32(\cresc e f e) f( b, c d) e8-[ ~ e32 c( d e)-]
  | f4\f r
  | R2
  | g,4\p( f)

  % 50
  | e( f8 g)
  | a( e16. f32 g8 g)-.
  | g2
  | a4( g)
  | f8( g a c)
  | c4( b)
  | c16-. c-. c-. c-. c-. c-. c-. c-.
  | c b b bes bes bes bes bes
  | a a a d d d d d
  | d cis cis c c c c c

  % 60
  | c b b d ais( b c! b)
  | a!-. a'-. a-. a-. a-. a-. a-. a-.
  | a a a a a a a a
  | a-\markup { \italic dim. } a a a a a a a
  | a\pp a a a a a a a
  | b,-.\f c-. d-. e-. f-. g-. a-. b-.
  | r32 e, r d r c r b r a r g r f r e
  | f8 r r r16. b'32-.\p
  | g8-. r r r16. f32-.
  | f8-. r16. f32-. es8-. r16. es32-.

  % 70
  | g8-. r16. b32-. c16-. r a-. r
  | g8-. r f-. r
  | g,4( f)
  | e( f8 g)
  | a( e16. f32 g8 g)-.
  | g2
  | g4( f)
  | e( f8 g)
  | a4 g8( b)
  | c16-.-\markup { \italic più \dynamic f } c-. c-. c-. c-. c-. c-. c-.

  % 80
  | c b b d d d d d
  | d cis cis cis cis cis cis\> cis
  | d\!\p f f f f f f f
  | g g, g g g g g g
  | g c c c c c c c
  | g g g g f' f f f
  | es es es es des des des des
  | c\cresc c c c fis fis fis fis
  | g\f c c c c8 r
  | R2

  % 90
  | e,8\p r d r
  | r32 g( dis e b c fis, g) b16 b b d
  | e32 g( dis e b c fis, g) b16 b b d
  | c8-\markup { \italic dim. } r c r
  | c-[\pp c,( e g)-]
  | e2\fermata

  \bar "|."
}
