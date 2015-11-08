\version "2.18.0"
violinIFirstMov =  \relative d' {
  \key g \major
  \clef violin

  \noTupletBracket
  \tupletSpan 4

  <d b' g'-.>4-\f r <d d' a'-.> r
  | <d d' b'-.> r r

  \repeat volta 2 {
    r4
    | R1*11

    % 14
    | r2 r4 e'-.-\p
    | c-( a-) d-( b-)
    | gis-( b8 gis-)-. e4 fis8-. gis-.
    | a4-( c-) d,-( fis-)
    | g!2-( g,4-) g''-.
    | e-( g-) c,-( e-)

    % 20
    | d4-( b8-) c-. d4-. g-.
    | e-( g-) c,-( e-)
    | d-( b8-) c-. d4-. b'-.
    | gis-( a-) fis-( g-)
    | e8-( fis g-) e-. d4-. b'-.
    | gis-( a-) fis-( g-)
    | e-. e-. e-. a-.
    | fis-. fis-. \slashedGrace g8 fis4-. e8-. fis-.
    | g4-. g-. g8-( b d b-)
    | g4-. g-. g-. b8-( g-)

    % 30
    | e4-. e-. \preTurnSharp e-.^\turnSharp c'8-( a-)
    | fis4-. fis-. fis8-( a fis d-)
    | g2-( g,4-) b'-.-\f
    | g-( e-) a-( fis-)
    | dis4-( fis8-) dis-. b4-. b'-.
    | g8-( a-) g-. fis-. e4-. a-.
    | fis8-( g-) fis-. e-. d!4-. d'-.
    | d-. d-. d-. d-.
    | d8-\fz-( a-) fis-. d-. d'4-. d-.
    | d8-\fz-( b-) g-. d-. d'4-. d-.

    % 40
    | d8-\fz-( bes-) g-. d-. d'4-. d-.
    | d8-\ff-( cis d e-) f-( e f d-)
    | cis-( e-) cis-. a-. a,4-. b'-.-\markup { \italic poco \dynamic { f } }
    | g-( e a-) g8-. e-.
    | d4-( fis! e-) cis8-. a-.
    | e'4-( g fis-) d8-. a-.
    | fis'4-( a8 fis g4 b-)
    | b8-( a e' d cis b a g-)
    | fis4 r r2
    | a8-( cis e d cis b a g-)

    % 50
    | fis-. a-. d,-. fis-. a,-. d-. a-. fis-.
    | e-( b'-) g-. e-. dis-( c'!-) a-. fis-.
    | e-( b'-.-) g-. e-. dis-( c'-) a-. fis-.
    | e-. g-. b-. e-. g-. b-. g-. e-.
    | cis-( bes'-) g-. e-. d-( a'-) f-. d-.
    | cis-( bes'-) g-. e-. d-( d'-) a-. f-.
    | d-(-\f d'-) a-. f-. d-( d'-) a-. f-.
    | d-( d'-) bes-. g-. d-( d'-) bes-. g-.
    | d-( d'-) a-. f-. d-( d'-) a-. f-.
    | d-. bes'-. d-. bes-. f-. d-. bes-. d-.

    % 60
    | f bes d bes f d bes d
    | bes d f d bes f bes f
    | bes d f d bes f bes f
    | bes f bes f bes f bes a
    | gis1-\fz ~
    | gis4 gis4-. gis-. gis-.
    | gis1-\fz ~
    | gis4 gis-. gis-. gis-.
    | g!1-\p ~
    | g4 g-.-( g-. g-.-)

    % 70
    | fis!2-( e8 fis g e-)
    | d2-( cis8 d e cis-)
    | d2 r4 a''8-(-\p fis-)
    | e4-. e8-( g-) b4-. b8-( a-)
    | a2-( d4-)-. a8-( fis-)
    | e4 e8-( fis g fis g e-)
    | d2-( a4-)-. a'8-( fis-)
    | e4-. e8-( g-) b4-. b8-( a-)
    | a2-( d4-)-. a8-( fis-)
    | e4 e8-( fis g fis g e-)

    % 80
    | d-. d,-. fis-. a-. d-. d,-. fis-. a-.
    | c4-( b bes a-)
    | a-( g fis e-)
    | d8-. d'-. fis-. a-. d-. d,-. fis-. a-.
    | c4-( b! bes a-)
    | a-( g fis e-)
    | d8-(-\f a-) fis-. d-. e'4 r
    | fis-. r cis'-. r
    | d-. r r
  }

  \repeat volta 2 {
    r4
    | R1*4

    % 93
    | r4 e8-\f d c! b a g
    | fis4-( g8-) a-. b a g fis
    | g fis e dis e g fis a
    | g-( e-) b' g e-. b-. e-. b-.
    | e-( g-) b-. g-. e-. b-. e-. b-.
    | b'2-. r
    | <b, a'>2-. r

    % 100
    | g'8-( e-) b'-. g-. e-. b-. e-. b-.
    | e-( g-) b-. g-. e-. b-. e-. b-.
    | e-( g-) c-. g-. e-. c-.e-. c-.
    | fis-( a-) c-. a-. fis-. c-. fis-. c-.
    | b-( fis'-) b-. fis-. dis-. b-. dis-. b-.
    | e-( g-) b-. g-. e-. b-. e-. b-.
    | c-( e-) a-. e-. c-. a-. c-. a-.
    | b-( fis'-) a-. fis-. dis-. b-. dis-. b-.
    | e-. g-. b-. g-. e-. b-. g-. b-.
    | e,-. e'-. b-. g-. e-. e'-. b-. g-.

    % 110
    | e e' c a e e' c a
    | e e' b g e e' b g
    | e e' b gis e e' b gis
    | e e' c a e e' c a
    | e e' d! b e, e' d b
    | a a' e c a-\ff a' e cis
    | a a' f d a a' g e
    | a, a' f d g, g' f d
    | g, g' e c g4-. g'-.-\f
    | e-( c-) f-( d-)

    % 120
    | b-( d8-) b-. g4 a8-( b-)
    | c4-( d e-) d-\fz
    | cis4-(-\turn e8-) cis-. a4 b8-( cis-)
    | d4-( e f-) e-\fz
    | \preTurnSharp dis4-(^\turnSharp
    fis8-) dis-. b4-. b'-.
    | g-( e-) a-( fis-)
    | dis4-( fis8-) dis-. b4-. cis8-. dis-.
    | e4-. g-. fis8-( g a b-)
    | c!2. b8-. a-.
    | g-( fis g a-) b4-. b-.

    % 130
    | b8-( a e' d cis b a g-)
    | fis4-( a8-) fis-. d4-. d'-.-\p
    | b-( d-) g,-( b-)
    | a-( fis8-) g-. a4-. d-.
    | b-( d-) g,-( b-)
    | a-(-\markup { \italic cresc } fis8-) g-. a4-. b-.
    | c!4-( a8-) b-. c4-. d-.
    | e2.-\f c4
    | a-.-\> fis-. c-. a-.
    | fis-. d-. c-.-\! r

    % 140
    | r g''8-\f fis e d c b
    | a4-( b8-) c-. d e d c
    | b a g fis g b a g
    | fis g a fis d4 d'
    | b-( g-) e'-( c-)
    | a-( fis'-) d-. b-.
    | g'8-( fis e d-) c4-. a'-.
    | fis-( d-) b'8-( a g fis-)
    | e4 c'8-( b-) a4 d8-( c-)
    | b4-( g e a-)

    % 150
    | g2-( fis-)
    | g2. g4-.-\p
    | e-( g-) c,-( e-)
    | d-( b8-) c-. d4-. g-.
    | e-.-( g-.-) c,-( e-.-)
    | d-( b8-) c-. d4-. b'-.
    | gis4-( a-) fis-( g-)
    | e8-( fis g-) e-. d4-. b'-.
    | gis4-( a-) fis-( g-)
    | e-. e-. e-. a-.

    % 160
    | fis-. fis-. \acciaccatura g8 fis4 e8 fis
    | g4-. g-. g8-( b d b-)
    | g4-. g-. g-. b8-( g-)
    | e4-. e-. e-.-\turn e'8-( c-)
    | a4-. a-. a-. b8-( g-)
    | fis4 d'-( b gis-)
    | e'-( c a fis-)
    | d'-( b g! e-)
    | c'-( a fis a-)
    | g-( b-) a-( c-)

    % 170
    | e2.-( d8 c-)
    | b-.-\mf d-. b-. g-. d-. b-. g-. b-.
    | a b c d e d e c
    | b d b g d g d b
    | a-( e'-) c-. a-. gis-( f'-) d-. b-.
    | a-( e'-) c-. a-. gis-( f'-) d-. b-.
    | a-. c-. e-. a-. c-. e-. c-. a-.
    | fis!-( es'-) c-. a-. g-( d'-) bes-. g-.
    | fis!-( es'-) c-. a-. g-( g'-) d-. bes-.
    | g-(->-\f g'-) d-. bes-. g-(-> g'-) d-. bes-.

    % 180
    | g-(-> g'-) es-. c-. g-(-> g'-) es-. c-.
    | g-(-> g'-) d-. bes-. g-(-> g'-) d-. bes-.
    | g-.-\fz g'-. es-. bes-. g-. d-. es-. f-.
    | g-. bes-. es-. g-. bes-. g-. bes-. g-.
    | es-.-> g-. bes-. g-. es-. bes-. es-. bes-.
    | es-> g bes g es bes es bes
    | es bes es bes es bes es d
    | cis1-\fz ~
    | cis4 cis-. cis-. cis-.
    | cis1-\fz ~

    % 190
    | cis4 cis-.-( cis-. cis-.-)
    | c!1-\p ~
    | c4 c-.-( c-. c-.-)
    | b!2-( a8 b c a-)
    | g2-( fis8 g a fis-)
    | g2 r4 d'8-(-\p b-)
    | a4-. a8-( c-) e4-. e8-( d-)
    | d2-( g4-) d8-( b-)
    | a4 a8-( b c b c a-)
    | g2-( d4-)-. d'8-( b-)

    % 200
    | a4-. a8-( c-) e4-. e8-( d-)
    | d2-( g4-) e8-( d-)
    | d4-. e8-( d-) d4-. e8-( d-)
    | d2-( g4-)-. e8-( d-)
    | d4-. e8-( d-) d4-. f8-( e-)
    | e4-. f8-( e-) e4-. gis8-(-\f a-)
    | a4-. b8-( c-) c4-. fis,!8-( % Cautionary accidental added
    g!-)
    | g4-. a8-( b-) b4-. d8-(-\p b-)
    | a4-. a8-( c-) e4-. e8-( d-)
    | d2-( g4-)-. d8-( b-)

    % 210
    | a4-. a8-( b c b c a-)
    | g2-( d4-.-) d'8-( b-)
    | a4-. a8-( c-) e4-. e8-( d-)
    | d2-(-\> g4-)-.-\! d8-( b-)
    | a4 a8-( b c b c a-)
    | b-. g-. b-. d-. g-. g,-. b-. d-.
    | f4-( e es d-)
    | d-( c b a-)
    | g8-. g,-. b-. d-. g-. g,-. b-. d-.
    | f4-( e-) g-( fis-)

    % 220
    | a-( g-) c-( b-)
    | e2 r
    | <a,, fis'> r
    | g'8-(-\f d-) b-. g-. a'4-. r
    | b r <d, d'-.> r
    | <d b'-.> r r
  }
}
