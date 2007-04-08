\version "2.6.0"
violaFourthMov =  \relative es' {
  \key c \minor
  \clef alto

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat volta 2 {
    <es c'>4-.\f r <d b'>-. r
    | <es c'>-. r r g-.\p
    | as2( g4) b-.
    | c2( b4)-. r
    | c-.\f r g-. r
    | f-. r r as-.\p
    | bes2( as4) e-.
    | f2( es!)
    | b2( c4) g-.

    % 10
    | as1
    | c2( d!)
    | <g, es'>4-.\f r <d' b'>-. r
    | <es c'>-. r r2
    | f2( es)
    | f( es4) e(
    | f g as g)
    | f2( fis)
    | \repeat unfold 2 { \times 2/3 { g,8 b d g fis g g, c es g fis g } }

    % 20
    | g,4 r r2
    | R1
    | r2 r4 c
    | bes2( c4 d)
    | es2( des)
    | c2( bes4 as)
    | g2(\fz as4 bes)
    | c2. f4
    | f2. as4-.\p
    | g2( as4 e)

    % 30
    | f( d es! g)
    | bes( as g f)
    | e2 f ~
    | f es!4 es,
    | d2( es4) bes''-.
    | f2( g4) es,
    | d2( es4) bes''-.
    | f2( g4) r
    | r2 r4 c,
    | bes2( c4 d)

    % 40
    | es-. es( f g)
    | as-. c,( d e)
    | f1( ~
    | f2 es!4 d)
    | es2.( c4
    | bes2. as4)
    | <es g>-.\f r as-. r
    | bes-. r r2
    | es4-. r c'-. r
    | bes-. d,-. es-. f-.

    % 50
    | <c es>1\fz
    | d\fz
    | es4-. r f-. r
    | g-. r r2
    | R1*2
    | \repeat unfold 4 { \times 2/3 { bes,8 bes bes } }
    | as4 r bes r
    | es, r r es'
    | d2( es4 f)

    % 60
    | g r r es
    | d2( es4 f)
    | g r des, r
    | c r d! r
    | es r as r
    | bes r bes r
    | g2.( bes4)
    | as2( f)
    | g2.( bes4)
    | as2( f)

    % 70
    | g4( f g f)
    | g-. r bes-. r
  }

  \alternative {
    {| bes4-. r r2}
    {| bes4-. r r2}
  }

  | r2 r4 c\f
  | bes2( c4 d)
  | es r r des
  | \stemUp c( bes as g) \stemNeutral
  | f f'( g as8 bes)
  | c1 

  % 80
  | f,2. d4-.\p
  | es2( d4) r
  | r2 r4 d-.
  | es2( d4) r
  | R1*3
  | r4 \times 2/3 { es8\f f es des c bes as g f }
  | es4( as g des')
  | c2( des4 es)

  % 90
  | f2( es
  | des c)
  | bes( as4) r
  | r2 r4 f'-.
  | es2( f4 g)
  | as2( g)
  | f( g4 as)
  | bes r r bes, ~
  | bes \times 2/3 { g'8 f g as g as bes as bes }
  | c4 es,2 es4

  % 100
  | <c es> <c es>2 <as as'>4
  | <bes g'>2( as'4 bes)
  | c <c, es>2 <as as'>4
  | <bes g'>2( as'4 bes)
  | <es, c'> g as \times 2/3 { des,8 c bes }
  | c4 g' as \noTupletNum \times 2/3 { des,8 c bes }
  | \times 2/3 { c des es des c bes as bes c bes as g }
  | \times 2/3 { f g as g f es d! es f g as a }
  | bes4 as'!2\fz d,4
  | es es'2\fz bes,4

  % 110
  | g f'2\fz g4 ~
  | g b c \times 2/3 { <f, b>8 <f b> <f b> }
  | <es c'>4 b' c \times 2/3 { <f, b>8 <f b> <f b> }
  | <es c'>4 b' c \times 2/3 { c,8( b c) }
  | d4-. \times 2/3 { e8( d e) } f4-. e-.
  | f-. \times 2/3 { g8( f e) } f4-. \times 2/3 { bes,8( a bes) }
  | c4-. \times 2/3 { d8( c d) } es!4-. d-.
  | es-. \times 2/3 { f8( es d) } es4-. r
  | r2 r4 \times 2/3 { es8( f es) } \tupletNum
  | d4-. g,-. g'-. g-.

  % 120
  | <es c'>4-. r <d b'>-. r
  | <es c'>-. r r g-.\p
  | as2( g4) b-.
  | c2( b4)-. r
  | c-.\f r g-. r
  | f-. r r as-.\p
  | bes2( as4) e-.
  | f2( es!)
  | b( c4) g-.
  | as1(

  % 130
  | g2 d')
  | R1
  | as1(
  | g2 d')
  | R1
  | as(\pp
  | bes
  | des2 c)
  | des1\f
  | ges,\fz

  % 140
  | f2( es)
  | f4 \times 2/3 { d'!8 es-. f-. f ges as as ges f } \noTupletNum
  | es4 bes2 bes4
  | as ces2\fz f,4
  | ges2( f)
  | g!4 \times 2/3 { e'8-. f-. g-. g as bes bes as g }
  | <c, as'>1
  | <c g'> ~
  | <c g'>
  | b4 r c r

  % 150
  | \repeat unfold 2 { \times 2/3 { g8 b d g fis g g, c es g fis g } }
  | g,4 r r\fermata \key c \major e'-.\p
  | f2( e4 f)
  | e( c' b) r
  | r2 r4 f-.
  | g2( f4 g)
  | f( d' cis) r
  | R1
  | r2 r4 f,-.\f

  % 160
  | e2( f4) r
  | d2( e4) r
  | d2( e4) r
  | r2 r4 c'
  | b2( c4) c,
  | d2( e4) c'
  | b2( c4) c,
  | d2( e4) r
  | r2 r4 a
  | g2( a4 b)
  | c-. c( d e)
  | f-. a,( b cis)
  | d1 ~
  | d2 c!4( b)
  | c2. a4
  | g2. f4
  | e r r c'
  | b2( c4 d)
  | e r r c
  | b2( c4 d)
  | e-. r c-. r
  | \times 2/3 { f,8 f f f f f es es es c c c }
  | c4-. r g-. r
  | c r r g'
  | as2( g4 f)
  | e r r e
  | f2( e4 b')
  | c-. r <g, e'>-. r
  | <g e'>-. r <g e'>4. <g e'>8
  | <g e'>4 r r2

  \bar "|."
}
