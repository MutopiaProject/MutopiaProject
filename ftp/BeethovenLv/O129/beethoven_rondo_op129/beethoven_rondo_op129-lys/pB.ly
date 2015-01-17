%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PART B : BARS 25-82  0'19-1'19
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% RIGHT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rhB =  \relative b'' {
%%% 25-27
    b16 a g fs e fs g e | ds e fs ds b cs ds b | g a b g e fs g e |
%%% 28-33
    ds e fs ds b cs ds b |
    \cslh\voiceOne\clef bass
    g a b g e fs g e |
    cs d! e fs g a b cs |
    \csrh\oneVoice\clef treble
    d e fs g a b c! cs |
    d e fs g a b c! a |
    <b b,>4( d,8-.) d-. |
%%% 34-40
    g-. g-. b4->( | d16 c d c a8-.) r |
    d16( c d c a8-.) r | b,4( d8-.) d-. | g-. g-. b4->( |
    d16 c d c a8-.) a16( b | g4) r |
%%% 41-47
    b16 a g fs e fs g a |
    b8-. b-. e4-> |
    e16( ds e ds b8-.) r |
    e16( ds e ds b8-.) r |
    b16 a g fs e fs g a |
    b8-. b-. e4-> |
    << { cs2 | }
       { s4.^\startTrillSpan \afterGrace s8 { b16\stopTrillSpan [ cs ] } } >>
%%% 48-54
    d4 d, |
    b4 d8 d |
    g g b4 |
    d16 c! d c a8 r |
    d16 c d c a8 r |
    b,4 d8 d |
    g g b4 |
%%% 55-60
    d16 c d c a8 a16 b | g4 r8 d |
    \key bf \major
    \repeat volta 2 {
        bf'16 d g, bf d, g bf, d |
        ef g c, ef g, c ef, g |
        a' c f, a c, f a, c |
        d f bf, d f, bf d, f |
%%% 61-66
        f''16 d bf d f, bf d, f |
        c ef g, c ef, g c, ef |
        d f bf, d c ef a, c |
    }
    \alternative {
        { bf4 r8 d' | }
        { bf,4 r8 f'' | }
    }
    \repeat volta 2 {
        f'16 d bf d f, bf d, f |
%%% 67-72
        b,16 d f, b d, f b, d |
        ef'' c g c ef, g d g |
        cs, e g, cs e, g cs, e |
        d fs a fs d' a fs' d |
        g d bf! d g, bf d, g |
        ef! g c, ef a, c fs, a |
    }
%%% 73-79
    \alternative {
        { g4 r8 f''! | }
        { g,,16 d' bf d g,8 r | }
    }
    \setBeatStructureHalf
    <g bf>8 <g bf> <g bf> <g bf> |
    <g bf> <g bf> <g bf> <g bf> |
    <af bf> <af bf> <af bf> <af bf> |
    <af bf> <af bf> <af bf> <af bf> |
    ef'4( g8-.) g-. |
%%% 80-82
    bf8-. bf-. ef4 |
    d16( cs d cs g'4) |
    d16( c! d c a'!4) |
%%% END
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% LEFT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lhB =  \relative e, {
%%% 25-27
    <e g b e>8 <e g b e> r <e g b e> |
    <b' fs' a> <b fs' a> r <b fs' a> |
    <e g> <e g> r <e g> |
%%% 28-33
    b b r b |
    \voiceTwo
    e, e r e | <a a,> <a a,> r a |
    \oneVoice
    d4 <a e' g> | <d fs> r |
    <g b d>8 <g b d> <g b d> <g b d> |
%%% 34-40
    <g b d> <g b d> <g b d> <g b d> |
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g b d> <g b d> <g b d> <g b d> |
    <g b d> <g b d> <g b d> <g b d> |
    <g c d fs>8 <g c d fs> <g c d fs> <g c d fs> |
    <g b d g> <g b> <g b> <g b> |
%%% 41-47
    <e g b> <e g b> <e g b> <e g b> |
    <e g b> <e g b> <e g b> <e g b> |
    <b fs' a b> <b fs' a b> <b fs' a b> <b fs' a b> |
    <b fs' a b> <b fs' a b> <b fs' a b> <b fs' a b> |
    <e g b> <e g b> <e g b> <e g b> |
    <e g b>8 <e g b> <e g b> <e g b> |
    <a, e' g a> <a e' g a> <a e' g a> <a e' g a> |
%%% 48-54
    <d fs a> <d fs a> <d fs a> <d fs a> |
    <g, b d g> <g b d g> <g b d g> <g b d g> |
    <g b d g> <g b d g> <g b d g> <g b d g> |
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g b d g> <g b d g> <g b d g> <g b d g> |
    <g b d g>8 <g b d g> <g b d g> <g b d g> |
%%% 55-60
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g b d g>4 g |
    \key bf \major
    \repeat volta 2 {
        <g bf d g>8 <g bf d g> r <g bf d g> |
        <c ef g> <c ef g> r <c ef g> |
        <f, a c f> <f a c f> r <f a c f> |
        <bf d f> <bf d f> r <bf d f> |
%%% 61-66
        <d d,>8 <d d,> r <d d,> |
        <ef ef,> <ef ef,> r <ef ef,> |
        <f f,> r f, r |
    }
    \alternative {
        { r16 bf[ d c] bf c bf a | }
        { r16 bf[ d f] bf8 r | }
    }
    \repeat volta 2 {
        <bf bf,>4. <af af,>8 |
%%% 67-72
        <g g,>4 r8 <g g,> |
        <c c,>4 r8 <bf! bf,!> |
        <a! a,!>4 r8 <a, a,> |
        <d d,>4. <c! c,!>8 |
        <bf bf,>8 <bf bf,> r <bf bf,> |
        <c c,>4 <d d,> |
    }
%%% 73-79
    \alternative {
        { r16 g,,[ bf d] g8 r | }
        { <g g,>4 r16 bf, c d | }
    }
    ef4( g8-.) g-. |
    bf-. bf-. ef4-> |
    ef16( d ef d bf4) |
    ef16( d ef d bf4) |
    <ef g bf>8 <ef g bf> <ef g bf> <ef g bf> |
%%% 80-82
    <ef g bf> <ef g bf> <ef g bf> <ef g bf> |
    <e g bf> <e g bf> <e g bf> <e g bf> |
    <fs a! d> <fs a d> <fs a d> <fs a d> |
%%% END
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DYNAMICS PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dynB =  {
%%% 25-27
    s8_\ff s s s | s2*2 |
    \myBreak
%%% 28-33
    s2*4 | s8_\deprecateddim s s s | s_\p s s s |
    \myBreak
%%% 34-40
    s2*7 |
    \myBreak
%%% 41-47
    s2*4 | s8 s s-\deprecatedcresc s | s2*2 |
    \myBreak
%%% 48-54
    s2 | s8_\f s s s | s2*5 |
    \myBreak
%%% 55-60
    s2*2 |
    \repeat volta 2 {
        s8_\f s s s | s2*3 |
        \myBreak
%%% 61-66
        s2*3 |
    }
    \alternative { {s2} {s2} }
    \repeat volta 2 {
        s8_\f s s s |
        \myBreak
%%% 67-72
        s2*6 |
        \myBreak
    }
%%% 73-79
    \alternative { {s2} {s2} }
    s8_\p s s s | s2*4 |
    \myBreak
%%% 80-82
    s2 | s8_\deprecatedcresc s s s | s2 |
%%% END
}

