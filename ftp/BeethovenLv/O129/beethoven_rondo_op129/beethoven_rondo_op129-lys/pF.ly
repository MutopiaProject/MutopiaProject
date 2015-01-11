%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PART F : BARS 339-???  5'05-?'??
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% RIGHT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rhF =  \relative d {
%%% 339-343
    \cslh\voiceOne\clef bass
    R2 |
    d4 fs8 fs |
    a4 r |
    fs a8 a |
    c4 r |
%%% 344-354
    \csrh\oneVoice\clef treble
    a4 c8 c |
    <c ef>4 \cslh\voiceOne\clef bass <a fs> |
    \csrh\oneVoice\clef treble <c ef> \cslh\voiceOne\clef bass <a fs> |
    \csrh\oneVoice\clef treble <c e!> g |
    <b f'> g |
    <d' f> <b gs> |
    <d f> <b gs> |
    <d fs!> a |
    <cs g'> a |
    <e' g> <cs as> |
    <e g> <cs as> |
%%% 355-364
    <e gs>4 b |
    <ds a'> b |
    <e b'> b |
    <ds a'> b |
    <e gs> b |
    <ef a!> cf |
    <ef bf'> bf |
    <d af'> bf |
    <ef g> bf |
    <g' c> c, |
%%% 365-373
    <g' d'>4 d |
    <fs! c'> c |
    <g' bf> d |
    <g c> c, |
    <g' d'> c, |
    <fs d'> c |
    <b! d g b!>8 r d' r |
    g r b r |
    << { c16 d c b a b a g } \\
       { <d fs>8 r <d fs> r } >>
%%% 374-382
    << { fs16 g fs e d e d c } \\
       { <c d>8 r a r } >>
    <b g d b>8 r <d b g d> r |
    <g d b g> r <b g d b> r |
    << { c16 d c b a b c a } \\
       { <fs d>8 r <fs d> r } >>
    <g d b g>8 r <g, b, d> r |
    <b e g b> r <e b g e> r |
    <b e g b> r <e g b e> r |
    << { ds'16 e ds c! b8 r |
         ds16 e ds c! b8 r | } \\
       { <a fs>8 r <a fs> r |
         <a fs> r <a fs> r | } >>
%%% 383-389
    <b g e b>8 r <e, b g e> r |
    <b' g e b> r <e b g e> r |
    << { cs16 d cs b a g fs e } \\
       { <e g>8 r r4 } >>
    d16( e d cs d8) r |
    <b b,>4 <d d,>8 <d d,> |
    <g g,> <g g,> <b b,>4 |
    d16 c d c a8 r |
%%% 390-395
    d16 c d c a8 r |
    <b, b,>4 <d d,>8 <d d,> |
    <g g,> <g g,> <b b,>4 |
    d16 c d c a8 a16 b |
    g4 g,16 a b c |
    d c b a g a b c |
%%% 396-401
    d8 d g4 |
    g fs8 r |
    r f[ f f] |
    e16 d c b a b c d |
    e8 e a4 |
    a g8 r |
%%% 402-410
    r g[ g g] |
    fs!16 e ds cs b cs ds e |
    fs8 fs b4 |
    << { gs8 gs e'4 |} \\
       { e,2 | } >>
    e8 e a4 |
    << { fs8 fs d'4 | } \\
       { d,2 | } >>
    d8 d g4 |
    << { e8 e c'4 | d,8 d b'4 | } \\
       { c,2 | b | } >>
%%% 411-418
    << { c8 c a'4 | cs,8 cs a'4 | } \\
       { a,2 | a | } >>
    <b d b'>8^[ d, g g] |
    b b d4 |
    d16( c! d c a8) r |
    d16 c d c a8 r |
    g4 b8 b |
    d [ d ] g [ g ] |
%%% 419-424
    g16 fs g fs d4 |
    g16 fs g fs d4 |
    d <d g>8 <d g> |
    <g b> <g b> <b d>4 |
    d16 c d c << { <a fs>4 } \\ { ef16 d ef d } >> |
    << { d'16 c d c <a fs>4 | } \\
       { r4 ef16 d ef d | } >>
%%% 425-429
    << { <g b>4 } \\ { e!16 d e d } >> r4 |
    << { <a' c>4 } \\ { ef16 d ef d } >> r4 |
    << { <g, b>4 } \\ { e!16 d e d } >> r4 |
    << { <a' c>4 } \\ { ef16 d ef d } >> r4 |
    \clef bass
    << { <g, b>4 } \\ { e!16 d e d } >> r4 |
%%% 430-434
    << { <a' c>4 } \\ { ef16 d ef d } >> r4 |
    << { <g b>4 } \\ { e!16 d e d } >> r4 |
    << { <a' c>4 } \\ { ef16 d ef d } >> r4 |
    << { <g b>4 } \\ { e!16 d e d } >> r4 |
    \clef treble
    fs'16 g fs g r4 |
%%% 435-441
    \clef bass
    << { <g, b>4 } \\ { e16 d e d } >> r4 |
    \clef treble
    cs''16 d cs d r4 |
    \clef bass
    << { <g,, b>4 } \\ { e16 d e d } >> r4 |
    \clef treble
    fs''16 g fs g r4 |
    R2 |
    <g d b g>4 r |
    <g, d b g>4 r |
%%% END
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% LEFT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lhF =  \relative d, {
%%% 339-343
    \voiceTwo
    d4 fs8 fs |
    a4 r |
    fs a8 a |
    c4 r |
    a c8 c |
%%% 344-354
    \oneVoice
    ef4 r |
    fs,4 <c' ef>8 <c ef> |
    fs,4 <c' ef>8 <c ef> |
    g4 <c e!>8 <c e> |
    g4 <d' f>8 <d f> |
    gs,4 <d' f>8 <d f> |
    gs,4 <d' f>8 <d f> |
    a4 <d fs!>8 <d fs> |
    a4 <e' g>8 <e g> |
    as,4 <e' g>8 <e g> |
    as,4 <e' g>8 <e g> |
%%% 355-364
    b4 <e gs>8 <e gs> |
    b4 <fs' a>8 <fs a> |
    b,4 gs'8 gs |
    b,4 <fs' a>8 <fs a> |
    b,4 <e gs>8 <e gs> |
    cf4 <gf' a!>8 <gf a> |
    bf,4 <ef g!>8 <ef g> |
    bf4 <f' af>8 <f af> |
    ef4 g8 g |
    ef4 g8 g |
%%% 365-373
    d4 <g a!>8 <g a> |
    d4 <fs! a>8 <fs a> |
    g4 bf8 bf |
    ef,4 <g a>8 <g a> |
    d4 <g a>8 <g a> |
    d4 <fs a>8 <fs a> |
    r8 <g, b! d g> r <g b d g> |
    r <g b d g> r <g b d g> |
    r <g c d fs> r <g c d fs> |
%%% 374-382
    r <g c d fs> r <g c d fs> |
    r <g b d g> r <g b d g> |
    r <g b d g> r <g b d g>  |
    r <g c d fs> r <g c d fs> |
    r <g b d g> r <g b d g> |
    r <e' g b e> r <e g b e> |
    r <e g b e> r <e g b e> |
    r <b fs' a b> r <b fs' a b> |
    r <b fs' a b> r <b fs' a b> |
%%% 383-389
    r8 <e, g b e> r <e g b e> |
    r <e g b e> r <e g b e> |
    r <a cs e g> r <a cs e g> |
    r <d fs> r <d fs a d> |
    r16 d' b g d b' g d |
    b g' d b g d' b g |
    d fs a d fs, a d fs |
%%% 390-395
    a,16 d fs a d, fs a c |
    r d b g d b' g d |
    b g' d b g d' b g |
    d fs a d d, fs a d |
    g,4 r |
    R2 |
%%% 396-401
    R2 |
    a'16 g fs e d e fs g |
    a8 a d4 |
    d c8 r |
    r c c c |
    b16 a g fs! e fs g a |
%%% 402-410
    b8 b e4 |
    e4 ds8 r |
    \clef treble
    <ds fs b>2 |
    <d! e b'> |
    <cs g'! a> |
    <c! d a'> |
    <b d g> |
    \clef bass
    <c g c,> |
    <b g d> |
%%% 411-418
    <c g e>2 |
    <cs g ef> |
    <d b g d>8 r r4 |
    R2 |
    d,4 fs8 fs |
    a [ a ] c [ c ] |
    c16 b c b g4 |
    c16 b c b g4 |
%%% 419-424
    \clef treble
    d'4 fs8 fs |
    a [ a ] c [ c ] |
    c16 b c b g4 |
    c16 b c b g4 |
    d4 fs8 fs |
    a a c4 |
%%% 425-429
    << { r4 fs,16 g fs g } \\ { g,2 } >> |
    << { r4 g'16 fs g fs } \\ { g,2 } >> |
    \clef bass
    << { r4 fs16 g fs g } \\ { g,2 } >> |
    << { r4 g'16 fs g fs } \\ { g,2 } >> |
    << { r4 fs16 g fs g } \\ { g,2 } >> |
%%% 430-434
    << { r4 g'16 fs g fs } \\ { g,2 } >> |
    << { r4 fs'16 g fs g } \\ { g,2 } >> |
    << { r4 fs'16 g fs g } \\ { g,2 } >> |
    << { r4 fs'16 g fs g } \\ { g,2 } >> |
    << { r4 fs'16 g fs g } \\ { g,2 } >> |
%%% 435-441
    << { r4 fs'16 g fs g } \\ { g,2 } >> |
    << { r4 fs'16 g fs g } \\ { g,2 } >> |
    << { r4 fs'16 g fs g } \\ { g,2 } >> |
    << { r4 fs'16 g fs g } \\ { g,2 } >> |
    g4 r |
    <g' b d g>4 r |
    <g, b d g>4 r |
%%% END
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DYNAMICS PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dynF =  {
%%% 339-343
    s2_\markup{\dynamic f \italic "ben marcato"} | s2*4 |
    \myBreak
%%% 344-354
    s2*11
    \myBreak
%%% 355-364
    s2*2 | s2_\deprecateddim | s2*5 | s2_\p | s2 |
    \myBreak
%%% 365-373
    s2*2 | s2^\pp |
    \setCalandoSpanner
    s2\startTextSpan | s2 | s2\stopTextSpan | s2_\f\mark\markup{a tempo} | s2*2 |
    \myBreak
%%% 374-382
    s2*9 |
    \myBreak
%%% 383-389
    s2*7 |
    \myBreak
%%% 390-395
    s2*4 | s4 s_\p | s2 |
    \myBreak
%%% 396-401
    s2*3 | s2^\deprecatedcresc | s2*2 |
    \myBreak
%%% 402-410
    s2*7 | s2_\f | s2 |
    \myBreak
%%% 411-418
    s2*2 | s8 s_\p s4 | s2*5 |
    \myBreak
%%% 419-424
    s2*2 | s2_\deprecatedcresc | s2 | s4 s_\deprecateddim | s2 |
    \myBreak
%%% 425-429
    s4_\p s8 s_\markup{\italic "sempre dimin."} | s2*4 |
    \myBreak
%%% 430-434
    s2*3 | s2_\pp | s2 |
    \myBreak
%%% 435-441
    s2*2 | s8 s_\deprecatedcresc s s | s2 | s_\ff | s2*2 |
}