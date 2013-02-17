\version "2.16.0"

viIa =  {
    \relative bf' {
        bf4->\f r r | c-> r r | d-> d-> r8 d |
        d4->(  g,) c-. | c2-> bf4-> ~ | bf c2-> |
        d2.->^\fermata ~ | d4 r r |
    }
}

viIb =  {
    \relative d'' {
        R1 | R1 | r4 d2-\pesp cs4 | d a'2 g4 |
        cs, d2 c4 ~ | c bf2 a8-- g-- | fs4 d'2 c8-- bf-- |
        a4 bf2 a4 ~ | a g8-- f!-- e4 f ~ |
        f_"cresc." ef d d' | c c2_"dim." bf4 |
        a1->-"allarg." | g |
    }
}

viI = <<\mI {\viIa \viIb}>>

viIIa =  {
    \relative g'' {
        g2->\f a-> | bf4 g2->(  fs4)-. | g bf2->(  a4)-. |
        bf2-> c-> | d4 bf2 a4 ~ | a g2 fs4 |
        g4.(  a8) fs d g4 ~ | g fs g
            bf,->\mf\< ~ | bf a d2 ~ | d4 c f2 ~ |
        f4 ef2\f d4 | g,8 a bf2 a4 | bf g'2->\mf\< fs4 | bf2. a4 |
        d2->\f\! c-> | bf-> a-> | g-> f-> | ef-> fs,4 g-> ~ |
        g fs g d'-> ~ | d c d a | g2 fs |
    }
}

viIIb =  {
    \relative a'' {
        a4.\f ~ a8-. bf4 g-> ~ | g fs-. g2 |
        g4. ~ g8-. a4 f!-> ~ | f e-. f2 |
        f4. ~ f8-. g(  a) g f | e a, a'4( ~ a8  d,) g4 ~ |
        g f e4.(  a8) | f d f2 ef!4 |
        d4.(  g8) ef c ef4 ~ | ef d c4.(  f8) |
        d bf bf'4 r a-> | bf,-> g'-> r f-> | g,-> ef'-> r d-> |
        ef,-> c'2-> bf4-> | a2-> g4 bf'\p |
        r a bf, g' | r f g, ef' | r d ef, c' ~ | c bf a2 |
        g4 ef'->\f-"allarg." fs,-> g-> ~ | g fs-> g2-> |
    }
}

viII = <<\mII {\repeat volta 2 {\viIIa} \repeat volta 2 {\viIIb}}>>

viIIIa =  {
    \relative g' {
        g16\mf(  bf) ef(  bf) g(  ef) g(  bf) f8(  bf,)-- r4 |
        ef'16(  g) bf(  g) ef(  c) af(  c) d,8 ef4(  d8) |
        ef ef'4(  d8) ef,16(  g) c4(  bf8) |
        c,16(  ef) af4(  g8) af,16(  c) f4 ef8( ~ |
        ef8  d) c8.(  f16) d8 bf'4 af8 ~ |
        af g4 f8 bf, ef4 d8 ~ |
        d c4 bf8 c16( d  ef8) ef8.(  d16) |
        ef8\< bf'4 << af { s8 s8-"allarg." } >>
            g8\! << f4 { s8\> s8\! } >> |
    }
}

viIIIb =  {
    \relative ef' {
        ef16\p g \repeat unfold 3 { ef g } \repeat unfold 4 { g d } |
        \repeat unfold 4 { ef g } \repeat unfold 4 { c ef } |
        \repeat unfold 4 { a, d } \repeat unfold 4 { bf d } |
        \repeat unfold 4 { g, c } af! c \repeat unfold 3 { af c } |
        \repeat unfold 4 { f, bf } \repeat unfold 4 { g bf } |
        ef,\cresc bf' \repeat unfold 3 { ef, bf' } \repeat unfold 4 { ef, c' } |
        \repeat unfold 4 { f, c' } \repeat unfold 4 { f, d' } |
        \repeat unfold 4 { bf ef } \repeat unfold 4 { c ef } |
        \repeat unfold 4 { f, bf } \repeat unfold 4 { g ef } |
        bf'\p\cresc ef \repeat unfold 3 { bf ef } \repeat unfold 4 { c ef } |
        \repeat unfold 4 { f, bf } g4 r4 |
        bf->\f r a-> r | bf2 r2^\fermata |
    }
}

viIIIc = \viIIIa

viIIId =  {
    \relative ef'' {
        ef16\p\<-"a tempo"( bf g  ef) ef'4 ef16( bf g  ef) ef'4\! |
        ef16( d c  bf) c-"dim. e allarg."( bf af  g) af( g f  ef) c'( bf af  g) |
        f4 g f4.(  bf8) | g1 |
    }
}

viIII = <<\mIII {\viIIIa \viIIIb \viIIIc \viIIId}>>

viIVa =  {
    \relative g'' {
        g4-.\p g4.->^\trill( fs16  g) | a4 d,(  d)-- |
        a'-. a4.->^\trill( g16  a) | bf4 d,(  g,)-- |
        g'\f bf8(  a) g bf | a4(  d,) d-- |
        g8(  bf,) c4.^\trill( bf16  c) | d2. |
    }
}

viIVb =  {
    \relative a'' {
        a4-.\mf a4.->^\trill( g16  a) | bf2. |
        g4 g4.->^\trill( f16  g) | a2. |
        f4 g4.->(  f8) |
        e4. e8(  f) e | f(  g) e2 | d2. |
        d4\f g4.->(  f8) | ef!2. | c4 f4.->(  ef8) | d4 bf'2-> ~ |
        bf4 a8 g a4 ~ | a d, g ~ | g fs4.->^\trill( e16  fs) |
        g4 d2->\p ~ | d4 g, c |
        c4.-"poco allarg."(  d8) bf4( ~ | bf8  a) a2 | g2. |
    }
}

viIV = <<\mIV {\repeat volta 2 {\viIVa} \repeat volta 2 {\viIVb}}>>

viVa =  {
    \relative g'' {
        g4-|\f fs-| | g->(  d) bf'-| a-| | bf2
        d,4-| d-| | d->(  fs,) g2 | fs
        g'4-| fs-| | g->(  d) bf'-| a-| | bf2
        d,4-| d-| | d->(  fs,) g2 | fs
        d'8\p(  f) c f | \repeat unfold 2 { d(  f) c f } | d2
        g4.\f(  f8) | ef8 g f ef d2 | c2
        ef8\p\<(  g) d g | ef(  g) d g ef(  g) d g\! | ef4->(  d)
        f8(  a) e a | f8\<(  a) e a f8(  a) e a\! | f4->(  e)
        bf'-|\f a-| | bf->(  a) g-| f-| | g->(  f)
        e-| d-| | cs d2->(  cs4) | d2
        bf'4\p a | bf->(  a) g f | g->(  f)
        e d | cs d2->(  cs4) | d2
    }
}

viVb =  {
    \relative a'' {
        a4-.\p bf-. | a->(  bf) a-. bf | a->(  d,)
        f-|\f g-| | f->(  g) f-| g-| | f->(  bf,)
        f'-.\p f-. | g->(  f) ef-. d-. | c->(  f,)
        f'-|\f bf,-| | c->(  bf) f'-.\p bf,-. | c->(  bf)
        c-|\f d-| | ef->(  d) c-.\p d-. | ef->(  d)
        f\f ef8 d | c4 d c2 |
        bf8\p(  c) bf c df(  c) df c |
        bf8(\cresc  c) bf c df(  c) df c |
        bf8(  c) bf c df(  c) bf c |
        a4\f bf2->(  a4) |
        bf8\p\cresc(  c) bf c df(  c) df c |
        b8(  c) b c d!(  c) d c |
        b4\f c2->(  b4) |
        c8\p\cresc(  d) c d ef(  d) ef d |
        cs8(  d) cs d e(  d) e d |
        cs4\f d2->(  cs4) | d2
        g4-|\f fs-| | g->(  d) bf'-| a-| | bf2
        d,4-| d-| | d->(  fs,) g2 | fs
        fs'4-.\p\< fs-. | g-. g-. a-. a-.\! | a->(  d,)
        g-|\f f!-| | ef(  d) c-| bf-| | a
        d-.\p g2-"scherzoso" ~ | g4 d g2 ~ | g4
        d\f g2 ~ | g4 d g2 ~ | g4 d g d | fs g2->(  fs4) | g2
        g, | r g | r g | r g | r
        g4 ef' | fs, g2->(  fs4) | g2
        r4 ef'\p | fs, g2 fs4 |

    }
}

viV = <<\mV {\partial 2 \repeat volta 2 {\viVa} \repeat volta 2 {\viVb} \alternative {g'2} {g'1}}>>

viVI =  <<\mVI {
    \relative b' {
        b4\p(  c8) d4(  b8) e4(  d8) e( d  c) | d4(  c8) d4(  b8) c( d  b) a4(  d8) |
        b4(  c8) d4(  b8) fs4(  g8) a4(  fs8) | b4(  a8) b( a  g) a4(  g8) a4(  fs8) |
        g( a  fs) e4(  a8) fs4(  g8) a4(  fs8) |
        g'2.\f g | g g4. fs | g r4
        %
        b8\p-"affettuoso" c( b  a) d4(  d,8)-. | g4(  g,8) r4
        c'8 a( g  fs) b4(  b,8)-. | e4(  e,8) r4
        a'8 fs( e  d) g4(  g8)-. | g4. r4
        fs8\f b,( cs  d) a( d  cs) | d4. r4
        a8\p b4(  a8) b( a  g) | a4(  fs8) r4
        d'8\mf e4(  d8) e( d  c) | d4(  b8) r4
        d8\f g4(  c,8) fs4(  b,8) | e4(  a,8) d4(  g,8) c4. b | a r4
        %
        d'8\p c2. | b4.(  bf) a2. | a a | a4. r4
        d,8\f c( d  b) a4. | g4(  d'8)-- g4. r4
        e8\mf\< a4. | r4 fs8 b4. r4 g8 c4.\! | r4
        b8\p a4(  d8) r4 g,8 fs4(  b8) | r4 e,8 d4(  g8) c,4. r4
        b8\f-"poco largamente" \noBreak | e,( fs  g) d4(  fs8) g4 r8 e'4. |
        r4.^\fermata
        d\p
        r2.^\fermata |
        c4\f(  b8) a4. g r4
        %
        b8\mf-"a tempo" | b4. b b r4 c8 |
        b4.\cresc c b r4 d8 | cs4. d cs\! r4
        fs8\p | fs4(  e8) e4(  e8)-- e4(  d8) r4
        d8 | d4(  c!8) c4(  b8) as4(  fs8) b4. ~ |
        b as b4\<(  fs'8)-. b4.( ~ | b4  fs8)-. b4.( ~ b4\!  fs8)-. b4.( ~ |
        b4  b,8)-. e4.( ~ e4  fs8) d4(  cs8) | d4.(  cs) b2. |
        %
        b4\p(  c!8) d4(  b8) e4(  d8) e( d  c) | d4(  c8) d4(  b8) c( d  b) a4(  d8) |
        b4(  c8) d4(  b8) fs4(  g8) a4(  fs8) | b4(  a8) b( a  g) a4(  g8) a4(  fs8) |
        g( a  fs) e4(  a8) fs4(  g8) a4(  fs8) |
        g'2.\f g | g g4. fs | g r4
        %
        b8\p c( b  a) d4(  d,8)-. | g4(  g,8) r4
        c'8 a( g  fs) b4(  b,8)-. | e4(  e,8) r4
        a'8 fs( e  d) g4(  g8)-. | g4. r4
        fs8\f b,( cs  d) a( d  cs) |
        %
        d1.\> ~ | d\! ~ | d2.( ~ d8 c  b) c4.( ~ |
        c8 b  a) b4.( ~ b4  e,8) a4.( ~ | a4  d,8) g2. fs4. |
        << \repeat unfold 6 < g g, >2. { s2. s\f } >> |
        fs4. g g r4 fs8\p | g4. r a r | b r r2. |
    }
}>>
