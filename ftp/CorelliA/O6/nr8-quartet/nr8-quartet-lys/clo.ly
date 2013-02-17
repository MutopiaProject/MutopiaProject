\version "2.16.0"

cloIa =  {
    \relative g, {
        g4->\f r r | a-> r r | bf-> b-> r8 b |
        c4->(  c,) c''-. | fs,2-> g4-> ~ | g ef2-> |
        d2.->^\fermata ~ | d4 r r |
    }
}

cloIb =  {
    \relative g, {
        g4-\pesp g'2 fs4 | g bf ef,2 | d ef4 e |
        d2 g,4 g' ~ | g f8-- g-- a4. g8 | fs8-- d-- g4 c,2 |
        d ef | f2. fs4 | g2 c, |
        b4-"cresc." c'2 bf4 | << af4. { s4 s8-"dim." } >> af8 d,2 |
        cs->-"allarg." d | g,1 |
    }
}

cloI = <<\mI {\cloIa \cloIb}>>

cloIIa =  {
    \relative g {
        r8 g\f bf g c(  a) d d, | g g, bf g c(  a) d d, |
        g bf' d bf ef(  c) d f, | bf bf, d bf ef(  c) f f, |
        bf bf' d d, e(  c') fs, d' | g,(  a) bf c d(  c) d d, |
        ef(  d) ef c d(  fs) g bf, | c(  a) d d, g bf'\mf d bf |
        ef\<(  c) d f, bf(  c) d bf | c(  d) ef c a(  f) bf d, |
        ef\! f g ef f\f f g d | ef(  f) g d ef(  c) f f, |
        bf d'\mf\< bf g c(  a) d d, | g(  a) bf g ef(  c) f f, |
        bf\f c d e f g a fs | g a bf c d d, f! d |
        ef f g a bf bf, d bf | c d ef c d d' ef bf |
        c a d d, g4 f | ef2 d | ef d |
    }
}

cloIIb =  {
    \relative d' {
        d8\f(  d,) fs d g(  a) bf g | d'(  d,) fs d g(  a) bf g |
        c(  c,) e c f!(  g) a f | c'(  c,) e c f(  g) a f |
        bf(  c) bf a g4. g8 |
        a(  g) f d g(  a) bf g | a(  cs) d f, g(  e) a a, |
        d(  e) f d g(  b) c! ef, | f(  d) g g, c(  d) ef c |
        f(  a) bf d, ef(  c) f f, | bf bf' d bf f' f, a f |
        g a bf c d d, f d | ef f g a bf bf, d bf |
        c d ef c d d' ef bf | c a d d, g bf\p d bf |
        f' f, a f g a bf c | d d, f d ef f g a |
        bf bf, d bf c d ef c | d d' ef bf c(  a) d d, |
        g f\f-"allarg." ef c d d ef bf | c(  a) d d, g2 |
    }
}

cloII = <<\mII {\repeat volta 2 {\cloIIa} \repeat volta 2 {\cloIIb}}>>

cloIIIa =  {
    \relative ef {
        ef4\p r d r | c r bf8(  ef) bf' bf, | ef16
             ef[-\mfesp g(  ef)] bf'(  bf,) d(  bf)
            r2 |
        r2
            r16 f'-- af(  f) g(  f) g(  ef) |
        a8(  bf) ef, f bf,4 r |
        r2 r16 ef-\f g(  ef) bf'(  bf,) d(  bf) |
        r c-- ef(  c) g'(  g,) bf(  g) af(  bf) c(  af) bf8 bf |
        ef16\<(  f) g(  ef) af(  bf) c(  af)
            bf8\!-"allarg."(  ef,) bf'\> bf,\! |
    }
}

cloIIIb =  {
    \relative ef {
        ef8-.\p ef-. ef-. ef-. b-. b-. b-. b-. |
        c-. c-. c-. c-. c'-. c-. c-. c-. |
        fs,-. fs-. fs-. fs-. g-. g-. g-. g-. |
        e-. e-. e-. e-. f!-. f-. f-. f-. |
        d-. d-. d-. d-. ef!-. ef-. ef-. ef-. |
        g,-.\cresc g-. g-. g-. af-. af-. af-. af-. |
        a-. a-. a-. a-. bf-. bf-. bf-. bf-. |
        g-. g-. g-. g-. af!-. af-. af-. af-. |
        bf-. bf-. bf-. bf-. ef-. ef-. ef-. ef-. |
        g,-.\p g-. g-. g-. af-. af-. af-. af-. |
        bf-. bf-. bf-. bf-. ef4 r |
        d->\f r c-> r | bf2 r2^\fermata |
    }
}

cloIIIc = \cloIIIa

cloIIId =  {
    \relative ef {
        ef4\p-"a tempo"\< d c bf\! |
        af r-"allarg." af\mf r8 af8\p |
        bf4 ef, bf'2 | ef,1 |
    }
}

cloIII = <<\mIII {\cloIIIa \cloIIIb \cloIIIc \cloIIId}>>

cloIVa =  {
    \key g \minor
    \time 3/4
    \relative g {
        g4-.\p bf-. g-. | d'2.-> |
        d,4-. fs-. d-. | g2.-> |
        g4\f g,2-> | f'?2. | ef4 ef,2-> | d'2. |
    }
}

cloIVb =  {
    \relative d' {
        d4\mf d,2 | g4->\f bf,-> g-> | c'\mf c,2 | f4->\f a,-> f-> |
        bf'\mf g2 |
        a2 d,4 | g, a2 |
        d4 d'->\f c-> | b-> g-> b-> |
        c,-> c'-> bf!-> | a-> f-> a-> |
        bf,2 bf'4 |
        e, fs2 | g2 bf,4 | c d2 |
        g, bf4\p c2 c4 |
        d2-"poco allarg." ef4 | c d d, | g2. |
    }
}

cloIV = <<\mIV {\repeat volta 2 {\cloIVa} \repeat volta 2 {\cloIVb}}>>

cloVa =  {
    \relative g {
        r2 | R1 | r2
        g4-|\f fs-| | g->(  d) ef2 | d
        r2 | R1 | r2
        g4-| fs-| | g->(  d) ef2 | d
        bf'4-.\p a-. | bf->(  f) bf-. a-. | bf->(  bf,)
        g'\f b | c f, g g, | c2
        c'4-.\p\< b-. | c->(  g) c-. b-.\! | c->(  g)
        d'-. cs-. | d->\<(  a) d-. cs-.\! | d->(  a)
        d-|\f cs-| | d->(  c!) bf-| a-| | bf->(  a)
        g-| f-| | e->(  d) a' a, | d2
        d'4\p cs | d->(  c!) bf a | bf->(  a)
        g f | e->(  d) a' a, | d2
    }
}

cloVb =  {
    \relative d' {
        r2 | d4->\p(  d,) r2 | d'4->(  d,)
        r2 | bf'4->\f(  bf,) r2 | bf'4->(  bf,)
        bf'-.\p bf,-. | ef->(  bf) ef-. bf-. | f'->(  f,)
        d''-|\f d,-| | ef->(  d) d'-.\p d,-. | ef->(  d)
        ef-|\f f-| | g->(  f) ef-.\p f-. | g->(  f)
        bf\f ef, | f bf, f' f, | bf2 r |
        df\p r | ef r | f4\f bf, f' f, |
        bf2 r | g'\p r | g4\f c, g' g, |
        c2 r | a'\p r | a4\f d, a' a, | d2
        r2 | R1 | r2
        g4-|\f fs-| | g d ef2 | d
        d'4-.\p\< d,-. | e-. c'-. fs,-. d'-.\! | g,->(  a)
        bf-|\f bf,-| | c2. c4 | d2
        bf'\p | c d | ef
        bf,\f | c d | ef
        bf | c d |
        g4 f ef d | ef d c b | c g' b, g' | c, g' b, g' |
        c, d ef c | d->(  g,) d' d | g2 r4
        c,\p d(  g,) d' d, |
    }
}

cloV = <<\mV {\partial 2 \repeat volta 2 {\cloVa} \repeat volta 2 {\cloVb} \alternative {g,2} {g,1\laissezVibrer}}>>

cloVI =  <<\mVI {
    \relative g, {
        <<\new Voice {\voiceFour\stemUp g4.\p\repeatTie} \new Voice {\voiceOne g'2.} >>\oneVoice g2. | g c,4.(  d) | g, r d'2.\p | d d | g,4.(  a) d, r |
        g4\f(  a8) b4(  g8) c4(  b8) c( b  a) | b4(  a8) b4(  g8) c( b  c) d4(  d,8) |
        g4.
        %
        r4. r2. | R1. | R1. | r4. r4
        fs'8\f g4(  d8) a'4(  a,8) | d4.
        d'4.\p d2. | d4. g,\mf g2. | g4(  a8) b4(
         b,8)-.\f e4. d | c b a g | d' r4.
        %
        r2. | g2.\p
        cs | d cs | d4. r4
        b8\f a4(  g8) c,4(  d8) | g,4(  a8) b4(
         g8)-.\mf\< c4(  c,8)-- r4
        cs'8 | d4(  d,8)-- r4 ds'8 e4(  e,8)-- r4 fs'8\! | g4.
        r4. r2. | r2. r4. r4
        g8\f-"poco largamente" | c,4(  g8) d'4(  d,8) g4 r8 c4. |
        r4.^\fermata
        b\p
        r2.^\fermata |
        a4\f(  g8) d'4(  d,8) g4. r4
        %
        r8-"a tempo" \noBreak |
        r2. r4. r4
        a'8\mf |
        gs4(\cresc  e8) a,4(  a'8)-. gs4(  e8) r4
        b'8 | as4(  fs8) b,4(  b'8)-. as4(  fs8)\! r4
        fs8\p | gs4. as b d, |
        e4. e'2. d4(  e8) | fs4(  e8) fs4(  fs,8)-.\< b4. a |
        g fs e\! d | e r4
        e8 fs4. b, | fs' fs, b2. |
        %
        g'2.\p g | g c,4.(  d) | g, r d'2.\p | d d | g,4.(  a) d, r |
        g4\f(  a8) b4(  g8) c4(  b8) c( b  a) | b4(  a8) b4(  g8) c( b  c) d4(  d,8) |
        g4.
        %
        r4. r2. | R1. | R1. | r4. r4
        fs'8\f g4(  d8) a'4(  a,8) | d4. r4
        %
        g8\p fs4(  e8) fs4(  d8) | g4(  a8) b4(  g8)
        fs4(  e8) fs4(  d8) | g4(  a8) b4(  g8) e4. r4
        fs8 | g4. r4 g8 c,4. r4 c8 | b4. r4
        b8 c4(  g8) d'4(  d,8)-. | g4. r4
        %
        b8\f c4(  b8) c4(  a8) | b4(  a8) b4(  g8) c4(  b8) c( b  a) |
        b4(  a8) b4(  g8) c4(  b8) a4(  g8) | d'4. g, d' r4
        d,8\p | g4. r d r | g r r2. |
    }
}>>
