\version "2.16.0"

viiIa =  {
    \relative d' {
        d4->\f r r | fs-> r r | g-> f-> r8 f |
        ef2-> ef'4-. | d2-> d,4-> ~ | d g2-> |
        fs2.->^\fermata ~ | fs4 r r |
    }
}

viiIb =  {
    \relative g' {
        R1 | r2 r4 g-\pesp ~ \noBreak | g fs g g' ~ | g fs bf2 |
        a4. bf8 e,4 ef | d d2 c4 | c bf8-- a-- g4 ef' ~ |
        ef d c2 | bf4 bf2 af4 |
        g2-"cresc." fs4 g ~ | g f-"dim." fs g |
        g2.->-"allarg." fs4 | g1 |
    }
}

viiI = <<\mI {\viiIa \viiIb}>>

viiIIa =  {
    \relative g'' {
        r4 g2->^\upbow\f(  fs4)-. | g2-> a-> | bf-> c-> | d4 bf2->(  a4)-. |
        r d c2 | bf a4 d,( ~ | d8 g,  c2) bf4 | a2 g4 r |
        c2.\mf\< bf4 | ef2. d4 |
        g2 a4\f bf | ef, d c2 |
        bf4 r a'2\mf\< ~ | a4 g c2 ~ |
        c4\f bf2-> a4-> ~ | a g2-> f4-> ~ |
        f ef2-> d4-> ~ | d c2-> bf4 | a2 g4 a |
        g2 fs4 d'-> ~ | d c d2 |
    }
}

viiIIb =  {
    \relative fs'' {
        fs4.\f ~ fs8-. g2 | a4 d-> bf2-> |
        e,4. ~ e8-. f!2 | g4 c-> a2-> |
        d,4. ~ d8-. e f e d | cs4 r8 a' bf4. bf8 | cs, a d2 cs4 |
        d4.(  c!8) b g c4 ~ | c b c4.(  bf8) | a f bf2 a4 |
        r d-> c-> f-> | r bf,-> a-> d-> |
        r g,-> f-> bf-> | r ef-> fs,-> g-> ~ | g fs r d'\p |
        c f! r bf, | a d r g, | f bf r ef | fs, g2 fs4 |
        g c2->\f-"allarg." bf4-> | a2-> g-> |
    }
}

viiII = <<\mII {\repeat volta 2 {\viiIIa} \repeat volta 2 {\viiIIb}}>>

viiIIIa =  {
    \relative f' {
        r2 f16\mf(  bf) d(  bf) f(  d) f(  bf) |
        ef,8(  ef')-- r4 af,8(  g) f8.(  bf16) |
        g8 g'-- f(  bf,) r ef-- d(  g,) | r c-- bf(  ef,) r af g4 |
        f8 bf4(  a8) bf4 c | d8(  ef) af,4( ~ af8  g) f4 |
        ef d8.(  bf'16) af8(  g) f8.(  bf16) |
        g4\< c d,8\!-"allarg." << {ef4( d8)} { s8 s8\> s8\!} >> |
    }
}

viiIIIb =  {
    \relative ef' {
        ef4\p r g8-. g-. g-. g-. | g->(  c,) r4 ef' r |
        d8-. d-. d-. d-. d->(  g,) r4 |
        c8-. c-. c-. c-. c->(  f,) r4 |
        bf8-. bf-. bf-. bf-. bf->(  ef,) r4 |
        bf'8\cresc g ef bf' c af,-> r4 |
        c'8 a f c' d bf,-> r4 |
        ef'8 ef, g bf ef, af,-> r4 |
        d8 f bf d, ef g,-> r4 |
        ef''8\p\cresc ef, g bf ef, af,-> r4 |
        d8 f bf d, ef4 r4 |
        f->\f r ef-> r | d2 r2^\fermata |
    }
}

viiIIIc = \viiIIIa

viiIIId =  {
    \relative ef' {
        ef4-"a tempo" ef'16\p\<( bf g  ef) ef'4 ef16( bf g  ef)\! |
        ef'4 ef16-"dim. e allarg."( d c  bf) c( bf af  g) af( g f  ef) |
        d4 ef2 d4 | ef1 |
    }
}

viiIII = <<\mIII {\viiIIIa \viiIIIb \viiIIIc \viiIIId}>>

viiIVa =  {
    \relative bf' {
        bf4-.\p d4.(  g8) | fs2. |
        fs4-. fs4.->^\trill( e16  fs) | g2. |
        bf,4\f d2-> | d2. | d4 g,2-> | fs2. |
    }
}

viiIVb =  {
    \relative fs'' {
        fs4-.\mf fs4.->^\trill( e16  fs) | g2. |
        e4 e4.->^\trill( d16  e) | f2. |
        d4 e4.->(  d8) |
        cs4. cs8(  d) cs | d4 d4.->(  cs8) | d2. |
        d4\f d2 | g,2. | c4 c2 |
        f,2 d'4 |
        c4.(  ef8) d c | bf2 d4 | c8(  bf) a2 |
        g2 d'4\p | ef2 ef4 |
        fs,2-"poco allarg." g4 ~ | g g4. fs8 | g2. |
    }
}

viiIV = <<\mIV {\repeat volta 2 {\viiIVa} \repeat volta 2 {\viiIVb}}>>

viiVa =  {
    \relative g'' {
        r2 | r2
        g4-|\f fs-| | g->(  d)
        bf-| a-| | bf d2-> c4 | d2
        r2 | r2
        g4-| fs-| | g->(  d)
        bf-| a-| | bf d2-> c4 | d2
        f!4-.\p f-. | f->(  f,) f'-. f-. | f2
        b,4\f d | g, c2->(  b4) | c2
        g'4-.\p\< g-. | g->(  g,) g'-. g-.\! | g2->
        a4-. a-. | a->\<(  a,) a'-. a-.\! | a2->
        f4-|\f e-| | f->(  e) d-| c-| | d->(  c)
        bf-| a-| | g->(  f) e2 | d2
        f'4\p e | f->(  e) d c | d->(  c)
        bf a | g->(  f) e2 | d2
    }
}

viiVb =  {
    \relative fs'' {
        fs4-.\p g-. | fs->(  g) fs-. g-. | fs2
        d4-|\f ef-| | d->(  ef) d-| ef-| | d2
        d4-.\p d-. | ef->(  d) c-. bf-. | a2->
        bf4-|\f f-| | g->(  f) bf-.\p f-. | g->(  f)
        g-|\f a-| | bf->(  a) g-.\p a-. | bf->(  a)
        d\f c8 bf8 | a4 bf2 a4 | bf2 r |
        bf\p r | < bf gf > r | c4\f df c2 |
        bf r | d!\p r | d4\f ef d2 |
        c r | < cs e >\p r | e4\f f e2 | d2
        r2 | r2 g4-|\f fs-| | g->(  d)
        bf-| a-| | bf d2->(  c4) | d2
        d4-.\p\< d-. | d-> c8-. bf-. c4-. c-.\! | c->(  bf)
        d-|\f d-| | c->(  bf) a-| g-| | fs2 r4
        d'-.\p | g2.-"scherzoso" d4 | g2.
        d4\f | g2. d4 | g2 r4 
        d' | a bf a2 | g
        r | g, r | g r | g r | g r4
        c ~ | c bf a2 | g2 r4
        c\p ~ | c bf a2 |
    }
}

viiV = <<\mV {\partial 2 \repeat volta 2 {\viiVa} \repeat volta 2 {\viiVb} \alternative {g'2} {g'1\laissezVibrer}}>>

viiVI =  <<\mVI {
    \relative g' {
        g4\p(\repeatTie  a8) b4(  g8) c4(  b8) c( b  a) | b4(  a8) b4(  g8) e( fs  g) d( g  fs) |
        g4(  a8) b4(  g8) d4(  e8) fs4(  d8) | g4(  fs8) g( fs  e) fs4(  e8) fs4(  d8) |
        b( cs  d) a( d  cs) d4(  e8) fs4(  d8) |
        b'4\f(  c8) d4(  b8) e4(  d8) e( d  c) | d4(  c8) d4(  b8) e( d  e) a,4(  d8) |
        b4. r4
        %
        g'8\p a4. r4 d8 | b4(  b,8) r4
        e8 fs4. r4 b8 | g4(  g,8) r4
        c8 d4. r4 e8 | a,4. r4
        a'8\f g( a  fs) e4. | d4. r4
        fs,8\p g4(  fs8) g( fs  e) | fs4(  d8) r4
        b'8\mf c4(  b8) c( b  a) | b4(  g8) r4
        d'8\f d4(  c8) r4 b8 | b4(  a8) r4 d,8 e4(  fs8) g4. | fs r4
        %
        b'8\p b4. a ~ | a4.
        % (organ)
        g4.( ~ g8 fs  e) g4.( ~ | g8 e  d)
        g4.( ~ g8 fs  e) g4(  g8)-. | fs4. r4
        b,8\f e,( fs  g) g4(  fs8) | g4. r4
        d'8\mf\< e4. r4 e8 | fs4. r4 fs8 g4. r4 a8\! | d,4. r4
        d8\p g4(  c,8) r4 b8 | e4(  a,8) r4 g8 fs4. r4
        d'8\f-"poco largamente" | c( d  b) a4(  d8) b4 r8 g4. |
        r4.^\fermata
        g\p
        r2.^\fermata |
        fs4\f(  g8) d4(  fs8) g4. r4
        %
        g8\mf-"a tempo" | fs4. g fs r4 e8 |
        e4.\cresc e e r4 fs8 | fs4. fs fs\! r4
        as8\p | b4. cs fs, r4
        fs'8 | g4. r4 g8 fs4. fs4(  g8) | d4. cs b r4
        fs'8\< | b4.( ~ b4  fs8)-. b4.\!( ~ b4  fs8)-. | g4. r4
        g8 as,4. b ~ | b as b2. |
        %
        g4\p(  a!8) b4(  g8) c4(  b8) c( b  a) | b4(  a8) b4(  g8) e( fs  g) d( g  fs) |
        g4(  a8) b4(  g8) d4(  e8) fs4(  d8) | g4(  fs8) g( fs  e) fs4(  e8) fs4(  d8) |
        b( cs  d) a( d  cs) d4(  e8) fs4(  d8) |
        b'4\f(  c8) d4(  b8) e4(  d8) e( d  c) | d4(  c8) d4(  b8) e( d  e) a,4(  d8) |
        b4. r4
        %
        g'8\p a4. r4 d8 | b4(  b,8) r4
        e8 fs4. r4 b8 | g4(  g,8) r4
        c8 d4. r4 e8 | a,4. r4
        a'8\f g( a  fs) e4. | d4. r4
        %
        b8\p a4(  g8) a4(  fs8) |
        b4(  c8) d4(  b8) a4(  g8) a4(  fs8) | b4(  c8) d4(  b8) g4. r4
        a8 | d,4. r4 d'8 e4. r4 e8 | d4. r4
        d8 c( d  b) a4(  d8) | b4. r4
        d,8\f e4(  d8) e4(  c8) | d4(  c8) d4(  b8) e4(  d8) e( d  c) |
        d4(  c8) d4(  b8) e4(  d8) c4(  b8) | a4. b a r4
        d8\p | b4. r fs' r | g r r2. |
    }
}>>
