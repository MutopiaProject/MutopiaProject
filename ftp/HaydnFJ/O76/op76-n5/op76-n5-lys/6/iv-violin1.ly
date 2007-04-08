\version "2.6.0"
violinIFourthMov =  \relative bes' {
  \key es \major
  \clef violin

  bes8-. as-. g-.

  \repeat volta 2 {
    | f-. es-. r es'-. d-. c-.
    | bes-. as-. r as-. g-. f-.
    | es-. d-. r c'-. bes-. as-.
    | fis-. g-. r bes-. es-. g-.
    | bes2. ~
    | bes ~
    | bes8 c,4 as' g8 ~
    | g f-. r bes,-. as-. g-.
    | f-. es-. r es'-. d-. c-.

    % 10
    | bes-. as-. r as-. g-. f-.
    | es-. d-. r c'-. bes-. as-.
    | fis-. g-. r g-.c-. es-.
    | g2 ~ g8 fis-.
    | g4.( as8) g4 ~
    | g8 fis( g as g f)
    | es( b) c-. f,-. bes-. d-.
    | f2 ~ f8 e-.
    | f4.( g8)-. f4 ~
    | f8 e( f g f es)

    % 20
    | d( a) bes-. bes'-. a-. g-.
    | f4 r8 g-. f-. es-.
    | d4 r8 es-. d-. c-.
    | bes4. a8 bes4 ~
    | bes8 d'( c bes a g)
    | f( e bes' g f e)
    | f(\trill e) f2
    | f8(\trill e) f4 f8(\trill e)
    | f8(\trill e) f4-. r8 f-.
    | es-. d-. c-. bes-. r bes'-.

    % 30
    | a-. g-. f-. es-. r g-.
    | f-. es-. d-. c-. r es'-.
    | d-. c-. bes-. a-. r c-.
    | bes-. a-. g-. f-. e-. es-.
    | d4 r r
    | r8 b'16-.\mf c-. b( c d c es c f c)
    | d4 r r
    | r8 b16-. c-. b( c d c es c f c)
    | d8 d16( es d es d es f es d c)
    | b2(\f c4)

    % 40
    | b2( bes!4)
    | \acciaccatura d8 c4 bes a
    | bes r r
    | r16 f( a c es8) es-. d-. c-.
    | d4 r r
    | r16 f,( a c es8) es-. d-. c-.
    | d-. c-. bes-. a-. g-. f-.
    | es-. g-. r g-. f-. es-.
    | d-. f-. r f-. es-. d-.
    | c-. r es-. r a,-. r

    % 50
    | bes4 r r
    | r16 f( a c es8) es-. d-. c-.
    | d4 r r
    | r16 f( a c es8) es-. d-. c-.
    | d-. c-. bes-. a-. g-. f-.
    | es-. g-. r g-. f-. es-.
    | d-. f-. r f-.-\> es-. d-.-\!
    | c2.(\p
    | des)(-\markup { \italic "cresc." }
    | d!2)\fz es8( c)

    % 60
    | bes-. bes( bes'2)\f ~
    | bes8 bes,( bes'2) ~
  }

  \alternative {
    {
      | bes8 bes,-. bes'-. as-. g-. f-.
      | es( d) r bes-. d-. es-.
      | e( f) r as-. g-. f-.
      | es!( d) r8 bes-.\p d-. es-.
      | e( f) r as-. g-. f-.
      | es!( d) r c'-. bes-. as-.
      | g( f) r c'\pp-. bes-. as-.
      | g-. ges-. f-. e-. es-. d-.
      | des-. c-. b-. bes-.\f as-. g-.
    }

    {
      | bes'8 b,( b'2) ~
      | b8 es,( c'2) ~
      | c8 d-. es-. d-. c-. bes!-.
    }
  }

  | as8-. g-. fis-. es!-. d-. c-.
  | b4-. <es, c' g'>4-.\f r

  \repeat volta 2 {
    | r <f c' as'>\f-. r
    | r <d b' as'>\f-. r
    | r <g f' d'>\f-. r
    | r <es c' g'>\f-. r
    | r8 g-.-\markup { \italic "sempre " \dynamic "f" } c-. es-. g-. d-.
    | f-. es-. d-. c-. b-. d-.
    | f-. as-. g-. f-. es-. d-.
    | c-. es-. g-. b-. c-. g-.
    | c-. g-. c-. bes!-. as-. c-.
    | as-. e-. f-. c'-. as-. f-.
    | es!-. d-. f-. d-. a-. bes-.
    | bes'-. f-. bes-. f-. g-. d-.
    | es-. bes-. as!-. g-. f-. es-.

    % 80
    | d-. as'-. f-. c'-. bes-. as-.
    | g-. f-. e-. bes'-. g-. des'-.
    | c-\markup { \italic "sempre stacc." } bes as g f c'
    | f e g f as f
    | c as' f c des f
    | as f des' as f' es
    | des as f' es des c
    | bes des c es des c
    | bes-\> des c es des c-\!
    | bes\p des c es des c

    % 90
    | bes des c bes as c
    | bes as g bes as g
    | f-. as-. g-. f-. as-. g-.
    | f4(-. as-. g)-.
    | f-. r8 es-.\f des-. c-.
    | bes-. as-. r as'-. g-. f-.
    | es-. des-. r des-. c-. bes-.
    | as-. g-. r f'-. es-. des-.
    | b-. c-. r es,-. as-. c-.
    | es2. ~

    % 100
    | es8-. c-. es2\fz
    | des8-. bes-. f'2\fz
    | es8-. c-. g'2\fz
    | as!4 as4.(\trill g16 as)
    | g4 g4.(\trill f16 g)
    | f4 f4.(\trill e16 f)
    | es!4 b( c)
    | des8-.-\< f-. e-. g-. f-. as-.
    | g-. bes-. as-. c-. b-. d-.
    | c-. es-. d-. f-. es-. g-.-\!

    % 110
    | as4-.\ff r r
    | b,,-.\ff r r8 g-.
    | f-. es-. d-. c-. r as'-.
    | g-. f-. es-. d-. r bes'! % Without staccato
    | as-. g-. f-. e-. des'-. c-.
    | bes-. g'-. f-. e-. bes'-. as-.
    | g-. des'-. c-. bes-. as-. g-.
    | f-. c'-. bes-. as-. g-. f-.
    | es!-. d!-. c-. bes-.\fz as-. g-.
    | f-. es-. r es'-. d-. c-.

    % 120
    | bes-. as-. r as-. g-. f-.
    | es-. d-. r c'-. bes-. as-.
    | fis-. g-. r bes-. es-. g-.
    | bes2. ~
    | bes ~
    | bes8 c,4 as' g8~
    | g-. f!-. r4 r8 bes,-.
    | as-. g-. f-. es-. r es'-.
    | d-. c-. bes-. as-. r c-.
    | bes-. as-. g-. f-. r as'-.

    % 130
    | g-. f-. es!-. d-. r f-.
    | es-. d-. c-. bes-. a-. as-.
    | g4 r r
    | r8 e'16-.\mf f-. e( f g f as f bes f)
    | g4 r r
    | r8 e16-. f-. e( f g f as f bes f)
    | g8-. g16( as bes c bes c des-\< c des bes)
    | c8.( as16) f4 es!
    | es( d8) bes'-.\f as-. g-.
    | f-. e-. f-. c'-. bes-. as-.

    % 140
    | g-. f-. es!-. d-. c-. bes-.
    | as( g) c4 d,
    | es r r
    | r16 bes'( d f as8) as-. g-. f-.
    | g4 r r
    | r16 bes,( d f as8) as-. g-. f-.
    | g-. f-. es-. des-. c-. bes-.
    | as-. c-. r c-. bes-. as-.
    | g-. bes-. r bes'-. as-. g-.
    | f-. r as-. r d,-. r

    % 150
    | es4 r r
    | r r8 f-. es-. d-.
    | es16( g bes es) es,4 r
    | r16 bes( d f as8) as-. g-. f-.
    | g-. f-. es-. des-. c-. bes-.
    | as-. c-. r c'-. bes!-. as-.
    | g-. bes-. r bes-.-> as-. g-.
    | << f2.(\p { s4. s4.-\markup { \italic "cresc." } } >>
    | ges2.
    | g!2)\fz as8(-> f)

    % 160
    | es4\p r8 bes'-. as-. g-.
    | f-. es-. r es'-. des-. c-.
    | bes-. as-. r c-. bes-. as-.
    | g-. f-. es-. d!-. as'-. d,-.
    | es4 r <d, bes' f'>\f-.
    | <es bes' g'>-. r <bes f' d'>-.
  }

  \alternative {
    {
      | <g es' es'>-. <es' c' g'>-.\f r
    }

    {
      | <g, es' es'>-. r r
    }
  }

  \bar "|."
}
