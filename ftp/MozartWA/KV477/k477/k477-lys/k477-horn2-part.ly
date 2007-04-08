hornII = \relative d'
{
    \clef "G_8"
    \key c \major
    \time 2/2
    \override Staff.Hairpin #'minimum-length = #5

    R1*2
    | << { d1-\p } { s2-\< s2-\> } >>
    | c4-\! r r2
    | << { g'1-\p } { s2-\< s2-\> } >>
    | d4-\! r r2
    | << { c1-\p } { s2-\< s2-\> } >>
    | d,4-\! r r2

% 9
    | R1*2
    | << { d'1-\p } { s2-\< s2-\> } >>
    | c4-\! r r2
    | R1
    | c,-\f ~
    | c4 r r2
    | c1-\f ~
    | c4 r r2
    | R1*16
    | c1-\f
    | c2-\f c4 c
    | c2. c4
    | g'1
    | c,2 r
    | d'1

% 40
    | g,2 g4 g
    | c,2 r
    | R1*6
    | g'2-\f ~ g8. c,16 c8. c16
    | g'2-\f ~ g8. c,16 c8. c16

% 50
    | g'4 r r2
    | c,1
    | g4 r r2
    | d''1
    | c4 c,2-\f c4
    | c r r2
    | c1-\f ~
    | c4 r r2
    | c1-\f ~
    | c8. c16 c8. c16 c2 ~

% 60
    | c8. c16 c8. c16 c2 ~
    | c8. c16 c8. c16 c2
    | g1-\p
    | c2 c'
    | R1
    | c1
    | R1
    | c4 r c-\pp r
    | c r g r
    | << { c,1 } { s2-\< s4.-\> s8-\! } >>

    \bar "|."
}