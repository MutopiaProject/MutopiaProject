oboeII = \relative es''
{
    \key c \minor
    \time 2/2
    \override Staff.Hairpin #'minimum-length = #5

    << { c1(-\p } { s2-\< s2-\> } >>
    | b4)-\! r r2
    | R1*2
    | << { es1(-\p } { s2-\< s2-\> } >>
    | d4)-\! r r2
    | << { c1(-\p } { s2-\< s2-\> } >>
    | b4)-\! r r2
    | << { es1(-\p } { s2-\< s2-\> } >>

% 10
    | b4)-\! r r2
    | R1
    | r4 c,2-\f c4 ~
    | c g'2-\p f8( es)
    | d2-\f ~ d4.( f8)
    | es4 g2-\p f8( es)
    | d2-\f ~ d4.( d'8)
    | c4 g2( f8 es)
    | d2.(-\f es8 d)
    | es4 es'2.

% 20
    | f1
    | es1(
    | d4) r r2
    | R1*2
    | es,2-\p f
    | g g4 g
    | g2. g4
    | as g f2
    | g4 r r2

% 30
    | g2-\p g4 g
    | g2. g4
    | f es f2
    | g4 r r2
    | R1
    | c,2-\f c4 c
    | c2. c4
    | g'1
    | c,2 r
    | d1

% 40
    | es2 es4 es
    | es2 d
    | es1 ~
    | es2( d)
    | es4 r r2
    | r4 bes'2(-\p as8 g)
    | f4 r r2
    | r4 c'2( b8 a)
    | g4 b-\f c2
    | b c

% 50
    | b4 r r2
    | c1(
    | b4) d,4.(-\f g8[ b c])
    | d1(
    | c4) es2 es4
    | es g,2(-\p f8 es)
    | d2-\f ~ d4.( f8)
    | es4 g2(-\p f8 es)
    | d2-\f ~ d4.( d'8)
    | c4 r g'2

% 60
    | f1
    | es
    | c2(-\p b)
    | c4 r r2
    | R1
    | r2 g
    | as4( a bes b)
    | c r c-\pp r
    | g r b r
    | << { c1 } { s2-\< s4.-\> s8-\! } >>

    \bar "|."
}