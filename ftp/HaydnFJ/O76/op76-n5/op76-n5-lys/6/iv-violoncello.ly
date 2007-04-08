\version "2.6.0"
celloFourthMov =  \relative es {
  \key es \major
  \clef bass

  r8 r4

  \repeat volta 2 {
    r4 es-.\f r
    | r f-. r
    | r bes,-. r
    | r es-. r
    | r r8 bes'-. c-. d-.
    | es-. g-. r bes,-. c-. d-.
    | es4 \clef violin as( a)
    | bes r r \clef bass
    | r es,,-. r

    % 10
    | r f-. r
    | r bes,-. r
    | r es-. r
    | r8 c-. es-. g-. c4( ~
    | c8 b-.) c4.( d8)-.
    | c4. b8( c d)
    | es[( f]) es-. r r4
    | r8 bes,-. d-. f-. bes!4( ~
    | bes8 a)-. bes4.( c8)-.
    | bes4. a8( bes c)

    % 20
    | d([ es)] d8-. r r4
    | R2.
    | r4 r r8 es-.
    | d-. c-. bes4.( a8)-.
    | g2.
    | c,(
    | f4) r r
    | f r r
    | f r8 f-. es!-. d-.
    | c-. bes-. r bes'-. a-. g-.

    % 30
    | f-. es-. r g-. f-. es-.
    | d-. c-. r es'-. d-. c-.
    | bes-. a-. r c-. bes-. a-.
    | g-. f-. g4 a
    | bes8-.\mf bes-. bes-. bes-. bes-. bes-.
    | bes2.\fz
    | bes,8-. bes'-. bes-. bes-. bes-. bes-.
    | bes2.\fz
    | bes,8-.-\markup { \italic "cresc." } bes'-. 
    bes-. bes-. as!-. as-.
    | g2(\f c,4)

    % 40
    | f2( bes,4)
    | es f f
    | bes16( f d bes) bes'4 r
    | r r8 c-. bes-. a-.
    | bes16( f d bes) bes'4 r
    | r r8 c-. bes-. a-.
    | bes4 r r
    | R2.
    | r4 r8 bes,-. c-. d-.
    | es-. r c-. r f-. r

    % 50
    | bes,4 r8 f''-. es-. d-.
    | c4 f,4.(\trill e16 f)
    | bes4 r8 f'-. es!-. d-.
    | c4 f,4.(\trill e16 f)
    | bes4 r r
    | R2.
    | r4 r8 bes,-.-\> c-. d-.-\!
    | es-.\p es-. es-. es-. es-. es-.
    | e-.-\markup { \italic "cresc." } e-. e-. e-. e-. e-.
    | f-.\fz f-. f-. f-. f-. f-.

    % 60
    | bes4 r r
    | R2.
  }

  \alternative {
    {
      | R2.
      | r8 bes,-.\f bes'4-. r
      | r8 bes,-. bes'4-. r
      | r8 bes,-. bes'4-. r
      | r8 bes,-.\p bes'4-. r
      | r8 bes,-. bes'4-. r
      | r8 bes,-. bes'4-. r
      | R2.*2
    }
    {
      R2.*2
      | as,2.\f ~
    }
  }

  | as2.
  | g4 r8 g'-.\f f-. es-.

  \repeat volta 2 {
    | d-. c-. r c'-. bes-. as-.
    | g-. f-. r f-. es-. d-.
    | c-. b-. r as'-. g-. f-.

    % 70
    | d-. es-. r es-. g-. c-.
    | es4 r r
    | r r d,-.\f
    | R2.
    | es4-.\f r r
    | e-.\f r f-.\f
    | R2.
    | bes,4-.\f r r
    | d-.\f r es-.\f
    | R2.

    % 80
    | f4-.\f r r
    | r g-.\f r
    | r r as-.\f
    | R2.
    | r4 r f-.\f
    | R2.*2
    | g2.\f ~
    | << { g ~ } {s2-\> s8 s8-\! } >>
    | g2.\p ~

    % 90
    | g ~
    | g4 r r
    | R2.
    | g4 r r
    | R2.
    | r4 as,-.\f r
    | r as-. r
    | r as-. r
    | r as-. r
    | r r8 es'-. f-. g-.

    % 100
    | as-. c-. r f,-. g-. a-.
    | bes-. des-. r g,-. a-. b-.
    | c-. es-. r c,-. d-. es-.
    | f-. as!-. r4 r
    | r r8 as,-. bes-. c-.
    | d-. f-. r4 r
    | R2.*4
    | f,4-.\ff r r
    | g-.\ff r8 g-.\f f-. es-.
    | d-. c-. r as'-. g-. f-.
    | es-. d-. r bes'-. as-. g-.
    | f-. e-. r4 r
    | R2.
    | es'4-. r r
    | f-. r r
    | bes,-. r r
    | r es!-. r

    % 120
    | r f-. r
    | r bes,-. r
    | r es-. r
    | r r8 bes'-. c-. d-.
    | es-. g-. r bes,-. c-. d-.
    | es4-. \clef violin as( a)
    | bes \clef bass r8 bes,,-. as-. g-.
    | f-. es-. r es'-. d-. c-.
    | bes-. as-. r c-. bes-. as-.
    | g-. f-. r as'-. g-. f-.

    % 130
    | es-. d-. r f-. es-. d-.
    | c-. bes-. c4 d
    | es8-. es-.\mf es-. es-. es-. es-.
    | es2.\fz
    | es,8-. es'-. es-. es-. es-. es-.
    | es2.\fz
    | es,8[-. es']-. es[-. es-. es-.-\< es]-.
    | as[-. as-. as-. as-.] a[-. a]-.
    | bes-. bes,-. bes2\f ~
    | bes2. ~

    % 140
    | bes2 bes8-. bes'-.
    | b( c) as4 bes
    | es,16( bes g es) es'4 r
    | r r8 f'-. es-. d-.
    | es16( bes g es) es'4 r
    | r r8 f-. es-. d-.
    | es4 r r
    | R2.
    | r4 r8 es,-. f-. g-.
    | as-. r f-. r bes-. r

    % 150
    | es,4 r8 bes'-. as-. g-.
    | <bes, f'>4 bes4.(\trill a16 bes)
    | es4 r8 g-. f-. es-.
    | bes4 r8 d'-. es-. f-.
    | es4 r r
    | R2.
    | r4 r8 es,-.-> f-. g-.
    | as!-.\p as-. as-. as-.-\markup { \italic "cresc." } as-. as-.
    | a-. a-. a-. a-. a-. a-.
    | bes-.\fz bes-. bes-. bes-.-\> bes-. bes-.-\!
    | es,2.\p ~
    | es ~
    | es ~
    | es4 es-. es-.
    | es-. r bes-.\f
    | es-. r bes-.
  }

  \alternative {
    {
      es,4-. r8 g'-.\f f-. es-.
    }
    {
      es,4-. r r
    }
  }

  \bar "|."
}
