\version "2.6.0"
celloFourthMov =  \relative c, {
  \key c \minor
  \clef bass

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat volta 2 {
    <c c'>4-.\f r <c c'>-. r
    | <c c'>-. r r es''-.\p
    | f2( es4) r
    | R1
    | es,4-.\f r e-. r
    | f r r2
    | R1*2
    | r2 r4 es-.\p
    | f1

    % 10
    | g
    | \repeat unfold 2 { \times 2/3 { c,,8\f es g c b c } } \noTupletNum
    | \times 2/3 { c,8 es f g a b } c4 r
    | c'1 ~
    | c2. r4
    | R1*3
    | \times 2/3 { g,8 b d g fis g g, c es g fis g }

    % 20
    | g,4 r r2
    | R1
    | r2 r4 as'
    | g2( as4 bes)
    | c2( bes)
    | as( g4 f)
    | e2(\fz f4 g)
    | as!2( a)
    | bes1 ~
    | bes\p ~

    % 30
    | bes ~
    | bes ~
    | bes ~
    | bes2( es,4) r
    | r2 r4 es,
    | d2( es4) r
    | r2 r4 es
    | d2( es4) r
    | r2 r4 as'
    | g2( as4 bes)

    % 40
    | c2( bes
    | as g)
    | f4 r r es,
    | d2( es4 f)
    | g2( as)
    | bes bes'
    | es,4-.\f r f-. r
    | g-. r r2
    | as,4-. r a-. r
    | bes-. r r2

    % 50
    | bes1\fz
    | bes\fz
    | es4-. r es-. r 
    | es-. r r2
    | R1*2
    | \times 2/3 { d8 d d es es es d d d es es es }
    | as,4 r bes r
    | es,1 ~
    | <es as> ~

    % 60
    | <es g> ~
    | <es as>
    | \times 2/3 { des'8 es f es des c bes as g f es des } \noTupletNum
    | \times 2/3 { c es as c b c d, f bes d! d d }
    | \times 2/3 { es, g bes es es es as, c f as as as }
    | \times 2/3 { bes, es g bes bes bes bes, d f bes bes bes } \tupletNum
    | es,1 ~
    | es
    | es, ~
    | es ~

    % 70
    | es ~
    | es4-. r es-. r
  }

  \alternative {
    { | es4-. r r2 }
    { | es4-. r r2 }
  }

  | r2 r4 as'\f
  | g2( as4 bes)
  | c r r bes
  | as( g f es)
  | d( d' es es,)
  | as2( a)
  | bes1
  | r2 r4 d,,\p
  | es2( d4) r
  | r2 r4 d-.
  | es2( d4) es'\f
  | d2( es4 f)
  | g2( f4) bes,
  | es,2( f4 g)
  | as2( es'4) r
  | R1*3
  | r2 r4 as,-.
  | g2( a4 b)
  | c2 r
  | R1*2
  | r4 \times 2/3 { bes!8 a bes c bes c d c d }
  | es4 es,8 es' des4 des,8 des'
  | c4 c,8 c' g4 g'8 g,
  | as1 ~
  | as ~
  | as ~
  | as ~
  | as4 r r \times 2/3 { <g es'>8 <g es'> <g es'> } \noTupletNum
  | <as es'>4 r r \times 2/3 { <g es'>8 <g es'> <g es'> }
  | <as es'>4 r \times 2/3 { as8 bes c bes as g }
  | \times 2/3 { f g as g f es d! es f g as a }
  | \repeat unfold 8 { \times 2/3 { bes8 bes bes } }
  | \repeat unfold 4 { \times 2/3 { b8 b b } }
  | c4 r r \times 2/3 { g'8 g g }
  | c,4 r r \times 2/3 { g'8 g g }
  | c,4 r r2
  | r r4 c-.
  | f-. c-. f-. r
  | r2 r4 bes,-.
  | es-. bes-. es-. g,(
  | g') g,( g') g,(
  | g') \times 2/3 { f,8( g f es f es d es d) }
  | <c c'>4-. r <c c'>-. r
  | <c c'>-. r r es''-.
  | f2( es4) r
  | r1
  | es,4-.\f r e-. r
  | f-. r r2
  | R1*2
  | r2 r4 es-.\p
  | f1(
  | g)
  | R1
  | f(
  | g)
  | R1
  | f,(\pp
  | ges
  | as)
  | des,\f
  | des\fz
  | des'2( ces)
  | bes1
  | es,
  | es\fz
  | es'2( des)
  | c1
  | f,4 \times 2/3 { f'8( e f) } f,4-. f'-.
  | e,4 \times 2/3 { e'8( d! e) } e,4-. e'-.
  | es,!4 \times 2/3 { es'!8( d! es) } es,4-. es'-.
  | \times 2/3 { b8 d g g fis g c, es g g fis g }
  | g,4 r r2
  | \times 2/3 { g8 b d g fis g g, c es g fis g }
  | g,4 r r\fermata \key c \major c'-.\p
  | d2( c4 b)
  | c2( g4) r
  | r2 r4 d'-.
  | e2( d4 cis)
  | d2( a4) r
  | R1
  | r2 r4 d-.\f
  | cis2( d4) r
  | g,2( c4) r
  | g2( c4) r
  | R1
  | r2 r4 c,
  | b2( c4) r
  | r2 r4 c
  | b2( c4) r
  | r2 \clef tenor r4 f'
  | e2( f4 g)
  | a2( g
  | f e)
  | d4 r r \clef bass c,
  | \stemUp b2( c4 d) \stemNeutral
  | e2 f
  | g g,
  | c1(
  | <c f>
  | <c e>
  | <c f>)
  | \times 2/3 { bes'8 c d c bes a g f e d c bes }
  | \times 2/3 { a a a a a a as as as as as as }
  | g4-. r g-. r
  | \times 2/3 { c,8 e g c b c c, e g c b c }
  | \times 2/3 { c, f as c b c c, c' c c, c' c }
  | \times 2/3 { c, e g c b c c, e g c b c }
  | \times 2/3 { c, f as c b c c, c' c c, c' c }
  | c,4 r <c c'>-. r
  | <c c'>-. r <c c'>4. <c c'>8
  | <c c'>4 r r2

  \bar "|."
}
