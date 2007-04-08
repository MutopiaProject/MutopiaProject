cello = \relative c
{
    \key c \minor
    \clef bass
    \time 2/2
    \override Staff.Hairpin #'minimum-length = #5

    R1*8
    | c1-\p

% 10
    | g4 as'-.-\f f-. d-.
    | b1-\p
    | c4 c'-.-\f g-. es-.
    | c8 c-\p c c c2:8
    | c:-\f c:
    | c8 c-\p c c c2:
    | c:-\f c:
    | c4 r r2
    | r4 as'2(-\f g8 f)
    | es8. es16 g8. bes16 es4 es,

% 20
    | r8. d16 f8. bes16 d4 d,
    | es1-\p
    | bes4 r r a'8.( bes16)
    | bes4 r r a8.( bes16)
    | bes4 as!(-\markup { \italic "cresc." } g f)
    | es-\p g,( as bes)
    | es( g es d)
    | c( es c bes)
    | as( a bes2)
    | es4 es'-.-\f d-. c-.

% 30
    | bes as!(-\p g f)
    | es( d c bes)
    | as( g) as as'
    | g f-.-\f es-. d-.
    | \repeat unfold 3 { r8. c16 es8. g16 c4 c, }
    | r8. es16 g8. bes16 es8. bes16 g8. es16
    | c8. c16 es8. g16 c8. a16 es8. c16
    | bes8. bes16 d8. f16 bes4 bes,

% 40
    | r8. es16 g8. bes16 es4 es,
    | r8. c16 es8. c16 bes8. bes16 d8. bes16
    | es8. bes'16 g8. es16 as8. es16 c8. as16
    | bes8. es16 g8. es16 bes'4 bes,
    | es es-\p es es
    | e e e c
    | f f f f
    | fis fis fis d
    | g-\f r r8. c,16 es8. c16
    | g'4 r r8. c,16 es8. c16

% 50
    | g'8( as g fis g d es b)
    | c(-\p b c d es e f fis)
    | g(-\f f! as g f es? d c)
    | b(-\p c d g, as a bes b)
    | c-\f es( f fis g as a b)
    | c c,-\p c c c2:
    | c:-\f c:
    | c8 c-\p c c c2:
    | c:-\f c:
    | c4 r r8. e16 g8. bes16

% 60
    | f4 r r8. f16 as8. c16
    | fis,4 r r8. fis16 a8. c16
    | g4-\p r g, r
    | c r c r
    | f r g r
    | c, r c r
    | f r g r
    | as r f-\pp r
    | g r g, r
    | << { c1 } { s2-\< s4.-\> s8-\! } >>

    \bar "|."
}