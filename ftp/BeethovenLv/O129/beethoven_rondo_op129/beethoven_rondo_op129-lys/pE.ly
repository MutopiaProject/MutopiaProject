%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PART E : BARS 217-338  3'24-5'05
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% RIGHT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rhE =  \relative e' {
%%% 217-224
    e!8( f bf4 |
    cs8 d f4 |
    f8 ef c4 |
    f8 ef c4) |
    cs,8( d f4 |
    a8 bf d4 |
    f8 ef <c ef,>4 |
    <bf d,>4) r |
%%% 225-232
    <cs cs,>8( <d d,>) <g g,>4-> |
    <cs, cs,>8( <d d,>) <g g,>4-> |
    <g g,>8( <fs! fs,!>) <d d,>4-> |
    <g g,>8( <fs! fs,!>) <d d,>4-> |
    <cs cs,>8( <d d,>) <g g,>4 |
    <cs, cs,>8( <d d,>) <g g,>4 |
    <f f,>8( <ef ef,>) r4 |
    <g g,>8( <f f,>) r4 |
%%% 233-240
    <cs cs,>8( <d d,> <f f,>4 |
    <a a,>8 <bf bf,> <d d,>4) |
    <f f,>8( <ef ef,> <c c,>4 |
    <f f,>8 <ef ef,> <c c,>4) |
    <cs, cs,>8( <d d,> <f f,>4 |
    <a a,>8 <bf bf,> <d d,>4) |
    <<
        { f,8 ef c4 |
          f8 d bf4 } \\
        { f2 |
          f2 | }
    >>
%%% 241-248
    << { g'8 f d4 |
         g8 ef d4 | } \\ { g,2 | g2 | } >>
    c'8 fs,! c4 |
    c'8 g c,4 |
    c'8 a c,4 |
    c'8 a c,4 |
    r16 c' e d c b a g |
    fs e d c b a g fs |
%%% 249-254
    e16 d c b \cslh\clef bass\voiceOne a g fs e |
    d c b a g fs e d |
    cs d e fs g a b c! |
    \tuplet 3/2 {
        d8_. ds_. e_. f_. fs_. g_. |
        gs a as b c cs |
        \csrh\clef treble\oneVoice
        d e fs g a as |
    }
%%% 255-262
    as8( b <d b d,>4 |
    fs8 g <b d, b>4) |
    d8( c <a d,>4 |
    d8 c <a d,>4) |
    as,8( b <d b d,>4 |
    fs8 g <b d, b>4 |
    d8 c <a d,>4 |
    <g d>) r |
%%% 263-270
    <as as,>8( <b b,> <e e,>4-> |
    <as, as,>8 <b b,> <e e,>4->) |
    <e e,>8( <ds ds,> <b b,>4) |
    <e e,>8( <ds ds,> <b b,>4) |
    <as as,>8( <b b,> <e e,>4 |
    <as, as,>8 <b b,> <e e,>4) |
    <d! d,!>8 <cs cs,> r4 |
    <e e,>8 <d d,> r4 |
%%% 271-276
    \setBeatStructureHalf
    as,8( b) cs( d) |
    fs( g) as( b) |
    d16( c d c a!4->) |
    d16( c d c a4->) |
    as,8( b) cs( d) |
    fs( g) as( b) |
%%% 277-282
    \setBeatStructureQuarter
    d16 c d c a!8 a16 b |
    g4 r8 d |
    d'16 c d c a4 |
    c16 b c b g4 |
    b16 a b a fs4 |
    a16 g a g e4 |
%%% 283-288
    g16 f g f d!4 |
    f16 e f e c4 |
    e16 d e d b4 |
    d16 c d c a4 |
    c16 b a g b a g fs |
    a g fs e g fs e d |
%%% 289-294
    fs16 e d c e d c b |
    d c b a c b a g |
    \cslh\voiceOne\clef bass ds ds' fs, ds' c ds ds, ds' |
    e, e' g, e' cs e e, e' |
    r16 b cs ds \csrh\oneVoice\clef treble e fs gs as |
    b cs ds e fs gs as b |
%%% 295-299
    gs,,16 gs' b, gs' f gs gs, gs' |
    a, a' c,! a' fs! a a, a' |
    r16 e fs gs a b cs ds |
    e fs gs a b cs ds e |
    cs,, cs' e, cs' bf cs cs, cs' |
%%% 300-305
    d,16 d' f, d' b! d d, d' |
    d, d' f, d' b d d, d' |
    ef, ef' g, ef' c ef ef, ef' |
    c, c' ef, c' a c c, c' |
    c, c' ef, c' a c c, c' |
    c, c' ef, c' a c c, c' |
%%% 306-310
    df,16 df' f, df' bf df df, df' |
    bf, bf' df, bf' g bf bf, bf' |
    bf, bf' df, bf' g bf bf, bf' |
    r16 bf, c df ef f g af |
    bf c df ef f g af bf |
%%% 311-315
    c4 af8 af |
    ef ef c4 |
    bf,16 c e! bf' c, e bf' c |
    e,! bf' c e! bf c e bf' |
    af4 f8 f |
%%% 316-320
    c8 c af4 |
    g,16 c ef g c, ef g c |
    ef, g c ef g, c ef g |
    r16 c a fs! c fs c a! |
    fs! c' a fs c a' fs c
%%% 321-325
    r16 bf'' g d bf g' d bf |
    g bf g d bf g' d bf |
    r16 g'' e! cs g e' cs g |
    e! g e cs g e' cs g |
    r16 a'' fs! d a fs' d a |
%%% 326-330
    fs!16 d' a fs d a' fs d |
    r16 c''! a fs c fs c a |
    fs c' a fs c a' fs c |
    r16 c'' g ef c ef c g |
    ef c' g ef c g' ef c |
%%% 331-335
    r16 c'' g e! c e c g |
    e! g e c g e' c g |
    r c'' a f c f c a |
    f c' a f c a' f c |
    r c'' b! a g fs! e d |
%%% 336-338
    c16 b a g fs e d c |
    \cslh\voiceOne\clef bass
    b a g fs e d c b |
    R2 |
%%% END
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% LEFT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lhE =  \relative e {
%%% 217-224
    <<
        {
            r4 e!8( f |
            bf4 e,8 f |
            a4 e!8 f |
            a4 e!8 f) |
            r4 cs8( d |
            f4 e!8 f) |
            r4 gs8( a) |
            r4 a8( bf) |
        } \\ {
            bf,2 |
            bf |
            bf |
            bf |
            bf |
            bf |
            bf |
            bf |
        }
    >>
%%% 225-232
    r4 <fs'! a>8( <g bf>) |
    r4 <fs! a>8( <g bf>) |
    r4 <gs b!>8( <a c>) |
    r4 <gs b!>8( <a c>) |
    r4 <fs! a>8( <g bf>) |
    r4 <fs! a>8( <g bf>) |
    r4 <fs! a>8( <g bf>) |
    r4 <gs b!>8( <a c>) |
%%% 233-240
    <<
        {
            r4 cs,8( d |
            f4 a8 bf) |
            r4 gs8( a) |
            r4 gs8( a) |
            r4 cs,8( d |
            f4 a8 bf) |
            r4 d8 ef |
            r4 cs8 d |
        } \\ {
            bf,2 |
            bf |
            bf |
            bf |
            bf |
            bf |
            a' |
            bf |
        }
    >>
%%% 241-248
    <<
        { r4 e!8 f |
          r4 d8 ef |
          r4 b!8 c |
          r4 b8 c |
          r4 b8 c |
          r4 b8 c | } \\
        { b!2 | c | a | g | fs! | e! | }
    >>
    <d fs a d>4 r |
    R2 |
%%% 249-254
    \voiceTwo
    R2 |
    s2*2 |
    R2*2 |
    \oneVoice
    R2 |
%%% 255-262
    r4 fs8( g |
    d4 fs8 g) |
    <<
        { r4 c8 d |
          r4 c8 d |
          b4 s4 |
          s2 |
          r4 c8 d |
          b8 } \\
        { d,4( fs |
          d fs) |
          g( fs8 g |
          d4 fs8 g |
          d4 fs |
          g8) }
    >> d8-.[ b-. g-.] |
%%% 263-270
    r4 \clef treble <ds'' fs>8( <e g>) |
    r4 <ds fs>8( <e g>) |
    r4 <es gs>8( <fs a>) |
    r4 <es gs>8( <fs a>) |
    r4 <ds fs>8( <e! g!>) |
    r4 <ds fs>8( <e g>) |
    r4 <ds fs>8( <e g>) |
    r4 <es gs>8( <fs a>) |
%%% 271-276
    \clef bass
    g,!16 d' b g d b' g d |
    b g' d b g d' b g |
    fs a d, fs a d fs a |
    fs a d, fs a d c a |
    g d' b g d b' g d |
    b g' d b g d' b g |
%%% 277-282
    d16_[ d' fs a] d, c' fs, c' |
    g b d b g8 r |
    \clef treble
    r4 g''16 fs g fs |
    r4 ds16 e ds e |
    r4 e16 ds e ds |
    r4 b16 c b c |
%%% 283-288
    r4 c16 b c b |
    gs4 b16 a b a |
    fs!4 a16 g! a g |
    e4 g16 fs g fs |
    \clef bass
    \setBeatStructureHalf
    ds8 e cs d |
    b c! a b |
%%% 289-294
    g8 a fs g |
    e fs ds e |
    \voiceTwo <c a>2 |
    <cs as>
    b4 \oneVoice r4 |
    R2 |
%%% 295-299
    <d f>2 |
    <ds fs!> |
    <e gs>4 r |
    R2 |
    <g! bf>2 |
%%% 300-305
    <gs b!>2 ~ |
    <gs b> |
    <c c,> |
    <a f> |
    <a gf> |
    <a f> |
%%% 306-310
    <bf bf,>2 |
    <g ef> |
    <g ff> |
    <g ef>4 r |
    R2 |
%%% 311-315
    \setBeatStructureQuarter
    af,,16 c ef af c, ef af c |
    ef, af c ef af, c ef af |
    g4 e!8 e |
    c c g4 |
    f,16 af c f af, c f af |
%%% 316-320
    c,16 f af c f, af c f |
    ef4 c8 c |
    g g ef4 |
    d fs!8 fs |
    a! a d4 |
%%% 321-325
    d,4 g8 g |
    bf bf d4 |
    d,4 g8 g |
    bf bf d4 |
    d,4 r |
%%% 326-330
    R2 |
    d4 fs!8 fs |
    a a d4 |
    ef, g8 g |
    c c ef4 |
%%% 331-335
    e,!4 g8 g |
    c c e!4 |
    f, a8 a |
    c c f4 |
    <fs,! a c d>4 r4 |
%%% 336-338
    R2 |
    \voiceTwo R2 |
    a16 g fs e d cs d cs |
%%% END
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DYNAMICS PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dynE =  {
%%% 217-224
    s2_\markup{\dynamic p \italic dolce} | s2*7 |
    \myBreak
%%% 225-232
    s2*8 |
    \myBreak
%%% 233-240
    s2_\deprecatedcresc | s2*7 |
    \myBreak
%%% 241-248
    s2*2 | s2_\deprecatedcresc | s2*3 | s2_\f | s2 |
    \myBreak
%%% 249-254
    s2*5 | s2_\deprecateddim |
    \myBreak
%%% 255-262
    s2_\markup{\italic dolce} | s2*7 |
    \myBreak
%%% 263-270
    s2*6 | s2^\deprecateddim | s2 |
    \myBreak
%%% 271-276
    s2_\f | s2*5 |
    \myBreak
%%% 277-282
    s2 | s4. s8_\pp | s2^\markup{\italic leggiermente} | s2*3 |
    \myBreak
%%% 283-288
    s2*4 | s4 s4_\deprecatedcresc | s2 |
    \myBreak
%%% 289-294
    s2*2 | s2^\f | s2^\sf | s2*2 |
    \myBreak
%%% 295-299
    s2_\sf | s2_\sf | s2*2 | s2_\sf |
    \myBreak
%%% 300-305
    s2_\sf | s2 | s2_\sf | s2_\sf | s2_\sf | s2_\sf |
    \myBreak
%%% 306-310
    s2_\sf | s2_\sf | s2_\sf | s2\< | s16 s s s s s s s\! |
    \myBreak
%%% 311-315
    s2_\ff | s2*4 |
    \myBreak
%%% 316-320
    s2*5 |
    \myBreak
%%% 321-325
    s2*5 |
    \myBreak
%%% 326-330
    s2*5 |
    \myBreak
%%% 331-335
    s2*5
    \myBreak
%%% 336-338
    s2*3 % partial line NO BREAK
}
