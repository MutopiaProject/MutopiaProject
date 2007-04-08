\version "2.6.0"
violaFourthMov =  \relative es' {
  \key es \major
  \clef alto

  r8 r4

  \repeat volta 2 {
    | r4 es-.\f r
    | r c-. r
    | r f-. r
    | r bes,-. r
    | r8 es'-. f2
    | es8-. bes-. es2
    | es4 r r
    | bes, bes'-. r
    | r es,-. r

    % 10
    | r c-. r
    | r f-. r
    | r bes,-. r
    | r8 es,-. g-. c-. es4( ~
    | es8 d)-. es4.( f8)-.
    | es4. d8( es f)
    | g[( as]) g-. r r4
    | r8 d,-. f-. bes-. d4( ~
    | d8 cis)-. d4.( es8)-.
    | d4. c!8( d es)

    % 20
    | f[( ges)] f-. r r bes-.
    | a-. g!-. f4 r8 g-.
    | f-. es-. d4 r
    | R2.
    | r4 r8 g,( a bes)
    | g'8.( f16) e8-. e( f g)
    | f4 r8 bes-. a-. g-.
    | f4 r8 bes-. a-. g-.
    | f4 r8 f-. es!-. d-.
    | c-. bes-. r bes'-. a-. g-.

    % 30
    | f-. es-. r g-. f-. es-.
    | d-. c-. r es'-. d-. c-.
    | bes-. a-. r c-. bes-. a-.
    | g-. f-. r bes,-. c-. f-.
    | f-.\mf d-. d-. d-. d-. bes'-.
    | a2.\fz(
    | bes8)-. d,-. d-. d-. d-. bes'-.
    | a2.(\fz
    | bes4)-\markup { \italic "cresc." } r4 c
    | d16(\f cis d cis) d( f es d c d es d)

    % 40
    | c( b c b) c( es d c bes d, es f)
    | es4 f f
    | f r8 d'-. c-. bes-.
    | a4 r8 a,-. bes-. c-.
    | bes4 r8 d'-. c-. bes-.
    | a4 r8 a,-. bes-. c-.
    | bes-. fis'-. g-. d-. es-. b-.
    | c-. bes!-. r bes-. a-. a'-.
    | bes-. bes,-. r d-. es-. f-.
    | es-. r g-. r c,-. r
    | bes16( d f bes) bes,8-. d-. c-. bes-.
    | f4 r8 a-. bes-. c-.
    | bes4 r8 d-. c-. bes-.
    | f4 r8 a-. bes-. c-.
    | bes-. fis'-. g-. d-. es-. b-.
    | c-. bes!-. r bes-. a-. a'-.
    | bes-. bes,-. r d-.-\> es-. f-.-\!
    | g-.\p g-. g-. g-. g-. g-.
    | g-.-\markup { \italic "cresc." } g-. g-. g-. g-. g-.
    | f-.\fz f-. f-. f-. f-. f-.
    | d4 r8 bes-.\f c-. d-.
    | es-. f-. r bes,-. c-. d-.
  }

  \alternative {
    {
      | es-. f-. r bes,-. c-. d-.
      | es-. f-. r4 r
      | r8 as,!-. as'!4-. r
      | r8 as,-. as'4-. r
      | r8 as,-.\p as'4-. r
      | r8 as,-. as'4-. r
      | r8 as,-. as'4-. r
      | R2.*2
    }
    {
      | es8-. f-. r f-. es-. d-.
      | es4. d8-. c-. bes-.
      | as2.
    }
  }

  c4. c16( d es8)-. c-.
  | g'4-. c,-.\f r

  \repeat volta 2 {
    | r4 f,-.\f r
    | r f'-.\f r
    | r b,-. r
    | r c-.\f r
    | R2.
    | r4 r as'-.\f
    | R2.
    | c4-.\f r r
    | c-.\f r c-.\f
    | R2.
    | as4-.\f r r
    | as-.\f r g-.\f
    | R2.

    % 80
    | bes,4-.\f r r
    | r des-.\f r
    | r r c-.\f
    | R2.
    | r4 r as-.\f
    | R2.*2
    | des2.\f ~
    | << { des ~ } {s2-\> s8 s8-\! } >>
    | des2.\p ~

    % 90
    | des ~
    | des4 r r
    | R2.
    | <bes es>4 r r
    | R2.
    | r4 es-.\f r
    | r des-. r
    | r des-. r
    | r c-. r
    | c'8-. as-. bes2\fz

    % 100
    | as4 r8 a,-. bes-. c-.
    | des4 r8 b-. c-. d-.
    | es4 r r
    | r r8 bes!-. c-. d-.
    | es-. g-. r4 r
    | r r8 g,-. a-. b-.
    | c-. es-. d-. f-. es-. g-.
    | f4-. g-.-\< as-.
    | e-. f-. d-.
    | es-. b-. c-.-\!

    % 110
    | f\ff-. r r
    | d-. r r
    | r r8 c-.\f bes-. as-.
    | r4 r8 d-. c-. bes-.
    | R2.*2
    | bes4-. r r
    | as-. r r
    | <as f'>-. r r
    | r es'-. r

    % 120
    | r c-. r
    | r f-. r
    | r bes,-. r
    | r8 es'-. f!2
    | es8-. bes-. f'2
    | es4 r r
    | bes,4 \stemDown bes'8-. bes,-. as-. g-. \stemNeutral
    | f-. es-. r es'-. d-. c-.
    | bes-. as-. r c-. bes-. as-.
    | g-. f-. r as'-. g-. f-.

    % 130
    | es-. d-. r f-. es-. d-.
    | c-. bes-. r es,-. f-. bes-.
    | bes-. g-.\mf g-. g-. g-. es'-.
    | d2.\fz(
    | es8) g,-. g-. g-. g-. es'-.
    | d2.\fz
    | << { es2. ~ | es4 f f | f r r8 bes8\f } 
    { s2 s4-\< s2. s2 s4-\! } >>
    | as8-. g-. f-. es-. d-. c'-.

    % 140
    | bes-. as-. g-. f-. es-. d-.
    | g( f) as4 f
    | es r8 g-. f-. es-.
    | d4 r8 d,8-. es-. f-.
    | es4 r8 g'-. f-. es-.
    | d4 r8 d,-. es-. f-.
    | es-. b'-. c-. g-. as-. e-.
    | f-. es!-. r es-. d-. d'-.
    | es-. es,-. r g'-. as-. bes!-.
    | as-. r c-. r f,-. r

    % 150
    | es16( g bes es) es,8-. g-. f-. es-.
    | <bes d>4 r8 d-. es-. f-.
    | es4 r8 bes'-. as-. g-.
    | f4 bes,4.(\trill a16 bes)
    | es8-. b'-. c-. g-. as-. e-.
    | f-. es!-. r es-. d-. d'-.
    | es-. es,-. r g-.-> as-. bes!-.
    | c-.\p c,-. c-. c-. c-.-\markup { \italic "cresc." } c-.
    | c-. c-. c-. c-. c-. c-.
    | bes-.\fz bes-. bes-. bes-.-\> bes-. bes-.-\!

    % 160
    | g'-.\p as-. bes2\fz ~
    | bes4 as2\fz ~
    | as4 as2\fz ~
    | as4 as-.\p as-.
    | g8-. g-.\f f-. es-. d-. f-.
    | es-. g-. f-. es-. d-. f-.
  }

  \alternative {
    {
      | es4-. c-.\f r
    }
    {
      | es-. r r
    }
  }

  \bar "|."
}
