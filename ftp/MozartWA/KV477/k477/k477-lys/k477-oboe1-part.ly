oboeI = \relative es''
{
    \key c \minor
    \time 2/2
    \override Staff.Hairpin #'minimum-length = #5

    << { es1(-\p } { s2-\< s2-\> } >>
    | d4)-\! r r2
    | R1*2
    | << { g1(-\p } { s2-\< s2-\> } >>
    | f4)-\! r r2
    | << { es1(-\p } { s2-\< s2-\> } >>
    | d4)-\! r r2
    | << { c1(-\p } { s2-\< s2-\> } >>

% 10
    | d4)-\! r r2
    | R1
    | r4 g,2-\f g4 ~
    | g es'2-\p d8( c)
    | b2-\f ~ b4.( d8)
    | c4 es2-\p d8( c)
    | b2-\f ~ b4.( f'8)
    | es4 es2( d8 c)
    | bes!1-\f
    | g'

% 20
    | as
    | ges(
    | f4) r r2
    | R1*2
    | es,2-\p f
    | g g4 g
    | g2. g4 
    | as g f2
    | g4 r r2

% 30
    | g2-\p g4 g
    | g2. g4
    | f4 es f2 
    | g4 r r2
    | R1
    | es2-\f es4 es
    | es2. es4
    | g1
    | es2 r
    | f1

% 40
    | g2 g4 g
    | g2 bes
    | bes c
    | bes2.( as4)
    | g r r2
    | r4 des'2(-\p c8 bes)
    | as4 r r2
    | r4 es'2( d!8 c)
    | b4 d-\f es2
    | d es

% 50
    | d4 r r2
    | es1(
    | d4) b4.(-\f c8[ d es])
    | f1(
    | es4) c'2 c4
    | c es,2(-\p d8 c)
    | b2-\f ~ b4.( d8)
    | c4 es2(-\p d8 c)
    | b2-\f ~ b4.( f'8)
    | es4 r bes'?2

% 60
    | as1
    | a
    | es2(-\p d)
    | c2( g)
    | as4( a bes b)
    | c2( g')
    | as4( a bes b)
    | c r as?-\pp r
    | g r g r
    | << { e1 } { s2-\< s4.-\> s8-\! } >>

    \bar "|."
}