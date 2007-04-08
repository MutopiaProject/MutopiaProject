hornI = \relative d''
{
    \key a \minor
    \time 2/2
    \transposition es
    \override Staff.Hairpin #'minimum-length = #5

    R1*2
    | << { d1-\p } { s2-\< s2-\> } >>
    | c4-\! r r2
    | << { c1-\p } { s2-\< s2-\> } >>
    | d4-\! r r2
    | << { c1-\p } { s2-\< s2-\> } >>
    | e,4-\! r r2

% 9
    | R1*2
    | << { d'1-\p } { s2-\< s2-\> } >>
    | c4-\! r r2
    | R1
    | d-\f
    | c4 r r2
    | d1-\f
    | c4 r r2
    | r4 g-\f g g
    | g r r8. c,16[ e8. c16]

% 20
    | g'4 g, r8. g16[ b8. g16]
    | c4 r r2
    | r4 g2-\sf r4
    | r g2-\sf r4
    | R1*11
    | e'2 e4 e
    | e2. e4
    | c1
    | e2 r
    | f,1

% 40
    | c'2 c4 c
    | e2 g,
    | c \clef bass f,,
    | g1
    | c,4 r r2
    | R1*3 \clef violin
    | \repeat unfold 2 { e'''2-\f ~ e8. c16 e8. c16 }

% 50
    | e4 r r2
    | e,1 ~
    | e4 r r2
    | d'1
    | c4 e,2-\f e4
    | e r r2
    | d'1-\f
    | c4 r r2
    | d1-\f
    | c8. c16 c8. c16 e2

% 60
    | d8. d16 d8. d16 d2
    | c8. c16 c8. c16 c2
    | e,1-\p ~
    | e4 r r2
    | d'2 e
    | c4 r r2
    | d2 e
    | c4 r d-\pp r
    | e r e r
    | << { e,1 } { s2-\< s4.-\> s8-\! } >>

    \bar "|."
}