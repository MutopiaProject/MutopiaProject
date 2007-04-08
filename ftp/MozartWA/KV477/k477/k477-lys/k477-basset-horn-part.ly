bassetHorn = \relative g
{
    \key g \minor
    \time 2/2
    \clef bass
    \transposition f
    \override Staff.Hairpin #'minimum-length = #5

    | R1*2
    | << { d1(-\p } { s2-\< s2-\> } >>
    | g,4)-\! r r2
    | << { bes1(-\p } { s2-\< s2-\> } >>
    | f4)-\! r r2
    | << { g1(-\p } { s2-\< s2-\> } >>
    | d4)-\! r r2

% 10
    | R1*2
    | r4 d-\f fis d
    | g r r2
    | R1
    | r8 es'-\f c a fis a d, fis
    | g4 r r2
    | r8 es'-\f c a fis a d, fis
    | g4 r r2
    | r4 es'2(-\f d8 c)

% 20
    | bes4 r r8. bes16[ d8. bes16]
    | f'4 f, r8. f16[ a8. f16]
    | bes4 r r2
    | r4 f2-\sf r4
    | r f2-\sf r4
    | R1*10
    | g1-\f
    | g2 g4 g
    | g2. g4
    | bes1

% 40
    | g2 r
    | f1
    | bes2 bes4 bes
    | g2 f
    | bes2 es,
    | f1
    | bes4 r r2
    | R1*3
    | r8. d,16[-\f fis8. d16] g8. g16 bes8. g16
    | d'8. d,16 fis8. d16 g8. g16 bes8. g16

% 50
    | \stemUp d'8 es( d cis d a bes fis) \stemNeutral
    | g1
    | d4 r r2
    | d1
    | g4 g2-\f g4
    | g r r2
    | r8 es'-\f c a fis a d, fis
    | g4 r r2
    | r8 es'-\f c a fis a d, fis
    | g8. g16 bes8. d16 b2

% 60
    | c8. c16 es8. g16 c,2
    | cis8. cis16 e8. g16 cis,2
    | R1
    | g2-\p b
    | c d
    | g, b
    | c, d
    | es4 r c-\pp r
    | d r d r
    | << { g1 } { s2-\< s4.-\> s8-\! } >>

    \bar "|."
}