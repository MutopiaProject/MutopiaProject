\version "2.18.0"
celloSecondMov =  \relative f {
  \key c \major
  \clef bass

  c4(-\markup { \italic {a mezza voce} } g)
  | a8.( g16 f8 e)
  | d( <c c'> b' b-.)
  | c( e g4)
  | c,,( gis')
  | a( g!)
  | f( g)
  | c, ~ c16 c' e g
  | c4( gis)

  % 10
  | a8.( g!16 f8 e)
  | <d d'>( c' b b)-.
  | c4( g)
  | d( a')
  | bes( a8 as)
  | g4( g,)
  | c8 r16 c-. gis( a e fis)
  | g!4 r
  | r8 r16 d'-. a( bes f g)
  | a8 r r4

  % 20
  | R2
  | r32 a-. b!-. cis-. d-. e-. f-. gis-. a( gis a gis a bes a g)
  | f16-.^\markup { \italic stacc. } f-. f-. f-. f-. f-. f-. f-.
  | g g g g g g g g
  | c c c c c c c c
  | c c c c c c c c
  | b b b b b b b b
  | fis fis fis fis fis fis fis fis
  | g g g g f! f f f
  | es\cresc es es es es, es es es

  % 30
  | d\f d d d d8 r
  | R2
  | d''8\p r d, r
  | g,4(-\markup { \italic m.v. } d')
  | e( c)
  | cis( d)
  | g,2
  | g''4( fis
  | e8) b4(\fz c8)
  | d2

  % 40
  | g,8 r16 g-. dis( e b cis)
  | d!4 r8 e,
  | a r16 a'-. e( f! c! d)
  | e4 r
  | a, d32( fis a gis a c! b a)
  | g!2\< ~
  | << { g } { s4. s8 } >>
  | g,4\!\f r
  | R2
  | c,4(\p g')

  % 50
  | a8.( g16 f8 e)
  | d8( <c c'> b' b-.)
  | c( e g4)
  | d,4( a')
  | bes( a8 as)
  | g2
  | c4 r
  | r8. g'16-. d( es bes c)
  | d8 r r4
  | r8. a16-. e!( f c d)

  % 60
  | e4( e')
  | f16-. f'-. f-. f-. f-. f-. f-. f-.
  | f f f f f f f f
  | f-\markup { \italic dim. } f f f fis fis fis fis
  | fis\pp fis fis fis fis fis fis fis
  | <g,,\f g'> a'-. b-. c-. d-. e-. f!-. g-.
  | r32 c, r b r a r g r f r e r d r c
  | f,8 r r r16. f''32\p-.
  | e8-. r r r16. e32-.
  | d8-. r16. d32-. c8-. r16. c32-.

  % 70
  | b8-. r16. g32-. a16-. r f-. r
  | g8-. r g-. r
  | c,,4( g')
  | a8.( g16 f8 e)
  | d( <c c'> b' b-.)
  | c( e g4)
  | c,,4( gis')
  | a( g!)
  | f( g)

  % 80
  | c8-\markup { \italic più \dynamic f } % The source text has a r16 here which is wrong
  r32 e( b c) fis,( g dis e) c( e g c)
  | d!8 r32 f( cis d) ais( b fis g) d( g b d)
  | e8 r32 bes'( g bes) e,( g cis, e) a,(-\> cis e a)
  | d,16\!\p d d d f f f f
  | f f f f f f f f
  | e e e e e e e e
  | b b b b b b b b
  | c c c c bes bes bes bes
  | as\cresc as as as as as as as
  | g\f g g g g8 r

  % 90
  | R2
  | g8\p r g r
  | c,16 c' c c c, c' c c
  | c, c' c c c, c' c c
  | r32 e(-\markup { \italic dim. } b c) fis,( g dis e)
  c( e' b c) fis,( g dis e)
  | c(\pp e g c) e( c g e) c( e g c) e( c g e)
  | c2\fermata

  \bar "|."
}
