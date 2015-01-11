%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PART D : BARS 129-216  1'39-3'24
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% RIGHT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rhD =  \relative b' {
    \key g \major
%%% 129-130
    \setBeatStructureQuarter
    b4 d8 d | g g b4 |
%%% 131-136
    d16 c d c a8 r |
    d16 c d c a8 r |
    b,4 d8 d |
    g g b4 |
    d16 c d c a8 a16 b |
    g4 r |
%%% 137-142
    b16 a g fs e fs g a |
    b8 b e4 |
    e16 ds e ds b8 r |
    e16 ds e ds b8 r |
    b16 a g fs e fs g a |
    b8 b e4 |
%%% 143-148
    << { cs2 | }
       { s4..^\startTrillSpan \afterGrace s16 { b16\stopTrillSpan [ cs ] } } >>
    d4 d, |
    b4 d8 d |
    g g b4 |
    d16 c! d c a8 r |
    d16 c d c a8 r |
%%% 149-154
    b,4 d8 d |
    g g b4 |
    d16 c d c a8 a16 b |
    g4 r8 g, |
    d'16 c d c a4 |
    c16 b c b g4
%%% 155-160
    b16 a b a fs4 |
    a16 g a g d'4 |
    d16 c d c a4 |
    c16 bf c bf g4 |
    g'16 cs, g' cs, g4 |
    g'16 cs, g' cs, g4 |
%%% 161-166
    fs'16 d fs d a4 |
    fs'16 d fs d a4 |
    g'16 df g df g,4 |
    g'16 df g df g,4 |
    c!4 ef8 ef |
    af af c4 |
%%% 167-172
    ef16 df ef df bf4 |
    ef16 df ef df bf4 |
    c,4 ef8 ef |
    af af c4 |
    ef16 df ef df bf8 bf16 c |
    af8 r r4 |
%%% 173-179
    \setBeatStructureHalf
    <af, c>8 <af c> <af c> <af c> |
    <af c> <af c> <af c> <af c> |
    <bf c> <bf c> <bf c> <bf c> |
    <bf c> <bf c> <bf c> <bf c> |
    <af c> <af c> <af c> <af c> |
    <af c> <af c> <af c> <af c> |
    <af bf> <af bf> <af bf> <af bf> |
%%% 180-185
    <g bf>8 <g bf> <g bf> <g bf> |
    c4 ef8 ef |
    af af c4 |
    ef16 df ef df bf4 |
    ef16 df ef df bf4 |
    \setBeatStructureQuarter
    r16 c af ef c af' ef c |
%%% 186-191
    af16 c af ef c af' ef c |
    r g' c e! g c, e g |
    c e,! g c e! g, c e |
    r f c af f c' af f |
    c e! c af f c' af f |
    r c ef af c ef, af c |
%%% 192-196
    ef16 af, c ef af c, ef af |
    <df, df,>4 <f f,>8 <f f,> |
    <af af,> <af af,> <df df,>4 |
    <ef ef,> <c, ef a! c>8 <c ef a c> |
    <a c ef a> <a c ef a> <ef ef'!>4 |
%%% 197-201
    df'4 f8 f |
    bf bf df4 |
    cf af8 af |
    f f cf4 |
    bf df8 df |
%%% 202-206
    gf8 gf bf4 |
    df bf8 bf |
    g! g e!4 |
    ef' c8 c |
    a![ a f f] |
%%% 207-211
    ef16 a,, bf c d ef f g |
    a bf c d ef f g a |
    bf c d ef f ef d c |
    bf a g f ef d c bf |
    a g f ef \posBeamA d^[ c \cslh\voiceOne\clef bass bf a] |
%%% 212-216
    g f ef d c bf a g |
    f g a bf c d ef f |
    g a bf c \csrh\oneVoice\clef treble d ef f g |
    a bf c d ef f g f |
    ef d c bf a af g gf |
%%% END
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% LEFT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lhD =  \relative g, {
    \key g \major
%%% 129-130
    \setBeatStructureQuarter
    g16 b' d, b' g b d, b' |
    g, b' d, b' g b d, b' |
%%% 131-136
    g,16 c' d, c' fs, c' d, c' |
    g, c' d, c' fs, c' d, c' |
    g, b' d, b' g b d, b' |
    g, b' d, b' g b d, b' |
    g, c' d, c' fs, c' d, c' |
    g, b' d, b' g,8 r |
%%% 137-142
    e'16 e' b e fs, e' b e |
    g, e' b e e, e' b e |
    b, b' a b ds, b' a b |
    fs b a b ds, b' a b |
    e, e' b e fs, e' b e |
    g, e' b e e, e' b e |
%%% 143-148
    a,,16 a' e a g a e a |
    d, e fs g a b c! a |
    g, b' d, b' g b d, b' |
    g, b' d, b' g b d, b' |
    g, c' d, c' fs, c' d, c' |
    g, c' d, c' fs, c' d, c' |
%%% 149-154
    g,16 b' d, b' g b d, b' |
    g, b' d, b' g b d, b' |
    g, c' d, c' fs, c' d, c' |
    g, b' d, b' g,8 r |
    fs'4 cs'16 d cs d |
    g,4 cs16 d cs d |
%%% 155-160
    a4 cs16 d cs d |
    b4 cs16 d cs d |
    fs,4 ef'16 d ef d |
    g,4 ef'16 d ef d |
    e,!4 g16 bf g bf |
    ef,4 g16 bf g bf |
%%% 161-166
    d,4 a'16 d a d |
    d,4 a'16 d a d |
    ef,4 g16 bf g bf |
    ef,4 g16 bf g bf |
    \setBeatStructureHalf
    <af c>8 <af c ef> <af c ef> <af c ef> |
    <af c ef> <af c ef> <af c ef> <af c ef> |
%%% 167-172
    <af df ef g>8 <af df ef g> <af df ef g> <af df ef g> |
    <af df ef g> <af df ef g> <af df ef g> <af df ef g> |
    <af c ef> <af c ef> <af c ef> <af c ef> |
    <af c ef> <af c ef> <af c ef> <af c ef> |
    <af df ef g> <af df ef g> <af df ef g> <af df ef g> |
    <af c ef af>8 g-. [  af-. bf-. ] |
%%% 173-179
    \setBeatStructureQuarter
    c16 bf af g f g af bf |
    c8-. c-. f4-> |
    f16 e! f e c4 |
    f16 e f e c4 |
    c16 bf af g f g af bf |
    c8-. c-. f4-> |
    << { d!2 | }
       { s4..^\startTrillSpan^\markup{\tiny\flat} \afterGrace s16 { c16\stopTrillSpan [ d ] } } >>
%%% 180-185
    ef4 r |
    \setBeatStructureHalf
    <af, c ef>8 <af c ef> <af c ef> <af c ef> |
    <af c ef> <af c ef> <af c ef> <af c ef> |
    <g bf df ef> <g bf df ef> <g bf df ef> <g bf df ef> |
    <g bf df ef> <g bf df ef> <g bf df ef> <g bf df ef> |
    af,4 c8 c |
%%% 186-191
    ef8 ef af4 |
    bf g8 g |
    e! e c4 |
    af c8 c |
    f f af4 |
    gf ef8 ef |
%%% 192-196
    c8 c gf4 |
    \setBeatStructureQuarter
    r16 f' df af f df' af f |
    df f df af f af df f |
    f, a! c f a, c f a! |
    c, f a c f, a c f |
%%% 197-201
    bf,16 f' df bf f df' bf f |
    df bf' f df bf df f bf |
    df, f af df f, af df f |
    af, df f af df, f af df |
    gf, df' bf gf df bf' gf df |
%%% 202-206
    bf16 gf' df bf gf bf df gf |
    e,! g! bf df g, bf df e! |
    g, bf df e! g, bf df e |
    r f, a! c f, a c f |
    f, a c ef f, a c ef |
%%% 207-211
    f,4 r |
    R2*3 |
    \voiceTwo R2 |
%%% 212-216
    R2*3 |
    \oneVoice R2*2 |
%%% END
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DYNAMICS PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dynD =  {
%%% 129-130
    s2_\f | s2 |
    \myBreak
%%% 131-136
    s2*6 |
    \myBreak
%%% 137-142
    s2*6
    \myBreak
%%% 143-148
    s2*6
    \myBreak
%%% 149-154
    s2*3 | s4. s8_\p | s2*2 |
    \myBreak
%%% 155-160
    s2*2 | s4. s8_\deprecatedcresc | s2*3 |
    \myBreak
%%% 161-166
    s4 s^\deprecateddim | s2*3 | s2^\pp | s2 |
    \myBreak
%%% 167-172
    s2*5 | s8 \posHairpinA s\< s s%\! |
    \myBreak
%%% 173-179
    s2-\mf\! |
    s2*6 |
    \myBreak
%%% 180-185
    s2 | s2_\deprecatedcresc | s2*3 | s2_\f |
    \myBreak
%%% 186-191
    s2*6 |
    \myBreak
%%% 192-196
    s2*5 |
    \myBreak
%%% 197-201
    s2*4 | s2^\ff |
    \myBreak
%%% 202-206
    s2 | s2-\sf | s2 | s2-\sf | s2 |
    \myBreak
%%% 207-211
    s2_\sf | s2*2 | s4 s_\deprecateddim | s2 |
    \myBreak
%%% 212-216
    s2*4 | s2_\deprecateddim |
    \myBreak
}

