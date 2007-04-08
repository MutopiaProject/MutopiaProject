clarinet = \relative es''
{
    \key d \minor
    \time 2/2
    \transposition bes
    \override Staff.Hairpin #'minimum-length = #5

    | R1*4
    | << { c1-\p ~ } { s2-\< s2-\> } >>
    | c4-\! r r2
    | << { a1-\p ~ } { s2-\< s2-\> } >>
    | a4-\! r r2

% 9
    | R1*3 
    | r4 f2-\f f4
    | f r r2
    | bes2.(-\f a4)
    | a4 r r2
    | bes2.(-\f a4)
    | a r r2
    | r4 g2-\f a8( bes)
    | a4 c2. ~

% 20
    | c1 ~
    | c4 r r2
    | r4 c,2-\f r4
    | r c2-\f r4
    | R1
    | f2-\p g
    | a a4 a
    | a2. a4
    | bes a g2
    | a4 r r2

% 30
    | a2-\p a4 a
    | a2. a4
    | g4 f g2
    | a4 r r2
    | R1
    | f2-\f f4 f
    | f2. f4
    | c1
    | f2 r
    | c1

% 40
    | c2 c4 c
    | d2 g
    | a bes
    | a( g)
    | f4 r r2
    | R1*3
    | a'1 ~
    | a ~

% 50
    | a4 r r2
    | a,1 ~
    | a4 g8(-\f a bes a g f)
    | a1 ~
    | a4 a2 a4
    | a4 r r2
    | bes2.(-\f a4)
    | a r r2
    | bes2.(-\f a4)
    | a r d2 ~

% 60
    | d1 ~
    | d
    | R1*2
    | c2 d
    | R1*2
    | r2 e4-\pp r
    | f r e r
    | << { a,1 } { s2-\< s4.-\> s8-\! } >>

    \bar "|."
}