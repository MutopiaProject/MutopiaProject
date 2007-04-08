\version "2.6.0"
violinIIFourthMov =  \relative g' {
  \key es \major
  \clef violin

  r8 r4

  \repeat volta 2 {
    r4 g-.\f r
    | r as-. r
    | r as-. r
    | r g-. r
    | r8 g'-. as2
    | g8-. es-. as2
    | g8[-. es-.] c f4 es8 ~
    | es d-. r4 r
    | r g,-. r

    % 10
    | r as-. r
    | r as-. r
    | r g-. r
    | es8( g) g4. fis8-.
    | g4.( as8)-. g4 ~
    | g8 fis( g as g b)
    | c4 r r
    | d,8( f) f4. e8
    | f4.( g8)-. f4 ~
    | f8 e( f g f a)

    % 20
    | bes4 r r8 d-.
    | c-. bes-. a4 r8 bes-.
    | a-. g-. f4 r8 g-.
    | f-. es-. d4.( c8)-.
    | bes4. d'8( c bes)
    | bes4. g8( a bes)
    | a4 r8 d-. c-. bes-.
    | a4 r8 d-. c-. bes-.
    | a4 r r8 f-.
    | es-. d-. c-. bes-. r bes'-.
    | a-. g-. f-. es-. r g-.
    | f-. es-. d-. c-. r es'-.
    | d-. c-. bes-. a-. r c-.
    | bes-. a-. g-. f-. e-. es-.
    | d-.\mf e'16-. f-. e( f g f bes a g f)
    | es!2.\fz(
    | d8) e16 f e( f g f bes a g f)
    | es!2.(\fz
    | d4)-\markup { \italic "cresc." } d( c8) f-.
    | f16(\f e f e) f( as! g f es d c d)

    % 40
    | es( d es d) es( c d es d f es d)
    | g8.( es16) d4 c
    | d r8 f-. es-. d-.
    | c4 f,4.(\trill e16 f)
    | bes4 r8 f'-. es!-. d-.
    | c4 f,4.(\trill e16 f)
    | bes4 r8 f'-. es!-. d-.
    | c-. es-. r es-. d-. c-.
    | bes-. d-. r d-. c-. bes-.
    | g-. r c-. r es,-. r

    % 50
    | d4 r r
    | r r8 c'-. bes-. a-.
    | bes16( d f bes) bes,4 r
    | r4 r8 c-. bes-. a-.
    | bes-. a'-. bes-. f-. g-. d-.
    | es-. es-. r es-. d-. c-.
    | bes-. d-. r d-.-\> c-. bes-.-\!
    | bes2.\p ~
    | bes-\markup { \italic "cresc." } ~
    | bes2\fz c8( a)
    | bes4 r8 d,-.\f es-. f-.
    | g-. as!-. r d,-. es-. f-.
  }

  \alternative {
    {
      | g-. as-. r d,-. es-. f-. g-. as-. r4 r
      | r8 d,-. d'4-. r
      | r8 d,-. d'4-. r
      | r8 d,-.\p d'4-. r
      | r8 d,-. d'4-. r
      | r8 d,-. d'4-. r
      | R2.*2
    }

    {
      | g,8-. as-. r as-. g-. f-.
      | g4. f8-. es-. d-.
      | c4. d8( es e)
    }
  }

  | f4 fis2
  | g4 <es! c' g'>-.\f r

  \repeat volta 2 {
    | r <f c' as'>-.\f r
    | r <f b>-.\f r
    | r <g d' f>-.\f r
    | r <g, es' c'>-.\f r
    | R2.
    | r4 r f'-.\f
    | R2.
    | g4-.\f r r
    | g-.\f r as-.\f
    | R2.
    | f4-.\f r r
    | <f bes>4-.\f r <g bes>-.\f
    | R2.

    % 80
    | <as, d>4-.\f r r
    | r <bes e>-.\f r % The Kalmus score has <b e>
    | r r <c f>-.\f
    | R2.
    | r4 r as'-.\f
    | R2.*2
    | <bes, es>2.\f ~
    | << { <bes es> ~ } {s2-\> s8 s8-\! } >>
    | <bes es>2.\p ~

    % 90
    | <bes es> ~
    | <bes es>4 r r
    | R2.
    | des4 r r
    | R2.
    | r4 c-.\f r
    | r f-.\f r
    | r <bes, g'>-.\f r
    | r <c as'>-.\f r
    | es'8-. c-. des2\fz

    % 100
    | c8-. as-. c2\fz
    | bes4 d!2\fz
    | c4 es2\fz ~
    | es8.( f32 es) d2 ~
    | d8.( es32 d) c2 ~
    | c8.( d32 c) b8-. b-. c-. d-.
    | es4 r r
    | R2.*3

    % 110
    | <c as'>4\ff r r
    | f,\ff r r
    | r8 g-.\f f-. es-. r4
    | r8 as-. g-. f-. r4
    | r8 bes!-. as-. g-. f-. e-.
    | R2.
    | des4-. r r
    | c-. r r
    | d!-. r r
    | r g-. r

    % 120
    | r as-. r
    | r as-. r
    | r g-. r
    | r8 g'-. as2
    | g8-. es-. as2
    | g8[-. es-.] c f4 es8 ~
    | es d-. r4 r8 bes,-.
    | as-. g-. d'-. es-. r es-.
    | d-. c-. bes-. as-. r c-.
    | bes-. as-. e'-. f-. r as-.

    % 130
    | g-. f-. es-. d-. r f-.
    | es-. d-. c-. bes-. a-. as-.
    | g-. a'16-.\mf bes-. a( bes c bes es d c bes)
    | as!2.\fz(
    | g8)-. a16-. bes-. a( bes c bes es d c bes)
    | as!2.\fz(
    | g8)-. es'16( f g as g as bes-\< as bes g)
    | as4 c,2
    | c4( bes) r8 des\f-.
    | c-. bes-. as-. g-. f-. es'-.

    % 140
    | d!-. c-. bes-. as-. g-. f-.
    | d( es) c4 as
    | g r8 bes'-. as-. g-.
    | f4 bes,4.(\trill a16 bes)
    | es4 r8 bes'-. as!-. g-.
    | f4 bes,4.(\trill a16 bes)
    | es4 r8 bes'!-. as!-. g-.
    | f-. as-. r as-. g-. f-.
    | es-. g-. r g'-. f-. es-.
    | c-. r f-. r as,-. r

    % 150
    | g4 r r
    | r16 bes( d f as8) as-. g-. f-.
    | g4 r r
    | r r8 f-. es-. d-.
    | es-. d-. es-. bes-. c-. g-.
    | as-. as-. r as'-. g-. f-.
    | es-. g-. r g-.-> f-. es-.
    | << { es2.\p ~ } { s4. s4.-\markup { \italic "cresc." } } >>
    | es2. ~
    | es2\fz f8(-> d)

    % 160
    | bes-.\p c-. des2\f ~
    | des4 c2\fz ~
    | c4 <f, d'!>2\fz ~
    | <f d'>4 <f d'>-.\p <f d'>-.
    | <es es'>8-. bes'-.\f as-. g-. f-. as-.
    | g-. bes-. as-. g-. f-. as-.
  }

  \alternative {
    {
      | g4-. <es c' g'>\f r
    }
    {
      | g4-. r r
    }
  }

  \bar "|."
}
